; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_wme_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_wme_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.rt2661_softc* }
%struct.rt2661_softc = type { i32 }
%struct.chanAccParams = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32, i32 }

@RT2661_AC_TXOP_CSR0 = common dso_local global i32 0, align 4
@WME_AC_BE = common dso_local global i64 0, align 8
@WME_AC_BK = common dso_local global i64 0, align 8
@RT2661_AC_TXOP_CSR1 = common dso_local global i32 0, align 4
@WME_AC_VI = common dso_local global i64 0, align 8
@WME_AC_VO = common dso_local global i64 0, align 8
@RT2661_CWMIN_CSR = common dso_local global i32 0, align 4
@RT2661_CWMAX_CSR = common dso_local global i32 0, align 4
@RT2661_AIFSN_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*)* @rt2661_wme_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_wme_update(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca %struct.chanAccParams, align 8
  %5 = alloca %struct.wmeParams*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 0
  %8 = load %struct.rt2661_softc*, %struct.rt2661_softc** %7, align 8
  store %struct.rt2661_softc* %8, %struct.rt2661_softc** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %10 = call i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com* %9, %struct.chanAccParams* %4)
  %11 = getelementptr inbounds %struct.chanAccParams, %struct.chanAccParams* %4, i32 0, i32 0
  %12 = load %struct.wmeParams*, %struct.wmeParams** %11, align 8
  store %struct.wmeParams* %12, %struct.wmeParams** %5, align 8
  %13 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %14 = load i32, i32* @RT2661_AC_TXOP_CSR0, align 4
  %15 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %16 = load i64, i64* @WME_AC_BE, align 8
  %17 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %15, i64 %16
  %18 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %22 = load i64, i64* @WME_AC_BK, align 8
  %23 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %21, i64 %22
  %24 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %20, %25
  %27 = call i32 @RAL_WRITE(%struct.rt2661_softc* %13, i32 %14, i32 %26)
  %28 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %29 = load i32, i32* @RT2661_AC_TXOP_CSR1, align 4
  %30 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %31 = load i64, i64* @WME_AC_VI, align 8
  %32 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %30, i64 %31
  %33 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %37 = load i64, i64* @WME_AC_VO, align 8
  %38 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %36, i64 %37
  %39 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %35, %40
  %42 = call i32 @RAL_WRITE(%struct.rt2661_softc* %28, i32 %29, i32 %41)
  %43 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %44 = load i32, i32* @RT2661_CWMIN_CSR, align 4
  %45 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %46 = load i64, i64* @WME_AC_BE, align 8
  %47 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %45, i64 %46
  %48 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 12
  %51 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %52 = load i64, i64* @WME_AC_BK, align 8
  %53 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %51, i64 %52
  %54 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %50, %56
  %58 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %59 = load i64, i64* @WME_AC_VI, align 8
  %60 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %58, i64 %59
  %61 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 4
  %64 = or i32 %57, %63
  %65 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %66 = load i64, i64* @WME_AC_VO, align 8
  %67 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %65, i64 %66
  %68 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %64, %69
  %71 = call i32 @RAL_WRITE(%struct.rt2661_softc* %43, i32 %44, i32 %70)
  %72 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %73 = load i32, i32* @RT2661_CWMAX_CSR, align 4
  %74 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %75 = load i64, i64* @WME_AC_BE, align 8
  %76 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %74, i64 %75
  %77 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 12
  %80 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %81 = load i64, i64* @WME_AC_BK, align 8
  %82 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %80, i64 %81
  %83 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %79, %85
  %87 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %88 = load i64, i64* @WME_AC_VI, align 8
  %89 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %87, i64 %88
  %90 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 4
  %93 = or i32 %86, %92
  %94 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %95 = load i64, i64* @WME_AC_VO, align 8
  %96 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %94, i64 %95
  %97 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %93, %98
  %100 = call i32 @RAL_WRITE(%struct.rt2661_softc* %72, i32 %73, i32 %99)
  %101 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %102 = load i32, i32* @RT2661_AIFSN_CSR, align 4
  %103 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %104 = load i64, i64* @WME_AC_BE, align 8
  %105 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %103, i64 %104
  %106 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 12
  %109 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %110 = load i64, i64* @WME_AC_BK, align 8
  %111 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %109, i64 %110
  %112 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = or i32 %108, %114
  %116 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %117 = load i64, i64* @WME_AC_VI, align 8
  %118 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %116, i64 %117
  %119 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 4
  %122 = or i32 %115, %121
  %123 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %124 = load i64, i64* @WME_AC_VO, align 8
  %125 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %123, i64 %124
  %126 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %122, %127
  %129 = call i32 @RAL_WRITE(%struct.rt2661_softc* %101, i32 %102, i32 %128)
  ret i32 0
}

declare dso_local i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com*, %struct.chanAccParams*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
