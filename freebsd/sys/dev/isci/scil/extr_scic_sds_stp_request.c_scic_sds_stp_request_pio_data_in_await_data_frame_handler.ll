; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_pio_data_in_await_data_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_pio_data_in_await_data_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_19__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { %struct.TYPE_15__, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"scic_sds_stp_request_pio_data_in_await_data_frame_handler(0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SATA_FIS_TYPE_DATA = common dso_local global i64 0, align 8
@ATA_STATUS_REG_BSY_BIT = common dso_local global i32 0, align 4
@SCU_TASK_DONE_CHECK_RESPONSE = common dso_local global i32 0, align 4
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i32 0, align 4
@SCI_BASE_REQUEST_STATE_COMPLETED = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"SCIC PIO Request 0x%x received frame %d with fis type 0x%02x when expecting a data fis.\0A\00", align 1
@SCU_TASK_DONE_GOOD = common dso_local global i32 0, align 4
@SCI_FAILURE_IO_REQUIRES_SCSI_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"SCIC IO Request 0x%x could not get frame header for frame index %d, status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @scic_sds_stp_request_pio_data_in_await_data_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_request_pio_data_in_await_data_frame_handler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %9, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %17 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %16)
  %18 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SCIC_LOG_TRACE(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = bitcast %struct.TYPE_18__** %6 to i8**
  %26 = call i64 @scic_sds_unsolicited_frame_control_get_header(i32* %23, i32 %24, i8** %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @SCI_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %131

30:                                               ; preds = %2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SATA_FIS_TYPE_DATA, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %105

36:                                               ; preds = %30
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %65

53:                                               ; preds = %36
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %4, align 4
  %57 = bitcast i32** %7 to i8**
  %58 = call i64 @scic_sds_unsolicited_frame_control_get_buffer(i32* %55, i32 %56, i8** %57)
  store i64 %58, i64* %5, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @scic_sds_stp_request_pio_data_in_copy_data(%struct.TYPE_16__* %59, i32* %60)
  store i64 %61, i64* %5, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_17__* %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %44
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @SCI_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %65
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %69
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ATA_STATUS_REG_BSY_BIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* @SCU_TASK_DONE_CHECK_RESPONSE, align 4
  %89 = load i32, i32* @SCI_FAILURE_IO_RESPONSE_VALID, align 4
  %90 = call i32 @scic_sds_request_set_status(%struct.TYPE_19__* %87, i32 %88, i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* @SCI_BASE_REQUEST_STATE_COMPLETED, align 4
  %96 = call i32 @sci_base_state_machine_change_state(i32* %94, i32 %95)
  br label %103

97:                                               ; preds = %76
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* @SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE, align 4
  %102 = call i32 @sci_base_state_machine_change_state(i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %85
  br label %104

104:                                              ; preds = %103, %69, %65
  br label %130

105:                                              ; preds = %30
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %106)
  %108 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @SCIC_LOG_ERROR(i32 %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* @SCU_TASK_DONE_GOOD, align 4
  %119 = load i32, i32* @SCI_FAILURE_IO_REQUIRES_SCSI_ABORT, align 4
  %120 = call i32 @scic_sds_request_set_status(%struct.TYPE_19__* %117, i32 %118, i32 %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* @SCI_BASE_REQUEST_STATE_COMPLETED, align 4
  %126 = call i32 @sci_base_state_machine_change_state(i32* %124, i32 %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_17__* %127, i32 %128)
  br label %130

130:                                              ; preds = %105, %104
  br label %140

131:                                              ; preds = %2
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %133 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %132)
  %134 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load i64, i64* %5, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @SCIC_LOG_ERROR(i32 %138)
  br label %140

140:                                              ; preds = %131, %130
  %141 = load i64, i64* %5, align 8
  ret i64 %141
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_16__*) #1

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_buffer(i32*, i32, i8**) #1

declare dso_local i64 @scic_sds_stp_request_pio_data_in_copy_data(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @scic_sds_request_set_status(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
