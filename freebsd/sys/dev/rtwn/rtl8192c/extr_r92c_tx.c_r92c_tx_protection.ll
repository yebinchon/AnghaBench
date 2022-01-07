; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_tx.c_r92c_tx_protection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_tx.c_r92c_tx_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32 }
%struct.r92c_tx_desc = type { i32, i32 }

@R92C_TXDW4_CTS2SELF = common dso_local global i32 0, align 4
@R92C_TXDW4_RTSEN = common dso_local global i32 0, align 4
@ridx2rate = common dso_local global i32* null, align 8
@R92C_TXDW4_RTSRATE = common dso_local global i32 0, align 4
@R92C_TXDW5_RTSRATE_FB_LMT = common dso_local global i32 0, align 4
@RTWN_RIDX_CCK1 = common dso_local global i64 0, align 8
@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@R92C_TXDW4_RTS_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.r92c_tx_desc*, i32, i64)* @r92c_tx_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92c_tx_protection(%struct.rtwn_softc* %0, %struct.r92c_tx_desc* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.r92c_tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca i64, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.r92c_tx_desc* %1, %struct.r92c_tx_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %12 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %11, i32 0, i32 0
  store %struct.ieee80211com* %12, %struct.ieee80211com** %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %28 [
    i32 129, label %14
    i32 128, label %21
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @R92C_TXDW4_CTS2SELF, align 4
  %16 = call i32 @htole32(i32 %15)
  %17 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %6, align 8
  %18 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %29

21:                                               ; preds = %4
  %22 = load i32, i32* @R92C_TXDW4_RTSEN, align 4
  %23 = call i32 @htole32(i32 %22)
  %24 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %6, align 8
  %25 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %21, %14
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %96

35:                                               ; preds = %32, %29
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @RTWN_RIDX_HT_MCS(i32 0)
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @rtwn_ctl_mcsrate(i32 %42, i64 %43)
  store i64 %44, i64* %10, align 8
  br label %54

45:                                               ; preds = %35
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @ridx2rate, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ieee80211_ctl_rate(i32 %48, i32 %52)
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %45, %39
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @IEEE80211_RV(i64 %55)
  %57 = call i64 @rate2ridx(i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* @R92C_TXDW4_RTSRATE, align 4
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @SM(i32 %58, i32 %60)
  %62 = call i32 @htole32(i32 %61)
  %63 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %6, align 8
  %64 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @R92C_TXDW5_RTSRATE_FB_LMT, align 4
  %68 = call i32 @SM(i32 %67, i32 15)
  %69 = call i32 @htole32(i32 %68)
  %70 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %6, align 8
  %71 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i64 @RTWN_RATE_IS_CCK(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %54
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @RTWN_RIDX_CCK1, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %83 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i32, i32* @R92C_TXDW4_RTS_SHORT, align 4
  %90 = call i32 @htole32(i32 %89)
  %91 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %6, align 8
  %92 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %81, %77, %54
  br label %96

96:                                               ; preds = %95, %32
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i64 @RTWN_RIDX_HT_MCS(i32) #1

declare dso_local i64 @rtwn_ctl_mcsrate(i32, i64) #1

declare dso_local i64 @ieee80211_ctl_rate(i32, i32) #1

declare dso_local i64 @rate2ridx(i32) #1

declare dso_local i32 @IEEE80211_RV(i64) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @RTWN_RATE_IS_CCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
