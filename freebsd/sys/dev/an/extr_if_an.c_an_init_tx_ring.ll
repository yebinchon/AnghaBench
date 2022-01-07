; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32*, i32, i64, i64, i64* }

@AN_TX_RING_CNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*)* @an_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_init_tx_ring(%struct.an_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.an_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %3, align 8
  %6 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %7 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %13 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %43, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AN_TX_RING_CNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %23 = call i64 @an_alloc_nicmem(%struct.an_softc* %22, i32 1586, i32* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %30 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %28, i32* %35, align 4
  %36 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %37 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %17

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %46, %11
  %48 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %49 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %52 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %55 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %47, %25, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @an_alloc_nicmem(%struct.an_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
