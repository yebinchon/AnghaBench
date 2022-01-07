; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_task_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_task_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@ATA_STATUS_REG_DEVICE_FAULT_BIT = common dso_local global i32 0, align 4
@SCSI_TASK_MGMT_FUNC_FAILED = common dso_local global i32 0, align 4
@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SCSI_TASK_MGMT_FUNC_COMPLETE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4
@SATI_FAILURE = common dso_local global i32 0, align 4
@SATI_FAILURE_INVALID_SEQUENCE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_translate_task_response(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @sati_get_ata_status(i32* %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @ATA_STATUS_REG_DEVICE_FAULT_BIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @SCSI_TASK_MGMT_FUNC_FAILED, align 4
  %26 = call i32 @sati_scsi_response_data_construct(%struct.TYPE_5__* %23, i8* %24, i32 %25)
  %27 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %73 [
    i32 128, label %32
    i32 129, label %49
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @SCSI_TASK_MGMT_FUNC_FAILED, align 4
  %41 = call i32 @sati_scsi_response_data_construct(%struct.TYPE_5__* %38, i8* %39, i32 %40)
  br label %47

42:                                               ; preds = %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @SCSI_TASK_MGMT_FUNC_COMPLETE, align 4
  %46 = call i32 @sati_scsi_response_data_construct(%struct.TYPE_5__* %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %48, i32* %8, align 4
  br label %75

49:                                               ; preds = %28
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @SCSI_TASK_MGMT_FUNC_FAILED, align 4
  %58 = call i32 @sati_scsi_response_data_construct(%struct.TYPE_5__* %55, i8* %56, i32 %57)
  br label %72

59:                                               ; preds = %49
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @sati_cb_get_ata_data_address(i8* %60)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %65, i32* %8, align 4
  br label %71

66:                                               ; preds = %59
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @sati_abort_task_set_translate_data(%struct.TYPE_5__* %67, i8* %68, i8* %69)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %66, %64
  br label %72

72:                                               ; preds = %71, %54
  br label %75

73:                                               ; preds = %28
  %74 = load i32, i32* @SATI_FAILURE_INVALID_SEQUENCE_TYPE, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %72, %47
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i64 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_scsi_response_data_construct(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i8* @sati_cb_get_ata_data_address(i8*) #1

declare dso_local i32 @sati_abort_task_set_translate_data(%struct.TYPE_5__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
