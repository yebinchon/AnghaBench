; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitDMA.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitDMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32 }

@AR_AHB_MODE = common dso_local global i32 0, align 4
@AR_AHB_PREFETCH_RD_EN = common dso_local global i32 0, align 4
@AR_TXCFG = common dso_local global i32 0, align 4
@AR_TXCFG_DMASZ_MASK = common dso_local global i32 0, align 4
@AR_TXCFG_DMASZ_128B = common dso_local global i32 0, align 4
@AR_RXCFG = common dso_local global i32 0, align 4
@AR_RXCFG_DMASZ_MASK = common dso_local global i32 0, align 4
@AR_RXCFG_DMASZ_128B = common dso_local global i32 0, align 4
@AR_FTRIG = common dso_local global i32 0, align 4
@AR_RXFIFO_CFG = common dso_local global i32 0, align 4
@AR_PCU_TXBUF_CTRL = common dso_local global i32 0, align 4
@AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE = common dso_local global i32 0, align 4
@AR_PCU_TXBUF_CTRL_USABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5416InitDMA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416InitDMA(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %4)
  store %struct.ath_hal_5212* %5, %struct.ath_hal_5212** %3, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = load i32, i32* @AR_AHB_MODE, align 4
  %8 = load i32, i32* @AR_AHB_PREFETCH_RD_EN, align 4
  %9 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %6, i32 %7, i32 %8)
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = load i32, i32* @AR_TXCFG, align 4
  %12 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %13 = load i32, i32* @AR_TXCFG, align 4
  %14 = call i32 @OS_REG_READ(%struct.ath_hal* %12, i32 %13)
  %15 = load i32, i32* @AR_TXCFG_DMASZ_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load i32, i32* @AR_TXCFG_DMASZ_128B, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @OS_REG_WRITE(%struct.ath_hal* %10, i32 %11, i32 %19)
  %21 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %22 = load i32, i32* @AR_RXCFG, align 4
  %23 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %24 = load i32, i32* @AR_RXCFG, align 4
  %25 = call i32 @OS_REG_READ(%struct.ath_hal* %23, i32 %24)
  %26 = load i32, i32* @AR_RXCFG_DMASZ_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @AR_RXCFG_DMASZ_128B, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @OS_REG_WRITE(%struct.ath_hal* %21, i32 %22, i32 %30)
  %32 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %33 = load i32, i32* @AR_TXCFG, align 4
  %34 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %35 = load i32, i32* @AR_TXCFG, align 4
  %36 = call i32 @OS_REG_READ(%struct.ath_hal* %34, i32 %35)
  %37 = load i32, i32* @AR_FTRIG, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %41 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AR_FTRIG, align 4
  %44 = call i32 @SM(i32 %42, i32 %43)
  %45 = or i32 %39, %44
  %46 = call i32 @OS_REG_WRITE(%struct.ath_hal* %32, i32 %33, i32 %45)
  %47 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %48 = load i32, i32* @AR_RXFIFO_CFG, align 4
  %49 = call i32 @OS_REG_WRITE(%struct.ath_hal* %47, i32 %48, i32 512)
  %50 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %51 = call i64 @AR_SREV_KITE(%struct.ath_hal* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %1
  %54 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %55 = load i32, i32* @AR_PCU_TXBUF_CTRL, align 4
  %56 = load i32, i32* @AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE, align 4
  %57 = call i32 @OS_REG_WRITE(%struct.ath_hal* %54, i32 %55, i32 %56)
  br label %63

58:                                               ; preds = %1
  %59 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %60 = load i32, i32* @AR_PCU_TXBUF_CTRL, align 4
  %61 = load i32, i32* @AR_PCU_TXBUF_CTRL_USABLE_SIZE, align 4
  %62 = call i32 @OS_REG_WRITE(%struct.ath_hal* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @AR_SREV_KITE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
