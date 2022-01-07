; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_rx_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_rx_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { %struct.xgbe_ring*, %struct.xgbe_prv_data* }
%struct.xgbe_ring = type { i64, i64 }
%struct.xgbe_prv_data = type { %struct.xgbe_desc_if, %struct.xgbe_hw_if }
%struct.xgbe_desc_if = type { i64 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring*, %struct.xgbe_ring_data*)*, i32 (%struct.xgbe_prv_data.1*, %struct.xgbe_ring_data*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_ring_data = type { i32 }
%struct.xgbe_prv_data.1 = type opaque
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.2*, %struct.xgbe_ring_data*, i64)* }
%struct.xgbe_prv_data.2 = type opaque

@sy = common dso_local global i32 0, align 4
@DMA_CH_RDTR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_channel*)* @xgbe_rx_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_rx_refresh(%struct.xgbe_channel* %0) #0 {
  %2 = alloca %struct.xgbe_channel*, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_hw_if*, align 8
  %5 = alloca %struct.xgbe_desc_if*, align 8
  %6 = alloca %struct.xgbe_ring*, align 8
  %7 = alloca %struct.xgbe_ring_data*, align 8
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %2, align 8
  %8 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %8, i32 0, i32 1
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %9, align 8
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %3, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 1
  store %struct.xgbe_hw_if* %12, %struct.xgbe_hw_if** %4, align 8
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 0
  store %struct.xgbe_desc_if* %14, %struct.xgbe_desc_if** %5, align 8
  %15 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %15, i32 0, i32 0
  %17 = load %struct.xgbe_ring*, %struct.xgbe_ring** %16, align 8
  store %struct.xgbe_ring* %17, %struct.xgbe_ring** %6, align 8
  br label %18

18:                                               ; preds = %49, %1
  %19 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %20 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %23 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %18
  %27 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %28 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %29 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %27, i64 %30)
  store %struct.xgbe_ring_data* %31, %struct.xgbe_ring_data** %7, align 8
  %32 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %5, align 8
  %33 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %32, i32 0, i32 1
  %34 = load i32 (%struct.xgbe_prv_data.1*, %struct.xgbe_ring_data*)*, i32 (%struct.xgbe_prv_data.1*, %struct.xgbe_ring_data*)** %33, align 8
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %36 = bitcast %struct.xgbe_prv_data* %35 to %struct.xgbe_prv_data.1*
  %37 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %38 = call i32 %34(%struct.xgbe_prv_data.1* %36, %struct.xgbe_ring_data* %37)
  %39 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %5, align 8
  %40 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %39, i32 0, i32 0
  %41 = load i64 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring*, %struct.xgbe_ring_data*)*, i64 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring*, %struct.xgbe_ring_data*)** %40, align 8
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %43 = bitcast %struct.xgbe_prv_data* %42 to %struct.xgbe_prv_data.0*
  %44 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %45 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %46 = call i64 %41(%struct.xgbe_prv_data.0* %43, %struct.xgbe_ring* %44, %struct.xgbe_ring_data* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %64

49:                                               ; preds = %26
  %50 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %51 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %50, i32 0, i32 0
  %52 = load i32 (%struct.xgbe_prv_data.2*, %struct.xgbe_ring_data*, i64)*, i32 (%struct.xgbe_prv_data.2*, %struct.xgbe_ring_data*, i64)** %51, align 8
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %54 = bitcast %struct.xgbe_prv_data* %53 to %struct.xgbe_prv_data.2*
  %55 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %56 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %57 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 %52(%struct.xgbe_prv_data.2* %54, %struct.xgbe_ring_data* %55, i64 %58)
  %60 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %61 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %18

64:                                               ; preds = %48, %18
  %65 = load i32, i32* @sy, align 4
  %66 = call i32 @dsb(i32 %65)
  %67 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %68 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %69 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, 1
  %72 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %67, i64 %71)
  store %struct.xgbe_ring_data* %72, %struct.xgbe_ring_data** %7, align 8
  %73 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %74 = load i32, i32* @DMA_CH_RDTR_LO, align 4
  %75 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %76 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @lower_32_bits(i32 %77)
  %79 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %73, i32 %74, i32 %78)
  ret void
}

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i64) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
