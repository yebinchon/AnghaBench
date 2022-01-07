; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_configure_wfq_for_all_vports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_configure_wfq_for_all_vports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.init_qm_vport_params* }
%struct.TYPE_3__ = type { i32 }
%struct.init_qm_vport_params = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_WFQ_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_configure_wfq_for_all_vports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_configure_wfq_for_all_vports(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.init_qm_vport_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %12, align 8
  store %struct.init_qm_vport_params* %13, %struct.init_qm_vport_params** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %56, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ECORE_WFQ_UNIT, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %33, %34
  %36 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %36, i64 %38
  %40 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %43 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %43, i64 %45
  %47 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %49, i64 %51
  %53 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ecore_init_vport_wfq(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %21
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %14

59:                                               ; preds = %14
  ret void
}

declare dso_local i32 @ecore_init_vport_wfq(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
