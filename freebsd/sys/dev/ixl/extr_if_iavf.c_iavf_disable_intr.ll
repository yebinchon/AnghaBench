; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_disable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.ixl_rx_queue*, %struct.i40e_hw* }
%struct.ixl_rx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_disable_intr(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ixl_rx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %6 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %6, i32 0, i32 2
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  store %struct.i40e_hw* %8, %struct.i40e_hw** %3, align 8
  %9 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %9, i32 0, i32 1
  %11 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %10, align 8
  store %struct.ixl_rx_queue* %11, %struct.ixl_rx_queue** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %15 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %20 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iavf_disable_queue_irq(%struct.i40e_hw* %19, i32 %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %28, i32 1
  store %struct.ixl_rx_queue* %29, %struct.ixl_rx_queue** %4, align 8
  br label %12

30:                                               ; preds = %12
  ret void
}

declare dso_local i32 @iavf_disable_queue_irq(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
