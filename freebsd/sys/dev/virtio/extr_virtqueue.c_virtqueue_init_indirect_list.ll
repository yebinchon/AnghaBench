; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_init_indirect_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_init_indirect_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, i32 }
%struct.vring_desc = type { i32 }

@VQ_RING_DESC_CHAIN_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*, %struct.vring_desc*)* @virtqueue_init_indirect_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtqueue_init_indirect_list(%struct.virtqueue* %0, %struct.vring_desc* %1) #0 {
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vring_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  store %struct.vring_desc* %1, %struct.vring_desc** %4, align 8
  %6 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bzero(%struct.vring_desc* %6, i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %14 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %21, i64 %23
  %25 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load i32, i32* @VQ_RING_DESC_CHAIN_END, align 4
  %31 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %31, i64 %33
  %35 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.vring_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
