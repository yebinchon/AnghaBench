; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_abort_task_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_abort_task_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.vtscsi_request = type { %struct.virtio_scsi_ctrl_tmf_resp, %union.ccb* }
%struct.virtio_scsi_ctrl_tmf_resp = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_UA_ABORT = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_complete_abort_task_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_complete_abort_task_cmd(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
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
  %15 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %7, align 8
  %16 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %26 [
    i32 129, label %18
    i32 128, label %22
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @CAM_REQ_CMP, align 4
  %20 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @CAM_UA_ABORT, align 4
  %24 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %28 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22, %18
  %31 = load %union.ccb*, %union.ccb** %5, align 8
  %32 = call i32 @xpt_done(%union.ccb* %31)
  %33 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %34 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %35 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %33, %struct.vtscsi_request* %34)
  ret void
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
