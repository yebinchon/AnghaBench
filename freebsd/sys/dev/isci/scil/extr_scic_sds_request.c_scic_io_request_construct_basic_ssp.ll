; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_io_request_construct_basic_ssp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_io_request_construct_basic_ssp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@SCIC_LOG_OBJECT_SSP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"scic_io_request_construct_basic_ssp(0x%x) enter\0A\00", align 1
@SCIC_SSP_PROTOCOL = common dso_local global i32 0, align 4
@SCI_BASE_REQUEST_STATE_CONSTRUCTED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_io_request_construct_basic_ssp(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = call i32 @sci_base_object_get_logger(%struct.TYPE_9__* %7)
  %9 = load i32, i32* @SCIC_LOG_OBJECT_SSP_IO_REQUEST, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = ptrtoint %struct.TYPE_9__* %10 to i32
  %12 = call i32 @SCIC_LOG_TRACE(i32 %11)
  %13 = load i32, i32* @SCIC_SSP_PROTOCOL, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = call i8* @scic_sds_request_get_user_request(%struct.TYPE_9__* %16)
  store i8* %17, i8** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @scic_cb_io_request_get_data_direction(i8* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @scic_cb_io_request_get_transfer_length(i8* %21)
  %23 = call i32 @scu_ssp_io_request_construct_task_context(%struct.TYPE_9__* %18, i32 %20, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = call i32 @scic_sds_io_request_build_ssp_command_iu(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @scic_sds_request_initialize_state_logging(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* @SCI_BASE_REQUEST_STATE_CONSTRUCTED, align 4
  %32 = call i32 @sci_base_state_machine_change_state(i32* %30, i32 %31)
  %33 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %33
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_9__*) #1

declare dso_local i8* @scic_sds_request_get_user_request(%struct.TYPE_9__*) #1

declare dso_local i32 @scu_ssp_io_request_construct_task_context(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @scic_cb_io_request_get_data_direction(i8*) #1

declare dso_local i32 @scic_cb_io_request_get_transfer_length(i8*) #1

declare dso_local i32 @scic_sds_io_request_build_ssp_command_iu(%struct.TYPE_9__*) #1

declare dso_local i32 @scic_sds_request_initialize_state_logging(%struct.TYPE_9__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
