; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_io_request_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_io_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i32*, i32, %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@SCI_FAILURE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"scif_sas_stp_io_request_construct(0x%x) enter\0A\00", align 1
@SATI_SUCCESS = common dso_local global i64 0, align 8
@stp_io_request_constructed_handlers = common dso_local global i32 0, align 4
@scif_sas_stp_core_cb_io_request_complete_handler = common dso_local global i8* null, align 8
@SATI_SUCCESS_SGL_TRANSLATED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i64 0, align 8
@SCI_SUCCESS_IO_COMPLETE_BEFORE_START = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unexpected SAT translation failure 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_stp_io_request_construct(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = call i32 @sci_base_object_get_logger(%struct.TYPE_18__* %12)
  %14 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %16 = ptrtoint %struct.TYPE_18__* %15 to i32
  %17 = call i32 @SCIF_LOG_TRACE(i32 %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = call i64 @sati_translate_command(i32* %21, i32* %25, %struct.TYPE_18__* %26, %struct.TYPE_18__* %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @SATI_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @scic_io_request_construct_basic_sata(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  store i32* @stp_io_request_constructed_handlers, i32** %40, align 8
  %41 = load i8*, i8** @scif_sas_stp_core_cb_io_request_complete_handler, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  br label %87

45:                                               ; preds = %1
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @SATI_SUCCESS_SGL_TRANSLATED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load i32, i32* @FALSE, align 4
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @scic_io_request_construct_advanced_sata(i32 %55, %struct.TYPE_19__* %6)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store i32* @stp_io_request_constructed_handlers, i32** %59, align 8
  %60 = load i8*, i8** @scif_sas_stp_core_cb_io_request_complete_handler, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %64, i32* %4, align 4
  br label %86

65:                                               ; preds = %45
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @SATI_COMPLETE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @SCI_SUCCESS_IO_COMPLETE_BEFORE_START, align 4
  store i32 %70, i32* %4, align 4
  br label %85

71:                                               ; preds = %65
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @SCI_FAILURE_IO_RESPONSE_VALID, align 4
  store i32 %76, i32* %4, align 4
  br label %84

77:                                               ; preds = %71
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %79 = call i32 @sci_base_object_get_logger(%struct.TYPE_18__* %78)
  %80 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %82 = ptrtoint %struct.TYPE_18__* %81 to i32
  %83 = call i32 @SCIF_LOG_ERROR(i32 %82)
  br label %84

84:                                               ; preds = %77, %75
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %49
  br label %87

87:                                               ; preds = %86, %32
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_18__*) #1

declare dso_local i64 @sati_translate_command(i32*, i32*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @scic_io_request_construct_basic_sata(i32) #1

declare dso_local i32 @scic_io_request_construct_advanced_sata(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
