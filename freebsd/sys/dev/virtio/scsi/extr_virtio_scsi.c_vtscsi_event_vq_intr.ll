; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_event_vq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_event_vq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.virtio_scsi_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtscsi_event_vq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_event_vq_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca %struct.virtio_scsi_event*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vtscsi_softc*
  store %struct.vtscsi_softc* %7, %struct.vtscsi_softc** %3, align 8
  %8 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %8, i32 0, i32 0
  %10 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  store %struct.virtqueue* %10, %struct.virtqueue** %4, align 8
  br label %11

11:                                               ; preds = %26, %1
  %12 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %13 = call i32 @VTSCSI_LOCK(%struct.vtscsi_softc* %12)
  br label %14

14:                                               ; preds = %18, %11
  %15 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %16 = call %struct.virtio_scsi_event* @virtqueue_dequeue(%struct.virtqueue* %15, i32* null)
  store %struct.virtio_scsi_event* %16, %struct.virtio_scsi_event** %5, align 8
  %17 = icmp ne %struct.virtio_scsi_event* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %20 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %5, align 8
  %21 = call i32 @vtscsi_handle_event(%struct.vtscsi_softc* %19, %struct.virtio_scsi_event* %20)
  br label %14

22:                                               ; preds = %14
  %23 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %24 = call i64 @virtqueue_enable_intr(%struct.virtqueue* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %28 = call i32 @virtqueue_disable_intr(%struct.virtqueue* %27)
  %29 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %30 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %29)
  br label %11

31:                                               ; preds = %22
  %32 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %33 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %32)
  ret void
}

declare dso_local i32 @VTSCSI_LOCK(%struct.vtscsi_softc*) #1

declare dso_local %struct.virtio_scsi_event* @virtqueue_dequeue(%struct.virtqueue*, i32*) #1

declare dso_local i32 @vtscsi_handle_event(%struct.vtscsi_softc*, %struct.virtio_scsi_event*) #1

declare dso_local i64 @virtqueue_enable_intr(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_disable_intr(%struct.virtqueue*) #1

declare dso_local i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
