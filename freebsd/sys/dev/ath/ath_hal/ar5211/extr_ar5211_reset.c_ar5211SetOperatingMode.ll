; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211SetOperatingMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211SetOperatingMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5211 = type { i32 }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_STA_AP = common dso_local global i32 0, align 4
@AR_STA_ID1_RTS_USE_DEF = common dso_local global i32 0, align 4
@AR_STA_ID1_ADHOC = common dso_local global i32 0, align 4
@AR_STA_ID1_DESC_ANTENNA = common dso_local global i32 0, align 4
@AR_STA_ID1_DEFAULT_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32)* @ar5211SetOperatingMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5211SetOperatingMode(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_5211*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_5211* @AH5211(%struct.ath_hal* %7)
  store %struct.ath_hal_5211* %8, %struct.ath_hal_5211** %5, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = load i32, i32* @AR_STA_ID1, align 4
  %11 = call i32 @OS_REG_READ(%struct.ath_hal* %9, i32 %10)
  %12 = and i32 %11, 65535
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %51 [
    i32 131, label %14
    i32 130, label %27
    i32 128, label %40
    i32 129, label %40
  ]

14:                                               ; preds = %2
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = load i32, i32* @AR_STA_ID1, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AR_STA_ID1_STA_AP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AR_STA_ID1_RTS_USE_DEF, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %5, align 8
  %23 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = call i32 @OS_REG_WRITE(%struct.ath_hal* %15, i32 %16, i32 %25)
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = load i32, i32* @AR_STA_ID1, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @AR_STA_ID1_DESC_ANTENNA, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %5, align 8
  %36 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = call i32 @OS_REG_WRITE(%struct.ath_hal* %28, i32 %29, i32 %38)
  br label %51

40:                                               ; preds = %2, %2
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = load i32, i32* @AR_STA_ID1, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @AR_STA_ID1_DEFAULT_ANTENNA, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %5, align 8
  %47 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = call i32 @OS_REG_WRITE(%struct.ath_hal* %41, i32 %42, i32 %49)
  br label %51

51:                                               ; preds = %2, %40, %27, %14
  ret void
}

declare dso_local %struct.ath_hal_5211* @AH5211(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
