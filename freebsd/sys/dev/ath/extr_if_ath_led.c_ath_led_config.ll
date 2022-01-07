; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_led.c_ath_led_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_led.c_ath_led_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i64, i64, i64, i32, i64, i32, i64 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@HAL_GPIO_OUTPUT_MUX_AS_OUTPUT = common dso_local global i32 0, align 4
@HAL_GPIO_OUTPUT_MUX_MAC_POWER_LED = common dso_local global i32 0, align 4
@HAL_GPIO_OUTPUT_MUX_MAC_NETWORK_LED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_led_config(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %3 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %4 = call i32 @ATH_LOCK(%struct.ath_softc* %3)
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = load i32, i32* @HAL_PM_AWAKE, align 4
  %7 = call i32 @ath_power_set_power_state(%struct.ath_softc* %5, i32 %6)
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = call i32 @ATH_UNLOCK(%struct.ath_softc* %8)
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HAL_GPIO_OUTPUT_MUX_AS_OUTPUT, align 4
  %22 = call i32 @ath_hal_gpioCfgOutput(i32 %17, i64 %20, i32 %21)
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @ath_hal_gpioset(i32 %25, i64 %28, i32 %34)
  br label %36

36:                                               ; preds = %14, %1
  %37 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @HAL_GPIO_OUTPUT_MUX_MAC_POWER_LED, align 4
  %54 = call i32 @ath_hal_gpioCfgOutput(i32 %49, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @HAL_GPIO_OUTPUT_MUX_MAC_NETWORK_LED, align 4
  %68 = call i32 @ath_hal_gpioCfgOutput(i32 %63, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %55
  br label %70

70:                                               ; preds = %69, %36
  %71 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %72 = call i32 @ATH_LOCK(%struct.ath_softc* %71)
  %73 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %74 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %73)
  %75 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %76 = call i32 @ATH_UNLOCK(%struct.ath_softc* %75)
  ret void
}

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_hal_gpioCfgOutput(i32, i64, i32) #1

declare dso_local i32 @ath_hal_gpioset(i32, i64, i32) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
