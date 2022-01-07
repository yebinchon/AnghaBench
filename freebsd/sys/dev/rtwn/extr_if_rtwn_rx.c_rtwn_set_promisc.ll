; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_set_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i64, i64, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@R92C_RCR_ACF = common dso_local global i32 0, align 4
@R92C_RCR_ADF = common dso_local global i32 0, align 4
@R92C_RCR_AMF = common dso_local global i32 0, align 4
@R92C_RCR_AAP = common dso_local global i32 0, align 4
@R92C_RCR_APM = common dso_local global i32 0, align 4
@R92C_RCR_CBSSID_BCN = common dso_local global i32 0, align 4
@R92C_RCR_CBSSID_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtwn_set_promisc(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 4
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %9 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %8)
  %10 = load i32, i32* @R92C_RCR_ACF, align 4
  %11 = load i32, i32* @R92C_RCR_ADF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @R92C_RCR_AMF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @R92C_RCR_AAP, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @R92C_RCR_APM, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %19 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @R92C_RCR_CBSSID_BCN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @R92C_RCR_CBSSID_DATA, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %47 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @R92C_RCR_CBSSID_BCN, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @R92C_RCR_CBSSID_DATA, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %4, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %67 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %72 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %87

75:                                               ; preds = %40, %35
  %76 = load i32, i32* %5, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %79 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %84 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %75, %63
  %88 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %89 = call i32 @rtwn_rxfilter_set(%struct.rtwn_softc* %88)
  ret void
}

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_rxfilter_set(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
