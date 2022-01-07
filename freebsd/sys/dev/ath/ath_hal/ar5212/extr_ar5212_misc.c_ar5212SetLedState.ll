; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetLedState.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetLedState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@ar5212SetLedState.ledbits = internal constant [8 x i32] [i32 129, i32 128, i32 128, i32 130, i32 130, i32 129, i32 129, i32 129], align 16
@AR_PCICFG = common dso_local global i32 0, align 4
@AR_PCICFG_LEDMODE = common dso_local global i32 0, align 4
@AR_PCICFG_LEDMODE_POWON = common dso_local global i32 0, align 4
@AR_PCICFG_LEDCTL = common dso_local global i32 0, align 4
@AR_PCICFG_LEDMODE_NETON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetLedState(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_PCICFG, align 4
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = call i64 @IS_2417(%struct.ath_hal* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AR_PCICFG_LEDMODE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @AR_PCICFG_LEDMODE_POWON, align 4
  %18 = load i32, i32* @AR_PCICFG_LEDMODE, align 4
  %19 = call i32 @SM(i32 %17, i32 %18)
  %20 = or i32 %16, %19
  %21 = or i32 %20, 134217728
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %12, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AR_PCICFG_LEDCTL, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* @ar5212SetLedState.ledbits, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR_PCICFG_LEDCTL, align 4
  %33 = call i32 @SM(i32 %31, i32 %32)
  %34 = or i32 %26, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %36 = load i32, i32* @AR_PCICFG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @IS_2417(%struct.ath_hal*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
