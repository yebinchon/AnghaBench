; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar2133.c_ar2133GetNoiseFloor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar2133.c_ar2133GetNoiseFloor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5416 = type { i32 }

@AR_PHY_CH2_CCA = common dso_local global i32 0, align 4
@AR_PHY_CH2_MINCCA_PWR = common dso_local global i32 0, align 4
@HAL_DEBUG_NFCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"NF calibrated [ctl] [chain 2] is %d\0A\00", align 1
@AR_PHY_CH2_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_CH2_EXT_MINCCA_PWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"NF calibrated [ext] [chain 2] is %d\0A\00", align 1
@AR_PHY_CH1_CCA = common dso_local global i32 0, align 4
@AR_PHY_CH1_MINCCA_PWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"NF calibrated [ctl] [chain 1] is %d\0A\00", align 1
@AR_PHY_CH1_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_CH1_EXT_MINCCA_PWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"NF calibrated [ext] [chain 1] is %d\0A\00", align 1
@AR_PHY_CCA = common dso_local global i32 0, align 4
@AR_PHY_MINCCA_PWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"NF calibrated [ctl] [chain 0] is %d\0A\00", align 1
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_MINCCA_PWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"NF calibrated [ext] [chain 0] is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32*)* @ar2133GetNoiseFloor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar2133GetNoiseFloor(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_hal_5416*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_5416* @AH5416(%struct.ath_hal* %7)
  store %struct.ath_hal_5416* %8, %struct.ath_hal_5416** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %22 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %153 [
    i32 7, label %24
    i32 3, label %67
    i32 5, label %67
    i32 1, label %110
  ]

24:                                               ; preds = %2
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = load i32, i32* @AR_PHY_CH2_CCA, align 4
  %27 = call i32 @OS_REG_READ(%struct.ath_hal* %25, i32 %26)
  %28 = load i32, i32* @AR_PHY_CH2_MINCCA_PWR, align 4
  %29 = call i32 @MS(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 256
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = xor i32 %34, 511
  %36 = add nsw i32 %35, 1
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %24
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @HALDEBUG(%struct.ath_hal* %39, i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = load i32, i32* @AR_PHY_CH2_EXT_CCA, align 4
  %48 = call i32 @OS_REG_READ(%struct.ath_hal* %46, i32 %47)
  %49 = load i32, i32* @AR_PHY_CH2_EXT_MINCCA_PWR, align 4
  %50 = call i32 @MS(i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 256
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %55, 511
  %57 = add nsw i32 %56, 1
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %38
  %60 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %61 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @HALDEBUG(%struct.ath_hal* %60, i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %2, %2, %59
  %68 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %69 = load i32, i32* @AR_PHY_CH1_CCA, align 4
  %70 = call i32 @OS_REG_READ(%struct.ath_hal* %68, i32 %69)
  %71 = load i32, i32* @AR_PHY_CH1_MINCCA_PWR, align 4
  %72 = call i32 @MS(i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 256
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = xor i32 %77, 511
  %79 = add nsw i32 %78, 1
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %76, %67
  %82 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %83 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @HALDEBUG(%struct.ath_hal* %82, i32 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %90 = load i32, i32* @AR_PHY_CH1_EXT_CCA, align 4
  %91 = call i32 @OS_REG_READ(%struct.ath_hal* %89, i32 %90)
  %92 = load i32, i32* @AR_PHY_CH1_EXT_MINCCA_PWR, align 4
  %93 = call i32 @MS(i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 256
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %81
  %98 = load i32, i32* %6, align 4
  %99 = xor i32 %98, 511
  %100 = add nsw i32 %99, 1
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %81
  %103 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %104 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @HALDEBUG(%struct.ath_hal* %103, i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %2, %102
  %111 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %112 = load i32, i32* @AR_PHY_CCA, align 4
  %113 = call i32 @OS_REG_READ(%struct.ath_hal* %111, i32 %112)
  %114 = load i32, i32* @AR_PHY_MINCCA_PWR, align 4
  %115 = call i32 @MS(i32 %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, 256
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load i32, i32* %6, align 4
  %121 = xor i32 %120, 511
  %122 = add nsw i32 %121, 1
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %119, %110
  %125 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %126 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @HALDEBUG(%struct.ath_hal* %125, i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %133 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %134 = call i32 @OS_REG_READ(%struct.ath_hal* %132, i32 %133)
  %135 = load i32, i32* @AR_PHY_EXT_MINCCA_PWR, align 4
  %136 = call i32 @MS(i32 %134, i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, 256
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %124
  %141 = load i32, i32* %6, align 4
  %142 = xor i32 %141, 511
  %143 = add nsw i32 %142, 1
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %140, %124
  %146 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %147 = load i32, i32* @HAL_DEBUG_NFCAL, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @HALDEBUG(%struct.ath_hal* %146, i32 %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %6, align 4
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %2, %145
  ret void
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
