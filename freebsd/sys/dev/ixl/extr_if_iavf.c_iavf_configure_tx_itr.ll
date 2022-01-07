; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_configure_tx_itr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_configure_tx_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vsi = type { i32, i32, %struct.ixl_tx_queue* }
%struct.ixl_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32, i32 }
%struct.i40e_hw = type { i32 }

@IXL_TX_ITR = common dso_local global i32 0, align 4
@IXL_AVE_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_sc*)* @iavf_configure_tx_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_configure_tx_itr(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.ixl_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_ring*, align 8
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %8 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %9 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %8, i32 0, i32 2
  store %struct.i40e_hw* %9, %struct.i40e_hw** %3, align 8
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %11 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %10, i32 0, i32 1
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %4, align 8
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 2
  %14 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %13, align 8
  store %struct.ixl_tx_queue* %14, %struct.ixl_tx_queue** %5, align 8
  %15 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %16 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %19 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %45, %1
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %5, align 8
  %28 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %27, i32 0, i32 0
  store %struct.tx_ring* %28, %struct.tx_ring** %7, align 8
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %30 = load i32, i32* @IXL_TX_ITR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @I40E_VFINT_ITRN1(i32 %30, i32 %31)
  %33 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %34 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wr32(%struct.i40e_hw* %29, i32 %32, i32 %35)
  %37 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %38 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %41 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @IXL_AVE_LATENCY, align 4
  %43 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %44 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %5, align 8
  %49 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %48, i32 1
  store %struct.ixl_tx_queue* %49, %struct.ixl_tx_queue** %5, align 8
  br label %20

50:                                               ; preds = %20
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VFINT_ITRN1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
