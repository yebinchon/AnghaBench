; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_chan.c_r92c_set_txpower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_chan.c_r92c_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }

@RTWN_RIDX_COUNT = common dso_local global i32 0, align 4
@RTWN_DEBUG_TXPWR = common dso_local global i32 0, align 4
@RTWN_RIDX_CCK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.ieee80211_channel*)* @r92c_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92c_set_txpower(%struct.rtwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load i32, i32* @RTWN_RIDX_COUNT, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = mul nuw i64 4, %9
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %11, i32 0, i32 %20)
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i32 @rtwn_r92c_get_txpower(%struct.rtwn_softc* %22, i32 %23, %struct.ieee80211_channel* %24, i32* %11)
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @r92c_write_txpower(%struct.rtwn_softc* %26, i32 %27, i32* %11)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @rtwn_r92c_get_txpower(%struct.rtwn_softc*, i32, %struct.ieee80211_channel*, i32*) #2

declare dso_local i32 @r92c_write_txpower(%struct.rtwn_softc*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
