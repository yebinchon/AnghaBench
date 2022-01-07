; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_getPcdacInterceptsFromPcdacMinMax.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_getPcdacInterceptsFromPcdacMinMax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@getPcdacInterceptsFromPcdacMinMax.intercepts3 = internal constant [11 x i32] [i32 0, i32 5, i32 10, i32 20, i32 30, i32 50, i32 70, i32 85, i32 90, i32 95, i32 100], align 16
@getPcdacInterceptsFromPcdacMinMax.intercepts3_2 = internal constant [11 x i32] [i32 0, i32 10, i32 20, i32 30, i32 40, i32 50, i32 60, i32 70, i32 80, i32 90, i32 100], align 16
@AR_EEPROM_VER3_2 = common dso_local global i64 0, align 8
@NUM_INTERCEPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32*)* @getPcdacInterceptsFromPcdacMinMax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getPcdacInterceptsFromPcdacMinMax(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AR_EEPROM_VER3_2, align 8
  %15 = icmp slt i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @getPcdacInterceptsFromPcdacMinMax.intercepts3, i64 0, i64 0), i32* getelementptr inbounds ([11 x i32], [11 x i32]* @getPcdacInterceptsFromPcdacMinMax.intercepts3_2, i64 0, i64 0)
  store i32* %17, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %42, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @NUM_INTERCEPTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 100, %34
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %29, %37
  %39 = sdiv i32 %38, 100
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %18

45:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
