; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_vq_ring_free_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_vq_ring_free_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i64, i64, %struct.TYPE_2__, %struct.vq_desc_extra* }
%struct.TYPE_2__ = type { %struct.vring_desc* }
%struct.vring_desc = type { i32, i64 }
%struct.vq_desc_extra = type { i64 }

@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@VRING_DESC_F_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to free entire desc chain, remaining: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*, i64)* @vq_ring_free_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vq_ring_free_chain(%struct.virtqueue* %0, i64 %1) #0 {
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vring_desc*, align 8
  %6 = alloca %struct.vq_desc_extra*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue* %7, i64 %8)
  %10 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %11 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.vring_desc*, %struct.vring_desc** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %13, i64 %14
  store %struct.vring_desc* %15, %struct.vring_desc** %5, align 8
  %16 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %17 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %16, i32 0, i32 3
  %18 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %18, i64 %19
  store %struct.vq_desc_extra* %20, %struct.vq_desc_extra** %6, align 8
  %21 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %22 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %27 = call i32 @VQ_RING_ASSERT_CHAIN_TERM(%struct.virtqueue* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %6, align 8
  %30 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %33 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %6, align 8
  %37 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %41 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %54, %46
  %48 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %49 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %56 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %57 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue* %55, i64 %58)
  %60 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %61 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.vring_desc*, %struct.vring_desc** %62, align 8
  %64 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %65 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %63, i64 %66
  store %struct.vring_desc* %67, %struct.vring_desc** %5, align 8
  %68 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %6, align 8
  %69 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %69, align 8
  br label %47

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72, %28
  %74 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %75 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %6, align 8
  %76 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %6, align 8
  %81 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @VQASSERT(%struct.virtqueue* %74, i32 %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %85 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %88 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %91 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  ret void
}

declare dso_local i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue*, i64) #1

declare dso_local i32 @VQ_RING_ASSERT_CHAIN_TERM(%struct.virtqueue*) #1

declare dso_local i32 @VQASSERT(%struct.virtqueue*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
