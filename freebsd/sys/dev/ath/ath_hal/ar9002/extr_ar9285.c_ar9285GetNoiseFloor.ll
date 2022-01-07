; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285.c_ar9285GetNoiseFloor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285.c_ar9285GetNoiseFloor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_CCA = common dso_local global i32 0, align 4
@AR9280_PHY_MINCCA_PWR = common dso_local global i32 0, align 4
@HAL_DEBUG_NFCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"NF calibrated [ctl] [chain 0] is %d\0A\00", align 1
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR9280_PHY_EXT_MINCCA_PWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"NF calibrated [ext] [chain 0] is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32*)* @ar9285GetNoiseFloor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9285GetNoiseFloor(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_PHY_CCA, align 4
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %7)
  %9 = load i32, i32* @AR9280_PHY_MINCCA_PWR, align 4
  %10 = call i32 @MS(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 256
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, 511
  %17 = add nsw i32 %16, 1
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %21 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @HALDEBUG(%struct.ath_hal* %20, i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %29 = call i32 @OS_REG_READ(%struct.ath_hal* %27, i32 %28)
  %30 = load i32, i32* @AR9280_PHY_EXT_MINCCA_PWR, align 4
  %31 = call i32 @MS(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 256
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %19
  %36 = load i32, i32* %5, align 4
  %37 = xor i32 %36, 511
  %38 = add nsw i32 %37, 1
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %19
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @HALDEBUG(%struct.ath_hal* %41, i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 0, i32* %55, align 4
  ret void
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
