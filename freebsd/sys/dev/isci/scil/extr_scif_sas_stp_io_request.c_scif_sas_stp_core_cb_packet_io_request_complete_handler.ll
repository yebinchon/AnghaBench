; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_core_cb_packet_io_request_complete_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_core_cb_packet_io_request_complete_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"scif_sas_stp_packet_core_cb_io_request_complete_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i64 0, align 8
@SATI_COMPLETE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SATI_SEQUENCE_INCOMPLETE = common dso_local global i64 0, align 8
@SCI_WARNING_SEQUENCE_INCOMPLETE = common dso_local global i64 0, align 8
@SCI_FAILURE = common dso_local global i64 0, align 8
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_16__*, i64*)* @scif_sas_stp_core_cb_packet_io_request_complete_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_stp_core_cb_packet_io_request_complete_handler(i32* %0, i32* %1, %struct.TYPE_16__* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %13 = bitcast %struct.TYPE_16__* %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @sci_base_object_get_logger(i32* %14)
  %16 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @SCIF_LOG_TRACE(i32 %22)
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SCI_FAILURE_IO_RESPONSE_VALID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = call i64 @sati_atapi_translate_command_response(i32* %32, %struct.TYPE_17__* %33, %struct.TYPE_17__* %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @SATI_COMPLETE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i64, i64* @SCI_SUCCESS, align 8
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  br label %60

42:                                               ; preds = %28
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* @SCI_FAILURE_IO_RESPONSE_VALID, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %59

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @SATI_SEQUENCE_INCOMPLETE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @SCI_WARNING_SEQUENCE_INCOMPLETE, align 8
  store i64 %54, i64* %5, align 8
  br label %87

55:                                               ; preds = %49
  %56 = load i64, i64* @SCI_FAILURE, align 8
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %39
  br label %85

61:                                               ; preds = %4
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SCI_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = call i32 @sati_atapi_translate_request_sense_response(i32* %78, %struct.TYPE_17__* %79, %struct.TYPE_17__* %80)
  %82 = load i64, i64* @SCI_FAILURE_IO_RESPONSE_VALID, align 8
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %74, %66, %61
  br label %85

85:                                               ; preds = %84, %60
  %86 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %85, %53
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i64 @sati_atapi_translate_command_response(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @sati_atapi_translate_request_sense_response(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
