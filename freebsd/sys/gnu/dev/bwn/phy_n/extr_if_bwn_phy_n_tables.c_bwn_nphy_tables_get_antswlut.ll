; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_tables_get_antswlut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_tables_get_antswlut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@BHND_NVAR_ANTSWCTL5G = common dso_local global i8* null, align 8
@BHND_NVAR_ANTSWCTL2G = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"NVRAM variable %s unreadable: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32*)* @bwn_nphy_tables_get_antswlut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_tables_get_antswlut(%struct.bwn_mac* %0, i32* %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.bwn_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %10, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 1
  store %struct.ieee80211com* %12, %struct.ieee80211com** %5, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  %15 = load %struct.bwn_softc*, %struct.bwn_softc** %14, align 8
  store %struct.bwn_softc* %15, %struct.bwn_softc** %6, align 8
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @IEEE80211_IS_CHAN_5GHZ(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @BHND_NVAR_ANTSWCTL5G, align 8
  store i8* %22, i8** %7, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i8*, i8** @BHND_NVAR_ANTSWCTL2G, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %27 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @bhnd_nvram_getvar_uint8(i32 %28, i8* %29, i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %36 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %35, i32 0, i32 0
  %37 = load %struct.bwn_softc*, %struct.bwn_softc** %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @BWN_ERRPRINTF(%struct.bwn_softc* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %25
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(i32) #1

declare dso_local i32 @bhnd_nvram_getvar_uint8(i32, i8*, i32*) #1

declare dso_local i32 @BWN_ERRPRINTF(%struct.bwn_softc*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
