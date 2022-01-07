; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416SetCapability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416SetCapability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }

@AR_EEP_RXMASK = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AR_EEP_TXMASK = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR_PCU_TXOP_TBTT_LIMIT_ENA = common dso_local global i32 0, align 4
@AR_MISC_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416SetCapability(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %14 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %90 [
    i32 129, label %17
    i32 128, label %37
    i32 130, label %57
  ]

17:                                               ; preds = %5
  %18 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %19 = load i32, i32* @AR_EEP_RXMASK, align 4
  %20 = call i32 @ath_hal_eepromGet(%struct.ath_hal* %18, i32 %19, i32* null)
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @owl_get_ntxchains(i32 %26)
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 2, i32* %31, align 4
  br label %35

32:                                               ; preds = %17
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @AH_TRUE, align 4
  store i32 %36, i32* %6, align 4
  br label %98

37:                                               ; preds = %5
  %38 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %39 = load i32, i32* @AR_EEP_TXMASK, align 4
  %40 = call i32 @ath_hal_eepromGet(%struct.ath_hal* %38, i32 %39, i32* null)
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @owl_get_ntxchains(i32 %46)
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 2, i32* %51, align 4
  br label %55

52:                                               ; preds = %37
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @AH_TRUE, align 4
  store i32 %56, i32* %6, align 4
  br label %98

57:                                               ; preds = %5
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @AH_FALSE, align 4
  store i32 %61, i32* %6, align 4
  br label %98

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %67 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %68 = call %struct.TYPE_6__* @AH5212(%struct.ath_hal* %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %73 = load i32, i32* @AR_MISC_MODE, align 4
  %74 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %75 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %72, i32 %73, i32 %74)
  br label %88

76:                                               ; preds = %62
  %77 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %80 = call %struct.TYPE_6__* @AH5212(%struct.ath_hal* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %78
  store i32 %83, i32* %81, align 4
  %84 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %85 = load i32, i32* @AR_MISC_MODE, align 4
  %86 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %87 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %65
  %89 = load i32, i32* @AH_TRUE, align 4
  store i32 %89, i32* %6, align 4
  br label %98

90:                                               ; preds = %5
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @ar5212SetCapability(%struct.ath_hal* %92, i32 %93, i32 %94, i32 %95, i32* %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %91, %88, %60, %55, %35
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_eepromGet(%struct.ath_hal*, i32, i32*) #1

declare dso_local i32 @owl_get_ntxchains(i32) #1

declare dso_local %struct.TYPE_6__* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5212SetCapability(%struct.ath_hal*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
