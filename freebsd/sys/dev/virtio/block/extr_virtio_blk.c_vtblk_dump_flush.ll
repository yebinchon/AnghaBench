; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_dump_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_dump_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { %struct.vtblk_request }
%struct.vtblk_request = type { i32, %struct.bio*, %struct.TYPE_2__ }
%struct.bio = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@VIRTIO_BLK_T_FLUSH = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtblk_softc*)* @vtblk_dump_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_dump_flush(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca %struct.bio, align 4
  %4 = alloca %struct.vtblk_request*, align 8
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %5 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %5, i32 0, i32 0
  store %struct.vtblk_request* %6, %struct.vtblk_request** %4, align 8
  %7 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %8 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 8
  %9 = load i32, i32* @VIRTIO_BLK_T_FLUSH, align 4
  %10 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %11 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %14 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %17 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %20 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %19, i32 0, i32 1
  store %struct.bio* %3, %struct.bio** %20, align 8
  %21 = call i32 @g_reset_bio(%struct.bio* %3)
  %22 = load i32, i32* @BIO_FLUSH, align 4
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %3, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %25 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %26 = call i32 @vtblk_poll_request(%struct.vtblk_softc* %24, %struct.vtblk_request* %25)
  ret i32 %26
}

declare dso_local i32 @g_reset_bio(%struct.bio*) #1

declare dso_local i32 @vtblk_poll_request(%struct.vtblk_softc*, %struct.vtblk_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
