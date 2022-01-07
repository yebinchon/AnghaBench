; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_ready_operational_substate_reset_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_ready_operational_substate_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32** }
%struct.TYPE_5__ = type { i32 }

@SCI_FAILURE_INVALID_PHY = common dso_local global i64 0, align 8
@SCI_INVALID_HANDLE = common dso_local global i32* null, align 8
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_PORT_NOT_READY_HARD_RESET_REQUESTED = common dso_local global i32 0, align 4
@SCI_BASE_PORT_STATE_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @scic_sds_port_ready_operational_substate_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_port_ready_operational_substate_reset_handler(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @SCI_FAILURE_INVALID_PHY, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  %12 = load i32*, i32** @SCI_INVALID_HANDLE, align 8
  store i32* %12, i32** %8, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @SCI_MAX_PHYS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** @SCI_INVALID_HANDLE, align 8
  %20 = icmp eq i32* %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %44

23:                                               ; preds = %21
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** @SCI_INVALID_HANDLE, align 8
  %32 = icmp ne i32* %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @scic_sds_port_active_phy(%struct.TYPE_6__* %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** @SCI_INVALID_HANDLE, align 8
  store i32* %39, i32** %8, align 8
  br label %40

40:                                               ; preds = %38, %33, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %13

44:                                               ; preds = %21
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** @SCI_INVALID_HANDLE, align 8
  %47 = icmp ne i32* %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @scic_sds_phy_reset(i32* %49)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @SCI_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = call i32 @scic_sds_port_get_controller(%struct.TYPE_6__* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @scic_cb_timer_start(i32 %56, i32 %59, i64 %60)
  %62 = load i32, i32* @SCIC_PORT_NOT_READY_HARD_RESET_REQUESTED, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* @SCI_BASE_PORT_STATE_RESETTING, align 4
  %69 = call i32 @sci_base_state_machine_change_state(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %54, %48
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local i32 @scic_sds_port_active_phy(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @scic_sds_phy_reset(i32*) #1

declare dso_local i32 @scic_cb_timer_start(i32, i32, i64) #1

declare dso_local i32 @scic_sds_port_get_controller(%struct.TYPE_6__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
