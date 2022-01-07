; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_poll_ctrl_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_poll_ctrl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.vtscsi_request = type { i32 }

@VTSCSI_REQ_FLAG_POLLED = common dso_local global i32 0, align 4
@VTSCSI_REQ_FLAG_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_poll_ctrl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_poll_ctrl_req(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %4, align 8
  %5 = load i32, i32* @VTSCSI_REQ_FLAG_POLLED, align 4
  %6 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %7 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %16, %2
  %11 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %12 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vtscsi_complete_vq(%struct.vtscsi_softc* %11, i32 %14)
  br label %16

16:                                               ; preds = %10
  %17 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %18 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VTSCSI_REQ_FLAG_COMPLETE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %10, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @VTSCSI_REQ_FLAG_POLLED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %27 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local i32 @vtscsi_complete_vq(%struct.vtscsi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
