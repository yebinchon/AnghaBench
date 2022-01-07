; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_abort_task_set.c_sati_abort_task_set_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_abort_task_set.c_sati_abort_task_set_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@SATI_SEQUENCE_STATE_TRANSLATE_DATA = common dso_local global i64 0, align 8
@SCI_IO_FAILURE_RESPONSE_VALID = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_READ_ERROR = common dso_local global i64 0, align 8
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_MEDIUM_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_ASCQ_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SCI_IO_FAILURE_TERMINATED = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i64 0, align 8
@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_abort_task_set_translate_data(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load i64, i64* @SATI_SEQUENCE_STATE_TRANSLATE_DATA, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %67, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %70

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @sati_cb_device_get_request_by_ncq_tag(i8* %20, i32 %21, i8* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %66

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sati_translate_error(%struct.TYPE_6__* %38, i8* %39, i32 %42)
  %44 = load i32, i32* @SCI_IO_FAILURE_RESPONSE_VALID, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SATI_SEQUENCE_STATE_READ_ERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %37
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %55 = load i32, i32* @SCSI_SENSE_MEDIUM_ERROR, align 4
  %56 = load i32, i32* @SCSI_ASC_UNRECOVERED_READ_ERROR, align 4
  %57 = load i32, i32* @SCSI_ASCQ_UNRECOVERED_READ_ERROR, align 4
  %58 = call i32 @sati_scsi_read_ncq_error_sense_construct(%struct.TYPE_6__* %51, i8* %52, i8* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %37
  br label %62

60:                                               ; preds = %32, %26
  %61 = load i32, i32* @SCI_IO_FAILURE_TERMINATED, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @sati_cb_io_request_complete(i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %19
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %16

70:                                               ; preds = %16
  %71 = load i64, i64* @SATI_SEQUENCE_STATE_FINAL, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @SATI_COMPLETE, align 4
  ret i32 %74
}

declare dso_local i32 @sati_cb_device_get_request_by_ncq_tag(i8*, i32, i8*) #1

declare dso_local i32 @sati_translate_error(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @sati_scsi_read_ncq_error_sense_construct(%struct.TYPE_6__*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_cb_io_request_complete(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
