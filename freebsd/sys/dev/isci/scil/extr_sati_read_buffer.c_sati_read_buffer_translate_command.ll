; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read_buffer.c_sati_read_buffer_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read_buffer.c_sati_read_buffer_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }

@SATI_FAILURE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_READ_BUFFER = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_AWAIT_RESPONSE = common dso_local global i8* null, align 8
@SATI_SUCCESS = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i8* null, align 8
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_read_buffer_translate_command(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @sati_cb_get_cdb_address(i8* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @sati_get_cdb_byte(i32* %14, i32 6)
  %16 = shl i32 %15, 16
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @sati_get_cdb_byte(i32* %17, i32 7)
  %19 = shl i32 %18, 8
  %20 = or i32 %16, %19
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @sati_get_cdb_byte(i32* %21, i32 8)
  %23 = or i32 %20, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @sati_get_cdb_byte(i32* %24, i32 3)
  %26 = shl i32 %25, 16
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @sati_get_cdb_byte(i32* %27, i32 4)
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @sati_get_cdb_byte(i32* %31, i32 5)
  %33 = or i32 %30, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @sati_get_cdb_byte(i32* %37, i32 1)
  switch i32 %38, label %106 [
    i32 129, label %39
    i32 128, label %73
  ]

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 512
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @sati_get_cdb_byte(i32* %46, i32 2)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = call i32 @sati_ata_read_buffer_construct(i8* %50, %struct.TYPE_6__* %51)
  %53 = load i32, i32* @SATI_SEQUENCE_READ_BUFFER, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @SATI_SEQUENCE_STATE_AWAIT_RESPONSE, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %59, i32* %8, align 4
  br label %72

60:                                               ; preds = %45, %42, %39
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %64 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %65 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %66 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %67 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__* %61, i8* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %60, %49
  br label %118

73:                                               ; preds = %3
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %80 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %81 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %82 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %83 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__* %77, i8* %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %87, i32* %8, align 4
  br label %105

88:                                               ; preds = %73
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %89, i8* %90, i32 0, i32 9)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %92, i8* %93, i32 1, i32 0)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %95, i8* %96, i32 2, i32 2)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %98, i8* %99, i32 3, i32 0)
  %101 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %88, %76
  br label %118

106:                                              ; preds = %3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %110 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %111 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %112 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %113 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__* %107, i8* %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %106, %105, %72
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_ata_read_buffer_construct(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
