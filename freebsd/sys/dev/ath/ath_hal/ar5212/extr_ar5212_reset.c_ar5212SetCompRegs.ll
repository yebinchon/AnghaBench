; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetCompRegs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetCompRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR_DCCFG = common dso_local global i32 0, align 4
@AR_CCFG = common dso_local global i32 0, align 4
@AR_COMPRESSION_WINDOW_SIZE = common dso_local global i32 0, align 4
@AR_CCFG_WIN_M = common dso_local global i32 0, align 4
@AR_CCFG_MIB_INT_EN = common dso_local global i32 0, align 4
@AR_CCUCFG = common dso_local global i32 0, align 4
@AR_CCUCFG_RESET_VAL = common dso_local global i32 0, align 4
@AR_CCUCFG_CATCHUP_EN = common dso_local global i32 0, align 4
@AR_CPCOVF = common dso_local global i32 0, align 4
@HAL_DECOMP_MASK_SIZE = common dso_local global i32 0, align 4
@AR_DCM_A = common dso_local global i32 0, align 4
@AR_DCM_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetCompRegs(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %5)
  store %struct.ath_hal_5212* %6, %struct.ath_hal_5212** %3, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %16 = load i32, i32* @AR_DCCFG, align 4
  %17 = call i32 @OS_REG_WRITE(%struct.ath_hal* %15, i32 %16, i32 1)
  %18 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %19 = load i32, i32* @AR_CCFG, align 4
  %20 = load i32, i32* @AR_COMPRESSION_WINDOW_SIZE, align 4
  %21 = ashr i32 %20, 8
  %22 = load i32, i32* @AR_CCFG_WIN_M, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @OS_REG_WRITE(%struct.ath_hal* %18, i32 %19, i32 %23)
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = load i32, i32* @AR_CCFG, align 4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %28 = load i32, i32* @AR_CCFG, align 4
  %29 = call i32 @OS_REG_READ(%struct.ath_hal* %27, i32 %28)
  %30 = load i32, i32* @AR_CCFG_MIB_INT_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @OS_REG_WRITE(%struct.ath_hal* %25, i32 %26, i32 %31)
  %33 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %34 = load i32, i32* @AR_CCUCFG, align 4
  %35 = load i32, i32* @AR_CCUCFG_RESET_VAL, align 4
  %36 = load i32, i32* @AR_CCUCFG_CATCHUP_EN, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %33, i32 %34, i32 %37)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %40 = load i32, i32* @AR_CPCOVF, align 4
  %41 = call i32 @OS_REG_WRITE(%struct.ath_hal* %39, i32 %40, i32 0)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %61, %14
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @HAL_DECOMP_MASK_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %48 = load i32, i32* @AR_DCM_A, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @OS_REG_WRITE(%struct.ath_hal* %47, i32 %48, i32 %49)
  %51 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %52 = load i32, i32* @AR_DCM_D, align 4
  %53 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %54 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @OS_REG_WRITE(%struct.ath_hal* %51, i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %42

64:                                               ; preds = %13, %42
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
