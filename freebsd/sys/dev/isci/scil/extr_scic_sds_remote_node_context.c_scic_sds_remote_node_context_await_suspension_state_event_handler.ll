; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_await_suspension_state_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_await_suspension_state_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SCIC_SDS_REMOTE_NODE_CONTEXT = type { i32, i32, i8* }

@SCIC_SDS_REMOTE_NODE_CONTEXT_TX_SUSPENDED_STATE = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_CONTEXT_TX_RX_SUSPENDED_STATE = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"SCIC Remote Node Context 0x%x requested to process event 0x%x while in state %d.\0A\00", align 1
@SCI_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, i32)* @scic_sds_remote_node_context_await_suspension_state_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_remote_node_context_await_suspension_state_event_handler(%struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %0, i32 %1) #0 {
  %3 = alloca %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %0, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @scu_get_event_type(i32 %6)
  switch i32 %7, label %28 [
    i32 129, label %8
    i32 128, label %18
  ]

8:                                                ; preds = %2
  %9 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %10 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %9, i32 0, i32 0
  %11 = load i32, i32* @SCIC_SDS_REMOTE_NODE_CONTEXT_TX_SUSPENDED_STATE, align 4
  %12 = call i32 @sci_base_state_machine_change_state(i32* %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @scu_get_event_specifier(i32 %13)
  %15 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %16 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %17, i32* %5, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %20 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %19, i32 0, i32 0
  %21 = load i32, i32* @SCIC_SDS_REMOTE_NODE_CONTEXT_TX_RX_SUSPENDED_STATE, align 4
  %22 = call i32 @sci_base_state_machine_change_state(i32* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @scu_get_event_specifier(i32 %23)
  %25 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %26 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %27, i32* %5, align 4
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %30 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sci_base_object_get_logger(i32 %31)
  %33 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %34 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %41 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %40, i32 0, i32 0
  %42 = call i32 @sci_base_state_machine_get_state(i32* %41)
  %43 = call i32 @SCIC_LOG_WARNING(i32 %42)
  %44 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %28, %18, %8
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @scu_get_event_type(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i8* @scu_get_event_specifier(i32) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32) #1

declare dso_local i32 @sci_base_state_machine_get_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
