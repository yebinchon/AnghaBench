; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_enable_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_enable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i32 }

@DMA_CH_IER = common dso_local global i32 0, align 4
@TIE = common dso_local global i32 0, align 4
@TXSE = common dso_local global i32 0, align 4
@TBUE = common dso_local global i32 0, align 4
@RIE = common dso_local global i32 0, align 4
@RBUE = common dso_local global i32 0, align 4
@RSE = common dso_local global i32 0, align 4
@FBEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_channel*, i32)* @xgbe_enable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_enable_int(%struct.xgbe_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %8 = load i32, i32* @DMA_CH_IER, align 4
  %9 = call i32 @XGMAC_DMA_IOREAD(%struct.xgbe_channel* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %61 [
    i32 130, label %11
    i32 128, label %16
    i32 131, label %21
    i32 133, label %26
    i32 134, label %31
    i32 132, label %36
    i32 129, label %41
    i32 135, label %50
    i32 136, label %55
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DMA_CH_IER, align 4
  %14 = load i32, i32* @TIE, align 4
  %15 = call i32 @XGMAC_SET_BITS(i32 %12, i32 %13, i32 %14, i32 1)
  br label %62

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DMA_CH_IER, align 4
  %19 = load i32, i32* @TXSE, align 4
  %20 = call i32 @XGMAC_SET_BITS(i32 %17, i32 %18, i32 %19, i32 1)
  br label %62

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DMA_CH_IER, align 4
  %24 = load i32, i32* @TBUE, align 4
  %25 = call i32 @XGMAC_SET_BITS(i32 %22, i32 %23, i32 %24, i32 1)
  br label %62

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DMA_CH_IER, align 4
  %29 = load i32, i32* @RIE, align 4
  %30 = call i32 @XGMAC_SET_BITS(i32 %27, i32 %28, i32 %29, i32 1)
  br label %62

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DMA_CH_IER, align 4
  %34 = load i32, i32* @RBUE, align 4
  %35 = call i32 @XGMAC_SET_BITS(i32 %32, i32 %33, i32 %34, i32 1)
  br label %62

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DMA_CH_IER, align 4
  %39 = load i32, i32* @RSE, align 4
  %40 = call i32 @XGMAC_SET_BITS(i32 %37, i32 %38, i32 %39, i32 1)
  br label %62

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @DMA_CH_IER, align 4
  %44 = load i32, i32* @TIE, align 4
  %45 = call i32 @XGMAC_SET_BITS(i32 %42, i32 %43, i32 %44, i32 1)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DMA_CH_IER, align 4
  %48 = load i32, i32* @RIE, align 4
  %49 = call i32 @XGMAC_SET_BITS(i32 %46, i32 %47, i32 %48, i32 1)
  br label %62

50:                                               ; preds = %2
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DMA_CH_IER, align 4
  %53 = load i32, i32* @FBEE, align 4
  %54 = call i32 @XGMAC_SET_BITS(i32 %51, i32 %52, i32 %53, i32 1)
  br label %62

55:                                               ; preds = %2
  %56 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %57 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %62

61:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

62:                                               ; preds = %55, %50, %41, %36, %31, %26, %21, %16, %11
  %63 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %64 = load i32, i32* @DMA_CH_IER, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %63, i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @XGMAC_DMA_IOREAD(%struct.xgbe_channel*, i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
