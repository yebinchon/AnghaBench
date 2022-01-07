; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_attach_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_attach_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.proc*, i32, i32, i32 }
%struct.pmc = type { i32 }

@pmc_sx = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@PRC = common dso_local global i32 0, align 4
@ATT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"attach pm=%p ri=%d proc=%p (%d, %s)\00", align 1
@PMC_PP_ENABLE_MSR_ACCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PMC_F_DESCENDANTS = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@p_sibling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.pmc*)* @pmc_attach_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_attach_process(%struct.proc* %0, %struct.pmc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.pmc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.pmc* %1, %struct.pmc** %5, align 8
  %8 = load i32, i32* @SX_XLOCKED, align 4
  %9 = call i32 @sx_assert(i32* @pmc_sx, i32 %8)
  %10 = load i32, i32* @PRC, align 4
  %11 = load i32, i32* @ATT, align 4
  %12 = load %struct.pmc*, %struct.pmc** %5, align 8
  %13 = load %struct.pmc*, %struct.pmc** %5, align 8
  %14 = call i32 @PMC_TO_ROWINDEX(%struct.pmc* %13)
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = load %struct.proc*, %struct.proc** %4, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.proc*, %struct.proc** %4, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PMCDBG5(i32 %10, i32 %11, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.pmc* %12, i32 %14, %struct.proc* %15, i32 %18, i32 %21)
  %23 = load %struct.pmc*, %struct.pmc** %5, align 8
  %24 = getelementptr inbounds %struct.pmc, %struct.pmc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PMC_PP_ENABLE_MSR_ACCESS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @EPERM, align 4
  store i32 %30, i32* %3, align 4
  br label %92

31:                                               ; preds = %2
  %32 = load %struct.pmc*, %struct.pmc** %5, align 8
  %33 = getelementptr inbounds %struct.pmc, %struct.pmc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PMC_F_DESCENDANTS, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.proc*, %struct.proc** %4, align 8
  %40 = load %struct.pmc*, %struct.pmc** %5, align 8
  %41 = call i32 @pmc_attach_one_process(%struct.proc* %39, %struct.pmc* %40)
  store i32 %41, i32* %3, align 4
  br label %92

42:                                               ; preds = %31
  %43 = call i32 @sx_slock(i32* @proctree_lock)
  %44 = load %struct.proc*, %struct.proc** %4, align 8
  store %struct.proc* %44, %struct.proc** %7, align 8
  br label %45

45:                                               ; preds = %80, %42
  %46 = load %struct.proc*, %struct.proc** %4, align 8
  %47 = load %struct.pmc*, %struct.pmc** %5, align 8
  %48 = call i32 @pmc_attach_one_process(%struct.proc* %46, %struct.pmc* %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %81

51:                                               ; preds = %45
  %52 = load %struct.proc*, %struct.proc** %4, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 1
  %54 = call i32 @LIST_EMPTY(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load %struct.proc*, %struct.proc** %4, align 8
  %58 = getelementptr inbounds %struct.proc, %struct.proc* %57, i32 0, i32 1
  %59 = call %struct.proc* @LIST_FIRST(i32* %58)
  store %struct.proc* %59, %struct.proc** %4, align 8
  br label %80

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %75, %60
  %62 = load %struct.proc*, %struct.proc** %4, align 8
  %63 = load %struct.proc*, %struct.proc** %7, align 8
  %64 = icmp eq %struct.proc* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %89

66:                                               ; preds = %61
  %67 = load %struct.proc*, %struct.proc** %4, align 8
  %68 = load i32, i32* @p_sibling, align 4
  %69 = call %struct.proc* @LIST_NEXT(%struct.proc* %67, i32 %68)
  %70 = icmp ne %struct.proc* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.proc*, %struct.proc** %4, align 8
  %73 = load i32, i32* @p_sibling, align 4
  %74 = call %struct.proc* @LIST_NEXT(%struct.proc* %72, i32 %73)
  store %struct.proc* %74, %struct.proc** %4, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.proc*, %struct.proc** %4, align 8
  %77 = getelementptr inbounds %struct.proc, %struct.proc* %76, i32 0, i32 0
  %78 = load %struct.proc*, %struct.proc** %77, align 8
  store %struct.proc* %78, %struct.proc** %4, align 8
  br label %61

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %56
  br label %45

81:                                               ; preds = %50
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.proc*, %struct.proc** %7, align 8
  %86 = load %struct.pmc*, %struct.pmc** %5, align 8
  %87 = call i32 @pmc_detach_process(%struct.proc* %85, %struct.pmc* %86)
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88, %65
  %90 = call i32 @sx_sunlock(i32* @proctree_lock)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %38, %29
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PMCDBG5(i32, i32, i32, i8*, %struct.pmc*, i32, %struct.proc*, i32, i32) #1

declare dso_local i32 @PMC_TO_ROWINDEX(%struct.pmc*) #1

declare dso_local i32 @pmc_attach_one_process(%struct.proc*, %struct.pmc*) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.proc* @LIST_FIRST(i32*) #1

declare dso_local %struct.proc* @LIST_NEXT(%struct.proc*, i32) #1

declare dso_local i32 @pmc_detach_process(%struct.proc*, %struct.pmc*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
