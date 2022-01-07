; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_backend_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_backend_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { i32, %struct.TYPE_2__*, %struct.virtio_blk_config* }
%struct.TYPE_2__ = type { i32 }
%struct.virtio_blk_config = type { i8*, i8*, i64, i32 }

@VIRTIO_ID_BLOCK = common dso_local global i32 0, align 4
@VIRTIO_MMIO_DEVICE_ID = common dso_local global i64 0, align 8
@NUM_DESCS = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_NUM_MAX = common dso_local global i64 0, align 8
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_BLK_SIZE = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_SEG_MAX = common dso_local global i32 0, align 4
@VIRTIO_MMIO_HOST_FEATURES = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@VTBLK_MAXSEGS = common dso_local global i32 0, align 4
@VIRTIO_MMIO_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Virtio block backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beri_vtblk_softc*)* @backend_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backend_info(%struct.beri_vtblk_softc* %0) #0 {
  %2 = alloca %struct.beri_vtblk_softc*, align 8
  %3 = alloca %struct.virtio_blk_config*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.beri_vtblk_softc* %0, %struct.beri_vtblk_softc** %2, align 8
  %7 = load i32, i32* @VIRTIO_ID_BLOCK, align 4
  %8 = call i8* @htobe32(i32 %7)
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %11 = load i64, i64* @VIRTIO_MMIO_DEVICE_ID, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @WRITE4(%struct.beri_vtblk_softc* %10, i64 %11, i32 %12)
  %14 = load i32, i32* @NUM_DESCS, align 4
  %15 = call i8* @htobe32(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %18 = load i64, i64* @VIRTIO_MMIO_QUEUE_NUM_MAX, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @WRITE4(%struct.beri_vtblk_softc* %17, i64 %18, i32 %19)
  %21 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %22 = load i32, i32* @VIRTIO_BLK_F_BLK_SIZE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VIRTIO_BLK_F_SEG_MAX, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @htobe32(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %29 = load i64, i64* @VIRTIO_MMIO_HOST_FEATURES, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @WRITE4(%struct.beri_vtblk_softc* %28, i64 %29, i32 %30)
  %32 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %33 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %32, i32 0, i32 2
  %34 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %33, align 8
  store %struct.virtio_blk_config* %34, %struct.virtio_blk_config** %3, align 8
  %35 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %36 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DEV_BSIZE, align 4
  %41 = sdiv i32 %39, %40
  %42 = call i32 @htobe64(i32 %41)
  %43 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %3, align 8
  %44 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %3, align 8
  %46 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @VTBLK_MAXSEGS, align 4
  %48 = call i8* @htobe32(i32 %47)
  %49 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %3, align 8
  %50 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @DEV_BSIZE, align 4
  %52 = call i8* @htobe32(i32 %51)
  %53 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %3, align 8
  %54 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %3, align 8
  %56 = bitcast %struct.virtio_blk_config* %55 to i32*
  store i32* %56, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %72, %1
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 32
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %63 = load i64, i64* @VIRTIO_MMIO_CONFIG, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @WRITE4(%struct.beri_vtblk_softc* %62, i64 %66, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32* %71, i32** %4, align 8
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 4
  store i32 %74, i32* %6, align 4
  br label %57

75:                                               ; preds = %57
  %76 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %77 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @strncpy(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 4)
  ret i32 0
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @WRITE4(%struct.beri_vtblk_softc*, i64, i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
