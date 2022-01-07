; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_calibrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.bwi_mac = type { i32 }

@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"opmode %d\00", align 1
@BWI_REGWIN_T_MAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"current regwin type %d\00", align 1
@BWI_TXPWR_CALIB = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bwi_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_calibrate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_mac*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bwi_softc*
  store %struct.bwi_softc* %6, %struct.bwi_softc** %3, align 8
  %7 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %8 = call i32 @BWI_ASSERT_LOCKED(%struct.bwi_softc* %7)
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %15, i8* %20)
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BWI_REGWIN_T_MAC, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %29, i8* %35)
  %37 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = bitcast %struct.TYPE_3__* %39 to %struct.bwi_mac*
  store %struct.bwi_mac* %40, %struct.bwi_mac** %4, align 8
  %41 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %42 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %43 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bwi_mac_calibrate_txpower(%struct.bwi_mac* %41, i32 %44)
  %46 = load i32, i32* @BWI_TXPWR_CALIB, align 4
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %48 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %49, i32 0, i32 0
  %51 = load i32, i32* @hz, align 4
  %52 = mul nsw i32 %51, 15
  %53 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %54 = call i32 @callout_reset(i32* %50, i32 %52, void (i8*)* @bwi_calibrate, %struct.bwi_softc* %53)
  ret void
}

declare dso_local i32 @BWI_ASSERT_LOCKED(%struct.bwi_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_mac_calibrate_txpower(%struct.bwi_mac*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
