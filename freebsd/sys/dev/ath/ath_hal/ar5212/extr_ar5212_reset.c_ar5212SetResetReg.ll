; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetResetReg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetResetReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@AR_RC_PCI = common dso_local global i32 0, align 4
@AR_RC_MAC = common dso_local global i32 0, align 4
@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8
@AR_IER = common dso_local global i32 0, align 4
@AR_IER_DISABLE = common dso_local global i32 0, align 4
@AR_RXDP = common dso_local global i32 0, align 4
@AR_RC_BB = common dso_local global i32 0, align 4
@AR_RC = common dso_local global i32 0, align 4
@INIT_CONFIG_STATUS = common dso_local global i32 0, align 4
@AR_CFG_SWRD = common dso_local global i32 0, align 4
@AR_CFG_SWTD = common dso_local global i32 0, align 4
@AR_CFG = common dso_local global i32 0, align 4
@AR_ISR_RAC = common dso_local global i32 0, align 4
@HAL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@PCI_COMMON_CONFIG_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath_hal*, i32)* @ar5212SetResetReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ar5212SetResetReg(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ -1, %12 ]
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %16 = call %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32, i32* @AR_RC_PCI, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AR_RC_MAC, align 4
  %28 = load i32, i32* @AR_RC_PCI, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %25
  %33 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %34 = load i32, i32* @HAL_PM_AWAKE, align 4
  %35 = load i64, i64* @AH_TRUE, align 8
  %36 = call i64 @ar5212SetPowerMode(%struct.ath_hal* %33, i32 %34, i64 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @AH_TRUE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %3, align 8
  br label %152

42:                                               ; preds = %32
  %43 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %44 = load i32, i32* @AR_IER, align 4
  %45 = load i32, i32* @AR_IER_DISABLE, align 4
  %46 = call i32 @OS_REG_WRITE(%struct.ath_hal* %43, i32 %44, i32 %45)
  %47 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %48 = load i32, i32* @AR_IER, align 4
  %49 = call i32 @OS_REG_READ(%struct.ath_hal* %47, i32 %48)
  %50 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %51 = call i64 @ar5212MacStop(%struct.ath_hal* %50)
  %52 = load i64, i64* @AH_TRUE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %42
  %55 = call i32 @OS_DELAY(i32 15)
  %56 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %57 = load i32, i32* @AR_RXDP, align 4
  %58 = call i32 @OS_REG_READ(%struct.ath_hal* %56, i32 %57)
  %59 = load i32, i32* @AR_RC_MAC, align 4
  %60 = load i32, i32* @AR_RC_BB, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %65 = call %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal* %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* @AR_RC_PCI, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %54
  br label %83

74:                                               ; preds = %42
  %75 = load i32, i32* @AR_RC_PCI, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = call i32 @OS_DELAY(i32 15)
  %80 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %81 = load i32, i32* @AR_RXDP, align 4
  %82 = call i32 @OS_REG_READ(%struct.ath_hal* %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %73
  br label %84

84:                                               ; preds = %83, %25
  %85 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %86 = load i32, i32* @AR_RXDP, align 4
  %87 = call i32 @OS_REG_READ(%struct.ath_hal* %85, i32 %86)
  %88 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %89 = load i32, i32* @AR_RC, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @OS_REG_WRITE(%struct.ath_hal* %88, i32 %89, i32 %90)
  %92 = call i32 @OS_DELAY(i32 15)
  %93 = load i32, i32* @AR_RC_MAC, align 4
  %94 = load i32, i32* @AR_RC_BB, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @AR_RC_MAC, align 4
  %99 = load i32, i32* @AR_RC_BB, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %104 = load i32, i32* @AR_RC, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @ath_hal_wait(%struct.ath_hal* %103, i32 %104, i32 %105, i32 %106)
  store i64 %107, i64* %7, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @AR_RC_MAC, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %84
  %113 = call i64 (...) @isBigEndian()
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32, i32* @INIT_CONFIG_STATUS, align 4
  %117 = load i32, i32* @AR_CFG_SWRD, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* @AR_CFG_SWTD, align 4
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %6, align 4
  %122 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %123 = load i32, i32* @AR_CFG, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @OS_REG_WRITE(%struct.ath_hal* %122, i32 %123, i32 %124)
  br label %131

126:                                              ; preds = %112
  %127 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %128 = load i32, i32* @AR_CFG, align 4
  %129 = load i32, i32* @INIT_CONFIG_STATUS, align 4
  %130 = call i32 @OS_REG_WRITE(%struct.ath_hal* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %115
  %132 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %133 = load i32, i32* @HAL_PM_AWAKE, align 4
  %134 = load i64, i64* @AH_TRUE, align 8
  %135 = call i64 @ar5212SetPowerMode(%struct.ath_hal* %132, i32 %133, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %139 = load i32, i32* @AR_ISR_RAC, align 4
  %140 = call i32 @OS_REG_READ(%struct.ath_hal* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %131
  br label %142

142:                                              ; preds = %141, %84
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @AR_RC_BB, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %149 = call %struct.TYPE_4__* @AH5212(%struct.ath_hal* %148)
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 4
  %151 = load i64, i64* %7, align 8
  store i64 %151, i64* %3, align 8
  br label %152

152:                                              ; preds = %142, %40
  %153 = load i64, i64* %3, align 8
  ret i64 %153
}

declare dso_local %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @ar5212SetPowerMode(%struct.ath_hal*, i32, i64) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @ar5212MacStop(%struct.ath_hal*) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i64 @ath_hal_wait(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @isBigEndian(...) #1

declare dso_local %struct.TYPE_4__* @AH5212(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
