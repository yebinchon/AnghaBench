; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx_ht.c_ath_buf_set_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx_ht.c_ath_buf_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hal* }
%struct.ath_hal = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.ath_buf = type { %struct.TYPE_2__, %struct.ath_desc* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.ath_desc = type { i32 }

@HAL_PKT_TYPE_PSPOLL = common dso_local global i64 0, align 8
@ATH_DEBUG_XMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_buf_set_rate(%struct.ath_softc* %0, %struct.ieee80211_node* %1, %struct.ath_buf* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ath_buf*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.ath_desc*, align 8
  %9 = alloca %struct.ath_hal*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %5, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %6, align 8
  %13 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %14 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %13, i32 0, i32 1
  %15 = load %struct.ath_desc*, %struct.ath_desc** %14, align 8
  store %struct.ath_desc* %15, %struct.ath_desc** %8, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 1
  %18 = load %struct.ath_hal*, %struct.ath_hal** %17, align 8
  store %struct.ath_hal* %18, %struct.ath_hal** %9, align 8
  %19 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %20 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HAL_PKT_TYPE_PSPOLL, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %27 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %31 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = bitcast [4 x i32]* %7 to i32**
  %35 = call i32 @memset(i32** %34, i32 0, i32 16)
  %36 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %38 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %40 = call i32 @ath_rateseries_setup(%struct.ath_softc* %36, %struct.ieee80211_node* %37, %struct.ath_buf* %38, i32* %39)
  %41 = load %struct.ath_hal*, %struct.ath_hal** %9, align 8
  %42 = load %struct.ath_desc*, %struct.ath_desc** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ath_hal_set11nratescenario(%struct.ath_hal* %41, %struct.ath_desc* %42, i32 %46, i32 %47, i32* %48, i32 4, i32 %49)
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @ath_rateseries_setup(%struct.ath_softc*, %struct.ieee80211_node*, %struct.ath_buf*, i32*) #1

declare dso_local i32 @ath_hal_set11nratescenario(%struct.ath_hal*, %struct.ath_desc*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
