; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_pio_await_frame_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_pio_await_frame_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__, %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { %struct.TYPE_15__, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"scic_sds_stp_request_pio_data_in_await_frame_frame_handler(0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SAT_PROTOCOL_PIO_DATA_IN = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REQUEST_STARTED_PIO_DATA_IN_AWAIT_DATA_SUBSTATE = common dso_local global i32 0, align 4
@SAT_PROTOCOL_PIO_DATA_OUT = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REQUEST_STARTED_PIO_DATA_OUT_TRANSMIT_DATA_SUBSTATE = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE = common dso_local global i32 0, align 4
@ATA_STATUS_REG_BSY_BIT = common dso_local global i32 0, align 4
@SCU_TASK_DONE_CHECK_RESPONSE = common dso_local global i32 0, align 4
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i32 0, align 4
@SCI_BASE_REQUEST_STATE_COMPLETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"SCIC PIO Request 0x%x received D2H Register FIS with BSY status 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"SCIC IO Request 0x%x could not get frame header for frame index %d, status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @scic_sds_stp_request_pio_await_frame_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_request_pio_await_frame_frame_handler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
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
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
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
  %25 = bitcast %struct.TYPE_19__** %6 to i8**
  %26 = call i64 @scic_sds_unsolicited_frame_control_get_header(i32* %23, i32 %24, i8** %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @SCI_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %159

30:                                               ; preds = %2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %154 [
    i32 130, label %34
    i32 128, label %108
    i32 129, label %114
  ]

34:                                               ; preds = %30
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = bitcast i32** %7 to i8**
  %39 = call i32 @scic_sds_unsolicited_frame_control_get_buffer(i32* %36, i32 %37, i8** %38)
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  %42 = bitcast i32* %41 to %struct.TYPE_18__*
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  %51 = bitcast i32* %50 to %struct.TYPE_18__*
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %61 = bitcast %struct.TYPE_19__* %60 to i32*
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @scic_sds_controller_copy_sata_response(%struct.TYPE_12__* %59, i32* %61, i32* %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SAT_PROTOCOL_PIO_DATA_IN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %34
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i32, i32* @SCIC_SDS_STP_REQUEST_STARTED_PIO_DATA_IN_AWAIT_DATA_SUBSTATE, align 4
  %84 = call i32 @sci_base_state_machine_change_state(i32* %82, i32 %83)
  br label %107

85:                                               ; preds = %34
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SAT_PROTOCOL_PIO_DATA_OUT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %85
  %94 = load i32*, i32** %3, align 8
  %95 = call i64 @scic_sds_stp_request_pio_data_out_transmit_data(i32* %94)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @SCI_SUCCESS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load i32, i32* @SCIC_SDS_STP_REQUEST_STARTED_PIO_DATA_OUT_TRANSMIT_DATA_SUBSTATE, align 4
  %104 = call i32 @sci_base_state_machine_change_state(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %79
  br label %155

108:                                              ; preds = %30
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* @SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE, align 4
  %113 = call i32 @sci_base_state_machine_change_state(i32* %111, i32 %112)
  br label %155

114:                                              ; preds = %30
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ATA_STATUS_REG_BSY_BIT, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %114
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %4, align 4
  %125 = bitcast i32** %7 to i8**
  %126 = call i32 @scic_sds_unsolicited_frame_control_get_buffer(i32* %123, i32 %124, i8** %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = bitcast %struct.TYPE_19__* %129 to i32*
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @scic_sds_controller_copy_sata_response(%struct.TYPE_12__* %128, i32* %130, i32* %131)
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* @SCU_TASK_DONE_CHECK_RESPONSE, align 4
  %136 = load i32, i32* @SCI_FAILURE_IO_RESPONSE_VALID, align 4
  %137 = call i32 @scic_sds_request_set_status(%struct.TYPE_20__* %134, i32 %135, i32 %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* @SCI_BASE_REQUEST_STATE_COMPLETED, align 4
  %143 = call i32 @sci_base_state_machine_change_state(i32* %141, i32 %142)
  br label %153

144:                                              ; preds = %114
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %146 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %145)
  %147 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @SCIC_LOG_INFO(i32 %151)
  br label %153

153:                                              ; preds = %144, %121
  br label %155

154:                                              ; preds = %30
  br label %155

155:                                              ; preds = %154, %153, %108, %107
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_17__* %156, i32 %157)
  br label %168

159:                                              ; preds = %2
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %161 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %160)
  %162 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %164 = load i32, i32* %4, align 4
  %165 = load i64, i64* %5, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @SCIC_LOG_ERROR(i32 %166)
  br label %168

168:                                              ; preds = %159, %155
  %169 = load i64, i64* %5, align 8
  ret i64 %169
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_16__*) #1

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_get_buffer(i32*, i32, i8**) #1

declare dso_local i32 @scic_sds_controller_copy_sata_response(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i64 @scic_sds_stp_request_pio_data_out_transmit_data(i32*) #1

declare dso_local i32 @scic_sds_request_set_status(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @SCIC_LOG_INFO(i32) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
