; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_reset.c_ar5210SetOperatingMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_reset.c_ar5210SetOperatingMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5210 = type { i32 }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_AP = common dso_local global i32 0, align 4
@AR_STA_ID1_NO_PSPOLL = common dso_local global i32 0, align 4
@AR_STA_ID1_DESC_ANTENNA = common dso_local global i32 0, align 4
@AR_STA_ID1_ADHOC = common dso_local global i32 0, align 4
@AR_STA_ID1_PWR_SV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32)* @ar5210SetOperatingMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5210SetOperatingMode(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_5210*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_5210* @AH5210(%struct.ath_hal* %7)
  store %struct.ath_hal_5210* %8, %struct.ath_hal_5210** %5, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = load i32, i32* @AR_STA_ID1, align 4
  %11 = call i32 @OS_REG_READ(%struct.ath_hal* %9, i32 %10)
  %12 = and i32 %11, 65535
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %68 [
    i32 131, label %14
    i32 130, label %29
    i32 128, label %44
    i32 129, label %57
  ]

14:                                               ; preds = %2
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = load i32, i32* @AR_STA_ID1, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AR_STA_ID1_AP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AR_STA_ID1_NO_PSPOLL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AR_STA_ID1_DESC_ANTENNA, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ath_hal_5210*, %struct.ath_hal_5210** %5, align 8
  %25 = getelementptr inbounds %struct.ath_hal_5210, %struct.ath_hal_5210* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = call i32 @OS_REG_WRITE(%struct.ath_hal* %15, i32 %16, i32 %27)
  br label %68

29:                                               ; preds = %2
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* @AR_STA_ID1, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @AR_STA_ID1_NO_PSPOLL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @AR_STA_ID1_DESC_ANTENNA, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ath_hal_5210*, %struct.ath_hal_5210** %5, align 8
  %40 = getelementptr inbounds %struct.ath_hal_5210, %struct.ath_hal_5210* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 %42)
  br label %68

44:                                               ; preds = %2
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = load i32, i32* @AR_STA_ID1, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @AR_STA_ID1_NO_PSPOLL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @AR_STA_ID1_PWR_SV, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.ath_hal_5210*, %struct.ath_hal_5210** %5, align 8
  %53 = getelementptr inbounds %struct.ath_hal_5210, %struct.ath_hal_5210* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %51, %54
  %56 = call i32 @OS_REG_WRITE(%struct.ath_hal* %45, i32 %46, i32 %55)
  br label %68

57:                                               ; preds = %2
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_STA_ID1, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @AR_STA_ID1_NO_PSPOLL, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.ath_hal_5210*, %struct.ath_hal_5210** %5, align 8
  %64 = getelementptr inbounds %struct.ath_hal_5210, %struct.ath_hal_5210* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  %67 = call i32 @OS_REG_WRITE(%struct.ath_hal* %58, i32 %59, i32 %66)
  br label %68

68:                                               ; preds = %2, %57, %44, %29, %14
  ret void
}

declare dso_local %struct.ath_hal_5210* @AH5210(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
