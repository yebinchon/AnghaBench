; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_packet_io_request_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_packet_io_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@SCI_FAILURE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"scif_sas_stp_packet_io_request_construct(0x%x) enter\0A\00", align 1
@SATI_SUCCESS = common dso_local global i64 0, align 8
@scif_sas_stp_core_cb_packet_io_request_complete_handler = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i64 0, align 8
@SCI_SUCCESS_IO_COMPLETE_BEFORE_START = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unexpected SAT ATAPI translation failure 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_stp_packet_io_request_construct(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %11)
  %13 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = ptrtoint %struct.TYPE_16__* %14 to i32
  %16 = call i32 @SCIF_LOG_TRACE(i32 %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = call i64 @sati_atapi_translate_command(i32* %20, i32* %24, %struct.TYPE_16__* %25, %struct.TYPE_16__* %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @SATI_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @scic_io_request_construct_basic_sata(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @scif_sas_stp_core_cb_packet_io_request_complete_handler, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  br label %62

41:                                               ; preds = %1
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @SATI_COMPLETE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @SCI_SUCCESS_IO_COMPLETE_BEFORE_START, align 4
  store i32 %46, i32* %4, align 4
  br label %61

47:                                               ; preds = %41
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @SCI_FAILURE_IO_RESPONSE_VALID, align 4
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %54)
  %56 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = ptrtoint %struct.TYPE_16__* %57 to i32
  %59 = call i32 @SCIF_LOG_ERROR(i32 %58)
  br label %60

60:                                               ; preds = %53, %51
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_16__*) #1

declare dso_local i64 @sati_atapi_translate_command(i32*, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @scic_io_request_construct_basic_sata(i32) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
