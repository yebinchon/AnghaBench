; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_reset_dev_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_reset_dev_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.vtscsi_request = type { %struct.virtio_scsi_ctrl_tmf_resp, %union.ccb* }
%struct.virtio_scsi_ctrl_tmf_resp = type { i64 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, i32, i32 }

@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"req=%p ccb=%p response=%d\0A\00", align 1
@VIRTIO_SCSI_S_FUNCTION_COMPLETE = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@AC_SENT_BDR = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_complete_reset_dev_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_complete_reset_dev_cmd(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  %7 = alloca %struct.virtio_scsi_ctrl_tmf_resp*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %4, align 8
  %8 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %9 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %8, i32 0, i32 1
  %10 = load %union.ccb*, %union.ccb** %9, align 8
  store %union.ccb* %10, %union.ccb** %5, align 8
  %11 = load %union.ccb*, %union.ccb** %5, align 8
  %12 = bitcast %union.ccb* %11 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %12, %struct.ccb_hdr** %6, align 8
  %13 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %14 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %13, i32 0, i32 0
  store %struct.virtio_scsi_ctrl_tmf_resp* %14, %struct.virtio_scsi_ctrl_tmf_resp** %7, align 8
  %15 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %16 = load i32, i32* @VTSCSI_TRACE, align 4
  %17 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %18 = load %union.ccb*, %union.ccb** %5, align 8
  %19 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %7, align 8
  %20 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %15, i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.vtscsi_request* %17, %union.ccb* %18, i64 %21)
  %23 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %7, align 8
  %24 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VIRTIO_SCSI_S_FUNCTION_COMPLETE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load i32, i32* @CAM_REQ_CMP, align 4
  %30 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %33 = load i32, i32* @AC_SENT_BDR, align 4
  %34 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vtscsi_announce(%struct.vtscsi_softc* %32, i32 %33, i32 %36, i32 %39)
  br label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %43 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %28
  %46 = load %union.ccb*, %union.ccb** %5, align 8
  %47 = call i32 @xpt_done(%union.ccb* %46)
  %48 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %49 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %50 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %48, %struct.vtscsi_request* %49)
  ret void
}

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.vtscsi_request*, %union.ccb*, i64) #1

declare dso_local i32 @vtscsi_announce(%struct.vtscsi_softc*, i32, i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
