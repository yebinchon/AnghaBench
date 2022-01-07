; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_rxq_populate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_rxq_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_rxq = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_rxq*)* @vtnet_rxq_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_rxq_populate(%struct.vtnet_rxq* %0) #0 {
  %2 = alloca %struct.vtnet_rxq*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vtnet_rxq* %0, %struct.vtnet_rxq** %2, align 8
  %6 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %2, align 8
  %7 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %6, i32 0, i32 0
  %8 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  store %struct.virtqueue* %8, %struct.virtqueue** %3, align 8
  %9 = load i32, i32* @ENOSPC, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %12 = call i32 @virtqueue_full(%struct.virtqueue* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %2, align 8
  %17 = call i32 @vtnet_rxq_new_buf(%struct.vtnet_rxq* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %25

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %10

25:                                               ; preds = %20, %10
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %30 = call i32 @virtqueue_notify(%struct.virtqueue* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EMSGSIZE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @virtqueue_full(%struct.virtqueue*) #1

declare dso_local i32 @vtnet_rxq_new_buf(%struct.vtnet_rxq*) #1

declare dso_local i32 @virtqueue_notify(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
