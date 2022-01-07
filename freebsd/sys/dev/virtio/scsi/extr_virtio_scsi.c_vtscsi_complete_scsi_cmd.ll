; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.vtscsi_request = type { i32, i64, %struct.TYPE_2__*, i32, %struct.virtio_scsi_cmd_resp }
%struct.TYPE_2__ = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, i32, %struct.vtscsi_request* }
%struct.virtio_scsi_cmd_resp = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ccb %p req mismatch %p/%p\00", align 1
@VTSCSI_REQ_FLAG_TIMEOUT_SET = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@VTSCSI_REQ_STATE_TIMEDOUT = common dso_local global i64 0, align 8
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@VTSCSI_REQUEST = common dso_local global i32 0, align 4
@VTSCSI_REQUEST_VQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"req=%p ccb=%p status=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_complete_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_complete_scsi_cmd(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  %5 = alloca %struct.ccb_hdr*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %struct.virtio_scsi_cmd_resp*, align 8
  %8 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %4, align 8
  %9 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %10 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ccb_scsiio* %12, %struct.ccb_scsiio** %6, align 8
  %13 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %14 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %13, i32 0, i32 0
  store %struct.ccb_hdr* %14, %struct.ccb_hdr** %5, align 8
  %15 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %16 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %15, i32 0, i32 4
  store %struct.virtio_scsi_cmd_resp* %16, %struct.virtio_scsi_cmd_resp** %7, align 8
  %17 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %17, i32 0, i32 2
  %19 = load %struct.vtscsi_request*, %struct.vtscsi_request** %18, align 8
  %20 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %21 = icmp eq %struct.vtscsi_request* %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %24 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %24, i32 0, i32 2
  %26 = load %struct.vtscsi_request*, %struct.vtscsi_request** %25, align 8
  %27 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %28 = bitcast %struct.vtscsi_request* %27 to i8*
  %29 = call i32 @KASSERT(i32 %22, i8* %28)
  %30 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %31 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VTSCSI_REQ_FLAG_TIMEOUT_SET, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %38 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %37, i32 0, i32 3
  %39 = call i32 @callout_stop(i32* %38)
  br label %40

40:                                               ; preds = %36, %2
  %41 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %42 = call i32 @vtscsi_scsi_cmd_cam_status(%struct.virtio_scsi_cmd_resp* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %48 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VTSCSI_REQ_STATE_TIMEDOUT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %46
  br label %65

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @CAM_REQ_CMP, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %61 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %62 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %63 = call i32 @vtscsi_complete_scsi_cmd_response(%struct.vtscsi_softc* %60, %struct.ccb_scsiio* %61, %struct.virtio_scsi_cmd_resp* %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @CAM_STATUS_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @CAM_REQ_CMP, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %76 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @xpt_freeze_devq(i32 %77, i32 1)
  br label %79

79:                                               ; preds = %71, %65
  %80 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %81 = load i32, i32* @VTSCSI_REQUEST, align 4
  %82 = load i32, i32* @VTSCSI_REQUEST_VQ, align 4
  %83 = or i32 %81, %82
  %84 = call i64 @vtscsi_thaw_simq(%struct.vtscsi_softc* %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %92 = load i32, i32* @VTSCSI_TRACE, align 4
  %93 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %94 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %91, i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.vtscsi_request* %93, %struct.ccb_hdr* %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %99 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %101 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = call i32 @xpt_done(%struct.TYPE_2__* %102)
  %104 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %105 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %106 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %104, %struct.vtscsi_request* %105)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @vtscsi_scsi_cmd_cam_status(%struct.virtio_scsi_cmd_resp*) #1

declare dso_local i32 @vtscsi_complete_scsi_cmd_response(%struct.vtscsi_softc*, %struct.ccb_scsiio*, %struct.virtio_scsi_cmd_resp*) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i64 @vtscsi_thaw_simq(%struct.vtscsi_softc*, i32) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.vtscsi_request*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @xpt_done(%struct.TYPE_2__*) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
