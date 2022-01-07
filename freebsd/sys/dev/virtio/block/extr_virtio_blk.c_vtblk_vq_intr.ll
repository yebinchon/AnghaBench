; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_vq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_vq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.bio_queue = type { i32 }

@VTBLK_FLAG_DETACH = common dso_local global i32 0, align 4
@VTBLK_FLAG_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtblk_vq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_vq_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtblk_softc*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca %struct.bio_queue, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vtblk_softc*
  store %struct.vtblk_softc* %7, %struct.vtblk_softc** %3, align 8
  %8 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %8, i32 0, i32 1
  %10 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  store %struct.virtqueue* %10, %struct.virtqueue** %4, align 8
  %11 = call i32 @TAILQ_INIT(%struct.bio_queue* %5)
  %12 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %13 = call i32 @VTBLK_LOCK(%struct.vtblk_softc* %12)
  br label %14

14:                                               ; preds = %30, %1
  %15 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VTBLK_FLAG_DETACH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %45

22:                                               ; preds = %14
  %23 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %24 = call i32 @vtblk_queue_completed(%struct.vtblk_softc* %23, %struct.bio_queue* %5)
  %25 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %26 = call i32 @vtblk_startio(%struct.vtblk_softc* %25)
  %27 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %28 = call i64 @virtqueue_enable_intr(%struct.virtqueue* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %32 = call i32 @virtqueue_disable_intr(%struct.virtqueue* %31)
  br label %14

33:                                               ; preds = %22
  %34 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VTBLK_FLAG_SUSPEND, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %42 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %41, i32 0, i32 1
  %43 = call i32 @wakeup(%struct.virtqueue** %42)
  br label %44

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %47 = call i32 @VTBLK_UNLOCK(%struct.vtblk_softc* %46)
  %48 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %49 = call i32 @vtblk_done_completed(%struct.vtblk_softc* %48, %struct.bio_queue* %5)
  ret void
}

declare dso_local i32 @TAILQ_INIT(%struct.bio_queue*) #1

declare dso_local i32 @VTBLK_LOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_queue_completed(%struct.vtblk_softc*, %struct.bio_queue*) #1

declare dso_local i32 @vtblk_startio(%struct.vtblk_softc*) #1

declare dso_local i64 @virtqueue_enable_intr(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_disable_intr(%struct.virtqueue*) #1

declare dso_local i32 @wakeup(%struct.virtqueue**) #1

declare dso_local i32 @VTBLK_UNLOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_done_completed(%struct.vtblk_softc*, %struct.bio_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
