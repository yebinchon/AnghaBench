; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_alloc_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_alloc_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, i32, i32, %struct.disk*, i32 }
%struct.disk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vtblk_softc*, i32, i32, i32, i32, i32, i32 }
%struct.virtio_blk_config = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@vtblk_open = common dso_local global i32 0, align 4
@vtblk_close = common dso_local global i32 0, align 4
@vtblk_ioctl = common dso_local global i32 0, align 4
@vtblk_strategy = common dso_local global i32 0, align 4
@VTBLK_DISK_NAME = common dso_local global i32 0, align 4
@DISKFLAG_CANFLUSHCACHE = common dso_local global i32 0, align 4
@DISKFLAG_UNMAPPED_BIO = common dso_local global i32 0, align 4
@DISKFLAG_DIRECT_COMPLETION = common dso_local global i32 0, align 4
@VTBLK_FLAG_READONLY = common dso_local global i32 0, align 4
@vtblk_dump = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_BLK_SIZE = common dso_local global i32 0, align 4
@VTBLK_MIN_SEGMENTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_GEOMETRY = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_TOPOLOGY = common dso_local global i32 0, align 4
@VTBLK_CACHE_WRITEBACK = common dso_local global i32 0, align 4
@VTBLK_CACHE_WRITETHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*, %struct.virtio_blk_config*)* @vtblk_alloc_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_alloc_disk(%struct.vtblk_softc* %0, %struct.virtio_blk_config* %1) #0 {
  %3 = alloca %struct.vtblk_softc*, align 8
  %4 = alloca %struct.virtio_blk_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.disk*, align 8
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %3, align 8
  store %struct.virtio_blk_config* %1, %struct.virtio_blk_config** %4, align 8
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = call %struct.disk* (...) @disk_alloc()
  store %struct.disk* %10, %struct.disk** %6, align 8
  %11 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %11, i32 0, i32 3
  store %struct.disk* %10, %struct.disk** %12, align 8
  %13 = load i32, i32* @vtblk_open, align 4
  %14 = load %struct.disk*, %struct.disk** %6, align 8
  %15 = getelementptr inbounds %struct.disk, %struct.disk* %14, i32 0, i32 19
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @vtblk_close, align 4
  %17 = load %struct.disk*, %struct.disk** %6, align 8
  %18 = getelementptr inbounds %struct.disk, %struct.disk* %17, i32 0, i32 18
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @vtblk_ioctl, align 4
  %20 = load %struct.disk*, %struct.disk** %6, align 8
  %21 = getelementptr inbounds %struct.disk, %struct.disk* %20, i32 0, i32 17
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @vtblk_strategy, align 4
  %23 = load %struct.disk*, %struct.disk** %6, align 8
  %24 = getelementptr inbounds %struct.disk, %struct.disk* %23, i32 0, i32 16
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @VTBLK_DISK_NAME, align 4
  %26 = load %struct.disk*, %struct.disk** %6, align 8
  %27 = getelementptr inbounds %struct.disk, %struct.disk* %26, i32 0, i32 15
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @device_get_unit(i32 %28)
  %30 = load %struct.disk*, %struct.disk** %6, align 8
  %31 = getelementptr inbounds %struct.disk, %struct.disk* %30, i32 0, i32 14
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %33 = load %struct.disk*, %struct.disk** %6, align 8
  %34 = getelementptr inbounds %struct.disk, %struct.disk* %33, i32 0, i32 13
  store %struct.vtblk_softc* %32, %struct.vtblk_softc** %34, align 8
  %35 = load i32, i32* @DISKFLAG_CANFLUSHCACHE, align 4
  %36 = load i32, i32* @DISKFLAG_UNMAPPED_BIO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DISKFLAG_DIRECT_COMPLETION, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.disk*, %struct.disk** %6, align 8
  %41 = getelementptr inbounds %struct.disk, %struct.disk* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @virtio_get_vendor(i32 %42)
  %44 = load %struct.disk*, %struct.disk** %6, align 8
  %45 = getelementptr inbounds %struct.disk, %struct.disk* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @virtio_get_device(i32 %46)
  %48 = load %struct.disk*, %struct.disk** %6, align 8
  %49 = getelementptr inbounds %struct.disk, %struct.disk* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @virtio_get_subvendor(i32 %50)
  %52 = load %struct.disk*, %struct.disk** %6, align 8
  %53 = getelementptr inbounds %struct.disk, %struct.disk* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @virtio_get_subdevice(i32 %54)
  %56 = load %struct.disk*, %struct.disk** %6, align 8
  %57 = getelementptr inbounds %struct.disk, %struct.disk* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  %58 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %59 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @VTBLK_FLAG_READONLY, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %2
  %65 = load i32, i32* @vtblk_dump, align 4
  %66 = load %struct.disk*, %struct.disk** %6, align 8
  %67 = getelementptr inbounds %struct.disk, %struct.disk* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %2
  %69 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %70 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 512
  %73 = load %struct.disk*, %struct.disk** %6, align 8
  %74 = getelementptr inbounds %struct.disk, %struct.disk* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @VIRTIO_BLK_F_BLK_SIZE, align 4
  %77 = call i64 @virtio_with_feature(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %81 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.disk*, %struct.disk** %6, align 8
  %84 = getelementptr inbounds %struct.disk, %struct.disk* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %88

85:                                               ; preds = %68
  %86 = load %struct.disk*, %struct.disk** %6, align 8
  %87 = getelementptr inbounds %struct.disk, %struct.disk* %86, i32 0, i32 2
  store i32 512, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %90 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VTBLK_MIN_SEGMENTS, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load %struct.disk*, %struct.disk** %6, align 8
  %98 = getelementptr inbounds %struct.disk, %struct.disk* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.disk*, %struct.disk** %6, align 8
  %100 = getelementptr inbounds %struct.disk, %struct.disk* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %88
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = load %struct.disk*, %struct.disk** %6, align 8
  %107 = getelementptr inbounds %struct.disk, %struct.disk* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %88
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @VIRTIO_BLK_F_GEOMETRY, align 4
  %111 = call i64 @virtio_with_feature(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %115 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.disk*, %struct.disk** %6, align 8
  %119 = getelementptr inbounds %struct.disk, %struct.disk* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 4
  %120 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %121 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.disk*, %struct.disk** %6, align 8
  %125 = getelementptr inbounds %struct.disk, %struct.disk* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %113, %108
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @VIRTIO_BLK_F_TOPOLOGY, align 4
  %129 = call i64 @virtio_with_feature(i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %167

131:                                              ; preds = %126
  %132 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %133 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %131
  %138 = load %struct.disk*, %struct.disk** %6, align 8
  %139 = getelementptr inbounds %struct.disk, %struct.disk* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %142 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 1, %144
  %146 = mul nsw i32 %140, %145
  %147 = load %struct.disk*, %struct.disk** %6, align 8
  %148 = getelementptr inbounds %struct.disk, %struct.disk* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.disk*, %struct.disk** %6, align 8
  %150 = getelementptr inbounds %struct.disk, %struct.disk* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %153 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.disk*, %struct.disk** %6, align 8
  %157 = getelementptr inbounds %struct.disk, %struct.disk* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %155, %158
  %160 = sub nsw i32 %151, %159
  %161 = load %struct.disk*, %struct.disk** %6, align 8
  %162 = getelementptr inbounds %struct.disk, %struct.disk* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = srem i32 %160, %163
  %165 = load %struct.disk*, %struct.disk** %6, align 8
  %166 = getelementptr inbounds %struct.disk, %struct.disk* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %137, %131, %126
  %168 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %169 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %170 = call i64 @vtblk_write_cache_enabled(%struct.vtblk_softc* %168, %struct.virtio_blk_config* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32, i32* @VTBLK_CACHE_WRITEBACK, align 4
  %174 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %175 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  br label %180

176:                                              ; preds = %167
  %177 = load i32, i32* @VTBLK_CACHE_WRITETHROUGH, align 4
  %178 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %179 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %176, %172
  ret void
}

declare dso_local %struct.disk* @disk_alloc(...) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @virtio_get_vendor(i32) #1

declare dso_local i32 @virtio_get_device(i32) #1

declare dso_local i32 @virtio_get_subvendor(i32) #1

declare dso_local i32 @virtio_get_subdevice(i32) #1

declare dso_local i64 @virtio_with_feature(i32, i32) #1

declare dso_local i64 @vtblk_write_cache_enabled(%struct.vtblk_softc*, %struct.virtio_blk_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
