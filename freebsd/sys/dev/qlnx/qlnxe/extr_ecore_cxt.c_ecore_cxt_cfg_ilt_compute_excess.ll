; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_cfg_ilt_compute_excess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_cfg_ilt_compute_excess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr* }
%struct.ecore_cxt_mngr = type { i32*, %struct.ecore_ilt_client_cfg* }
%struct.ecore_ilt_client_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_tid_seg = type { i64, i64 }

@ECORE_ILT = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@NUM_TASK_PF_SEGMENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed computing excess ILT lines\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_cfg_ilt_compute_excess(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_ilt_client_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_cxt_mngr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_tid_seg*, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load i32, i32* @ECORE_ILT, align 4
  %16 = call i32 @RESC_NUM(%struct.ecore_hwfn* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

23:                                               ; preds = %2
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = call i32 @ECORE_IS_RDMA_PERSONALITY(%struct.ecore_hwfn* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %82

28:                                               ; preds = %23
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %30, align 8
  store %struct.ecore_cxt_mngr* %31, %struct.ecore_cxt_mngr** %9, align 8
  %32 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %9, align 8
  %33 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %32, i32 0, i32 1
  %34 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %33, align 8
  %35 = load i64, i64* @ILT_CLI_CDUT, align 8
  %36 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %34, i64 %35
  store %struct.ecore_ilt_client_cfg* %36, %struct.ecore_ilt_client_cfg** %6, align 8
  %37 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ILT_PAGE_IN_BYTES(i32 %40)
  store i32 %41, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %76, %28
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @NUM_TASK_PF_SEGMENTS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.ecore_tid_seg* @ecore_cxt_tid_seg_info(%struct.ecore_hwfn* %47, i32 %48)
  store %struct.ecore_tid_seg* %49, %struct.ecore_tid_seg** %12, align 8
  %50 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %12, align 8
  %51 = icmp ne %struct.ecore_tid_seg* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %12, align 8
  %54 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %46
  br label %76

58:                                               ; preds = %52
  %59 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %9, align 8
  %60 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %12, align 8
  %63 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %76

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sdiv i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %3, align 4
  br label %82

76:                                               ; preds = %69, %57
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %42

79:                                               ; preds = %42
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %81 = call i32 @DP_ERR(%struct.ecore_hwfn* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %70, %27, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @RESC_NUM(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ECORE_IS_RDMA_PERSONALITY(%struct.ecore_hwfn*) #1

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

declare dso_local %struct.ecore_tid_seg* @ecore_cxt_tid_seg_info(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
