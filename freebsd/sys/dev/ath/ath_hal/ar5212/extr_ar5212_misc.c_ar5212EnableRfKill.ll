; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212EnableRfKill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212EnableRfKill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AR_EEPROM_RFSILENT_GPIO_SEL = common dso_local global i32 0, align 4
@AR_EEPROM_RFSILENT_POLARITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212EnableRfKill(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @AR_EEPROM_RFSILENT_GPIO_SEL, align 4
  %12 = call i32 @MS(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @AR_EEPROM_RFSILENT_POLARITY, align 4
  %15 = call i32 @MS(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ath_hal_gpioCfgInput(%struct.ath_hal* %16, i32 %17)
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = call i32 @AR_PHY(i32 0)
  %21 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %19, i32 %20, i32 8192)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ath_hal_gpioGet(%struct.ath_hal* %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %33, %29 ], [ %35, %34 ]
  %38 = call i32 @ath_hal_gpioSetIntr(%struct.ath_hal* %22, i32 %23, i32 %37)
  ret void
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath_hal_gpioCfgInput(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local i32 @ath_hal_gpioSetIntr(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ath_hal_gpioGet(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
