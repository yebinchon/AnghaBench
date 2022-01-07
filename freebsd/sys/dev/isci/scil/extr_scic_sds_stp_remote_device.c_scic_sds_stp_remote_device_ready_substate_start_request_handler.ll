; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_substate_start_request_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_substate_start_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 (i32*)* }
%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*)* }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_CMD = common dso_local global i32 0, align 4
@SCI_SOFTWARE_SUSPENSION = common dso_local global i32 0, align 4
@scic_sds_remote_device_continue_request = common dso_local global i64 0, align 8
@SCI_FAILURE_RESET_DEVICE_PARTIAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @scic_sds_stp_remote_device_ready_substate_start_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_remote_device_ready_substate_start_request_handler(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %8, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*)*, i64 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*)** %18, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = call i64 %19(%struct.TYPE_18__* %22, %struct.TYPE_17__* %23, %struct.TYPE_16__* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* @SCI_SUCCESS, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %2
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = call i64 @scic_sds_remote_node_context_start_task(i32 %32, %struct.TYPE_16__* %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* @SCI_SUCCESS, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64 (i32*)*, i64 (i32*)** %43, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 %44(i32* %45)
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %38, %29
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @SCI_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %54, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_CMD, align 4
  %58 = call i32 @sci_base_state_machine_change_state(i32* %56, i32 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SCI_SOFTWARE_SUSPENSION, align 4
  %63 = call i32 @scic_sds_remote_node_context_suspend(i32 %61, i32 %62, i32* null, i32* null)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* @scic_sds_remote_device_continue_request, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = call i32 @scic_sds_remote_node_context_resume(i32 %66, i32 %68, %struct.TYPE_17__* %69)
  br label %71

71:                                               ; preds = %51, %47
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @scic_sds_remote_device_start_request(%struct.TYPE_17__* %72, %struct.TYPE_16__* %73, i64 %74)
  %76 = load i64, i64* @SCI_FAILURE_RESET_DEVICE_PARTIAL_SUCCESS, align 8
  store i64 %76, i64* %3, align 8
  br label %79

77:                                               ; preds = %2
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %71
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @scic_sds_remote_node_context_start_task(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @scic_sds_remote_node_context_suspend(i32, i32, i32*, i32*) #1

declare dso_local i32 @scic_sds_remote_node_context_resume(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @scic_sds_remote_device_start_request(%struct.TYPE_17__*, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
