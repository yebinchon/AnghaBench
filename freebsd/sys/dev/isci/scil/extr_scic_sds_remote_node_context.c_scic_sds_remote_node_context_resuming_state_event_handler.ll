; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_resuming_state_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_resuming_state_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SCIC_SDS_REMOTE_NODE_CONTEXT = type { i32, i32 }

@SCU_EVENT_POST_RCN_RELEASE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"SCIC Remote Node Context 0x%x was suspeneded by hardware while being resumed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"SCIC Remote Node Context 0x%x requested to process event 0x%x while in state %d.\0A\00", align 1
@SCI_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, i32)* @scic_sds_remote_node_context_resuming_state_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_remote_node_context_resuming_state_event_handler(%struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %0, i32 %1) #0 {
  %3 = alloca %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %0, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @scu_get_event_code(i32 %6)
  %8 = load i64, i64* @SCU_EVENT_POST_RCN_RELEASE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %13 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %12, i32 0, i32 0
  %14 = load i32, i32* @SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE, align 4
  %15 = call i32 @sci_base_state_machine_change_state(i32* %13, i32 %14)
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @scu_get_event_type(i32 %17)
  switch i32 %18, label %33 [
    i32 129, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %16, %16
  %20 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %21 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sci_base_object_get_logger(i32 %22)
  %24 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %25 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %30 = ptrtoint %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %29 to i32
  %31 = call i32 @SCIC_LOG_INFO(i32 %30)
  %32 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %16
  %34 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %35 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sci_base_object_get_logger(i32 %36)
  %38 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %39 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  %46 = getelementptr inbounds %struct.SCIC_SDS_REMOTE_NODE_CONTEXT, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %45, i32 0, i32 0
  %47 = call i32 @sci_base_state_machine_get_state(i32* %46)
  %48 = call i32 @SCIC_LOG_WARNING(i32 %47)
  %49 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %33, %19
  br label %51

51:                                               ; preds = %50, %10
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @scu_get_event_code(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @scu_get_event_type(i32) #1

declare dso_local i32 @SCIC_LOG_INFO(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_state_machine_get_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
