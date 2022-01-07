; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_set_queue_rx_itr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_set_queue_rx_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_rx_queue = type { %struct.rx_ring, %struct.ixl_vsi* }
%struct.rx_ring = type { i64, i64, i32 }
%struct.ixl_vsi = type { i64, %struct.i40e_hw* }
%struct.i40e_hw = type { i32 }

@IXL_RX_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_rx_queue*)* @iavf_set_queue_rx_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_set_queue_rx_itr(%struct.ixl_rx_queue* %0) #0 {
  %2 = alloca %struct.ixl_rx_queue*, align 8
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.rx_ring*, align 8
  store %struct.ixl_rx_queue* %0, %struct.ixl_rx_queue** %2, align 8
  %6 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %6, i32 0, i32 1
  %8 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  store %struct.ixl_vsi* %8, %struct.ixl_vsi** %3, align 8
  %9 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %9, i32 0, i32 1
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  store %struct.i40e_hw* %11, %struct.i40e_hw** %4, align 8
  %12 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %12, i32 0, i32 0
  store %struct.rx_ring* %13, %struct.rx_ring** %5, align 8
  %14 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %15 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %21 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %24 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %19
  %28 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %29 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %32 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %34 = load i32, i32* @IXL_RX_ITR, align 4
  %35 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %2, align 8
  %36 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @I40E_VFINT_ITRN1(i32 %34, i32 %38)
  %40 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @wr32(%struct.i40e_hw* %33, i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %18, %27, %19
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i64) #1

declare dso_local i32 @I40E_VFINT_ITRN1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
