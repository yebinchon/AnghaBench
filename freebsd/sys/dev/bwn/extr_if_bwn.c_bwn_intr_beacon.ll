; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_intr_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_intr_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32, %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@BWN_INTR_BEACON = common dso_local global i32 0, align 4
@BWN_MACCMD = common dso_local global i32 0, align 4
@BWN_MACCMD_BEACON0_VALID = common dso_local global i32 0, align 4
@BWN_MACCMD_BEACON1_VALID = common dso_local global i32 0, align 4
@BWN_INTR_REASON = common dso_local global i32 0, align 4
@BWN_FLAG_NEED_BEACON_TP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_intr_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_intr_beacon(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 1
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %3, align 8
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 1
  store %struct.ieee80211com* %12, %struct.ieee80211com** %4, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %118

25:                                               ; preds = %18
  %26 = load i32, i32* @BWN_INTR_BEACON, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %29 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %33 = load i32, i32* @BWN_MACCMD, align 4
  %34 = call i32 @BWN_READ_4(%struct.bwn_mac* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BWN_MACCMD_BEACON0_VALID, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BWN_MACCMD_BEACON1_VALID, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = load i32, i32* @BWN_INTR_REASON, align 4
  %49 = load i32, i32* @BWN_INTR_BEACON, align 4
  %50 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @BWN_INTR_BEACON, align 4
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %118

56:                                               ; preds = %43, %25
  %57 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %58 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BWN_FLAG_NEED_BEACON_TP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %56
  %64 = load i32, i32* @BWN_FLAG_NEED_BEACON_TP, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %67 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %71 = call i32 @bwn_load_beacon0(%struct.bwn_mac* %70)
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %73 = call i32 @bwn_load_beacon1(%struct.bwn_mac* %72)
  %74 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %75 = load i32, i32* @BWN_MACCMD, align 4
  %76 = call i32 @BWN_READ_4(%struct.bwn_mac* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @BWN_MACCMD_BEACON0_VALID, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %81 = load i32, i32* @BWN_MACCMD, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %80, i32 %81, i32 %82)
  br label %118

84:                                               ; preds = %56
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %84
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %89 = call i32 @bwn_load_beacon0(%struct.bwn_mac* %88)
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %91 = load i32, i32* @BWN_MACCMD, align 4
  %92 = call i32 @BWN_READ_4(%struct.bwn_mac* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @BWN_MACCMD_BEACON0_VALID, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %97 = load i32, i32* @BWN_MACCMD, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %96, i32 %97, i32 %98)
  br label %117

100:                                              ; preds = %84
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %100
  %104 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %105 = call i32 @bwn_load_beacon1(%struct.bwn_mac* %104)
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %107 = load i32, i32* @BWN_MACCMD, align 4
  %108 = call i32 @BWN_READ_4(%struct.bwn_mac* %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @BWN_MACCMD_BEACON1_VALID, align 4
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %113 = load i32, i32* @BWN_MACCMD, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %103, %100
  br label %117

117:                                              ; preds = %116, %87
  br label %118

118:                                              ; preds = %24, %46, %117, %63
  ret void
}

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_load_beacon0(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_load_beacon1(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
