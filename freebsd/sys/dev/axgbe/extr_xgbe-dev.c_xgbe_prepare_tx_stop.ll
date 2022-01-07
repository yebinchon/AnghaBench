; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_prepare_tx_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_prepare_tx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_channel = type { i32 }

@DMA_DSRX_FIRST_QUEUE = common dso_local global i32 0, align 4
@DMA_DSR0 = common dso_local global i32 0, align 4
@DMA_DSR_Q_WIDTH = common dso_local global i32 0, align 4
@DMA_DSR0_TPS_START = common dso_local global i32 0, align 4
@DMA_DSR1 = common dso_local global i32 0, align 4
@DMA_DSRX_QPR = common dso_local global i32 0, align 4
@DMA_DSRX_INC = common dso_local global i32 0, align 4
@DMA_DSRX_TPS_START = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@XGBE_DMA_STOP_TIMEOUT = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@DMA_DSR_TPS_WIDTH = common dso_local global i32 0, align 4
@DMA_TPS_STOPPED = common dso_local global i32 0, align 4
@DMA_TPS_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, %struct.xgbe_channel*)* @xgbe_prepare_tx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_prepare_tx_stop(%struct.xgbe_prv_data* %0, %struct.xgbe_channel* %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store %struct.xgbe_channel* %1, %struct.xgbe_channel** %4, align 8
  %10 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %11 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DMA_DSRX_FIRST_QUEUE, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @DMA_DSR0, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %18 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DMA_DSR_Q_WIDTH, align 4
  %21 = mul i32 %19, %20
  %22 = load i32, i32* @DMA_DSR0_TPS_START, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %26 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_DSRX_FIRST_QUEUE, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @DMA_DSR1, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DMA_DSRX_QPR, align 4
  %33 = udiv i32 %31, %32
  %34 = load i32, i32* @DMA_DSRX_INC, align 4
  %35 = mul i32 %33, %34
  %36 = add i32 %30, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DMA_DSRX_QPR, align 4
  %39 = urem i32 %37, %38
  %40 = load i32, i32* @DMA_DSR_Q_WIDTH, align 4
  %41 = mul i32 %39, %40
  %42 = load i32, i32* @DMA_DSRX_TPS_START, align 4
  %43 = add i32 %41, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %24, %15
  %45 = load i64, i64* @ticks, align 8
  %46 = load i64, i64* @XGBE_DMA_STOP_TIMEOUT, align 8
  %47 = load i64, i64* @hz, align 8
  %48 = mul i64 %46, %47
  %49 = add i64 %45, %48
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %70, %44
  %51 = load i64, i64* @ticks, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DMA_DSR_TPS_WIDTH, align 4
  %61 = call i32 @GET_BITS(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @DMA_TPS_STOPPED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @DMA_TPS_SUSPENDED, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %54
  br label %72

70:                                               ; preds = %65
  %71 = call i32 @DELAY(i32 500)
  br label %50

72:                                               ; preds = %69, %50
  ret void
}

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @GET_BITS(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
