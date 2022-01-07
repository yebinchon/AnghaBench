; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_serdes_complete_ratechange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_serdes_complete_ratechange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@SIR1_SPEED = common dso_local global i32 0, align 4
@RATECHANGE = common dso_local global i32 0, align 4
@XGBE_RATECHANGE_COUNT = common dso_local global i32 0, align 4
@SIR0_STATUS = common dso_local global i32 0, align 4
@RX_READY = common dso_local global i32 0, align 4
@TX_READY = common dso_local global i32 0, align 4
@RXTX_REG6 = common dso_local global i32 0, align 4
@RESETB_RXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_serdes_complete_ratechange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_serdes_complete_ratechange(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = load i32, i32* @SIR1_SPEED, align 4
  %7 = load i32, i32* @RATECHANGE, align 4
  %8 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %5, i32 %6, i32 %7, i32 0)
  %9 = load i32, i32* @XGBE_RATECHANGE_COUNT, align 4
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %3, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %3, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = call i32 @DELAY(i32 50)
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = load i32, i32* @SIR0_STATUS, align 4
  %18 = call i32 @XSIR0_IOREAD(%struct.xgbe_prv_data* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SIR0_STATUS, align 4
  %21 = load i32, i32* @RX_READY, align 4
  %22 = call i64 @XSIR_GET_BITS(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SIR0_STATUS, align 4
  %27 = load i32, i32* @TX_READY, align 4
  %28 = call i64 @XSIR_GET_BITS(i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %33

31:                                               ; preds = %24, %14
  br label %10

32:                                               ; preds = %10
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = load i32, i32* @RXTX_REG6, align 4
  %36 = load i32, i32* @RESETB_RXD, align 4
  %37 = call i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data* %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = load i32, i32* @RXTX_REG6, align 4
  %40 = load i32, i32* @RESETB_RXD, align 4
  %41 = call i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data* %38, i32 %39, i32 %40, i32 1)
  ret void
}

declare dso_local i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @XSIR0_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i64 @XSIR_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
