; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { %struct.virtqueue*, %struct.sglist* }
%struct.virtqueue = type { i32 }
%struct.sglist = type { i32 }
%struct.vtscsi_request = type { i32, i32, i32, %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_req, %struct.TYPE_2__* }
%struct.virtio_scsi_cmd_resp = type { i32 }
%struct.virtio_scsi_cmd_req = type { i32 }
%struct.TYPE_2__ = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, %struct.vtscsi_request*, i32 }

@vtscsi_complete_scsi_cmd = common dso_local global i32 0, align 4
@VTSCSI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"enqueue error=%d req=%p ccb=%p\0A\00", align 1
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@VTSCSI_REQUEST_VQ = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_TIME_INFINITY = common dso_local global i32 0, align 4
@VTSCSI_REQ_FLAG_TIMEOUT_SET = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@vtscsi_timedout_scsi_cmd = common dso_local global i32 0, align 4
@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"enqueued req=%p ccb=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_execute_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_execute_scsi_cmd(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca %struct.vtscsi_request*, align 8
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca %struct.virtqueue*, align 8
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca %struct.ccb_hdr*, align 8
  %10 = alloca %struct.virtio_scsi_cmd_req*, align 8
  %11 = alloca %struct.virtio_scsi_cmd_resp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %5, align 8
  %15 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %16 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %15, i32 0, i32 1
  %17 = load %struct.sglist*, %struct.sglist** %16, align 8
  store %struct.sglist* %17, %struct.sglist** %6, align 8
  %18 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %18, i32 0, i32 0
  %20 = load %struct.virtqueue*, %struct.virtqueue** %19, align 8
  store %struct.virtqueue* %20, %struct.virtqueue** %7, align 8
  %21 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %22 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.ccb_scsiio* %24, %struct.ccb_scsiio** %8, align 8
  %25 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %26 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %25, i32 0, i32 0
  store %struct.ccb_hdr* %26, %struct.ccb_hdr** %9, align 8
  %27 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %28 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %27, i32 0, i32 4
  store %struct.virtio_scsi_cmd_req* %28, %struct.virtio_scsi_cmd_req** %10, align 8
  %29 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %30 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %29, i32 0, i32 3
  store %struct.virtio_scsi_cmd_resp* %30, %struct.virtio_scsi_cmd_resp** %11, align 8
  %31 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %32 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %10, align 8
  %33 = call i32 @vtscsi_init_scsi_cmd_req(%struct.ccb_scsiio* %31, %struct.virtio_scsi_cmd_req* %32)
  %34 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %35 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %36 = call i32 @vtscsi_fill_scsi_cmd_sglist(%struct.vtscsi_softc* %34, %struct.vtscsi_request* %35, i32* %12, i32* %13)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %2
  %42 = load i32, i32* @vtscsi_complete_scsi_cmd, align 4
  %43 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %44 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %11, align 8
  %46 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 4
  %47 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %48 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %49 = load %struct.sglist*, %struct.sglist** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @virtqueue_enqueue(%struct.virtqueue* %47, %struct.vtscsi_request* %48, %struct.sglist* %49, i32 %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %41
  %56 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %57 = load i32, i32* @VTSCSI_ERROR, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %60 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %61 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %56, i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %58, %struct.vtscsi_request* %59, %struct.ccb_hdr* %60)
  %62 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %63 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %64 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %66 = load i32, i32* @VTSCSI_REQUEST_VQ, align 4
  %67 = call i32 @vtscsi_freeze_simq(%struct.vtscsi_softc* %65, i32 %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %3, align 4
  br label %107

69:                                               ; preds = %41
  %70 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %71 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %76 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %77 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %76, i32 0, i32 1
  store %struct.vtscsi_request* %75, %struct.vtscsi_request** %77, align 8
  %78 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %79 = call i32 @virtqueue_notify(%struct.virtqueue* %78)
  %80 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %81 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CAM_TIME_INFINITY, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %69
  %86 = load i32, i32* @VTSCSI_REQ_FLAG_TIMEOUT_SET, align 4
  %87 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %88 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %92 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %91, i32 0, i32 0
  %93 = load i32, i32* @SBT_1MS, align 4
  %94 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %95 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %93, %96
  %98 = load i32, i32* @vtscsi_timedout_scsi_cmd, align 4
  %99 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %100 = call i32 @callout_reset_sbt(i32* %92, i32 %97, i32 0, i32 %98, %struct.vtscsi_request* %99, i32 0)
  br label %101

101:                                              ; preds = %85, %69
  %102 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %103 = load i32, i32* @VTSCSI_TRACE, align 4
  %104 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %105 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %106 = call i32 @vtscsi_dprintf_req(%struct.vtscsi_request* %102, i32 %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.vtscsi_request* %104, %struct.ccb_hdr* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %101, %55, %39
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @vtscsi_init_scsi_cmd_req(%struct.ccb_scsiio*, %struct.virtio_scsi_cmd_req*) #1

declare dso_local i32 @vtscsi_fill_scsi_cmd_sglist(%struct.vtscsi_softc*, %struct.vtscsi_request*, i32*, i32*) #1

declare dso_local i32 @virtqueue_enqueue(%struct.virtqueue*, %struct.vtscsi_request*, %struct.sglist*, i32, i32) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, i32, %struct.vtscsi_request*, %struct.ccb_hdr*) #1

declare dso_local i32 @vtscsi_freeze_simq(%struct.vtscsi_softc*, i32) #1

declare dso_local i32 @virtqueue_notify(%struct.virtqueue*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.vtscsi_request*, i32) #1

declare dso_local i32 @vtscsi_dprintf_req(%struct.vtscsi_request*, i32, i8*, %struct.vtscsi_request*, %struct.ccb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
