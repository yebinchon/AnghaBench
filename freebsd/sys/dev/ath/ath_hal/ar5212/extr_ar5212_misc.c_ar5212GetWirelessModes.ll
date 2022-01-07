; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212GetWirelessModes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212GetWirelessModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@AR_EEP_AMODE = common dso_local global i32 0, align 4
@HAL_MODE_11A = common dso_local global i32 0, align 4
@AR_EEP_TURBO5DISABLE = common dso_local global i32 0, align 4
@HAL_MODE_TURBO = common dso_local global i32 0, align 4
@HAL_MODE_108A = common dso_local global i32 0, align 4
@HAL_MODE_11A_HALF_RATE = common dso_local global i32 0, align 4
@HAL_MODE_11A_QUARTER_RATE = common dso_local global i32 0, align 4
@AR_EEP_BMODE = common dso_local global i32 0, align 4
@HAL_MODE_11B = common dso_local global i32 0, align 4
@AR_EEP_GMODE = common dso_local global i32 0, align 4
@AR_SUBVENDOR_ID_NOG = common dso_local global i64 0, align 8
@HAL_MODE_11G = common dso_local global i32 0, align 4
@AR_EEP_TURBO2DISABLE = common dso_local global i32 0, align 4
@HAL_MODE_108G = common dso_local global i32 0, align 4
@HAL_MODE_11G_HALF_RATE = common dso_local global i32 0, align 4
@HAL_MODE_11G_QUARTER_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212GetWirelessModes(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = load i32, i32* @AR_EEP_AMODE, align 4
  %6 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load i32, i32* @HAL_MODE_11A, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = load i32, i32* @AR_EEP_TURBO5DISABLE, align 4
  %12 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @HAL_MODE_TURBO, align 4
  %16 = load i32, i32* @HAL_MODE_108A, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %8
  %21 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %22 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @HAL_MODE_11A_HALF_RATE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %33 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @HAL_MODE_11A_QUARTER_RATE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %45 = load i32, i32* @AR_EEP_BMODE, align 4
  %46 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @HAL_MODE_11B, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %54 = load i32, i32* @AR_EEP_GMODE, align 4
  %55 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %52
  %58 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %59 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AR_SUBVENDOR_ID_NOG, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %99

64:                                               ; preds = %57
  %65 = load i32, i32* @HAL_MODE_11G, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %69 = load i32, i32* @AR_EEP_TURBO2DISABLE, align 4
  %70 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @HAL_MODE_108G, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %78 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @HAL_MODE_11G_HALF_RATE, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %76
  %88 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %89 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @HAL_MODE_11G_QUARTER_RATE, align 4
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %87
  br label %99

99:                                               ; preds = %98, %57, %52
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @ath_hal_eepromGetFlag(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
