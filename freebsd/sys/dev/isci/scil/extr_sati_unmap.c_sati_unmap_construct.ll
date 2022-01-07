; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_unmap.c_sati_unmap_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_unmap.c_sati_unmap_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ATA_DATA_SET_MANAGEMENT = common dso_local global i32 0, align 4
@ATA_DEV_HEAD_REG_LBA_MODE_ENABLE = common dso_local global i32 0, align 4
@SATI_DATA_DIRECTION_OUT = common dso_local global i32 0, align 4
@SAT_PROTOCOL_UDMA_DATA_OUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_unmap_construct(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* @ATA_DATA_SET_MANAGEMENT, align 4
  %17 = call i32 @sati_set_ata_command(i32* %15, i32 %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @sati_set_ata_features(i32* %18, i32 1)
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @sati_set_ata_sector_count(i32* %20, i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @ATA_DEV_HEAD_REG_LBA_MODE_ENABLE, align 4
  %25 = call i32 @sati_set_ata_device_head(i32* %23, i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @sati_set_ata_status(i32* %26, i32 0)
  %28 = load i32, i32* @SATI_DATA_DIRECTION_OUT, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @SAT_PROTOCOL_UDMA_DATA_OUT, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 256
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32, i32* @SATI_SUCCESS, align 4
  ret i32 %41
}

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_set_ata_command(i32*, i32) #1

declare dso_local i32 @sati_set_ata_features(i32*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count(i32*, i32) #1

declare dso_local i32 @sati_set_ata_device_head(i32*, i32) #1

declare dso_local i32 @sati_set_ata_status(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
