; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_legacyEepromDiag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_legacyEepromDiag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }

@AH_TRUE = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global i8* null, align 8
@AH_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32, i8*, i32, i8**, i32*)* @legacyEepromDiag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacyEepromDiag(%struct.ath_hal* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %17 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %64 [
    i32 131, label %21
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
  ]

21:                                               ; preds = %6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %23 = bitcast %struct.TYPE_4__* %22 to i8*
  %24 = load i8**, i8*** %12, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i32*, i32** %13, align 8
  store i32 8, i32* %25, align 4
  %26 = load i32, i32* @AH_TRUE, align 4
  store i32 %26, i32* %7, align 4
  br label %66

27:                                               ; preds = %6, %6, %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 130
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %15, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %12, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %12, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @AH_NULL, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %59

44:                                               ; preds = %27
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @roundup(i32 %50, i32 4)
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = add i64 %52, %57
  br label %59

59:                                               ; preds = %44, %43
  %60 = phi i64 [ 0, %43 ], [ %58, %44 ]
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @AH_TRUE, align 4
  store i32 %63, i32* %7, align 4
  br label %66

64:                                               ; preds = %6
  %65 = load i32, i32* @AH_FALSE, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %59, %21
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
