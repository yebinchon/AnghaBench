; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { i32 }

@SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_UNSPECIFIED = common dso_local global i32 0, align 4
@scic_sds_remote_node_context_state_table = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_remote_node_context_construct(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %8 = call i32 @memset(%struct.TYPE_11__* %7, i32 0, i32 32)
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %14, align 8
  %15 = load i32, i32* @SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_UNSPECIFIED, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* @scic_sds_remote_node_context_state_table, align 4
  %31 = load i32, i32* @SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE, align 4
  %32 = call i32 @sci_base_state_machine_construct(i32* %27, %struct.TYPE_13__* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = call i32 @sci_base_state_machine_start(i32* %34)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sci_base_state_machine_construct(i32*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sci_base_state_machine_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
