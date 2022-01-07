; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitIMR.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitIMR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32 }

@AR_IMR_TXERR = common dso_local global i32 0, align 4
@AR_IMR_TXURN = common dso_local global i32 0, align 4
@AR_IMR_RXERR = common dso_local global i32 0, align 4
@AR_IMR_RXORN = common dso_local global i32 0, align 4
@AR_IMR_BCNMISC = common dso_local global i32 0, align 4
@AR_IMR_RXOK = common dso_local global i32 0, align 4
@AR_IMR_TXOK = common dso_local global i32 0, align 4
@HAL_M_HOSTAP = common dso_local global i64 0, align 8
@AR_IMR_MIB = common dso_local global i32 0, align 4
@AR_IMR = common dso_local global i32 0, align 4
@AR_IMR_RXINTM = common dso_local global i32 0, align 4
@AR_IMR_RXMINTR = common dso_local global i32 0, align 4
@AR_IMR_S2 = common dso_local global i32 0, align 4
@AR_IMR_S2_CST = common dso_local global i32 0, align 4
@AR_IMR_S2_GTT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i64)* @ar5416InitIMR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416InitIMR(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %6)
  store %struct.ath_hal_5212* %7, %struct.ath_hal_5212** %5, align 8
  %8 = load i32, i32* @AR_IMR_TXERR, align 4
  %9 = load i32, i32* @AR_IMR_TXURN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @AR_IMR_RXERR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @AR_IMR_RXORN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %18 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @AR_IMR_RXOK, align 4
  %20 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %21 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @AR_IMR_TXOK, align 4
  %25 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %26 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @HAL_M_HOSTAP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load i32, i32* @AR_IMR_MIB, align 4
  %34 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %35 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load i32, i32* @AR_IMR, align 4
  %41 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %42 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @OS_REG_WRITE(%struct.ath_hal* %39, i32 %40, i32 %43)
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
