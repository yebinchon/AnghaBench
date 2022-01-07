; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_spectral.c_ar5416ConfigureSpectralScan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_spectral.c_ar5416ConfigureSpectralScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@AR_PHY_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@HAL_SPECTRAL_PARAM_NOVAL = common dso_local global i64 0, align 8
@AR_PHY_SPECTRAL_SCAN_FFT_PERIOD = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_PERIOD = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_COUNT = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8
@AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_COUNT_KIWI = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT_KIWI = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_PHYERR_MASK_SELECT_KIWI = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416ConfigureSpectralScan(%struct.ath_hal* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call i32 @ar5416PrepSpectralScan(%struct.ath_hal* %6)
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %10 = call i32 @OS_REG_READ(%struct.ath_hal* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_FFT_PERIOD, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_FFT_PERIOD, align 4
  %25 = call i32 @SM(i64 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %16, %2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_PERIOD, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_PERIOD, align 4
  %43 = call i32 @SM(i64 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %34, %28
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_PERIOD, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_PERIOD, align 4
  %61 = call i32 @SM(i64 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %52, %46
  %65 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %66 = call i64 @AR_SREV_MERLIN(%struct.ath_hal* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %109

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_COUNT, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_COUNT, align 4
  %83 = call i32 @SM(i64 %81, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %74, %68
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AH_TRUE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %108

96:                                               ; preds = %86
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %102, %96
  br label %108

108:                                              ; preds = %107, %92
  br label %161

109:                                              ; preds = %64
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %109
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 128
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_COUNT_KIWI, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_COUNT_KIWI, align 4
  %132 = call i32 @SM(i64 %130, i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %123, %109
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AH_TRUE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT_KIWI, align 4
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  br label %157

145:                                              ; preds = %135
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @HAL_SPECTRAL_PARAM_NOVAL, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT_KIWI, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %151, %145
  br label %157

157:                                              ; preds = %156, %141
  %158 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_PHYERR_MASK_SELECT_KIWI, align 4
  %159 = load i32, i32* %5, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %108
  %162 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %163 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ENA, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @OS_REG_WRITE(%struct.ath_hal* %162, i32 %163, i32 %166)
  %168 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = call i32 @ar5416GetSpectralParams(%struct.ath_hal* %168, %struct.TYPE_4__* %169)
  ret void
}

declare dso_local i32 @ar5416PrepSpectralScan(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @SM(i64, i32) #1

declare dso_local i64 @AR_SREV_MERLIN(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5416GetSpectralParams(%struct.ath_hal*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
