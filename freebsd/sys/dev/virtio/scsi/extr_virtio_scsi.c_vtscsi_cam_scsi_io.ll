; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_scsi_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_scsi_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, i8* }
%struct.ccb_scsiio = type { i64 }

@VIRTIO_SCSI_CDB_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_BOTH = common dso_local global i32 0, align 4
@VTSCSI_FLAG_BIDIRECTIONAL = common dso_local global i32 0, align 4
@VTSCSI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error=%d ccb=%p status=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.cam_sim*, %union.ccb*)* @vtscsi_cam_scsi_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_cam_scsi_io(%struct.vtscsi_softc* %0, %struct.cam_sim* %1, %union.ccb* %2) #0 {
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.ccb_hdr*, align 8
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store %struct.cam_sim* %1, %struct.cam_sim** %5, align 8
  store %union.ccb* %2, %union.ccb** %6, align 8
  %10 = load %union.ccb*, %union.ccb** %6, align 8
  %11 = bitcast %union.ccb* %10 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %11, %struct.ccb_hdr** %7, align 8
  %12 = load %union.ccb*, %union.ccb** %6, align 8
  %13 = bitcast %union.ccb* %12 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %13, %struct.ccb_scsiio** %8, align 8
  %14 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %15 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VIRTIO_SCSI_CDB_SIZE, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %22 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CAM_DIR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CAM_DIR_BOTH, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %34 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VTSCSI_FLAG_BIDIRECTIONAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %42 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %48

44:                                               ; preds = %32, %24
  %45 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %46 = load %union.ccb*, %union.ccb** %6, align 8
  %47 = call i32 @vtscsi_start_scsi_cmd(%struct.vtscsi_softc* %45, %union.ccb* %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %39, %19
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %53 = load i32, i32* @VTSCSI_ERROR, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %union.ccb*, %union.ccb** %6, align 8
  %56 = load %struct.ccb_hdr*, %struct.ccb_hdr** %7, align 8
  %57 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %52, i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %54, %union.ccb* %55, i8* %58)
  %60 = load %union.ccb*, %union.ccb** %6, align 8
  %61 = call i32 @xpt_done(%union.ccb* %60)
  br label %62

62:                                               ; preds = %51, %48
  ret void
}

declare dso_local i32 @vtscsi_start_scsi_cmd(%struct.vtscsi_softc*, %union.ccb*) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, i32, %union.ccb*, i8*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
