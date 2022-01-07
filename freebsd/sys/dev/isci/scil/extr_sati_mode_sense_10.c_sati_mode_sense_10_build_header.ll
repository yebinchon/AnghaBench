; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense_10.c_sati_mode_sense_10_build_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense_10.c_sati_mode_sense_10_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SCSI_MODE_HEADER_MEDIUM_TYPE_SBC = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_DMA_FUA_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_HEADER_FUA_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_DBD_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_LLBAA_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_10_HEADER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32*, i32)* @sati_mode_sense_10_build_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_mode_sense_10_build_header(%struct.TYPE_6__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @sati_cb_get_cdb_address(i8* %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sub nsw i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %14, i8* %15, i32 0, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %20, i8* %21, i32 1, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @SCSI_MODE_HEADER_MEDIUM_TYPE_SBC, align 4
  %28 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %25, i8* %26, i32 2, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SATI_DEVICE_CAP_DMA_FUA_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @SCSI_MODE_SENSE_HEADER_FUA_ENABLE, align 4
  %41 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %38, i8* %39, i32 3, i32 %40)
  br label %46

42:                                               ; preds = %4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %43, i8* %44, i32 3, i32 0)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %47, i8* %48, i32 4, i32 0)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %50, i8* %51, i32 5, i32 0)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %53, i8* %54, i32 6, i32 0)
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @sati_get_cdb_byte(i32* %56, i32 1)
  %58 = load i32, i32* @SCSI_MODE_SENSE_DBD_ENABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %62, i8* %63, i32 7, i32 0)
  br label %85

65:                                               ; preds = %46
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @sati_get_cdb_byte(i32* %66, i32 1)
  %68 = load i32, i32* @SCSI_MODE_SENSE_LLBAA_ENABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %72, i8* %73, i32 4, i32 1)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH, align 4
  %78 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %75, i8* %76, i32 7, i32 %77)
  br label %84

79:                                               ; preds = %65
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH, align 4
  %83 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %80, i8* %81, i32 7, i32 %82)
  br label %84

84:                                               ; preds = %79, %71
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32, i32* @SCSI_MODE_SENSE_10_HEADER_LENGTH, align 4
  ret i32 %86
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
