; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_prs_init_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_prs_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__, %struct.ecore_cxt_mngr* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ecore_cxt_mngr = type { %struct.ecore_conn_type_cfg* }
%struct.ecore_conn_type_cfg = type { %struct.ecore_tid_seg*, i32 }
%struct.ecore_tid_seg = type { i32 }

@PROTOCOLID_FCOE = common dso_local global i64 0, align 8
@ECORE_CXT_FCOE_TID_SEG = common dso_local global i64 0, align 8
@PRS_REG_TASK_ID_MAX_TARGET_PF_RT_OFFSET = common dso_local global i32 0, align 4
@PRS_REG_TASK_ID_MAX_INITIATOR_PF_RT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_prs_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_prs_init_pf(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_cxt_mngr*, align 8
  %4 = alloca %struct.ecore_conn_type_cfg*, align 8
  %5 = alloca %struct.ecore_tid_seg*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 1
  %8 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %7, align 8
  store %struct.ecore_cxt_mngr* %8, %struct.ecore_cxt_mngr** %3, align 8
  %9 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %9, i32 0, i32 0
  %11 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %10, align 8
  %12 = load i64, i64* @PROTOCOLID_FCOE, align 8
  %13 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %11, i64 %12
  store %struct.ecore_conn_type_cfg* %13, %struct.ecore_conn_type_cfg** %4, align 8
  %14 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %20, i32 0, i32 0
  %22 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %21, align 8
  %23 = load i64, i64* @ECORE_CXT_FCOE_TID_SEG, align 8
  %24 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %22, i64 %23
  store %struct.ecore_tid_seg* %24, %struct.ecore_tid_seg** %5, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %33 = load i32, i32* @PRS_REG_TASK_ID_MAX_TARGET_PF_RT_OFFSET, align 4
  %34 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @STORE_RT_REG_AGG(%struct.ecore_hwfn* %32, i32 %33, i32 %36)
  br label %45

38:                                               ; preds = %19
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %40 = load i32, i32* @PRS_REG_TASK_ID_MAX_INITIATOR_PF_RT_OFFSET, align 4
  %41 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %5, align 8
  %42 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @STORE_RT_REG_AGG(%struct.ecore_hwfn* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %18, %38, %31
  ret void
}

declare dso_local i32 @STORE_RT_REG_AGG(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
