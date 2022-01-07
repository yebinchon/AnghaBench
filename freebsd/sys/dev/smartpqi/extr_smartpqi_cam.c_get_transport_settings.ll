; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_get_transport_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_get_transport_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { i32 }
%struct.ccb_trans_settings = type { i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_sas }
%struct.ccb_trans_settings_spi = type { i32, i32 }
%struct.ccb_trans_settings_sas = type { i32 }
%struct.TYPE_4__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PROTO_SCSI = common dso_local global i32 0, align 4
@SCSI_REV_SPC4 = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SAS_VALID_SPEED = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqisrc_softstate*, %struct.ccb_trans_settings*)* @get_transport_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_transport_settings(%struct.pqisrc_softstate* %0, %struct.ccb_trans_settings* %1) #0 {
  %3 = alloca %struct.pqisrc_softstate*, align 8
  %4 = alloca %struct.ccb_trans_settings*, align 8
  %5 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %6 = alloca %struct.ccb_trans_settings_sas*, align 8
  %7 = alloca %struct.ccb_trans_settings_spi*, align 8
  store %struct.pqisrc_softstate* %0, %struct.pqisrc_softstate** %3, align 8
  store %struct.ccb_trans_settings* %1, %struct.ccb_trans_settings** %4, align 8
  %8 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %9 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %10, %struct.ccb_trans_settings_scsi** %5, align 8
  %11 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %12 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store %struct.ccb_trans_settings_sas* %13, %struct.ccb_trans_settings_sas** %6, align 8
  %14 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %15 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %16, %struct.ccb_trans_settings_spi** %7, align 8
  %17 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @PROTO_SCSI, align 4
  %19 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %20 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @SCSI_REV_SPC4, align 4
  %22 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %23 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @XPORT_SPI, align 4
  %25 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %26 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %28 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %27, i32 0, i32 0
  store i32 2, i32* %28, align 4
  %29 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %30 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %31 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %33 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %34 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %36 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %5, align 8
  %37 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %39 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %5, align 8
  %40 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @CTS_SAS_VALID_SPEED, align 4
  %42 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %6, align 8
  %43 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @CAM_REQ_CMP, align 4
  %45 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %46 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
