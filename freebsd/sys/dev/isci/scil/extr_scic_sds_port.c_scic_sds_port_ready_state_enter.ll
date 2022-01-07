; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_ready_state_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_ready_state_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@SCI_BASE_PORT_STATE_READY = common dso_local global i32 0, align 4
@SCI_BASE_PORT_STATE_RESETTING = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_PORT_NOT_READY_NO_ACTIVE_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scic_sds_port_ready_state_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_port_ready_state_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = load i32, i32* @SCI_BASE_PORT_STATE_READY, align 4
  %8 = call i32 @scic_sds_port_set_base_state_handlers(%struct.TYPE_12__* %6, i32 %7)
  %9 = load i64, i64* @SCI_BASE_PORT_STATE_RESETTING, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %9, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = call i32 @scic_sds_port_get_controller(%struct.TYPE_12__* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = load i32, i32* @SCI_SUCCESS, align 4
  %21 = call i32 @scic_cb_port_hard_reset_complete(i32 %18, %struct.TYPE_12__* %19, i32 %20)
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = call i32 @scic_sds_port_get_controller(%struct.TYPE_12__* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = load i32, i32* @SCIC_PORT_NOT_READY_NO_ACTIVE_PHYS, align 4
  %27 = call i32 @scic_cb_port_not_ready(i32 %24, %struct.TYPE_12__* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = call i32 @scic_sds_port_post_dummy_remote_node(%struct.TYPE_12__* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = call i32 @scic_sds_port_get_ready_substate_machine(%struct.TYPE_12__* %31)
  %33 = call i32 @sci_base_state_machine_start(i32 %32)
  ret void
}

declare dso_local i32 @scic_sds_port_set_base_state_handlers(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @scic_cb_port_hard_reset_complete(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @scic_sds_port_get_controller(%struct.TYPE_12__*) #1

declare dso_local i32 @scic_cb_port_not_ready(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @scic_sds_port_post_dummy_remote_node(%struct.TYPE_12__*) #1

declare dso_local i32 @sci_base_state_machine_start(i32) #1

declare dso_local i32 @scic_sds_port_get_ready_substate_machine(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
