; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.ixl_rx_queue*, %struct.i40e_hw* }
%struct.ixl_rx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_enable_intr(%struct.ixl_vsi* %0) #0 {
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
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %13 = call i32 @iavf_enable_adminq_irq(%struct.i40e_hw* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %23 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iavf_enable_queue_irq(%struct.i40e_hw* %21, i32 %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %31 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %30, i32 1
  store %struct.ixl_rx_queue* %31, %struct.ixl_rx_queue** %4, align 8
  br label %14

32:                                               ; preds = %14
  ret void
}

declare dso_local i32 @iavf_enable_adminq_irq(%struct.i40e_hw*) #1

declare dso_local i32 @iavf_enable_queue_irq(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
