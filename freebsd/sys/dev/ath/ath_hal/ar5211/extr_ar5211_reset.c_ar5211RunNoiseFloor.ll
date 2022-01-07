; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211RunNoiseFloor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211RunNoiseFloor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4
@HAL_DEBUG_NFCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"NF with runTime %d failed to end on channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  PHY NF Reg state:\09 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"  PHY Active Reg state: 0x%x\0A\00", align 1
@AR_PHY_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5211RunNoiseFloor(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 7
  %12 = zext i1 %11 to i32
  %13 = call i32 @HALASSERT(i32 %12)
  %14 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %15 = call i32 @AR_PHY(i32 25)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %17 = call i32 @AR_PHY(i32 25)
  %18 = call i32 @OS_REG_READ(%struct.ath_hal* %16, i32 %17)
  %19 = and i32 %18, -4096
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 9
  %22 = and i32 %21, 3584
  %23 = or i32 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 511
  %26 = or i32 %23, %25
  %27 = call i32 @OS_REG_WRITE(%struct.ath_hal* %14, i32 %15, i32 %26)
  %28 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %29 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %30 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %31 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %32 = call i32 @OS_REG_READ(%struct.ath_hal* %30, i32 %31)
  %33 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @OS_REG_WRITE(%struct.ath_hal* %28, i32 %29, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 56, i32* %9, align 4
  br label %43

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 512
  %42 = mul nsw i32 %41, 7
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %38
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 60
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %49 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %50 = call i32 @OS_REG_READ(%struct.ath_hal* %48, i32 %49)
  %51 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %61

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @OS_DELAY(i32 %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %44

61:                                               ; preds = %54, %44
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 60
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %66 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %69 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %65, i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %73)
  %75 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %76 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %77 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %78 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %79 = call i32 @OS_REG_READ(%struct.ath_hal* %77, i32 %78)
  %80 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %75, i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %82 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %83 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %84 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %85 = call i32 @OS_REG_READ(%struct.ath_hal* %83, i32 %84)
  %86 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %81, i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 0, i32* %4, align 4
  br label %90

87:                                               ; preds = %61
  %88 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %89 = call i32 @ar5211GetNoiseFloor(%struct.ath_hal* %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %64
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ar5211GetNoiseFloor(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
