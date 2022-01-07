; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_init_indirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_init_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, i32, i32, %struct.vq_desc_extra*, i32, i32, i32, i32 }
%struct.vq_desc_extra = type { i32*, i32 }

@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"virtqueue %d (%s) requested indirect descriptors but not negotiated\0A\00", align 1
@VIRTQUEUE_FLAG_INDIRECT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot allocate indirect list\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*, i32)* @virtqueue_init_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtqueue_init_indirect(%struct.virtqueue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vq_desc_extra*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %11 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %15 = call i64 @VIRTIO_BUS_WITH_FEATURE(i32 %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i64, i64* @bootverbose, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %23 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %26 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %20, %17
  store i32 0, i32* %3, align 4
  br label %89

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %37 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %40 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @VIRTQUEUE_FLAG_INDIRECT, align 4
  %42 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %43 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %85, %30
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %49 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %46
  %53 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %54 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %53, i32 0, i32 3
  %55 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %55, i64 %57
  store %struct.vq_desc_extra* %58, %struct.vq_desc_extra** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @M_DEVBUF, align 4
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = call i32* @malloc(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %7, align 8
  %64 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %7, align 8
  %66 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %52
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %3, align 4
  br label %89

73:                                               ; preds = %52
  %74 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %7, align 8
  %75 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @vtophys(i32* %76)
  %78 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %7, align 8
  %79 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %81 = load %struct.vq_desc_extra*, %struct.vq_desc_extra** %7, align 8
  %82 = getelementptr inbounds %struct.vq_desc_extra, %struct.vq_desc_extra* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @virtqueue_init_indirect_list(%struct.virtqueue* %80, i32* %83)
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %46

88:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %69, %29
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @VIRTIO_BUS_WITH_FEATURE(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @virtqueue_init_indirect_list(%struct.virtqueue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
