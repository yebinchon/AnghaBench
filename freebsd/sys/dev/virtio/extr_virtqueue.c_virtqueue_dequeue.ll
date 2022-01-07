; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.vring_used_elem* }
%struct.vring_used_elem = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"no cookie for index %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @virtqueue_dequeue(%struct.virtqueue* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vring_used_elem*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %11 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %14 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %12, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %23 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %27 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %24, %30
  store i64 %31, i64* %8, align 8
  %32 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %33 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.vring_used_elem*, %struct.vring_used_elem** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %37, i64 %38
  store %struct.vring_used_elem* %39, %struct.vring_used_elem** %6, align 8
  %40 = call i32 (...) @rmb()
  %41 = load %struct.vring_used_elem*, %struct.vring_used_elem** %6, align 8
  %42 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %21
  %47 = load %struct.vring_used_elem*, %struct.vring_used_elem** %6, align 8
  %48 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %21
  %52 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @vq_ring_free_chain(%struct.virtqueue* %52, i64 %53)
  %55 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %56 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to i8*
  store i8* %62, i8** %7, align 8
  %63 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @VQASSERT(%struct.virtqueue* %63, i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %70 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load i8*, i8** %7, align 8
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %51, %20
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @vq_ring_free_chain(%struct.virtqueue*, i64) #1

declare dso_local i32 @VQASSERT(%struct.virtqueue*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
