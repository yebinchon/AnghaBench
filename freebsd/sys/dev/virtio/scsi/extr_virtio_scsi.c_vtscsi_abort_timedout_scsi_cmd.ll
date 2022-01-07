; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_abort_timedout_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_abort_timedout_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { %struct.sglist* }
%struct.sglist = type { i32 }
%struct.vtscsi_request = type { i32, %struct.vtscsi_request*, %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp, %struct.TYPE_2__* }
%struct.virtio_scsi_ctrl_tmf_resp = type { i32 }
%struct.TYPE_2__ = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32 }
%struct.virtio_scsi_ctrl_tmf_req = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@VIRTIO_SCSI_T_TMF_ABORT_TASK = common dso_local global i32 0, align 4
@vtscsi_complete_abort_timedout_scsi_cmd = common dso_local global i32 0, align 4
@VTSCSI_EXECUTE_ASYNC = common dso_local global i32 0, align 4
@VTSCSI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"error=%d req=%p timedout req=%p ccb=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_abort_timedout_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_abort_timedout_scsi_cmd(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca %struct.vtscsi_request*, align 8
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca %struct.ccb_hdr*, align 8
  %8 = alloca %struct.vtscsi_request*, align 8
  %9 = alloca %struct.virtio_scsi_ctrl_tmf_req*, align 8
  %10 = alloca %struct.virtio_scsi_ctrl_tmf_resp*, align 8
  %11 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %5, align 8
  %12 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %12, i32 0, i32 0
  %14 = load %struct.sglist*, %struct.sglist** %13, align 8
  store %struct.sglist* %14, %struct.sglist** %6, align 8
  %15 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %16 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ccb_hdr* %18, %struct.ccb_hdr** %7, align 8
  %19 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %20 = call %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc* %19)
  store %struct.vtscsi_request* %20, %struct.vtscsi_request** %8, align 8
  %21 = load %struct.vtscsi_request*, %struct.vtscsi_request** %8, align 8
  %22 = icmp eq %struct.vtscsi_request* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOBUFS, align 4
  store i32 %24, i32* %11, align 4
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.vtscsi_request*, %struct.vtscsi_request** %8, align 8
  %27 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %26, i32 0, i32 3
  %28 = bitcast %struct.virtio_scsi_ctrl_tmf_resp* %27 to %struct.virtio_scsi_ctrl_tmf_req*
  store %struct.virtio_scsi_ctrl_tmf_req* %28, %struct.virtio_scsi_ctrl_tmf_req** %9, align 8
  %29 = load %struct.vtscsi_request*, %struct.vtscsi_request** %8, align 8
  %30 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %29, i32 0, i32 2
  store %struct.virtio_scsi_ctrl_tmf_resp* %30, %struct.virtio_scsi_ctrl_tmf_resp** %10, align 8
  %31 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %32 = load i32, i32* @VIRTIO_SCSI_T_TMF_ABORT_TASK, align 4
  %33 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %34 = ptrtoint %struct.ccb_hdr* %33 to i64
  %35 = load %struct.virtio_scsi_ctrl_tmf_req*, %struct.virtio_scsi_ctrl_tmf_req** %9, align 8
  %36 = bitcast %struct.virtio_scsi_ctrl_tmf_req* %35 to %struct.virtio_scsi_ctrl_tmf_resp*
  %37 = call i32 @vtscsi_init_ctrl_tmf_req(%struct.ccb_hdr* %31, i32 %32, i64 %34, %struct.virtio_scsi_ctrl_tmf_resp* %36)
  %38 = load %struct.sglist*, %struct.sglist** %6, align 8
  %39 = call i32 @sglist_reset(%struct.sglist* %38)
  %40 = load %struct.sglist*, %struct.sglist** %6, align 8
  %41 = load %struct.virtio_scsi_ctrl_tmf_req*, %struct.virtio_scsi_ctrl_tmf_req** %9, align 8
  %42 = bitcast %struct.virtio_scsi_ctrl_tmf_req* %41 to %struct.virtio_scsi_ctrl_tmf_resp*
  %43 = call i32 @sglist_append(%struct.sglist* %40, %struct.virtio_scsi_ctrl_tmf_resp* %42, i32 4)
  %44 = load %struct.sglist*, %struct.sglist** %6, align 8
  %45 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %10, align 8
  %46 = call i32 @sglist_append(%struct.sglist* %44, %struct.virtio_scsi_ctrl_tmf_resp* %45, i32 4)
  %47 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %48 = load %struct.vtscsi_request*, %struct.vtscsi_request** %8, align 8
  %49 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %48, i32 0, i32 1
  store %struct.vtscsi_request* %47, %struct.vtscsi_request** %49, align 8
  %50 = load i32, i32* @vtscsi_complete_abort_timedout_scsi_cmd, align 4
  %51 = load %struct.vtscsi_request*, %struct.vtscsi_request** %8, align 8
  %52 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %10, align 8
  %54 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  %55 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %56 = load %struct.vtscsi_request*, %struct.vtscsi_request** %8, align 8
  %57 = load %struct.sglist*, %struct.sglist** %6, align 8
  %58 = load i32, i32* @VTSCSI_EXECUTE_ASYNC, align 4
  %59 = call i32 @vtscsi_execute_ctrl_req(%struct.vtscsi_softc* %55, %struct.vtscsi_request* %56, %struct.sglist* %57, i32 1, i32 1, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %76

63:                                               ; preds = %25
  %64 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %65 = load %struct.vtscsi_request*, %struct.vtscsi_request** %8, align 8
  %66 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %64, %struct.vtscsi_request* %65)
  br label %67

67:                                               ; preds = %63, %23
  %68 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %69 = load i32, i32* @VTSCSI_ERROR, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.vtscsi_request*, %struct.vtscsi_request** %8, align 8
  %72 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %73 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %74 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %68, i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70, %struct.vtscsi_request* %71, %struct.vtscsi_request* %72, %struct.ccb_hdr* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %67, %62
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_init_ctrl_tmf_req(%struct.ccb_hdr*, i32, i64, %struct.virtio_scsi_ctrl_tmf_resp*) #1

declare dso_local i32 @sglist_reset(%struct.sglist*) #1

declare dso_local i32 @sglist_append(%struct.sglist*, %struct.virtio_scsi_ctrl_tmf_resp*, i32) #1

declare dso_local i32 @vtscsi_execute_ctrl_req(%struct.vtscsi_softc*, %struct.vtscsi_request*, %struct.sglist*, i32, i32, i32) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, i32, %struct.vtscsi_request*, %struct.vtscsi_request*, %struct.ccb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
