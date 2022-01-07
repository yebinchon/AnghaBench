; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_enqueue_event_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_enqueue_event_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, %struct.virtqueue*, %struct.sglist* }
%struct.virtqueue = type { i32 }
%struct.sglist = type { i32 }
%struct.virtio_scsi_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %struct.virtio_scsi_event*)* @vtscsi_enqueue_event_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_enqueue_event_buf(%struct.vtscsi_softc* %0, %struct.virtio_scsi_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca %struct.virtio_scsi_event*, align 8
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca %struct.virtqueue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store %struct.virtio_scsi_event* %1, %struct.virtio_scsi_event** %5, align 8
  %10 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %10, i32 0, i32 2
  %12 = load %struct.sglist*, %struct.sglist** %11, align 8
  store %struct.sglist* %12, %struct.sglist** %6, align 8
  %13 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %13, i32 0, i32 1
  %15 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  store %struct.virtqueue* %15, %struct.virtqueue** %7, align 8
  %16 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @bzero(%struct.virtio_scsi_event* %19, i32 %20)
  %22 = load %struct.sglist*, %struct.sglist** %6, align 8
  %23 = call i32 @sglist_reset(%struct.sglist* %22)
  %24 = load %struct.sglist*, %struct.sglist** %6, align 8
  %25 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @sglist_append(%struct.sglist* %24, %struct.virtio_scsi_event* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %2
  %33 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %34 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %5, align 8
  %35 = load %struct.sglist*, %struct.sglist** %6, align 8
  %36 = load %struct.sglist*, %struct.sglist** %6, align 8
  %37 = getelementptr inbounds %struct.sglist, %struct.sglist* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @virtqueue_enqueue(%struct.virtqueue* %33, %struct.virtio_scsi_event* %34, %struct.sglist* %35, i32 0, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %32
  %45 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %46 = call i32 @virtqueue_notify(%struct.virtqueue* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %42, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @bzero(%struct.virtio_scsi_event*, i32) #1

declare dso_local i32 @sglist_reset(%struct.sglist*) #1

declare dso_local i32 @sglist_append(%struct.sglist*, %struct.virtio_scsi_event*, i32) #1

declare dso_local i32 @virtqueue_enqueue(%struct.virtqueue*, %struct.virtio_scsi_event*, %struct.sglist*, i32, i32) #1

declare dso_local i32 @virtqueue_notify(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
