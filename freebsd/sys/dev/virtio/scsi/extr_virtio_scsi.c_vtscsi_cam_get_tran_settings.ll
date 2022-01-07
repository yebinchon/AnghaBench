; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_get_tran_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_get_tran_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%union.ccb = type { %struct.ccb_trans_settings }
%struct.ccb_trans_settings = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PROTO_SCSI = common dso_local global i32 0, align 4
@SCSI_REV_SPC3 = common dso_local global i32 0, align 4
@XPORT_SAS = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %union.ccb*)* @vtscsi_cam_get_tran_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_cam_get_tran_settings(%struct.vtscsi_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_trans_settings*, align 8
  %6 = alloca %struct.ccb_trans_settings_scsi*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %union.ccb*, %union.ccb** %4, align 8
  %8 = bitcast %union.ccb* %7 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %8, %struct.ccb_trans_settings** %5, align 8
  %9 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %10 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %11, %struct.ccb_trans_settings_scsi** %6, align 8
  %12 = load i32, i32* @PROTO_SCSI, align 4
  %13 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %14 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @SCSI_REV_SPC3, align 4
  %16 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %17 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @XPORT_SAS, align 4
  %19 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %20 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %22 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %24 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %6, align 8
  %25 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %27 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %6, align 8
  %28 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CAM_REQ_CMP, align 4
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = call i32 @xpt_done(%union.ccb* %33)
  ret void
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
