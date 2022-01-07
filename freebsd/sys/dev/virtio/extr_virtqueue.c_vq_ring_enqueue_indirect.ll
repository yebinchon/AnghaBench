; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_vq_ring_enqueue_indirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_vq_ring_enqueue_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, i64, i64, %struct.vq_desc_extra*, %struct.TYPE_2__ }
%struct.vq_desc_extra = type { i32, i32, i32, i32* }
%struct.TYPE_2__ = type { %struct.vring_desc* }
%struct.vring_desc = type { i32, i64, i32, i32 }
%struct.sglist = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"enqueuing too many indirect descriptors\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cookie already exists for index %d\00", align 1
@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*, i8*, %struct.sglist*, i32, i32)* @vq_ring_enqueue_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vq_ring_enqueue_indirect(%struct.virtqueue* %0, i8* %1, %struct.sglist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.virtqueue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sglist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vring_desc*, align 8
  %12 = alloca %struct.vq_desc_extra*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sglist* %2, %struct.sglist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %21 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (%struct.virtqueue*, i32, i8*, ...) @VQASSERT(%struct.virtqueue* %18, i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %27 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue* %29, i64 %30)
  %32 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %33 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.vring_desc*, %struct.vring_desc** %34, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %35, i64 %36
  store %struct.vring_desc* %37, %struct.vring_desc** %11, align 8
  %38 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %39 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %38, i32 0, i32 3
  %40 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %39, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %40, i64 %41
  store %struct.vq_desc_extra* %42, %struct.vq_desc_extra** %12, align 8
  %43 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %44 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %12, align 8
  %45 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %14, align 8
  %50 = call i32 (%struct.virtqueue*, i32, i8*, ...) @VQASSERT(%struct.virtqueue* %43, i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %12, align 8
  %54 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %12, align 8
  %56 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %12, align 8
  %58 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vring_desc*, %struct.vring_desc** %11, align 8
  %61 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 24
  %65 = trunc i64 %64 to i32
  %66 = load %struct.vring_desc*, %struct.vring_desc** %11, align 8
  %67 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %69 = load %struct.vring_desc*, %struct.vring_desc** %11, align 8
  %70 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %72 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %12, align 8
  %73 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sglist*, %struct.sglist** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @vq_ring_enqueue_segments(%struct.virtqueue* %71, i32 %74, i32 0, %struct.sglist* %75, i32 %76, i32 %77)
  %79 = load %struct.vring_desc*, %struct.vring_desc** %11, align 8
  %80 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %83 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %85 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %89 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %5
  %93 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %94 = call i32 @VQ_RING_ASSERT_CHAIN_TERM(%struct.virtqueue* %93)
  br label %101

95:                                               ; preds = %5
  %96 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %97 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %98 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue* %96, i64 %99)
  br label %101

101:                                              ; preds = %95, %92
  %102 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @vq_ring_update_avail(%struct.virtqueue* %102, i64 %103)
  ret void
}

declare dso_local i32 @VQASSERT(%struct.virtqueue*, i32, i8*, ...) #1

declare dso_local i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue*, i64) #1

declare dso_local i32 @vq_ring_enqueue_segments(%struct.virtqueue*, i32, i32, %struct.sglist*, i32, i32) #1

declare dso_local i32 @VQ_RING_ASSERT_CHAIN_TERM(%struct.virtqueue*) #1

declare dso_local i32 @vq_ring_update_avail(%struct.virtqueue*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
