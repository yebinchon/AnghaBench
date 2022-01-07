; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.vtblk_request = type { i32 }

@VTBLK_FLAG_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*)* @vtblk_startio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_startio(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vtblk_request*, align 8
  %5 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %6 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %7 = call i32 @VTBLK_LOCK_ASSERT(%struct.vtblk_softc* %6)
  %8 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %8, i32 0, i32 1
  %10 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  store %struct.virtqueue* %10, %struct.virtqueue** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VTBLK_FLAG_SUSPEND, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %48

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %39, %18
  %20 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %21 = call i32 @virtqueue_full(%struct.virtqueue* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %26 = call %struct.vtblk_request* @vtblk_request_next(%struct.vtblk_softc* %25)
  store %struct.vtblk_request* %26, %struct.vtblk_request** %4, align 8
  %27 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %28 = icmp eq %struct.vtblk_request* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %42

30:                                               ; preds = %24
  %31 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %32 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %33 = call i64 @vtblk_request_execute(%struct.vtblk_softc* %31, %struct.vtblk_request* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %37 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %38 = call i32 @vtblk_request_requeue_ready(%struct.vtblk_softc* %36, %struct.vtblk_request* %37)
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %19

42:                                               ; preds = %35, %29, %19
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %47 = call i32 @virtqueue_notify(%struct.virtqueue* %46)
  br label %48

48:                                               ; preds = %17, %45, %42
  ret void
}

declare dso_local i32 @VTBLK_LOCK_ASSERT(%struct.vtblk_softc*) #1

declare dso_local i32 @virtqueue_full(%struct.virtqueue*) #1

declare dso_local %struct.vtblk_request* @vtblk_request_next(%struct.vtblk_softc*) #1

declare dso_local i64 @vtblk_request_execute(%struct.vtblk_softc*, %struct.vtblk_request*) #1

declare dso_local i32 @vtblk_request_requeue_ready(%struct.vtblk_softc*, %struct.vtblk_request*) #1

declare dso_local i32 @virtqueue_notify(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
