; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { %struct.vtblk_softc* }
%struct.vtblk_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@VTBLK_FLAG_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @vtblk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_open(%struct.disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disk*, align 8
  %4 = alloca %struct.vtblk_softc*, align 8
  store %struct.disk* %0, %struct.disk** %3, align 8
  %5 = load %struct.disk*, %struct.disk** %3, align 8
  %6 = getelementptr inbounds %struct.disk, %struct.disk* %5, i32 0, i32 0
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %6, align 8
  store %struct.vtblk_softc* %7, %struct.vtblk_softc** %4, align 8
  %8 = icmp eq %struct.vtblk_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.vtblk_softc*, %struct.vtblk_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VTBLK_FLAG_DETACH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @ENXIO, align 4
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
