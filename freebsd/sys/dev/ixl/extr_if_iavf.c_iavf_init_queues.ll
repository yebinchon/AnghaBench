; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_init_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, i32, i32, i32, %struct.ixl_rx_queue*, %struct.ixl_tx_queue* }
%struct.ixl_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i32, i32 }
%struct.ixl_tx_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_vsi*)* @iavf_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_init_queues(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.ixl_tx_queue*, align 8
  %4 = alloca %struct.ixl_rx_queue*, align 8
  %5 = alloca %struct.rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %8 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %8, i32 0, i32 5
  %10 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %9, align 8
  store %struct.ixl_tx_queue* %10, %struct.ixl_tx_queue** %3, align 8
  %11 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %11, i32 0, i32 4
  %13 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %12, align 8
  store %struct.ixl_rx_queue* %13, %struct.ixl_rx_queue** %4, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %22 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %3, align 8
  %23 = call i32 @ixl_init_tx_ring(%struct.ixl_vsi* %21, %struct.ixl_tx_queue* %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %3, align 8
  %28 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %27, i32 1
  store %struct.ixl_tx_queue* %28, %struct.ixl_tx_queue** %3, align 8
  br label %14

29:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %33 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %37, i32 0, i32 0
  store %struct.rx_ring* %38, %struct.rx_ring** %5, align 8
  %39 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %40 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @iflib_get_rx_mbuf_sz(i32 %41)
  %43 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %46 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %49 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wr32(i32 %47, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %56 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %55, i32 1
  store %struct.ixl_rx_queue* %56, %struct.ixl_rx_queue** %4, align 8
  br label %30

57:                                               ; preds = %30
  ret void
}

declare dso_local i32 @ixl_init_tx_ring(%struct.ixl_vsi*, %struct.ixl_tx_queue*) #1

declare dso_local i32 @iflib_get_rx_mbuf_sz(i32) #1

declare dso_local i32 @wr32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
