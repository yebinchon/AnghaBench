; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c___qlnx_vf_flr_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c___qlnx_vf_flr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ha = %p cdev = %p p_hwfn = %p \0A\00", align 1
@QLNX_SRIOV_TASK_FLAGS_VF_FLR_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @__qlnx_vf_flr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qlnx_vf_flr_update(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %21 = call i32 @QL_DPRINT2(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %16, i64 %19, %struct.ecore_hwfn* %20)
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %23 = call i32 @qlnx_find_hwfn_index(%struct.ecore_hwfn* %22)
  store i32 %23, i32* %4, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %63

26:                                               ; preds = %14
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %26
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* @QLNX_SRIOV_TASK_FLAGS_VF_FLR_UPDATE, align 4
  %45 = call i32 @atomic_testandset_32(i32* %43, i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @taskqueue_enqueue(i32* %53, i32* %60)
  br label %62

62:                                               ; preds = %36, %26
  br label %63

63:                                               ; preds = %62, %25, %13
  ret void
}

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_6__*, i8*, %struct.TYPE_6__*, i64, %struct.ecore_hwfn*) #1

declare dso_local i32 @qlnx_find_hwfn_index(%struct.ecore_hwfn*) #1

declare dso_local i32 @atomic_testandset_32(i32*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
