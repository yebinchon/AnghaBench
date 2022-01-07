; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_reassign_blocks.c_sati_reassign_blocks_translate_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_reassign_blocks.c_sati_reassign_blocks_translate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }

@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SATI_REASSIGN_BLOCKS_COMMAND_FAIL = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i64 0, align 8
@SATI_SEQUENCE_INCOMPLETE = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_MEDIUM_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_ASCQ_UNRECOVERED_READ_ERROR_AUTO_REALLOCATE_FAIL = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_REASSIGN_BLOCKS_COMMAND_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_reassign_blocks_translate_response(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @sati_get_ata_status(i32* %15)
  %17 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %3
  %21 = load i32, i32* @SATI_REASSIGN_BLOCKS_COMMAND_FAIL, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load i64, i64* @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load i32, i32* @SATI_SEQUENCE_INCOMPLETE, align 4
  store i32 %41, i32* %4, align 4
  br label %75

42:                                               ; preds = %20
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %46 = load i32, i32* @SCSI_SENSE_MEDIUM_ERROR, align 4
  %47 = load i32, i32* @SCSI_ASC_UNRECOVERED_READ_ERROR, align 4
  %48 = load i32, i32* @SCSI_ASCQ_UNRECOVERED_READ_ERROR_AUTO_REALLOCATE_FAIL, align 4
  %49 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__* %43, i8* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %3
  %53 = load i32, i32* @SATI_REASSIGN_BLOCKS_COMMAND_SUCCESS, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @TRUE, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @SATI_SEQUENCE_INCOMPLETE, align 4
  store i32 %71, i32* %4, align 4
  br label %75

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %70, %50, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
