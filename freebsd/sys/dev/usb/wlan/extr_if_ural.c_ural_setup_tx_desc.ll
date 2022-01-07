; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_setup_tx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_setup_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32 }
%struct.ural_tx_desc = type { i32, i32, i32, i32, i64, i64, i32, i32 }

@RAL_TX_NEWSEQ = common dso_local global i32 0, align 4
@IEEE80211_CRC_LEN = common dso_local global i64 0, align 8
@IEEE80211_T_OFDM = common dso_local global i64 0, align 8
@RAL_TX_OFDM = common dso_local global i32 0, align 4
@RAL_PLCP_LENGEXT = common dso_local global i32 0, align 4
@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*, %struct.ural_tx_desc*, i32, i32, i32)* @ural_setup_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_setup_tx_desc(%struct.ural_softc* %0, %struct.ural_tx_desc* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ural_softc*, align 8
  %7 = alloca %struct.ural_tx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211com*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %6, align 8
  store %struct.ural_tx_desc* %1, %struct.ural_tx_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %15 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %14, i32 0, i32 0
  store %struct.ieee80211com* %15, %struct.ieee80211com** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @htole32(i32 %16)
  %18 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %19 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @RAL_TX_NEWSEQ, align 4
  %21 = call i32 @htole32(i32 %20)
  %22 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %23 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 %26, 16
  %28 = call i32 @htole32(i32 %27)
  %29 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %30 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = call i32 @RAL_AIFSN(i32 2)
  %34 = call i32 @RAL_LOGCWMIN(i32 3)
  %35 = or i32 %33, %34
  %36 = call i32 @RAL_LOGCWMAX(i32 5)
  %37 = or i32 %35, %36
  %38 = call i32 @htole16(i32 %37)
  %39 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %40 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = call i32 @RAL_IVOFFSET(i32 4)
  %42 = call i32 @htole16(i32 %41)
  %43 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %44 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @ural_plcp_signal(i32 %47)
  %49 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %50 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %52 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %51, i32 0, i32 1
  store i32 4, i32* %52, align 4
  %53 = load i64, i64* @IEEE80211_CRC_LEN, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @ieee80211_rate2phytype(i32 %60, i32 %61)
  %63 = load i64, i64* @IEEE80211_T_OFDM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %5
  %66 = load i32, i32* @RAL_TX_OFDM, align 4
  %67 = call i32 @htole32(i32 %66)
  %68 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %69 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 4095
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 6
  %76 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %77 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = and i32 %78, 63
  %80 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %81 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %133

82:                                               ; preds = %5
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 2, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 16, %87
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @howmany(i32 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 22
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 16, %94
  %96 = srem i32 %95, 22
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 7
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* @RAL_PLCP_LENGEXT, align 4
  %104 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %105 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %99, %93
  br label %109

109:                                              ; preds = %108, %86
  %110 = load i32, i32* %12, align 4
  %111 = ashr i32 %110, 8
  %112 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %113 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 255
  %116 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %117 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 2
  br i1 %119, label %120, label %132

120:                                              ; preds = %109
  %121 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  %122 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %129 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, 8
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %127, %120, %109
  br label %133

133:                                              ; preds = %132, %65
  %134 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %135 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %134, i32 0, i32 5
  store i64 0, i64* %135, align 8
  %136 = load %struct.ural_tx_desc*, %struct.ural_tx_desc** %7, align 8
  %137 = getelementptr inbounds %struct.ural_tx_desc, %struct.ural_tx_desc* %136, i32 0, i32 4
  store i64 0, i64* %137, align 8
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @RAL_AIFSN(i32) #1

declare dso_local i32 @RAL_LOGCWMIN(i32) #1

declare dso_local i32 @RAL_LOGCWMAX(i32) #1

declare dso_local i32 @RAL_IVOFFSET(i32) #1

declare dso_local i32 @ural_plcp_signal(i32) #1

declare dso_local i64 @ieee80211_rate2phytype(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
