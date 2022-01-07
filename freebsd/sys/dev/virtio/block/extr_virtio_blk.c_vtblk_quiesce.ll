; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_quiesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32 }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vtblkq\00", align 1
@VTBLK_QUIESCE_TIMEOUT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtblk_softc*)* @vtblk_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_quiesce(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %4 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %5 = call i32 @VTBLK_LOCK_ASSERT(%struct.vtblk_softc* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @virtqueue_empty(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %14, i32 0, i32 0
  %16 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %17 = call i32 @VTBLK_MTX(%struct.vtblk_softc* %16)
  %18 = load i32, i32* @PRIBIO, align 4
  %19 = load i32, i32* @VTBLK_QUIESCE_TIMEOUT, align 4
  %20 = call i64 @mtx_sleep(i32* %15, i32 %17, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @EWOULDBLOCK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %13
  br label %6

26:                                               ; preds = %23, %6
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @VTBLK_LOCK_ASSERT(%struct.vtblk_softc*) #1

declare dso_local i32 @virtqueue_empty(i32) #1

declare dso_local i64 @mtx_sleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @VTBLK_MTX(%struct.vtblk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
