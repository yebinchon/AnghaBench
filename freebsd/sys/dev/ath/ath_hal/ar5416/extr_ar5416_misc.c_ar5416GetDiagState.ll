; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416GetDiagState.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416GetDiagState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5416 = type { i32 }

@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@HAL_BB_HANGS = common dso_local global i32 0, align 4
@HAL_MAC_HANGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416GetDiagState(%struct.ath_hal* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ath_hal_5416*, align 8
  %15 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %17 = call %struct.ath_hal_5416* @AH5416(%struct.ath_hal* %16)
  store %struct.ath_hal_5416* %17, %struct.ath_hal_5416** %14, align 8
  %18 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i8**, i8*** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i64 @ath_hal_getdiagstate(%struct.ath_hal* %18, i32 %19, i8* %20, i32 %21, i8** %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @AH_TRUE, align 4
  store i32 %27, i32* %7, align 4
  br label %93

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %85 [
    i32 128, label %30
    i32 129, label %38
  ]

30:                                               ; preds = %28
  %31 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i8**, i8*** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @ath_hal_eepromDiag(%struct.ath_hal* %31, i32 %32, i8* %33, i32 %34, i8** %35, i32* %36)
  store i32 %37, i32* %7, align 4
  br label %93

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @AH_FALSE, align 4
  store i32 %43, i32* %7, align 4
  br label %93

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %14, align 8
  %49 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @HAL_BB_HANGS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %56 = call i32 @ar5416DetectBBHang(%struct.ath_hal* %55)
  %57 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %14, align 8
  %58 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %44
  %62 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %14, align 8
  %63 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @HAL_MAC_HANGS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %73 = call i32 @ar5416DetectMacHang(%struct.ath_hal* %72)
  %74 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %14, align 8
  %75 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %66, %61
  %79 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %14, align 8
  %80 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %79, i32 0, i32 0
  %81 = bitcast i32* %80 to i8*
  %82 = load i8**, i8*** %12, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i32*, i32** %13, align 8
  store i32 4, i32* %83, align 4
  %84 = load i32, i32* @AH_TRUE, align 4
  store i32 %84, i32* %7, align 4
  br label %93

85:                                               ; preds = %28
  %86 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i8**, i8*** %12, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @ar5212GetDiagState(%struct.ath_hal* %86, i32 %87, i8* %88, i32 %89, i8** %90, i32* %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %85, %78, %42, %30, %26
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i64 @ath_hal_getdiagstate(%struct.ath_hal*, i32, i8*, i32, i8**, i32*) #1

declare dso_local i32 @ath_hal_eepromDiag(%struct.ath_hal*, i32, i8*, i32, i8**, i32*) #1

declare dso_local i32 @ar5416DetectBBHang(%struct.ath_hal*) #1

declare dso_local i32 @ar5416DetectMacHang(%struct.ath_hal*) #1

declare dso_local i32 @ar5212GetDiagState(%struct.ath_hal*, i32, i8*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
