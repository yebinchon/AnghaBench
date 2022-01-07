; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_vq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.virtqueue = type { i32 }
%struct.vtscsi_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.virtqueue*)* @vtscsi_complete_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_complete_vq(%struct.vtscsi_softc* %0, %struct.virtqueue* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca %struct.vtscsi_request*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.virtqueue* %1, %struct.virtqueue** %4, align 8
  %6 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %7 = call i32 @VTSCSI_LOCK_OWNED(%struct.vtscsi_softc* %6)
  br label %8

8:                                                ; preds = %12, %2
  %9 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %10 = call %struct.vtscsi_request* @virtqueue_dequeue(%struct.virtqueue* %9, i32* null)
  store %struct.vtscsi_request* %10, %struct.vtscsi_request** %5, align 8
  %11 = icmp ne %struct.vtscsi_request* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %14 = call i32 @vtscsi_complete_request(%struct.vtscsi_request* %13)
  br label %8

15:                                               ; preds = %8
  ret void
}

declare dso_local i32 @VTSCSI_LOCK_OWNED(%struct.vtscsi_softc*) #1

declare dso_local %struct.vtscsi_request* @virtqueue_dequeue(%struct.virtqueue*, i32*) #1

declare dso_local i32 @vtscsi_complete_request(%struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
