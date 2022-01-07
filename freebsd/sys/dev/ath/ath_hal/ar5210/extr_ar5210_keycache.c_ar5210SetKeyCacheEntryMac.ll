; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_keycache.c_ar5210SetKeyCacheEntryMac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_keycache.c_ar5210SetKeyCacheEntryMac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_KEYTABLE_SIZE = common dso_local global i64 0, align 8
@AH_NULL = common dso_local global i32* null, align 8
@AR_KEYTABLE_VALID = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210SetKeyCacheEntryMac(%struct.ath_hal* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @AR_KEYTABLE_SIZE, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** @AH_NULL, align 8
  %16 = icmp ne i32* %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 5
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 24
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 1
  %48 = shl i32 %47, 31
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %17
  %55 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @AR_KEYTABLE_MAC0(i64 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @OS_REG_WRITE(%struct.ath_hal* %55, i32 %57, i32 %58)
  %60 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @AR_KEYTABLE_MAC1(i64 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @AR_KEYTABLE_VALID, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @OS_REG_WRITE(%struct.ath_hal* %60, i32 %62, i32 %65)
  %67 = load i32, i32* @AH_TRUE, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %3
  %69 = load i32, i32* @AH_FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %54
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_KEYTABLE_MAC0(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC1(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
