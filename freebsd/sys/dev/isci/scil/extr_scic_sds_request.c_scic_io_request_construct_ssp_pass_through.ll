; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_io_request_construct_ssp_pass_through.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_io_request_construct_ssp_pass_through.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"scic_io_request_construct_ssp_pass_through(0x%x) enter\0A\00", align 1
@SCI_BASE_REQUEST_STATE_CONSTRUCTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_io_request_construct_ssp_pass_through(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @sci_base_object_get_logger(i8* %11)
  %13 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = call i32 @SCIC_LOG_TRACE(i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %20, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = call i32 %21(%struct.TYPE_15__* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %26, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = call i32 %27(%struct.TYPE_15__* %28)
  %30 = call i32 @scu_ssp_io_request_construct_task_context(%struct.TYPE_15__* %17, i32 %23, i32 %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = call i64 @scic_sds_io_request_build_ssp_command_iu_pass_through(%struct.TYPE_15__* %31, %struct.TYPE_14__* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @SCI_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %48

39:                                               ; preds = %2
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = call i32 @scic_sds_request_initialize_state_logging(%struct.TYPE_15__* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* @SCI_BASE_REQUEST_STATE_CONSTRUCTED, align 4
  %46 = call i32 @sci_base_state_machine_change_state(i32* %44, i32 %45)
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %39, %37
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i8*) #1

declare dso_local i32 @scu_ssp_io_request_construct_task_context(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @scic_sds_io_request_build_ssp_command_iu_pass_through(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @scic_sds_request_initialize_state_logging(%struct.TYPE_15__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
