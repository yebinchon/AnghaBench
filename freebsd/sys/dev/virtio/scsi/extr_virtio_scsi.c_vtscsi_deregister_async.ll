; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_deregister_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_deregister_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32 }
%struct.ccb_setasync = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { i32 }

@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@vtscsi_cam_async = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*)* @vtscsi_deregister_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_deregister_async(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca %struct.ccb_setasync, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 3
  %5 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %4, i32 %7, i32 5)
  %9 = load i32, i32* @XPT_SASYNC_CB, align 4
  %10 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @vtscsi_cam_async, align 4
  %14 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = bitcast %struct.ccb_setasync* %3 to %union.ccb*
  %20 = call i32 @xpt_action(%union.ccb* %19)
  ret void
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
