; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetDefGainValues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetDefGainValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ar5416eeprom = type { i32 }

@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_DB = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_BSW_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_BSW_ATTEN = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR9280_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9280_PHY_RXGAIN_TXRX_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_RXTX_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.TYPE_3__*, %struct.ar5416eeprom*, i32, i32, i32)* @ar5416SetDefGainValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416SetDefGainValues(%struct.ath_hal* %0, %struct.TYPE_3__* %1, %struct.ar5416eeprom* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.ar5416eeprom*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store %struct.ar5416eeprom* %2, %struct.ar5416eeprom** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %14 = call i64 @IS_EEP_MINOR_V3(%struct.ath_hal* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %114

16:                                               ; preds = %6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %25 = call i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %16
  %28 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %29 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %28, i64 %32, i32 %33, i32 %40)
  %42 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %43 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %42, i64 %46, i32 %47, i32 %54)
  %56 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %57 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %56, i64 %60, i32 %61, i32 %68)
  %70 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %71 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_DB, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %70, i64 %74, i32 %75, i32 %82)
  br label %113

84:                                               ; preds = %16
  %85 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %86 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_MARGIN, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %85, i64 %89, i32 %90, i32 %97)
  %99 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %100 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_ATTEN, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %99, i64 %103, i32 %104, i32 %111)
  br label %113

113:                                              ; preds = %84, %27
  br label %114

114:                                              ; preds = %113, %6
  %115 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %116 = call i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %114
  %119 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %120 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %119, i64 %123, i32 %124, i32 %125)
  %127 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %128 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %127, i64 %131, i32 %132, i32 %139)
  br label %164

141:                                              ; preds = %114
  %142 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %143 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i32, i32* @AR_PHY_RXGAIN_TXRX_ATTEN, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %142, i64 %146, i32 %147, i32 %148)
  %150 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %151 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %151, %153
  %155 = load i32, i32* @AR_PHY_GAIN_2GHZ_RXTX_MARGIN, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %150, i64 %154, i32 %155, i32 %162)
  br label %164

164:                                              ; preds = %141, %118
  ret void
}

declare dso_local i64 @IS_EEP_MINOR_V3(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
