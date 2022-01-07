; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_free_virtqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_free_virtqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_softc = type { i32, %struct.vtmmio_virtqueue* }
%struct.vtmmio_virtqueue = type { i32* }

@VIRTIO_MMIO_QUEUE_PFN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtmmio_softc*)* @vtmmio_free_virtqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtmmio_free_virtqueues(%struct.vtmmio_softc* %0) #0 {
  %2 = alloca %struct.vtmmio_softc*, align 8
  %3 = alloca %struct.vtmmio_virtqueue*, align 8
  %4 = alloca i32, align 4
  store %struct.vtmmio_softc* %0, %struct.vtmmio_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %13 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %12, i32 0, i32 1
  %14 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %14, i64 %16
  store %struct.vtmmio_virtqueue* %17, %struct.vtmmio_virtqueue** %3, align 8
  %18 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @vtmmio_select_virtqueue(%struct.vtmmio_softc* %18, i32 %19)
  %21 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %22 = load i32, i32* @VIRTIO_MMIO_QUEUE_PFN, align 4
  %23 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %21, i32 %22, i32 0)
  %24 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %3, align 8
  %25 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @virtqueue_free(i32* %26)
  %28 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %3, align 8
  %29 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %5

33:                                               ; preds = %5
  %34 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %35 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %34, i32 0, i32 1
  %36 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %35, align 8
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = call i32 @free(%struct.vtmmio_virtqueue* %36, i32 %37)
  %39 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %40 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %39, i32 0, i32 1
  store %struct.vtmmio_virtqueue* null, %struct.vtmmio_virtqueue** %40, align 8
  %41 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %2, align 8
  %42 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  ret void
}

declare dso_local i32 @vtmmio_select_virtqueue(%struct.vtmmio_softc*, i32) #1

declare dso_local i32 @vtmmio_write_config_4(%struct.vtmmio_softc*, i32, i32) #1

declare dso_local i32 @virtqueue_free(i32*) #1

declare dso_local i32 @free(%struct.vtmmio_virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
