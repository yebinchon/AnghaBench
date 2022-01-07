; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_attach.c_r92cu_postattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_attach.c_r92cu_postattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i8*, i32, i8*, i32*, %struct.ieee80211com, %struct.r92c_softc* }
%struct.ieee80211com = type { i32, i32 }
%struct.r92c_softc = type { i32, i64, i32, i32, i32* }

@R92C_CHIP_92C = common dso_local global i32 0, align 4
@R92C_BOARD_TYPE_HIGHPA = common dso_local global i64 0, align 8
@rtl8188ru_agc = common dso_local global i32* null, align 8
@rtl8188ru_txagc = common dso_local global i32* null, align 8
@rtl8192ce_agc = common dso_local global i32* null, align 8
@rtl8192cu_txagc = common dso_local global i32* null, align 8
@R92C_CHIP_UMC_A_CUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rtwn-rtl8192cfwU\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rtwn-rtl8192cfwT\00", align 1
@r92c_scan_start = common dso_local global i32 0, align 4
@r92c_scan_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r92cu_postattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92cu_postattach(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92c_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 5
  %7 = load %struct.r92c_softc*, %struct.r92c_softc** %6, align 8
  store %struct.r92c_softc* %7, %struct.r92c_softc** %3, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %8, i32 0, i32 4
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %11 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @R92C_CHIP_92C, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %1
  %17 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %18 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @R92C_BOARD_TYPE_HIGHPA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32*, i32** @rtl8188ru_agc, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** @rtl8188ru_agc, align 8
  %28 = call i8* @nitems(i32* %27)
  %29 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** @rtl8188ru_txagc, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %34 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  br label %48

35:                                               ; preds = %16, %1
  %36 = load i32*, i32** @rtl8192ce_agc, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %39 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** @rtl8192ce_agc, align 8
  %41 = call i8* @nitems(i32* %40)
  %42 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %43 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** @rtl8192cu_txagc, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %47 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %35, %22
  %49 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %50 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @R92C_CHIP_UMC_A_CUT, align 4
  %53 = load i32, i32* @R92C_CHIP_92C, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = load i32, i32* @R92C_CHIP_UMC_A_CUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %60 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %60, align 8
  br label %64

61:                                               ; preds = %48
  %62 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %63 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %66 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %65, i32 0, i32 1
  store i32 2188, i32* %66, align 8
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %71 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @r92c_scan_start, align 4
  %73 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %79 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @r92c_scan_end, align 4
  %81 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  ret void
}

declare dso_local i8* @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
