; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_soft_reset_await_d2h_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_soft_reset_await_d2h_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"scic_sds_stp_request_soft_reset_await_d2h_frame_handler(0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCU_TASK_DONE_CHECK_RESPONSE = common dso_local global i32 0, align 4
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"IO Request:0x%x Frame Id:%d protocol violation occurred\0A\00", align 1
@SCU_TASK_DONE_UNEXP_FIS = common dso_local global i32 0, align 4
@SCI_FAILURE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@SCI_BASE_REQUEST_STATE_COMPLETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"SCIC IO Request 0x%x could not get frame header for frame index %d, status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @scic_sds_stp_request_soft_reset_await_d2h_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_request_soft_reset_await_d2h_frame_handler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = call i32 @sci_base_object_get_logger(%struct.TYPE_9__* %16)
  %18 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SCIC_LOG_TRACE(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = bitcast %struct.TYPE_11__** %6 to i8**
  %26 = call i64 @scic_sds_unsolicited_frame_control_get_header(i32* %23, i32 %24, i8** %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @SCI_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %51 [
    i32 128, label %34
  ]

34:                                               ; preds = %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = bitcast i32** %7 to i8**
  %39 = call i32 @scic_sds_unsolicited_frame_control_get_buffer(i32* %36, i32 %37, i8** %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = bitcast %struct.TYPE_11__* %42 to i32*
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @scic_sds_controller_copy_sata_response(i32* %41, i32* %43, i32* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* @SCU_TASK_DONE_CHECK_RESPONSE, align 4
  %49 = load i32, i32* @SCI_FAILURE_IO_RESPONSE_VALID, align 4
  %50 = call i32 @scic_sds_request_set_status(%struct.TYPE_12__* %47, i32 %48, i32 %49)
  br label %63

51:                                               ; preds = %30
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = call i32 @sci_base_object_get_logger(%struct.TYPE_9__* %52)
  %54 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @SCIC_LOG_WARNING(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* @SCU_TASK_DONE_UNEXP_FIS, align 4
  %61 = load i32, i32* @SCI_FAILURE_PROTOCOL_VIOLATION, align 4
  %62 = call i32 @scic_sds_request_set_status(%struct.TYPE_12__* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %34
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* @SCI_BASE_REQUEST_STATE_COMPLETED, align 4
  %69 = call i32 @sci_base_state_machine_change_state(i32* %67, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_10__* %70, i32 %71)
  br label %82

73:                                               ; preds = %2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = call i32 @sci_base_object_get_logger(%struct.TYPE_9__* %74)
  %76 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i64, i64* %5, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @SCIC_LOG_ERROR(i32 %80)
  br label %82

82:                                               ; preds = %73, %63
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_9__*) #1

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_get_buffer(i32*, i32, i8**) #1

declare dso_local i32 @scic_sds_controller_copy_sata_response(i32*, i32*, i32*) #1

declare dso_local i32 @scic_sds_request_set_status(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
