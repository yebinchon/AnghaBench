; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_drain_vq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_drain_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32*, %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.vtblk_request = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"virtqueue not empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*)* @vtblk_drain_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_drain_vq(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vtblk_request*, align 8
  %5 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %6 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %6, i32 0, i32 1
  %8 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  store %struct.virtqueue* %8, %struct.virtqueue** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %13, %1
  %10 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %11 = call %struct.vtblk_request* @virtqueue_drain(%struct.virtqueue* %10, i32* %5)
  store %struct.vtblk_request* %11, %struct.vtblk_request** %4, align 8
  %12 = icmp ne %struct.vtblk_request* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %15 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %16 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ENXIO, align 4
  %19 = call i32 @vtblk_bio_done(%struct.vtblk_softc* %14, i32 %17, i32 %18)
  %20 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %21 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %22 = call i32 @vtblk_request_enqueue(%struct.vtblk_softc* %20, %struct.vtblk_request* %21)
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %25 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %27 = call i32 @virtqueue_empty(%struct.virtqueue* %26)
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.vtblk_request* @virtqueue_drain(%struct.virtqueue*, i32*) #1

declare dso_local i32 @vtblk_bio_done(%struct.vtblk_softc*, i32, i32) #1

declare dso_local i32 @vtblk_request_enqueue(%struct.vtblk_softc*, %struct.vtblk_request*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @virtqueue_empty(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
