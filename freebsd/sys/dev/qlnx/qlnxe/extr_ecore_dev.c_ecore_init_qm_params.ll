; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, %struct.ecore_qm_info }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_qm_info = type { i32, i32, i64, i32, i64, i64 }

@ECORE_PQ = common dso_local global i32 0, align 4
@ECORE_VPORT = common dso_local global i32 0, align 4
@MAX_NUM_PORTS_K2 = common dso_local global i64 0, align 8
@NUM_PHYS_TCS_4PORT_K2 = common dso_local global i32 0, align 4
@NUM_OF_PHYS_TCS = common dso_local global i32 0, align 4
@DCBX_TCP_OOO_K2_4PORT_TC = common dso_local global i64 0, align 8
@DCBX_TCP_OOO_TC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_init_qm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_qm_params(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_qm_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 1
  store %struct.ecore_qm_info* %6, %struct.ecore_qm_info** %3, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %8 = load i32, i32* @ECORE_PQ, align 4
  %9 = call i64 @RESC_START(%struct.ecore_hwfn* %7, i32 %8)
  %10 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %10, i32 0, i32 5
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %13 = load i32, i32* @ECORE_VPORT, align 4
  %14 = call i64 @RESC_START(%struct.ecore_hwfn* %12, i32 %13)
  %15 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %16 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %15, i32 0, i32 4
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %20 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAX_NUM_PORTS_K2, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @NUM_PHYS_TCS_4PORT_K2, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @NUM_OF_PHYS_TCS, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %38 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %40 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* @DCBX_TCP_OOO_K2_4PORT_TC, align 8
  br label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @DCBX_TCP_OOO_TC, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %53 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %35
  ret void
}

declare dso_local i64 @RESC_START(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
