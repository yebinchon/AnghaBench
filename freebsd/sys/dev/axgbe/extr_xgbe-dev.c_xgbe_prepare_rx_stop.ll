; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_prepare_rx_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_prepare_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@ticks = common dso_local global i64 0, align 8
@XGBE_DMA_STOP_TIMEOUT = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@MTL_Q_RQDR = common dso_local global i32 0, align 4
@PRXQ = common dso_local global i32 0, align 4
@RXQSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32)* @xgbe_prepare_rx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_prepare_rx_stop(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @ticks, align 8
  %8 = load i64, i64* @XGBE_DMA_STOP_TIMEOUT, align 8
  %9 = load i64, i64* @hz, align 8
  %10 = mul i64 %8, %9
  %11 = add i64 %7, %10
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i64, i64* @ticks, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MTL_Q_RQDR, align 4
  %20 = call i32 @XGMAC_MTL_IOREAD(%struct.xgbe_prv_data* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MTL_Q_RQDR, align 4
  %23 = load i32, i32* @PRXQ, align 4
  %24 = call i64 @XGMAC_GET_BITS(i32 %21, i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MTL_Q_RQDR, align 4
  %29 = load i32, i32* @RXQSTS, align 4
  %30 = call i64 @XGMAC_GET_BITS(i32 %27, i32 %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %35

33:                                               ; preds = %26, %16
  %34 = call i32 @DELAY(i32 500)
  br label %12

35:                                               ; preds = %32, %12
  ret void
}

declare dso_local i32 @XGMAC_MTL_IOREAD(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i64 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
