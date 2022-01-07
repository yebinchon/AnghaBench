; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_construct_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_construct_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SCSI_FIXED_SENSE_DATA_BASE_LENGTH = common dso_local global i32 0, align 4
@SCSI_RESPONSE_DATA_PRES_SENSE_DATA = common dso_local global i32 0, align 4
@SSP_RESPONSE_IU_MAX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i8*, i32, i32, i32, i32)* @sati_passthrough_construct_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_passthrough_construct_sense(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32* @sati_cb_get_sense_data_address(i8* %20)
  store i32* %21, i32** %15, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @sati_cb_get_sense_data_length(i8* %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__* %24, i8* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = call i32* @sati_cb_get_cdb_address(i8* %31)
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @sati_get_ata_sector_count_ext(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  store i8 1, i8* %18, align 1
  br label %38

37:                                               ; preds = %7
  store i8 0, i8* %18, align 1
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @sati_get_ata_lba_high_ext(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @sati_get_ata_lba_mid_ext(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @sati_get_ata_lba_low_ext(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42, %38
  store i8 1, i8* %19, align 1
  br label %52

51:                                               ; preds = %46
  store i8 0, i8* %19, align 1
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @sati_get_ata_error(i32* %55)
  %57 = trunc i64 %56 to i32
  %58 = call i32 @sati_set_sense_data_byte(i32* %53, i32 %54, i32 3, i32 %57)
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %16, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @sati_get_ata_status(i32* %61)
  %63 = trunc i64 %62 to i32
  %64 = call i32 @sati_set_sense_data_byte(i32* %59, i32 %60, i32 4, i32 %63)
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @sati_get_ata_device(i32* %67)
  %69 = call i32 @sati_set_sense_data_byte(i32* %65, i32 %66, i32 5, i32 %68)
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @sati_get_ata_sector_count(i32* %72)
  %74 = call i32 @sati_set_sense_data_byte(i32* %70, i32 %71, i32 6, i32 %73)
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @PASSTHROUGH_CDB_EXTEND(i32* %77)
  %79 = shl i32 %78, 7
  %80 = load i8, i8* %18, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 6
  %83 = or i32 %79, %82
  %84 = load i8, i8* %19, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 5
  %87 = or i32 %83, %86
  %88 = call i32 @sati_set_sense_data_byte(i32* %75, i32 %76, i32 8, i32 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @sati_get_ata_lba_low(i32* %91)
  %93 = call i32 @sati_set_sense_data_byte(i32* %89, i32 %90, i32 9, i32 %92)
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @sati_get_ata_lba_mid(i32* %96)
  %98 = call i32 @sati_set_sense_data_byte(i32* %94, i32 %95, i32 10, i32 %97)
  %99 = load i32*, i32** %15, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @sati_get_ata_lba_high(i32* %101)
  %103 = call i32 @sati_set_sense_data_byte(i32* %99, i32 %100, i32 11, i32 %102)
  %104 = load i32, i32* @TRUE, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  ret void
}

declare dso_local i32* @sati_cb_get_sense_data_address(i8*) #1

declare dso_local i32 @sati_cb_get_sense_data_length(i8*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i64 @sati_get_ata_sector_count_ext(i32*) #1

declare dso_local i64 @sati_get_ata_lba_high_ext(i32*) #1

declare dso_local i64 @sati_get_ata_lba_mid_ext(i32*) #1

declare dso_local i64 @sati_get_ata_lba_low_ext(i32*) #1

declare dso_local i32 @sati_set_sense_data_byte(i32*, i32, i32, i32) #1

declare dso_local i64 @sati_get_ata_error(i32*) #1

declare dso_local i64 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_get_ata_device(i32*) #1

declare dso_local i32 @sati_get_ata_sector_count(i32*) #1

declare dso_local i32 @PASSTHROUGH_CDB_EXTEND(i32*) #1

declare dso_local i32 @sati_get_ata_lba_low(i32*) #1

declare dso_local i32 @sati_get_ata_lba_mid(i32*) #1

declare dso_local i32 @sati_get_ata_lba_high(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
