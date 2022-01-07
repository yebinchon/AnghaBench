; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitChainMasks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitChainMasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AR_PHY_ANALOG_SWAP = common dso_local global i32 0, align 4
@AR_PHY_SWAP_ALT_CHAIN = common dso_local global i32 0, align 4
@AR_PHY_RX_CHAINMASK = common dso_local global i32 0, align 4
@AR_PHY_CAL_CHAINMASK = common dso_local global i32 0, align 4
@AR_SELFGEN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416InitChainMasks(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %13 = load i32, i32* @AR_PHY_SWAP_ALT_CHAIN, align 4
  %14 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %17 = call i64 @IS_5416V1(%struct.ath_hal* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %32

25:                                               ; preds = %22, %19
  %26 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %27 = load i32, i32* @AR_PHY_RX_CHAINMASK, align 4
  %28 = call i32 @OS_REG_WRITE(%struct.ath_hal* %26, i32 %27, i32 7)
  %29 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %30 = load i32, i32* @AR_PHY_CAL_CHAINMASK, align 4
  %31 = call i32 @OS_REG_WRITE(%struct.ath_hal* %29, i32 %30, i32 7)
  br label %47

32:                                               ; preds = %22, %15
  %33 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %34 = load i32, i32* @AR_PHY_RX_CHAINMASK, align 4
  %35 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %36 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @OS_REG_WRITE(%struct.ath_hal* %33, i32 %34, i32 %38)
  %40 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %41 = load i32, i32* @AR_PHY_CAL_CHAINMASK, align 4
  %42 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %43 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @OS_REG_WRITE(%struct.ath_hal* %40, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %32, %25
  %48 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %49 = load i32, i32* @AR_SELFGEN_MASK, align 4
  %50 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %51 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @OS_REG_WRITE(%struct.ath_hal* %48, i32 %49, i32 %53)
  %55 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %56 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %62 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %63 = load i32, i32* @AR_PHY_SWAP_ALT_CHAIN, align 4
  %64 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %47
  %66 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %67 = call i64 @AR_SREV_HOWL(%struct.ath_hal* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %71 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %72 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %73 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %74 = call i32 @OS_REG_READ(%struct.ath_hal* %72, i32 %73)
  %75 = or i32 %74, 1
  %76 = call i32 @OS_REG_WRITE(%struct.ath_hal* %70, i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %69, %65
  ret void
}

declare dso_local %struct.TYPE_2__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IS_5416V1(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_HOWL(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
