; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416WritePdadcValues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416WritePdadcValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_BASE = common dso_local global i32 0, align 4
@HAL_DEBUG_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"PDADC: Chain %d | PDADC %3d Value %3d | PDADC %3d Value %3d | PDADC %3d Value %3d | PDADC %3d Value %3d |\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416WritePdadcValues(%struct.ath_hal* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ar5416GetRegChainOffset(%struct.ath_hal* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @AR_PHY_BASE, align 4
  %15 = add nsw i32 %14, 2688
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %109, %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %112

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 4, %23
  %25 = add nsw i32 %24, 0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 0
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 4, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = shl i32 %38, 8
  %40 = or i32 %30, %39
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 4, %42
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 255
  %49 = shl i32 %48, 16
  %50 = or i32 %40, %49
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 4, %52
  %54 = add nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 255
  %59 = shl i32 %58, 24
  %60 = or i32 %50, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @OS_REG_WRITE(%struct.ath_hal* %61, i32 %62, i32 %63)
  %65 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %66 = load i32, i32* @HAL_DEBUG_EEPROM, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 4, %68
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 4, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 4, %76
  %78 = add nsw i32 %77, 1
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 4, %80
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 4, %86
  %88 = add nsw i32 %87, 2
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 4, %90
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 4, %96
  %98 = add nsw i32 %97, 3
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 4, %100
  %102 = add nsw i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @HALDEBUG(%struct.ath_hal* %65, i32 %66, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %69, i32 %75, i32 %78, i32 %85, i32 %88, i32 %95, i32 %98, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %21
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %18

112:                                              ; preds = %18
  ret void
}

declare dso_local i32 @ar5416GetRegChainOffset(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
