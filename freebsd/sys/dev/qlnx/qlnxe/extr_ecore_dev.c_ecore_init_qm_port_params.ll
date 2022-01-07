; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_port_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_port_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.init_qm_port_params* }
%struct.init_qm_port_params = type { i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@MAX_NUM_PORTS_K2 = common dso_local global i64 0, align 8
@ACTIVE_TCS_BMAP_4PORT_K2 = common dso_local global i64 0, align 8
@ACTIVE_TCS_BMAP = common dso_local global i64 0, align 8
@PBF_MAX_CMD_LINES_E4 = common dso_local global i64 0, align 8
@BTB_MAX_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_init_qm_port_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_qm_port_params(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.init_qm_port_params*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MAX_NUM_PORTS_K2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @ACTIVE_TCS_BMAP_4PORT_K2, align 8
  br label %19

17:                                               ; preds = %1
  %18 = load i64, i64* @ACTIVE_TCS_BMAP, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %47, %19
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %29, i64 %30
  store %struct.init_qm_port_params* %31, %struct.init_qm_port_params** %6, align 8
  %32 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %6, align 8
  %33 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %6, align 8
  %36 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* @PBF_MAX_CMD_LINES_E4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = udiv i64 %37, %38
  %40 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %6, align 8
  %41 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* @BTB_MAX_BLOCKS, align 8
  %43 = load i64, i64* %5, align 8
  %44 = udiv i64 %42, %43
  %45 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %6, align 8
  %46 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %25
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %21

50:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
