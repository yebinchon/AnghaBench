; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_vq_ring_enqueue_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_vq_ring_enqueue_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_desc = type { i64, i32, i32, i32 }
%struct.sglist = type { %struct.sglist_seg* }
%struct.sglist_seg = type { i32, i32 }

@VQ_RING_DESC_CHAIN_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"premature end of free desc chain\00", align 1
@VRING_DESC_F_NEXT = common dso_local global i32 0, align 4
@VRING_DESC_F_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.virtqueue*, %struct.vring_desc*, i64, %struct.sglist*, i32, i32)* @vq_ring_enqueue_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vq_ring_enqueue_segments(%struct.virtqueue* %0, %struct.vring_desc* %1, i64 %2, %struct.sglist* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.virtqueue*, align 8
  %8 = alloca %struct.vring_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sglist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sglist_seg*, align 8
  %14 = alloca %struct.vring_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %7, align 8
  store %struct.vring_desc* %1, %struct.vring_desc** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sglist* %3, %struct.sglist** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %17, align 8
  %22 = load %struct.sglist*, %struct.sglist** %10, align 8
  %23 = getelementptr inbounds %struct.sglist, %struct.sglist* %22, i32 0, i32 0
  %24 = load %struct.sglist_seg*, %struct.sglist_seg** %23, align 8
  store %struct.sglist_seg* %24, %struct.sglist_seg** %13, align 8
  br label %25

25:                                               ; preds = %72, %6
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %25
  %30 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* @VQ_RING_DESC_CHAIN_END, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @VQASSERT(%struct.virtqueue* %30, i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.vring_desc*, %struct.vring_desc** %8, align 8
  %37 = load i64, i64* %17, align 8
  %38 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %36, i64 %37
  store %struct.vring_desc* %38, %struct.vring_desc** %14, align 8
  %39 = load %struct.sglist_seg*, %struct.sglist_seg** %13, align 8
  %40 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vring_desc*, %struct.vring_desc** %14, align 8
  %43 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sglist_seg*, %struct.sglist_seg** %13, align 8
  %45 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vring_desc*, %struct.vring_desc** %14, align 8
  %48 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.vring_desc*, %struct.vring_desc** %14, align 8
  %50 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %29
  %56 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %57 = load %struct.vring_desc*, %struct.vring_desc** %14, align 8
  %58 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %29
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @VRING_DESC_F_WRITE, align 4
  %67 = load %struct.vring_desc*, %struct.vring_desc** %14, align 8
  %68 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load %struct.vring_desc*, %struct.vring_desc** %14, align 8
  %76 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %17, align 8
  %78 = load %struct.sglist_seg*, %struct.sglist_seg** %13, align 8
  %79 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %78, i32 1
  store %struct.sglist_seg* %79, %struct.sglist_seg** %13, align 8
  br label %25

80:                                               ; preds = %25
  %81 = load i64, i64* %17, align 8
  ret i64 %81
}

declare dso_local i32 @VQASSERT(%struct.virtqueue*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
