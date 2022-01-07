; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_ctrl_event_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_ctrl_event_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.virtio_console_control = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtcon_softc*)* @vtcon_ctrl_event_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtcon_ctrl_event_drain(%struct.vtcon_softc* %0) #0 {
  %2 = alloca %struct.vtcon_softc*, align 8
  %3 = alloca %struct.virtio_console_control*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca i32, align 4
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %2, align 8
  %6 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %6, i32 0, i32 0
  %8 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  store %struct.virtqueue* %8, %struct.virtqueue** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %10 = icmp eq %struct.virtqueue* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %14 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %13)
  br label %15

15:                                               ; preds = %19, %12
  %16 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %17 = call %struct.virtio_console_control* @virtqueue_drain(%struct.virtqueue* %16, i32* %5)
  store %struct.virtio_console_control* %17, %struct.virtio_console_control** %3, align 8
  %18 = icmp ne %struct.virtio_console_control* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.virtio_console_control*, %struct.virtio_console_control** %3, align 8
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = call i32 @free(%struct.virtio_console_control* %20, i32 %21)
  br label %15

23:                                               ; preds = %15
  %24 = load %struct.vtcon_softc*, %struct.vtcon_softc** %2, align 8
  %25 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %24)
  br label %26

26:                                               ; preds = %23, %11
  ret void
}

declare dso_local i32 @VTCON_LOCK(%struct.vtcon_softc*) #1

declare dso_local %struct.virtio_console_control* @virtqueue_drain(%struct.virtqueue*, i32*) #1

declare dso_local i32 @free(%struct.virtio_console_control*, i32) #1

declare dso_local i32 @VTCON_UNLOCK(%struct.vtcon_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
