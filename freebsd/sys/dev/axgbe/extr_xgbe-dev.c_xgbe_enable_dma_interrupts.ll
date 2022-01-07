; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_enable_dma_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_enable_dma_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_channel* }
%struct.xgbe_channel = type { i64, i64 }

@DMA_CH_SR = common dso_local global i32 0, align 4
@DMA_CH_IER = common dso_local global i32 0, align 4
@NIE = common dso_local global i32 0, align 4
@AIE = common dso_local global i32 0, align 4
@FBEE = common dso_local global i32 0, align 4
@TIE = common dso_local global i32 0, align 4
@RBUE = common dso_local global i32 0, align 4
@RIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_enable_dma_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_enable_dma_interrupts(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 2
  %9 = load %struct.xgbe_channel*, %struct.xgbe_channel** %8, align 8
  store %struct.xgbe_channel* %9, %struct.xgbe_channel** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %76, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %10
  %17 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %18 = load i32, i32* @DMA_CH_SR, align 4
  %19 = call i32 @XGMAC_DMA_IOREAD(%struct.xgbe_channel* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %21 = load i32, i32* @DMA_CH_SR, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %20, i32 %21, i32 %22)
  store i32 0, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DMA_CH_IER, align 4
  %26 = load i32, i32* @NIE, align 4
  %27 = call i32 @XGMAC_SET_BITS(i32 %24, i32 %25, i32 %26, i32 1)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DMA_CH_IER, align 4
  %30 = load i32, i32* @AIE, align 4
  %31 = call i32 @XGMAC_SET_BITS(i32 %28, i32 %29, i32 %30, i32 1)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @DMA_CH_IER, align 4
  %34 = load i32, i32* @FBEE, align 4
  %35 = call i32 @XGMAC_SET_BITS(i32 %32, i32 %33, i32 %34, i32 1)
  %36 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %37 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %16
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @DMA_CH_IER, align 4
  %48 = load i32, i32* @TIE, align 4
  %49 = call i32 @XGMAC_SET_BITS(i32 %46, i32 %47, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %16
  %52 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %53 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @DMA_CH_IER, align 4
  %59 = load i32, i32* @RBUE, align 4
  %60 = call i32 @XGMAC_SET_BITS(i32 %57, i32 %58, i32 %59, i32 1)
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %62 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @DMA_CH_IER, align 4
  %68 = load i32, i32* @RIE, align 4
  %69 = call i32 @XGMAC_SET_BITS(i32 %66, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %65, %56
  br label %71

71:                                               ; preds = %70, %51
  %72 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %73 = load i32, i32* @DMA_CH_IER, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %80 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %79, i32 1
  store %struct.xgbe_channel* %80, %struct.xgbe_channel** %3, align 8
  br label %10

81:                                               ; preds = %10
  ret void
}

declare dso_local i32 @XGMAC_DMA_IOREAD(%struct.xgbe_channel*, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
