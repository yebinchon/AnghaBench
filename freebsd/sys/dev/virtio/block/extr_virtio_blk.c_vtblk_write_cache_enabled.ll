; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_write_cache_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_write_cache_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, i32 }
%struct.virtio_blk_config = type { i32 }

@VTBLK_FLAG_WC_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"writecache_mode\00", align 1
@vtblk_writecache_mode = common dso_local global i32 0, align 4
@VTBLK_CACHE_MAX = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_WCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtblk_softc*, %struct.virtio_blk_config*)* @vtblk_write_cache_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_write_cache_enabled(%struct.vtblk_softc* %0, %struct.virtio_blk_config* %1) #0 {
  %3 = alloca %struct.vtblk_softc*, align 8
  %4 = alloca %struct.virtio_blk_config*, align 8
  %5 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %3, align 8
  store %struct.virtio_blk_config* %1, %struct.virtio_blk_config** %4, align 8
  %6 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VTBLK_FLAG_WC_CONFIG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %14 = load i32, i32* @vtblk_writecache_mode, align 4
  %15 = call i32 @vtblk_tunable_int(%struct.vtblk_softc* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VTBLK_CACHE_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @vtblk_set_write_cache(%struct.vtblk_softc* %23, i32 %24)
  br label %30

26:                                               ; preds = %18, %12
  %27 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %28 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VIRTIO_BLK_F_WCE, align 4
  %36 = call i32 @virtio_with_feature(i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %30
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @vtblk_tunable_int(%struct.vtblk_softc*, i8*, i32) #1

declare dso_local i32 @vtblk_set_write_cache(%struct.vtblk_softc*, i32) #1

declare dso_local i32 @virtio_with_feature(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
