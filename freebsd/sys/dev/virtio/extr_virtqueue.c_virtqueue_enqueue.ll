; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, i32, i32, i64, %struct.TYPE_2__, %struct.vq_desc_extra* }
%struct.TYPE_2__ = type { i32 }
%struct.vq_desc_extra = type { i32, i32* }
%struct.sglist = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"enqueuing with no cookie\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"segment count mismatch, %d, %d\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"too many segments to enqueue: %d, %d/%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"cookie already exists for index %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtqueue_enqueue(%struct.virtqueue* %0, i8* %1, %struct.sglist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtqueue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sglist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vq_desc_extra*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.sglist* %2, %struct.sglist** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 (%struct.virtqueue*, i32, i8*, ...) @VQASSERT(%struct.virtqueue* %19, i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.sglist*, %struct.sglist** %9, align 8
  %27 = getelementptr inbounds %struct.sglist, %struct.sglist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.sglist*, %struct.sglist** %9, align 8
  %33 = getelementptr inbounds %struct.sglist, %struct.sglist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.virtqueue*, i32, i8*, ...) @VQASSERT(%struct.virtqueue* %24, i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %39 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %5
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %45 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  br label %48

48:                                               ; preds = %42, %5
  %49 = phi i1 [ true, %5 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %53 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %56 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.virtqueue*, i32, i8*, ...) @VQASSERT(%struct.virtqueue* %36, i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %6, align 4
  br label %151

63:                                               ; preds = %48
  %64 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %65 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOSPC, align 4
  store i32 %69, i32* %6, align 4
  br label %151

70:                                               ; preds = %63
  %71 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i64 @vq_ring_use_indirect(%struct.virtqueue* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load %struct.sglist*, %struct.sglist** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @vq_ring_enqueue_indirect(%struct.virtqueue* %76, i8* %77, %struct.sglist* %78, i32 %79, i32 %80)
  store i32 0, i32* %6, align 4
  br label %151

82:                                               ; preds = %70
  %83 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %84 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @EMSGSIZE, align 4
  store i32 %89, i32* %6, align 4
  br label %151

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %93 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %14, align 8
  %95 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue* %95, i64 %96)
  %98 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %99 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %98, i32 0, i32 5
  %100 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %99, align 8
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %100, i64 %101
  store %struct.vq_desc_extra* %102, %struct.vq_desc_extra** %12, align 8
  %103 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %104 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %12, align 8
  %105 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %14, align 8
  %110 = call i32 (%struct.virtqueue*, i32, i8*, ...) @VQASSERT(%struct.virtqueue* %103, i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %109)
  %111 = load i8*, i8** %8, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %12, align 8
  %114 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %12, align 8
  %117 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %119 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %120 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load %struct.sglist*, %struct.sglist** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i64 @vq_ring_enqueue_segments(%struct.virtqueue* %118, i32 %122, i64 %123, %struct.sglist* %124, i32 %125, i32 %126)
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %130 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %133 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %137 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %91
  %141 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %142 = call i32 @VQ_RING_ASSERT_CHAIN_TERM(%struct.virtqueue* %141)
  br label %147

143:                                              ; preds = %91
  %144 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %145 = load i64, i64* %15, align 8
  %146 = call i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue* %144, i64 %145)
  br label %147

147:                                              ; preds = %143, %140
  %148 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %149 = load i64, i64* %14, align 8
  %150 = call i32 @vq_ring_update_avail(%struct.virtqueue* %148, i64 %149)
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %147, %88, %75, %68, %61
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @VQASSERT(%struct.virtqueue*, i32, i8*, ...) #1

declare dso_local i64 @vq_ring_use_indirect(%struct.virtqueue*, i32) #1

declare dso_local i32 @vq_ring_enqueue_indirect(%struct.virtqueue*, i8*, %struct.sglist*, i32, i32) #1

declare dso_local i32 @VQ_RING_ASSERT_VALID_IDX(%struct.virtqueue*, i64) #1

declare dso_local i64 @vq_ring_enqueue_segments(%struct.virtqueue*, i32, i64, %struct.sglist*, i32, i32) #1

declare dso_local i32 @VQ_RING_ASSERT_CHAIN_TERM(%struct.virtqueue*) #1

declare dso_local i32 @vq_ring_update_avail(%struct.virtqueue*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
