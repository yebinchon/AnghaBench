; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_invalidating_state_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_invalidating_state_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@SCU_EVENT_POST_RNC_INVALIDATE_COMPLETE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_FINAL = common dso_local global i64 0, align 8
@SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_CONTEXT_POSTING_STATE = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"SCIC Remote Node Context 0x%x was suspeneded by hardware while being invalidated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"SCIC Remote Node Context 0x%x requested to process event 0x%x while in state %d.\0A\00", align 1
@SCI_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @scic_sds_remote_node_context_invalidating_state_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_remote_node_context_invalidating_state_event_handler(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @scu_get_event_code(i32 %6)
  %8 = load i64, i64* @SCU_EVENT_POST_RNC_INVALIDATE_COMPLETE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_FINAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* @SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE, align 4
  %21 = call i32 @sci_base_state_machine_change_state(i32* %19, i32 %20)
  br label %27

22:                                               ; preds = %10
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* @SCIC_SDS_REMOTE_NODE_CONTEXT_POSTING_STATE, align 4
  %26 = call i32 @sci_base_state_machine_change_state(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  br label %63

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @scu_get_event_type(i32 %29)
  switch i32 %30, label %45 [
    i32 129, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %28, %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sci_base_object_get_logger(i32 %34)
  %36 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %37 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = ptrtoint %struct.TYPE_3__* %41 to i32
  %43 = call i32 @SCIC_LOG_INFO(i32 %42)
  %44 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %44, i32* %5, align 4
  br label %62

45:                                               ; preds = %28
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sci_base_object_get_logger(i32 %48)
  %50 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %51 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = call i32 @sci_base_state_machine_get_state(i32* %58)
  %60 = call i32 @SCIC_LOG_WARNING(i32 %59)
  %61 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %45, %31
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %5, align 4
  ret i32 %64
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
