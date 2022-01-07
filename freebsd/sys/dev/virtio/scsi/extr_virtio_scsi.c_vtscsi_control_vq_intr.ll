; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_control_vq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_control_vq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtscsi_control_vq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_control_vq_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vtscsi_softc*
  store %struct.vtscsi_softc* %6, %struct.vtscsi_softc** %3, align 8
  %7 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %7, i32 0, i32 0
  %9 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  store %struct.virtqueue* %9, %struct.virtqueue** %4, align 8
  br label %10

10:                                               ; preds = %21, %1
  %11 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %12 = call i32 @VTSCSI_LOCK(%struct.vtscsi_softc* %11)
  %13 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %14 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %14, i32 0, i32 0
  %16 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %17 = call i32 @vtscsi_complete_vq(%struct.vtscsi_softc* %13, %struct.virtqueue* %16)
  %18 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %19 = call i64 @virtqueue_enable_intr(%struct.virtqueue* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %23 = call i32 @virtqueue_disable_intr(%struct.virtqueue* %22)
  %24 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %25 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %24)
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %28 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %27)
  ret void
}

declare dso_local i32 @VTSCSI_LOCK(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_complete_vq(%struct.vtscsi_softc*, %struct.virtqueue*) #1

declare dso_local i64 @virtqueue_enable_intr(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_disable_intr(%struct.virtqueue*) #1

declare dso_local i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
