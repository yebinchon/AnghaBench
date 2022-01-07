; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_reset_dev_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_reset_dev_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { %struct.sglist* }
%struct.sglist = type { i32 }
%struct.vtscsi_request = type { i32, %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp, %struct.TYPE_2__* }
%struct.virtio_scsi_ctrl_tmf_resp = type { i32 }
%struct.TYPE_2__ = type { %struct.ccb_resetdev }
%struct.ccb_resetdev = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i64 }
%struct.virtio_scsi_ctrl_tmf_req = type { i32 }

@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@VIRTIO_SCSI_T_TMF_I_T_NEXUS_RESET = common dso_local global i32 0, align 4
@VIRTIO_SCSI_T_TMF_LOGICAL_UNIT_RESET = common dso_local global i32 0, align 4
@vtscsi_complete_reset_dev_cmd = common dso_local global i32 0, align 4
@VTSCSI_EXECUTE_ASYNC = common dso_local global i32 0, align 4
@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error=%d req=%p ccb=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_execute_reset_dev_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_execute_reset_dev_cmd(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  %5 = alloca %struct.sglist*, align 8
  %6 = alloca %struct.ccb_resetdev*, align 8
  %7 = alloca %struct.ccb_hdr*, align 8
  %8 = alloca %struct.virtio_scsi_ctrl_tmf_req*, align 8
  %9 = alloca %struct.virtio_scsi_ctrl_tmf_resp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %4, align 8
  %12 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %12, i32 0, i32 0
  %14 = load %struct.sglist*, %struct.sglist** %13, align 8
  store %struct.sglist* %14, %struct.sglist** %5, align 8
  %15 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %16 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ccb_resetdev* %18, %struct.ccb_resetdev** %6, align 8
  %19 = load %struct.ccb_resetdev*, %struct.ccb_resetdev** %6, align 8
  %20 = getelementptr inbounds %struct.ccb_resetdev, %struct.ccb_resetdev* %19, i32 0, i32 0
  store %struct.ccb_hdr* %20, %struct.ccb_hdr** %7, align 8
  %21 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %22 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %21, i32 0, i32 2
  %23 = bitcast %struct.virtio_scsi_ctrl_tmf_resp* %22 to %struct.virtio_scsi_ctrl_tmf_req*
  store %struct.virtio_scsi_ctrl_tmf_req* %23, %struct.virtio_scsi_ctrl_tmf_req** %8, align 8
  %24 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %25 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %24, i32 0, i32 1
  store %struct.virtio_scsi_ctrl_tmf_resp* %25, %struct.virtio_scsi_ctrl_tmf_resp** %9, align 8
  %26 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @VIRTIO_SCSI_T_TMF_I_T_NEXUS_RESET, align 4
  store i32 %32, i32* %10, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @VIRTIO_SCSI_T_TMF_LOGICAL_UNIT_RESET, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.virtio_scsi_ctrl_tmf_req*, %struct.virtio_scsi_ctrl_tmf_req** %8, align 8
  %39 = bitcast %struct.virtio_scsi_ctrl_tmf_req* %38 to %struct.virtio_scsi_ctrl_tmf_resp*
  %40 = call i32 @vtscsi_init_ctrl_tmf_req(%struct.ccb_hdr* %36, i32 %37, i32 0, %struct.virtio_scsi_ctrl_tmf_resp* %39)
  %41 = load %struct.sglist*, %struct.sglist** %5, align 8
  %42 = call i32 @sglist_reset(%struct.sglist* %41)
  %43 = load %struct.sglist*, %struct.sglist** %5, align 8
  %44 = load %struct.virtio_scsi_ctrl_tmf_req*, %struct.virtio_scsi_ctrl_tmf_req** %8, align 8
  %45 = bitcast %struct.virtio_scsi_ctrl_tmf_req* %44 to %struct.virtio_scsi_ctrl_tmf_resp*
  %46 = call i32 @sglist_append(%struct.sglist* %43, %struct.virtio_scsi_ctrl_tmf_resp* %45, i32 4)
  %47 = load %struct.sglist*, %struct.sglist** %5, align 8
  %48 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %9, align 8
  %49 = call i32 @sglist_append(%struct.sglist* %47, %struct.virtio_scsi_ctrl_tmf_resp* %48, i32 4)
  %50 = load i32, i32* @vtscsi_complete_reset_dev_cmd, align 4
  %51 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %52 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %9, align 8
  %54 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  %55 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %56 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %57 = load %struct.sglist*, %struct.sglist** %5, align 8
  %58 = load i32, i32* @VTSCSI_EXECUTE_ASYNC, align 4
  %59 = call i32 @vtscsi_execute_ctrl_req(%struct.vtscsi_softc* %55, %struct.vtscsi_request* %56, %struct.sglist* %57, i32 1, i32 1, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %61 = load i32, i32* @VTSCSI_TRACE, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %64 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %65 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %60, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %62, %struct.vtscsi_request* %63, %struct.ccb_hdr* %64)
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @vtscsi_init_ctrl_tmf_req(%struct.ccb_hdr*, i32, i32, %struct.virtio_scsi_ctrl_tmf_resp*) #1

declare dso_local i32 @sglist_reset(%struct.sglist*) #1

declare dso_local i32 @sglist_append(%struct.sglist*, %struct.virtio_scsi_ctrl_tmf_resp*, i32) #1

declare dso_local i32 @vtscsi_execute_ctrl_req(%struct.vtscsi_softc*, %struct.vtscsi_request*, %struct.sglist*, i32, i32, i32) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, i32, %struct.vtscsi_request*, %struct.ccb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
