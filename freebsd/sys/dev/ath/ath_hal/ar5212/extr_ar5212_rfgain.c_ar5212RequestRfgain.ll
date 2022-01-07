; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212RequestRfgain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212RequestRfgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32, i64, i64 }

@AR_PHY_PAPD_PROBE = common dso_local global i32 0, align 4
@AR_PHY_PAPD_PROBE_POWERTX = common dso_local global i32 0, align 4
@AR_PHY_PAPD_PROBE_NEXT_TX = common dso_local global i32 0, align 4
@HAL_RFGAIN_READ_REQUESTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212RequestRfgain(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  %4 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %5)
  store %struct.ath_hal_5212* %6, %struct.ath_hal_5212** %3, align 8
  %7 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* %4, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %15 = load i32, i32* @AR_PHY_PAPD_PROBE, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @AR_PHY_PAPD_PROBE_POWERTX, align 4
  %18 = call i32 @SM(i64 %16, i32 %17)
  %19 = load i32, i32* @AR_PHY_PAPD_PROBE_NEXT_TX, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @OS_REG_WRITE(%struct.ath_hal* %14, i32 %15, i32 %20)
  %22 = load i32, i32* @HAL_RFGAIN_READ_REQUESTED, align 4
  %23 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @SM(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
