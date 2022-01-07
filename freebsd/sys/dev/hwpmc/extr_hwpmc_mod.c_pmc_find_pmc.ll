; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_find_pmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_find_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.pmc = type { i32, %struct.pmc_owner* }
%struct.pmc_owner = type { i32 }
%struct.pmc_process = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pmc* }

@PMC = common dso_local global i32 0, align 4
@FND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"find-pmc id=%d\00", align 1
@md = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@PMC_FLAG_NONE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PMC_F_ATTACHED_TO_OWNER = common dso_local global i32 0, align 4
@PMC_F_DESCENDANTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"find-pmc id=%d -> pmc=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pmc**)* @pmc_find_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_find_pmc(i32 %0, %struct.pmc** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmc**, align 8
  %6 = alloca %struct.pmc*, align 8
  %7 = alloca %struct.pmc*, align 8
  %8 = alloca %struct.pmc_owner*, align 8
  %9 = alloca %struct.pmc_process*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pmc** %1, %struct.pmc*** %5, align 8
  %10 = load i32, i32* @PMC, align 4
  %11 = load i32, i32* @FND, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @PMCDBG1(i32 %10, i32 %11, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @PMC_ID_TO_ROWINDEX(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @md, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %84

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.pmc_owner* @pmc_find_owner_descriptor(i32 %25)
  store %struct.pmc_owner* %26, %struct.pmc_owner** %8, align 8
  %27 = icmp eq %struct.pmc_owner* %26, null
  br i1 %27, label %28, label %69

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PMC_FLAG_NONE, align 4
  %33 = call %struct.pmc_process* @pmc_find_process_descriptor(i32 %31, i32 %32)
  store %struct.pmc_process* %33, %struct.pmc_process** %9, align 8
  %34 = icmp eq %struct.pmc_process* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @ESRCH, align 4
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %28
  %38 = load %struct.pmc_process*, %struct.pmc_process** %9, align 8
  %39 = getelementptr inbounds %struct.pmc_process, %struct.pmc_process* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @PMC_ID_TO_ROWINDEX(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.pmc*, %struct.pmc** %44, align 8
  store %struct.pmc* %45, %struct.pmc** %7, align 8
  %46 = load %struct.pmc*, %struct.pmc** %7, align 8
  %47 = icmp eq %struct.pmc* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @ESRCH, align 4
  store i32 %49, i32* %3, align 4
  br label %84

50:                                               ; preds = %37
  %51 = load %struct.pmc*, %struct.pmc** %7, align 8
  %52 = getelementptr inbounds %struct.pmc, %struct.pmc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PMC_F_ATTACHED_TO_OWNER, align 4
  %55 = load i32, i32* @PMC_F_DESCENDANTS, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load i32, i32* @PMC_F_ATTACHED_TO_OWNER, align 4
  %59 = load i32, i32* @PMC_F_DESCENDANTS, align 4
  %60 = or i32 %58, %59
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @ESRCH, align 4
  store i32 %63, i32* %3, align 4
  br label %84

64:                                               ; preds = %50
  %65 = load %struct.pmc*, %struct.pmc** %7, align 8
  %66 = getelementptr inbounds %struct.pmc, %struct.pmc* %65, i32 0, i32 1
  %67 = load %struct.pmc_owner*, %struct.pmc_owner** %66, align 8
  store %struct.pmc_owner* %67, %struct.pmc_owner** %8, align 8
  br label %68

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %22
  %70 = load %struct.pmc_owner*, %struct.pmc_owner** %8, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call %struct.pmc* @pmc_find_pmc_descriptor_in_process(%struct.pmc_owner* %70, i32 %71)
  store %struct.pmc* %72, %struct.pmc** %6, align 8
  %73 = icmp eq %struct.pmc* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %3, align 4
  br label %84

76:                                               ; preds = %69
  %77 = load i32, i32* @PMC, align 4
  %78 = load i32, i32* @FND, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.pmc*, %struct.pmc** %6, align 8
  %81 = call i32 @PMCDBG2(i32 %77, i32 %78, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %79, %struct.pmc* %80)
  %82 = load %struct.pmc*, %struct.pmc** %6, align 8
  %83 = load %struct.pmc**, %struct.pmc*** %5, align 8
  store %struct.pmc* %82, %struct.pmc** %83, align 8
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %76, %74, %62, %48, %35, %20
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @PMCDBG1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @PMC_ID_TO_ROWINDEX(i32) #1

declare dso_local %struct.pmc_owner* @pmc_find_owner_descriptor(i32) #1

declare dso_local %struct.pmc_process* @pmc_find_process_descriptor(i32, i32) #1

declare dso_local %struct.pmc* @pmc_find_pmc_descriptor_in_process(%struct.pmc_owner*, i32) #1

declare dso_local i32 @PMCDBG2(i32, i32, i32, i8*, i32, %struct.pmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
