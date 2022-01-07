; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32 }
%struct.vtscsi_request = type { %union.ccb* }

@EAGAIN = common dso_local global i32 0, align 4
@VTSCSI_REQUEST = common dso_local global i32 0, align 4
@VTSCSI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error=%d req=%p ccb=%p\0A\00", align 1
@CAM_RESRC_UNAVAIL = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %union.ccb*)* @vtscsi_cam_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_cam_abort(%struct.vtscsi_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.vtscsi_request*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %8 = load %union.ccb*, %union.ccb** %4, align 8
  %9 = bitcast %union.ccb* %8 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %9, %struct.ccb_hdr** %6, align 8
  %10 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %11 = call %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc* %10)
  store %struct.vtscsi_request* %11, %struct.vtscsi_request** %5, align 8
  %12 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %13 = icmp eq %struct.vtscsi_request* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @EAGAIN, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %17 = load i32, i32* @VTSCSI_REQUEST, align 4
  %18 = call i32 @vtscsi_freeze_simq(%struct.vtscsi_softc* %16, i32 %17)
  br label %33

19:                                               ; preds = %2
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %22 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %21, i32 0, i32 0
  store %union.ccb* %20, %union.ccb** %22, align 8
  %23 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %24 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %25 = call i32 @vtscsi_execute_abort_task_cmd(%struct.vtscsi_softc* %23, %struct.vtscsi_request* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %54

29:                                               ; preds = %19
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %31 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %32 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %30, %struct.vtscsi_request* %31)
  br label %33

33:                                               ; preds = %29, %14
  %34 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %35 = load i32, i32* @VTSCSI_ERROR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %34, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36, %struct.vtscsi_request* %37, %union.ccb* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* @CAM_RESRC_UNAVAIL, align 4
  %45 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %49 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %union.ccb*, %union.ccb** %4, align 8
  %53 = call i32 @xpt_done(%union.ccb* %52)
  br label %54

54:                                               ; preds = %51, %28
  ret void
}

declare dso_local %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_freeze_simq(%struct.vtscsi_softc*, i32) #1

declare dso_local i32 @vtscsi_execute_abort_task_cmd(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, i32, %struct.vtscsi_request*, %union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
