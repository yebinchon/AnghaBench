; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_drain_vqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_drain_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*)* @vtscsi_drain_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_drain_vqs(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %3 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %4 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %9 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @vtscsi_drain_vq(%struct.vtscsi_softc* %8, i32* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %20 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %21 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @vtscsi_drain_vq(%struct.vtscsi_softc* %19, i32* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %26 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %31 = call i32 @vtscsi_drain_event_vq(%struct.vtscsi_softc* %30)
  br label %32

32:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @vtscsi_drain_vq(%struct.vtscsi_softc*, i32*) #1

declare dso_local i32 @vtscsi_drain_event_vq(%struct.vtscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
