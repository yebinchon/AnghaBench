; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_rxfinish_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_rxfinish_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtbe_softc = type { i32, %struct.vqueue_info* }
%struct.vqueue_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VIRTIO_MMIO_INT_VRING = common dso_local global i32 0, align 4
@VIRTIO_MMIO_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@Q_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtbe_softc*)* @vtbe_rxfinish_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtbe_rxfinish_locked(%struct.vtbe_softc* %0) #0 {
  %2 = alloca %struct.vtbe_softc*, align 8
  %3 = alloca %struct.vqueue_info*, align 8
  %4 = alloca i32, align 4
  store %struct.vtbe_softc* %0, %struct.vtbe_softc** %2, align 8
  %5 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %5, i32 0, i32 1
  %7 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %8 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %7, i64 1
  store %struct.vqueue_info* %8, %struct.vqueue_info** %3, align 8
  %9 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %10 = call i32 @vq_ring_ready(%struct.vqueue_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %15 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be16toh(i32 %18)
  %20 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %21 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %26, %13
  %23 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %24 = call i64 @vq_has_descs(%struct.vqueue_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %28 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %29 = call i32 @vtbe_proc_rx(%struct.vtbe_softc* %27, %struct.vqueue_info* %28)
  br label %22

30:                                               ; preds = %22
  %31 = load i32, i32* @VIRTIO_MMIO_INT_VRING, align 4
  %32 = call i32 @htobe32(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %34 = load i32, i32* @VIRTIO_MMIO_INTERRUPT_STATUS, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @WRITE4(%struct.vtbe_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @Q_INTR, align 4
  %41 = call i32 @PIO_SET(i32 %39, i32 %40, i32 1)
  br label %42

42:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @vq_ring_ready(%struct.vqueue_info*) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i64 @vq_has_descs(%struct.vqueue_info*) #1

declare dso_local i32 @vtbe_proc_rx(%struct.vtbe_softc*, %struct.vqueue_info*) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @WRITE4(%struct.vtbe_softc*, i32, i32) #1

declare dso_local i32 @PIO_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
