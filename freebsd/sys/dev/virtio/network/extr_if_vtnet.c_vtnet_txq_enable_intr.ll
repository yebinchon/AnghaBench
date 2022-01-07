; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_txq = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }

@VQ_POSTPONE_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_txq*)* @vtnet_txq_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_txq_enable_intr(%struct.vtnet_txq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_txq*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  store %struct.vtnet_txq* %0, %struct.vtnet_txq** %3, align 8
  %5 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %6 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %5, i32 0, i32 0
  %7 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  store %struct.virtqueue* %7, %struct.virtqueue** %4, align 8
  %8 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %9 = call i64 @vtnet_txq_below_threshold(%struct.vtnet_txq* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %13 = load i32, i32* @VQ_POSTPONE_LONG, align 4
  %14 = call i32 @virtqueue_postpone_intr(%struct.virtqueue* %12, i32 %13)
  store i32 %14, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @vtnet_txq_below_threshold(%struct.vtnet_txq*) #1

declare dso_local i32 @virtqueue_postpone_intr(%struct.virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
