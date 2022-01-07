; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_abort_task_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_abort_task_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { %struct.sglist* }
%struct.sglist = type { i32 }
%struct.vtscsi_request = type { i64, i32, i32, i32, %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp, %struct.TYPE_3__* }
%struct.virtio_scsi_ctrl_tmf_resp = type { i32 }
%struct.TYPE_3__ = type { %struct.ccb_abort }
%struct.ccb_abort = type { %struct.TYPE_4__*, %struct.ccb_hdr }
%struct.TYPE_4__ = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i64, %struct.vtscsi_request* }
%struct.virtio_scsi_ctrl_tmf_req = type { i32 }

@XPT_SCSI_IO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VTSCSI_REQ_STATE_INUSE = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@VTSCSI_REQ_STATE_ABORTED = common dso_local global i64 0, align 8
@VTSCSI_REQ_FLAG_TIMEOUT_SET = common dso_local global i32 0, align 4
@VIRTIO_SCSI_T_TMF_ABORT_TASK = common dso_local global i32 0, align 4
@vtscsi_complete_abort_task_cmd = common dso_local global i32 0, align 4
@VTSCSI_EXECUTE_ASYNC = common dso_local global i32 0, align 4
@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"error=%d req=%p abort_ccb=%p abort_req=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_execute_abort_task_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_execute_abort_task_cmd(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  %5 = alloca %struct.sglist*, align 8
  %6 = alloca %struct.ccb_abort*, align 8
  %7 = alloca %struct.ccb_hdr*, align 8
  %8 = alloca %struct.ccb_hdr*, align 8
  %9 = alloca %struct.vtscsi_request*, align 8
  %10 = alloca %struct.virtio_scsi_ctrl_tmf_req*, align 8
  %11 = alloca %struct.virtio_scsi_ctrl_tmf_resp*, align 8
  %12 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %4, align 8
  %13 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %13, i32 0, i32 0
  %15 = load %struct.sglist*, %struct.sglist** %14, align 8
  store %struct.sglist* %15, %struct.sglist** %5, align 8
  %16 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %17 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %16, i32 0, i32 6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.ccb_abort* %19, %struct.ccb_abort** %6, align 8
  %20 = load %struct.ccb_abort*, %struct.ccb_abort** %6, align 8
  %21 = getelementptr inbounds %struct.ccb_abort, %struct.ccb_abort* %20, i32 0, i32 1
  store %struct.ccb_hdr* %21, %struct.ccb_hdr** %7, align 8
  %22 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %23 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %22, i32 0, i32 5
  %24 = bitcast %struct.virtio_scsi_ctrl_tmf_resp* %23 to %struct.virtio_scsi_ctrl_tmf_req*
  store %struct.virtio_scsi_ctrl_tmf_req* %24, %struct.virtio_scsi_ctrl_tmf_req** %10, align 8
  %25 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %26 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %25, i32 0, i32 4
  store %struct.virtio_scsi_ctrl_tmf_resp* %26, %struct.virtio_scsi_ctrl_tmf_resp** %11, align 8
  %27 = load %struct.ccb_abort*, %struct.ccb_abort** %6, align 8
  %28 = getelementptr inbounds %struct.ccb_abort, %struct.ccb_abort* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.ccb_hdr* %30, %struct.ccb_hdr** %8, align 8
  %31 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %32 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %31, i32 0, i32 1
  %33 = load %struct.vtscsi_request*, %struct.vtscsi_request** %32, align 8
  store %struct.vtscsi_request* %33, %struct.vtscsi_request** %9, align 8
  %34 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %35 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XPT_SCSI_IO, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %41 = icmp eq %struct.vtscsi_request* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %2
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %12, align 4
  br label %93

44:                                               ; preds = %39
  %45 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %46 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VTSCSI_REQ_STATE_INUSE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @EALREADY, align 4
  store i32 %51, i32* %12, align 4
  br label %93

52:                                               ; preds = %44
  %53 = load i64, i64* @VTSCSI_REQ_STATE_ABORTED, align 8
  %54 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %55 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %57 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VTSCSI_REQ_FLAG_TIMEOUT_SET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %64 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %63, i32 0, i32 3
  %65 = call i32 @callout_stop(i32* %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %68 = load i32, i32* @VIRTIO_SCSI_T_TMF_ABORT_TASK, align 4
  %69 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %70 = ptrtoint %struct.ccb_hdr* %69 to i64
  %71 = load %struct.virtio_scsi_ctrl_tmf_req*, %struct.virtio_scsi_ctrl_tmf_req** %10, align 8
  %72 = bitcast %struct.virtio_scsi_ctrl_tmf_req* %71 to %struct.virtio_scsi_ctrl_tmf_resp*
  %73 = call i32 @vtscsi_init_ctrl_tmf_req(%struct.ccb_hdr* %67, i32 %68, i64 %70, %struct.virtio_scsi_ctrl_tmf_resp* %72)
  %74 = load %struct.sglist*, %struct.sglist** %5, align 8
  %75 = call i32 @sglist_reset(%struct.sglist* %74)
  %76 = load %struct.sglist*, %struct.sglist** %5, align 8
  %77 = load %struct.virtio_scsi_ctrl_tmf_req*, %struct.virtio_scsi_ctrl_tmf_req** %10, align 8
  %78 = bitcast %struct.virtio_scsi_ctrl_tmf_req* %77 to %struct.virtio_scsi_ctrl_tmf_resp*
  %79 = call i32 @sglist_append(%struct.sglist* %76, %struct.virtio_scsi_ctrl_tmf_resp* %78, i32 4)
  %80 = load %struct.sglist*, %struct.sglist** %5, align 8
  %81 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %11, align 8
  %82 = call i32 @sglist_append(%struct.sglist* %80, %struct.virtio_scsi_ctrl_tmf_resp* %81, i32 4)
  %83 = load i32, i32* @vtscsi_complete_abort_task_cmd, align 4
  %84 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %85 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %11, align 8
  %87 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 4
  %88 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %89 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %90 = load %struct.sglist*, %struct.sglist** %5, align 8
  %91 = load i32, i32* @VTSCSI_EXECUTE_ASYNC, align 4
  %92 = call i32 @vtscsi_execute_ctrl_req(%struct.vtscsi_softc* %88, %struct.vtscsi_request* %89, %struct.sglist* %90, i32 1, i32 1, i32 %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %66, %50, %42
  %94 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %95 = load i32, i32* @VTSCSI_TRACE, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %98 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %99 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %100 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %94, i32 %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %96, %struct.vtscsi_request* %97, %struct.ccb_hdr* %98, %struct.vtscsi_request* %99)
  %101 = load i32, i32* %12, align 4
  ret i32 %101
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @vtscsi_init_ctrl_tmf_req(%struct.ccb_hdr*, i32, i64, %struct.virtio_scsi_ctrl_tmf_resp*) #1

declare dso_local i32 @sglist_reset(%struct.sglist*) #1

declare dso_local i32 @sglist_append(%struct.sglist*, %struct.virtio_scsi_ctrl_tmf_resp*, i32) #1

declare dso_local i32 @vtscsi_execute_ctrl_req(%struct.vtscsi_softc*, %struct.vtscsi_request*, %struct.sglist*, i32, i32, i32) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, i32, %struct.vtscsi_request*, %struct.ccb_hdr*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
