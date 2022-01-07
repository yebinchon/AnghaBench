; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i64, i64, i32, i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"%s: freeing non-empty virtqueue, leaking %d entries\0A\00", align 1
@VIRTQUEUE_FLAG_INDIRECT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtqueue_free(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %3 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %4 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %7 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %12 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %15 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %18 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %21 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %23)
  br label %25

25:                                               ; preds = %10, %1
  %26 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %27 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VIRTQUEUE_FLAG_INDIRECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %34 = call i32 @virtqueue_free_indirect(%struct.virtqueue* %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %37 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %42 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %45 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @contigfree(i32* %43, i64 %46, i32 %47)
  %49 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %50 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %52 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %40, %35
  %54 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %55 = load i32, i32* @M_DEVBUF, align 4
  %56 = call i32 @free(%struct.virtqueue* %54, i32 %55)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i64) #1

declare dso_local i32 @virtqueue_free_indirect(%struct.virtqueue*) #1

declare dso_local i32 @contigfree(i32*, i64, i32) #1

declare dso_local i32 @free(%struct.virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
