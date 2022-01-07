; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32*, %struct.bio_queue_head }
%struct.bio_queue_head = type { i32 }
%struct.bio_queue = type { i32 }
%struct.vtblk_request = type { %struct.bio* }
%struct.bio = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*)* @vtblk_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_drain(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca %struct.bio_queue, align 4
  %4 = alloca %struct.bio_queue_head*, align 8
  %5 = alloca %struct.vtblk_request*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %7, i32 0, i32 1
  store %struct.bio_queue_head* %8, %struct.bio_queue_head** %4, align 8
  %9 = call i32 @TAILQ_INIT(%struct.bio_queue* %3)
  %10 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %16 = call i32 @vtblk_queue_completed(%struct.vtblk_softc* %15, %struct.bio_queue* %3)
  %17 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %18 = call i32 @vtblk_done_completed(%struct.vtblk_softc* %17, %struct.bio_queue* %3)
  %19 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %20 = call i32 @vtblk_drain_vq(%struct.vtblk_softc* %19)
  br label %21

21:                                               ; preds = %14, %1
  br label %22

22:                                               ; preds = %26, %21
  %23 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %24 = call %struct.vtblk_request* @vtblk_request_next_ready(%struct.vtblk_softc* %23)
  store %struct.vtblk_request* %24, %struct.vtblk_request** %5, align 8
  %25 = icmp ne %struct.vtblk_request* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %28 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %29 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %28, i32 0, i32 0
  %30 = load %struct.bio*, %struct.bio** %29, align 8
  %31 = load i32, i32* @ENXIO, align 4
  %32 = call i32 @vtblk_bio_done(%struct.vtblk_softc* %27, %struct.bio* %30, i32 %31)
  %33 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %34 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %35 = call i32 @vtblk_request_enqueue(%struct.vtblk_softc* %33, %struct.vtblk_request* %34)
  br label %22

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %41, %36
  %38 = load %struct.bio_queue_head*, %struct.bio_queue_head** %4, align 8
  %39 = call i32* @bioq_first(%struct.bio_queue_head* %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.bio_queue_head*, %struct.bio_queue_head** %4, align 8
  %43 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %42)
  store %struct.bio* %43, %struct.bio** %6, align 8
  %44 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %45 = load %struct.bio*, %struct.bio** %6, align 8
  %46 = load i32, i32* @ENXIO, align 4
  %47 = call i32 @vtblk_bio_done(%struct.vtblk_softc* %44, %struct.bio* %45, i32 %46)
  br label %37

48:                                               ; preds = %37
  %49 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %50 = call i32 @vtblk_request_free(%struct.vtblk_softc* %49)
  ret void
}

declare dso_local i32 @TAILQ_INIT(%struct.bio_queue*) #1

declare dso_local i32 @vtblk_queue_completed(%struct.vtblk_softc*, %struct.bio_queue*) #1

declare dso_local i32 @vtblk_done_completed(%struct.vtblk_softc*, %struct.bio_queue*) #1

declare dso_local i32 @vtblk_drain_vq(%struct.vtblk_softc*) #1

declare dso_local %struct.vtblk_request* @vtblk_request_next_ready(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_bio_done(%struct.vtblk_softc*, %struct.bio*, i32) #1

declare dso_local i32 @vtblk_request_enqueue(%struct.vtblk_softc*, %struct.vtblk_request*) #1

declare dso_local i32* @bioq_first(%struct.bio_queue_head*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @vtblk_request_free(%struct.vtblk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
