; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_filter_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_filter_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIRTIO_TRANSPORT_F_START = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtqueue_filter_features(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @VIRTIO_TRANSPORT_F_START, align 4
  %5 = shl i32 1, %4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %13, %14
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
