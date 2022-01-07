; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_await_suspension_state_start_task_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_await_suspension_state_start_task_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SCIC_SDS_REMOTE_NODE_CONTEXT = type { i32 }
%struct.SCIC_SDS_REQUEST = type { i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, %struct.SCIC_SDS_REQUEST*)* @scic_sds_remote_node_context_await_suspension_state_start_task_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_remote_node_context_await_suspension_state_start_task_handler(%struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %0, %struct.SCIC_SDS_REQUEST* %1) #0 {
  %3 = alloca %struct.SCIC_SDS_REMOTE_NODE_CONTEXT*, align 8
  %4 = alloca %struct.SCIC_SDS_REQUEST*, align 8
  store %struct.SCIC_SDS_REMOTE_NODE_CONTEXT* %0, %struct.SCIC_SDS_REMOTE_NODE_CONTEXT** %3, align 8
  store %struct.SCIC_SDS_REQUEST* %1, %struct.SCIC_SDS_REQUEST** %4, align 8
  %5 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
