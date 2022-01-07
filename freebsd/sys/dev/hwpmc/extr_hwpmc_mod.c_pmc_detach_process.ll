; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_detach_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_detach_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.proc*, i32, i32, i32 }
%struct.pmc = type { i32, i32 }

@pmc_sx = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@PRC = common dso_local global i32 0, align 4
@ATT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"detach pm=%p ri=%d proc=%p (%d, %s)\00", align 1
@PMC_F_DESCENDANTS = common dso_local global i32 0, align 4
@PMC_FLAG_REMOVE = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@p_sibling = common dso_local global i32 0, align 4
@PMC_F_ATTACH_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.pmc*)* @pmc_detach_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_detach_process(%struct.proc* %0, %struct.pmc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.pmc*, align 8
  %6 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.pmc* %1, %struct.pmc** %5, align 8
  %7 = load i32, i32* @SX_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @pmc_sx, i32 %7)
  %9 = load i32, i32* @PRC, align 4
  %10 = load i32, i32* @ATT, align 4
  %11 = load %struct.pmc*, %struct.pmc** %5, align 8
  %12 = load %struct.pmc*, %struct.pmc** %5, align 8
  %13 = call i32 @PMC_TO_ROWINDEX(%struct.pmc* %12)
  %14 = load %struct.proc*, %struct.proc** %4, align 8
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.proc*, %struct.proc** %4, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PMCDBG5(i32 %9, i32 %10, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.pmc* %11, i32 %13, %struct.proc* %14, i32 %17, i32 %20)
  %22 = load %struct.pmc*, %struct.pmc** %5, align 8
  %23 = getelementptr inbounds %struct.pmc, %struct.pmc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PMC_F_DESCENDANTS, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.proc*, %struct.proc** %4, align 8
  %30 = load %struct.pmc*, %struct.pmc** %5, align 8
  %31 = load i32, i32* @PMC_FLAG_REMOVE, align 4
  %32 = call i32 @pmc_detach_one_process(%struct.proc* %29, %struct.pmc* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %84

33:                                               ; preds = %2
  %34 = call i32 @sx_slock(i32* @proctree_lock)
  %35 = load %struct.proc*, %struct.proc** %4, align 8
  store %struct.proc* %35, %struct.proc** %6, align 8
  br label %36

36:                                               ; preds = %69, %33
  %37 = load %struct.proc*, %struct.proc** %4, align 8
  %38 = load %struct.pmc*, %struct.pmc** %5, align 8
  %39 = load i32, i32* @PMC_FLAG_REMOVE, align 4
  %40 = call i32 @pmc_detach_one_process(%struct.proc* %37, %struct.pmc* %38, i32 %39)
  %41 = load %struct.proc*, %struct.proc** %4, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 1
  %43 = call i64 @LIST_EMPTY(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load %struct.proc*, %struct.proc** %4, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 1
  %48 = call %struct.proc* @LIST_FIRST(i32* %47)
  store %struct.proc* %48, %struct.proc** %4, align 8
  br label %69

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %64, %49
  %51 = load %struct.proc*, %struct.proc** %4, align 8
  %52 = load %struct.proc*, %struct.proc** %6, align 8
  %53 = icmp eq %struct.proc* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %70

55:                                               ; preds = %50
  %56 = load %struct.proc*, %struct.proc** %4, align 8
  %57 = load i32, i32* @p_sibling, align 4
  %58 = call %struct.proc* @LIST_NEXT(%struct.proc* %56, i32 %57)
  %59 = icmp ne %struct.proc* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.proc*, %struct.proc** %4, align 8
  %62 = load i32, i32* @p_sibling, align 4
  %63 = call %struct.proc* @LIST_NEXT(%struct.proc* %61, i32 %62)
  store %struct.proc* %63, %struct.proc** %4, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load %struct.proc*, %struct.proc** %4, align 8
  %66 = getelementptr inbounds %struct.proc, %struct.proc* %65, i32 0, i32 0
  %67 = load %struct.proc*, %struct.proc** %66, align 8
  store %struct.proc* %67, %struct.proc** %4, align 8
  br label %50

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %45
  br label %36

70:                                               ; preds = %54
  %71 = call i32 @sx_sunlock(i32* @proctree_lock)
  %72 = load %struct.pmc*, %struct.pmc** %5, align 8
  %73 = getelementptr inbounds %struct.pmc, %struct.pmc* %72, i32 0, i32 1
  %74 = call i64 @LIST_EMPTY(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* @PMC_F_ATTACH_DONE, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.pmc*, %struct.pmc** %5, align 8
  %80 = getelementptr inbounds %struct.pmc, %struct.pmc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %70
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %28
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PMCDBG5(i32, i32, i32, i8*, %struct.pmc*, i32, %struct.proc*, i32, i32) #1

declare dso_local i32 @PMC_TO_ROWINDEX(%struct.pmc*) #1

declare dso_local i32 @pmc_detach_one_process(%struct.proc*, %struct.pmc*, i32) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local %struct.proc* @LIST_FIRST(i32*) #1

declare dso_local %struct.proc* @LIST_NEXT(%struct.proc*, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
