; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_getregdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_getregdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.TYPE_3__*, i8*, i32)* @ath_hal_getregdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_hal_getregdump(%struct.ath_hal* %0, %struct.TYPE_3__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %66, %4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 16
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 16
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %63, %19
  %43 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @OS_REG_READ(%struct.ath_hal* %43, i64 %44)
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %9, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 8
  store i64 %50, i64* %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 %52, 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %42
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %61, 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  br i1 %64, label %42, label %65

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %15

69:                                               ; preds = %15
  %70 = load i64*, i64** %9, align 8
  %71 = bitcast i64* %70 to i8*
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  ret i32 %76
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
