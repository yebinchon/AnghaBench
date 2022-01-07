; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vq_alloc_info = type { i32, i32, i32, i32 }
%struct.virtqueue = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"virtqueue %d (%s) does not exist (size is zero)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"virtqueue %d (%s) size is not a power of 2: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VIRTIO_MAX_INDIRECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"virtqueue %d (%s) requested too many indirect descriptors: %d, max %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot allocate virtqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@VIRTQUEUE_FLAG_EVENT_IDX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"cannot allocate memory for virtqueue ring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtqueue_alloc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.vq_alloc_info* %5, %struct.virtqueue** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vq_alloc_info*, align 8
  %15 = alloca %struct.virtqueue**, align 8
  %16 = alloca %struct.virtqueue*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.vq_alloc_info* %5, %struct.vq_alloc_info** %14, align 8
  store %struct.virtqueue** %6, %struct.virtqueue*** %15, align 8
  %18 = load %struct.virtqueue**, %struct.virtqueue*** %15, align 8
  store %struct.virtqueue* null, %struct.virtqueue** %18, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %25 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @ENODEV, align 4
  store i32 %28, i32* %8, align 4
  br label %179

29:                                               ; preds = %7
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @powerof2(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %37 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %39)
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %8, align 4
  br label %179

42:                                               ; preds = %29
  %43 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %44 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VIRTIO_MAX_INDIRECT, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %52 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %55 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VIRTIO_MAX_INDIRECT, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53, i32 %56, i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %8, align 4
  br label %179

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = add i64 48, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @M_DEVBUF, align 4
  %69 = load i32, i32* @M_NOWAIT, align 4
  %70 = load i32, i32* @M_ZERO, align 4
  %71 = or i32 %69, %70
  %72 = call %struct.virtqueue* @malloc(i32 %67, i32 %68, i32 %71)
  store %struct.virtqueue* %72, %struct.virtqueue** %16, align 8
  %73 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %74 = icmp eq %struct.virtqueue* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %8, align 4
  br label %179

79:                                               ; preds = %62
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %82 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 4
  %83 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %84 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %87 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @strlcpy(i32 %85, i32 %88, i32 4)
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %92 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %95 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %98 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %101 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %103 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %106 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  %107 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %108 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %111 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %114 = call i64 @VIRTIO_BUS_WITH_FEATURE(i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %79
  %117 = load i32, i32* @VIRTQUEUE_FLAG_EVENT_IDX, align 4
  %118 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %119 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %79
  %123 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %124 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %129 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %14, align 8
  %130 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @virtqueue_init_indirect(%struct.virtqueue* %128, i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %171

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %122
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @vring_size(i32 %138, i32 %139)
  %141 = call i32 @round_page(i32 %140)
  %142 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %143 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 8
  %144 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %145 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @M_DEVBUF, align 4
  %148 = load i32, i32* @M_NOWAIT, align 4
  %149 = load i32, i32* @M_ZERO, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = call i32* @contigmalloc(i32 %146, i32 %147, i32 %150, i32 0, i32 %151, i32 %152, i32 0)
  %154 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %155 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %154, i32 0, i32 4
  store i32* %153, i32** %155, align 8
  %156 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %157 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %137
  %161 = load i32, i32* %9, align 4
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i32, i32* @ENOMEM, align 4
  store i32 %163, i32* %17, align 4
  br label %171

164:                                              ; preds = %137
  %165 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %166 = call i32 @vq_ring_init(%struct.virtqueue* %165)
  %167 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %168 = call i32 @virtqueue_disable_intr(%struct.virtqueue* %167)
  %169 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %170 = load %struct.virtqueue**, %struct.virtqueue*** %15, align 8
  store %struct.virtqueue* %169, %struct.virtqueue** %170, align 8
  br label %171

171:                                              ; preds = %164, %160, %135
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %176 = call i32 @virtqueue_free(%struct.virtqueue* %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %177, %75, %48, %33, %21
  %180 = load i32, i32* %8, align 4
  ret i32 %180
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local %struct.virtqueue* @malloc(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @VIRTIO_BUS_WITH_FEATURE(i32, i32) #1

declare dso_local i32 @virtqueue_init_indirect(%struct.virtqueue*, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vq_ring_init(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_disable_intr(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_free(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
