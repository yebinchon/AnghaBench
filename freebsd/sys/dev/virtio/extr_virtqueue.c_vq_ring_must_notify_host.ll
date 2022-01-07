; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_vq_ring_must_notify_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_vq_ring_must_notify_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@VIRTQUEUE_FLAG_EVENT_IDX = common dso_local global i32 0, align 4
@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*)* @vq_ring_must_notify_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vq_ring_must_notify_host(%struct.virtqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VIRTQUEUE_FLAG_EVENT_IDX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %15 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %22 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %5, align 8
  %25 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %26 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %25, i32 0, i32 1
  %27 = call i64 @vring_avail_event(%struct.TYPE_6__* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @vring_need_event(i64 %28, i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %45

34:                                               ; preds = %1
  %35 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %36 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %34, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @vring_avail_event(%struct.TYPE_6__*) #1

declare dso_local i64 @vring_need_event(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
