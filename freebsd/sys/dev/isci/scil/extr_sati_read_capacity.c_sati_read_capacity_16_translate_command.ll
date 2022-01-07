; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read_capacity.c_sati_read_capacity_16_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read_capacity.c_sati_read_capacity_16_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SCSI_READ_CAPACITY_PMI_BIT_ENABLE = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_SEQUENCE_READ_CAPACITY_16 = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_read_capacity_16_translate_command(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32* @sati_cb_get_cdb_address(i8* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @sati_get_cdb_byte(i32* %11, i32 2)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @sati_get_cdb_byte(i32* %15, i32 3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @sati_get_cdb_byte(i32* %19, i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @sati_get_cdb_byte(i32* %23, i32 5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @sati_get_cdb_byte(i32* %27, i32 6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @sati_get_cdb_byte(i32* %31, i32 7)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @sati_get_cdb_byte(i32* %35, i32 8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @sati_get_cdb_byte(i32* %39, i32 9)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @sati_get_cdb_byte(i32* %43, i32 14)
  %45 = load i32, i32* @SCSI_READ_CAPACITY_PMI_BIT_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %42, %38, %34, %30, %26, %22, %18, %14, %3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %52 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %53 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %54 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %55 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_5__* %49, i8* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %56, i32* %4, align 4
  br label %81

57:                                               ; preds = %42
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @sati_get_cdb_byte(i32* %58, i32 10)
  %60 = shl i32 %59, 24
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @sati_get_cdb_byte(i32* %61, i32 11)
  %63 = shl i32 %62, 16
  %64 = or i32 %60, %63
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @sati_get_cdb_byte(i32* %65, i32 12)
  %67 = shl i32 %66, 8
  %68 = or i32 %64, %67
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @sati_get_cdb_byte(i32* %69, i32 13)
  %71 = or i32 %68, %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @SATI_SEQUENCE_READ_CAPACITY_16, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = call i32 @sati_ata_identify_device_construct(i8* %77, %struct.TYPE_5__* %78)
  %80 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %57, %48
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_5__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_ata_identify_device_construct(i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
