; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_reset_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error=%d ccb=%p status=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %union.ccb*)* @vtscsi_cam_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_cam_reset_bus(%struct.vtscsi_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %6 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %7 = call i32 @vtscsi_reset_bus(%struct.vtscsi_softc* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @CAM_REQ_CMP, align 4
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %22 = load i32, i32* @VTSCSI_TRACE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = load %union.ccb*, %union.ccb** %4, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %21, i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23, %union.ccb* %24, i32 %28)
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = call i32 @xpt_done(%union.ccb* %30)
  ret void
}

declare dso_local i32 @vtscsi_reset_bus(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, i32, %union.ccb*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
