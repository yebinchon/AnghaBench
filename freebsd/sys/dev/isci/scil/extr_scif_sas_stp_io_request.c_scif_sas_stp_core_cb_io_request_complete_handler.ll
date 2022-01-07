; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_core_cb_io_request_complete_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_core_cb_io_request_complete_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64 }

@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"scif_sas_stp_core_cb_io_request_complete_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SAT_PROTOCOL_FPDMA = common dso_local global i64 0, align 8
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i64 0, align 8
@SCI_FAILURE_IO_TERMINATED = common dso_local global i64 0, align 8
@SATI_COMPLETE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SATI_SEQUENCE_INCOMPLETE = common dso_local global i64 0, align 8
@SCI_WARNING_SEQUENCE_INCOMPLETE = common dso_local global i64 0, align 8
@SATI_COMPLETE_IO_DONE_EARLY = common dso_local global i64 0, align 8
@SCI_SUCCESS_IO_DONE_EARLY = common dso_local global i64 0, align 8
@SCI_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Sequence Terminated(0x%x, 0x%x, 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_15__*, i64*)* @scif_sas_stp_core_cb_io_request_complete_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_stp_core_cb_io_request_complete_handler(i32* %0, i32* %1, %struct.TYPE_15__* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %13 = bitcast %struct.TYPE_15__* %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @sci_base_object_get_logger(i32* %14)
  %16 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @SCIF_LOG_TRACE(i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SAT_PROTOCOL_FPDMA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @scif_sas_stp_remote_device_free_ncq_tag(i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %32, %4
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SCI_FAILURE_IO_RESPONSE_VALID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = call i64 @sati_cb_do_translate_response(%struct.TYPE_15__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %97

51:                                               ; preds = %47
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SCI_FAILURE_IO_TERMINATED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %51, %42
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = call i64 @sati_translate_command_response(%struct.TYPE_17__* %60, %struct.TYPE_16__* %61, %struct.TYPE_16__* %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @SATI_COMPLETE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i64, i64* @SCI_SUCCESS, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  br label %96

70:                                               ; preds = %56
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i64, i64* @SCI_FAILURE_IO_RESPONSE_VALID, align 8
  %76 = load i64*, i64** %9, align 8
  store i64 %75, i64* %76, align 8
  br label %95

77:                                               ; preds = %70
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @SATI_SEQUENCE_INCOMPLETE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* @SCI_WARNING_SEQUENCE_INCOMPLETE, align 8
  store i64 %82, i64* %5, align 8
  br label %121

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* @SATI_COMPLETE_IO_DONE_EARLY, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i64, i64* @SCI_SUCCESS_IO_DONE_EARLY, align 8
  %89 = load i64*, i64** %9, align 8
  store i64 %88, i64* %89, align 8
  br label %93

90:                                               ; preds = %83
  %91 = load i64, i64* @SCI_FAILURE, align 8
  %92 = load i64*, i64** %9, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %67
  br label %119

97:                                               ; preds = %51, %47
  %98 = load i64*, i64** %9, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SCI_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @sci_base_object_get_logger(i32* %103)
  %105 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = ptrtoint %struct.TYPE_15__* %108 to i32
  %110 = call i32 @SCIF_LOG_INFO(i32 %109)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = call i32 @sati_sequence_terminate(%struct.TYPE_17__* %114, %struct.TYPE_16__* %115, %struct.TYPE_16__* %116)
  br label %118

118:                                              ; preds = %102, %97
  br label %119

119:                                              ; preds = %118, %96
  %120 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %119, %81
  %122 = load i64, i64* %5, align 8
  ret i64 %122
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @scif_sas_stp_remote_device_free_ncq_tag(i32, i32) #1

declare dso_local i64 @sati_cb_do_translate_response(%struct.TYPE_15__*) #1

declare dso_local i64 @sati_translate_command_response(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @SCIF_LOG_INFO(i32) #1

declare dso_local i32 @sati_sequence_terminate(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
