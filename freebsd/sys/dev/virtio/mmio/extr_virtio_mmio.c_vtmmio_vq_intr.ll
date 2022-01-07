; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_vq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_vq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_virtqueue = type { i64, %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.vtmmio_softc = type { i32, %struct.vtmmio_virtqueue*, i32* }

@VIRTIO_MMIO_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@VIRTIO_MMIO_INTERRUPT_ACK = common dso_local global i32 0, align 4
@VIRTIO_MMIO_INT_CONFIG = common dso_local global i32 0, align 4
@VIRTIO_MMIO_INT_VRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtmmio_vq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtmmio_vq_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtmmio_virtqueue*, align 8
  %4 = alloca %struct.vtmmio_softc*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.vtmmio_softc*
  store %struct.vtmmio_softc* %9, %struct.vtmmio_softc** %4, align 8
  %10 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %11 = load i32, i32* @VIRTIO_MMIO_INTERRUPT_STATUS, align 4
  %12 = call i32 @vtmmio_read_config_4(%struct.vtmmio_softc* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %14 = load i32, i32* @VIRTIO_MMIO_INTERRUPT_ACK, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @VIRTIO_MMIO_INT_CONFIG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %23 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %28 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @VIRTIO_CONFIG_CHANGE(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @VIRTIO_MMIO_INT_VRING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %41 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %46 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %45, i32 0, i32 1
  %47 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %47, i64 %49
  store %struct.vtmmio_virtqueue* %50, %struct.vtmmio_virtqueue** %3, align 8
  %51 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %3, align 8
  %52 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %3, align 8
  %57 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %56, i32 0, i32 1
  %58 = load %struct.virtqueue*, %struct.virtqueue** %57, align 8
  store %struct.virtqueue* %58, %struct.virtqueue** %5, align 8
  %59 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %60 = call i32 @virtqueue_intr(%struct.virtqueue* %59)
  br label %61

61:                                               ; preds = %55, %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %38

65:                                               ; preds = %38
  br label %66

66:                                               ; preds = %65, %32
  ret void
}

declare dso_local i32 @vtmmio_read_config_4(%struct.vtmmio_softc*, i32) #1

declare dso_local i32 @vtmmio_write_config_4(%struct.vtmmio_softc*, i32, i32) #1

declare dso_local i32 @VIRTIO_CONFIG_CHANGE(i32*) #1

declare dso_local i32 @virtqueue_intr(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
