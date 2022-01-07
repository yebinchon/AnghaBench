; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_pf_taskqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_pf_taskqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@QLNX_SRIOV_TASK_FLAGS_VF_PF_MSG = common dso_local global i32 0, align 4
@QLNX_SRIOV_TASK_FLAGS_VF_FLR_UPDATE = common dso_local global i32 0, align 4
@QLNX_SRIOV_TASK_FLAGS_BULLETIN_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @qlnx_pf_taskqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_pf_taskqueue(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %9, %struct.ecore_hwfn** %5, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = icmp eq %struct.ecore_hwfn* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %68

13:                                               ; preds = %2
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %6, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %19 = call i32 @qlnx_find_hwfn_index(%struct.ecore_hwfn* %18)
  store i32 %19, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %68

22:                                               ; preds = %13
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* @QLNX_SRIOV_TASK_FLAGS_VF_PF_MSG, align 4
  %31 = call i64 @atomic_testandclear_32(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %36 = call i32 @qlnx_handle_vf_msg(%struct.TYPE_7__* %34, %struct.ecore_hwfn* %35)
  br label %37

37:                                               ; preds = %33, %22
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* @QLNX_SRIOV_TASK_FLAGS_VF_FLR_UPDATE, align 4
  %46 = call i64 @atomic_testandclear_32(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %51 = call i32 @qlnx_handle_vf_flr_update(%struct.TYPE_7__* %49, %struct.ecore_hwfn* %50)
  br label %52

52:                                               ; preds = %48, %37
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* @QLNX_SRIOV_TASK_FLAGS_BULLETIN_UPDATE, align 4
  %61 = call i64 @atomic_testandclear_32(i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %66 = call i32 @qlnx_handle_bulletin_update(%struct.TYPE_7__* %64, %struct.ecore_hwfn* %65)
  br label %67

67:                                               ; preds = %63, %52
  br label %68

68:                                               ; preds = %67, %21, %12
  ret void
}

declare dso_local i32 @qlnx_find_hwfn_index(%struct.ecore_hwfn*) #1

declare dso_local i64 @atomic_testandclear_32(i32*, i32) #1

declare dso_local i32 @qlnx_handle_vf_msg(%struct.TYPE_7__*, %struct.ecore_hwfn*) #1

declare dso_local i32 @qlnx_handle_vf_flr_update(%struct.TYPE_7__*, %struct.ecore_hwfn*) #1

declare dso_local i32 @qlnx_handle_bulletin_update(%struct.TYPE_7__*, %struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
