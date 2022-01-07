; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212RestoreClock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212RestoreClock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PCICFG = common dso_local global i32 0, align 4
@AR_PCICFG_SCLK_RATE_IND = common dso_local global i32 0, align 4
@AR_PCICFG_SCLK_SEL = common dso_local global i32 0, align 4
@AR_TSF_PARM = common dso_local global i32 0, align 4
@AR_USEC = common dso_local global i32 0, align 4
@AR_USEC_USEC32 = common dso_local global i32 0, align 4
@AR_PHY_SLEEP_CTR_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_SLEEP_CTR_LIMIT = common dso_local global i32 0, align 4
@AR_PHY_SLEEP_SCAL = common dso_local global i32 0, align 4
@AR_PHY_M_SLEEP = common dso_local global i32 0, align 4
@AR_PHY_REFCLKDLY = common dso_local global i32 0, align 4
@AR_PHY_REFCLKPD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212RestoreClock(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @ar5212Use32KHzclock(%struct.ath_hal* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %65

9:                                                ; preds = %2
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = load i32, i32* @AR_PCICFG, align 4
  %12 = load i32, i32* @AR_PCICFG_SCLK_RATE_IND, align 4
  %13 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = load i32, i32* @AR_PCICFG, align 4
  %16 = load i32, i32* @AR_PCICFG_SCLK_SEL, align 4
  %17 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %19 = load i32, i32* @AR_TSF_PARM, align 4
  %20 = call i32 @OS_REG_WRITE(%struct.ath_hal* %18, i32 %19, i32 1)
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = load i32, i32* @AR_USEC, align 4
  %23 = load i32, i32* @AR_USEC_USEC32, align 4
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = call i64 @IS_RAD5112_ANY(%struct.ath_hal* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %9
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = call i64 @IS_5413(%struct.ath_hal* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %9
  %32 = phi i1 [ true, %9 ], [ %30, %27 ]
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 39, i32 31
  %35 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %21, i32 %22, i32 %23, i32 %34)
  %36 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %37 = load i32, i32* @AR_PHY_SLEEP_CTR_CONTROL, align 4
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %36, i32 %37, i32 31)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load i32, i32* @AR_PHY_SLEEP_CTR_LIMIT, align 4
  %41 = call i32 @OS_REG_WRITE(%struct.ath_hal* %39, i32 %40, i32 127)
  %42 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %43 = load i32, i32* @AR_PHY_SLEEP_SCAL, align 4
  %44 = call i32 @OS_REG_WRITE(%struct.ath_hal* %42, i32 %43, i32 14)
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = load i32, i32* @AR_PHY_M_SLEEP, align 4
  %47 = call i32 @OS_REG_WRITE(%struct.ath_hal* %45, i32 %46, i32 12)
  %48 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %49 = load i32, i32* @AR_PHY_REFCLKDLY, align 4
  %50 = call i32 @OS_REG_WRITE(%struct.ath_hal* %48, i32 %49, i32 255)
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = load i32, i32* @AR_PHY_REFCLKPD, align 4
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = call i64 @IS_RAD5112_ANY(%struct.ath_hal* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %31
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = call i64 @IS_5413(%struct.ath_hal* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %56, %31
  %61 = phi i1 [ true, %31 ], [ %59, %56 ]
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 20, i32 24
  %64 = call i32 @OS_REG_WRITE(%struct.ath_hal* %51, i32 %52, i32 %63)
  br label %65

65:                                               ; preds = %60, %2
  ret void
}

declare dso_local i64 @ar5212Use32KHzclock(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IS_RAD5112_ANY(%struct.ath_hal*) #1

declare dso_local i64 @IS_5413(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
