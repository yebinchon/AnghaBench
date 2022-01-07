; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_task_request.c_scif_sas_stp_core_cb_task_request_complete_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_task_request.c_scif_sas_stp_core_cb_task_request_complete_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SCIF_LOG_OBJECT_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"scif_sas_stp_core_cb_task_request_complete_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i64 0, align 8
@SATI_COMPLETE = common dso_local global i64 0, align 8
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SATI_SEQUENCE_INCOMPLETE = common dso_local global i64 0, align 8
@SCI_FAILURE = common dso_local global i64 0, align 8
@SCI_SAS_ABORT_TASK_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i64*)* @scif_sas_stp_core_cb_task_request_complete_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_stp_core_cb_task_request_complete_handler(i32* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @sci_base_object_get_logger(i32* %14)
  %16 = load i32, i32* @SCIF_LOG_OBJECT_TASK_MANAGEMENT, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @SCIF_LOG_TRACE(i32 %22)
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SCI_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCI_FAILURE_IO_RESPONSE_VALID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %28, %4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = call i64 @sati_translate_task_response(i32* %37, %struct.TYPE_10__* %38, %struct.TYPE_10__* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @SATI_COMPLETE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i64, i64* @SCI_SUCCESS, align 8
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  br label %65

47:                                               ; preds = %33
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* @SCI_FAILURE_IO_RESPONSE_VALID, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  br label %64

54:                                               ; preds = %47
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @SATI_SEQUENCE_INCOMPLETE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %59, i64* %5, align 8
  br label %78

60:                                               ; preds = %54
  %61 = load i64, i64* @SCI_FAILURE, align 8
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %44
  br label %76

66:                                               ; preds = %28
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = call i64 @scif_sas_task_request_get_function(%struct.TYPE_10__* %67)
  %69 = load i64, i64* @SCI_SAS_ABORT_TASK_SET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = call i32 @scif_sas_stp_task_request_abort_task_set_failure_handler(i32* %72, %struct.TYPE_10__* %73)
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %76, %58
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i64 @sati_translate_task_response(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @scif_sas_task_request_get_function(%struct.TYPE_10__*) #1

declare dso_local i32 @scif_sas_stp_task_request_abort_task_set_failure_handler(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
