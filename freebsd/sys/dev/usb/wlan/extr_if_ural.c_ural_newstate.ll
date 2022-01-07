; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211_txparam*, i32, %struct.ieee80211_node*, %struct.ieee80211com* }
%struct.ieee80211_txparam = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.ieee80211com = type { i32, i32, %struct.ural_softc* }
%struct.ural_softc = type { i32, i32 }
%struct.ural_vap = type { i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 }
%struct.ieee80211vap.0 = type opaque
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@ieee80211_state_name = common dso_local global i32* null, align 8
@RAL_TXRX_CSR19 = common dso_local global i32 0, align 4
@RAL_MAC_CSR20 = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANYC = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not allocate beacon\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"could not send beacon\0A\00", align 1
@IEEE80211_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @ural_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ural_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ural_vap*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ural_softc*, align 8
  %11 = alloca %struct.ieee80211_txparam*, align 8
  %12 = alloca %struct.ieee80211_node*, align 8
  %13 = alloca %struct.mbuf*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %15 = call %struct.ural_vap* @URAL_VAP(%struct.ieee80211vap* %14)
  store %struct.ural_vap* %15, %struct.ural_vap** %8, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 4
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %17, align 8
  store %struct.ieee80211com* %18, %struct.ieee80211com** %9, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 2
  %21 = load %struct.ural_softc*, %struct.ural_softc** %20, align 8
  store %struct.ural_softc* %21, %struct.ural_softc** %10, align 8
  %22 = load i32*, i32** @ieee80211_state_name, align 8
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @ieee80211_state_name, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32)
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %35 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %34)
  %36 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %37 = call i32 @RAL_LOCK(%struct.ural_softc* %36)
  %38 = load %struct.ural_vap*, %struct.ural_vap** %8, align 8
  %39 = getelementptr inbounds %struct.ural_vap, %struct.ural_vap* %38, i32 0, i32 1
  %40 = call i32 @usb_callout_stop(i32* %39)
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %166 [
    i32 129, label %42
    i32 128, label %55
  ]

42:                                               ; preds = %3
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 128
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %49 = load i32, i32* @RAL_TXRX_CSR19, align 4
  %50 = call i32 @ural_write(%struct.ural_softc* %48, i32 %49, i32 0)
  %51 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %52 = load i32, i32* @RAL_MAC_CSR20, align 4
  %53 = call i32 @ural_write(%struct.ural_softc* %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %47, %42
  br label %167

55:                                               ; preds = %3
  %56 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %56, i32 0, i32 3
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %57, align 8
  %59 = call %struct.ieee80211_node* @ieee80211_ref_node(%struct.ieee80211_node* %58)
  store %struct.ieee80211_node* %59, %struct.ieee80211_node** %12, align 8
  %60 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IEEE80211_M_MONITOR, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %55
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_CHAN_ANYC, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %180

72:                                               ; preds = %65
  %73 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %74 = call i32 @ural_update_slot(%struct.ural_softc* %73)
  %75 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %76 = call i32 @ural_set_txpreamble(%struct.ural_softc* %75)
  %77 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %78 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ural_set_basicrates(%struct.ural_softc* %77, i32 %80)
  %82 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %83 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %86 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @IEEE80211_ADDR_COPY(i32 %84, i32 %87)
  %89 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %90 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %91 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ural_set_bssid(%struct.ural_softc* %89, i32 %92)
  br label %94

94:                                               ; preds = %72, %55
  %95 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IEEE80211_M_HOSTAP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IEEE80211_M_IBSS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %100, %94
  %107 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %108 = call %struct.mbuf* @ieee80211_beacon_alloc(%struct.ieee80211_node* %107)
  store %struct.mbuf* %108, %struct.mbuf** %13, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %110 = icmp eq %struct.mbuf* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %113 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %180

116:                                              ; preds = %106
  %117 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %118 = call %struct.ieee80211_node* @ieee80211_ref_node(%struct.ieee80211_node* %117)
  %119 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %121 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %122 = call i32 @ural_tx_bcn(%struct.ural_softc* %119, %struct.mbuf* %120, %struct.ieee80211_node* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %126 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %180

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %100
  %131 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %132 = load i32, i32* @RAL_MAC_CSR20, align 4
  %133 = call i32 @ural_write(%struct.ural_softc* %131, i32 %132, i32 1)
  %134 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %135 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @IEEE80211_M_MONITOR, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %141 = call i32 @ural_enable_tsf_sync(%struct.ural_softc* %140)
  br label %145

142:                                              ; preds = %130
  %143 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %144 = call i32 @ural_enable_tsf(%struct.ural_softc* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %147 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %146, i32 0, i32 1
  %148 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %147, align 8
  %149 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %150 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @ieee80211_chan2mode(i32 %151)
  %153 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %148, i64 %152
  store %struct.ieee80211_txparam* %153, %struct.ieee80211_txparam** %11, align 8
  %154 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %11, align 8
  %155 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %145
  %160 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %161 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %162 = call i32 @ural_ratectl_start(%struct.ural_softc* %160, %struct.ieee80211_node* %161)
  br label %163

163:                                              ; preds = %159, %145
  %164 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %165 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %164)
  br label %167

166:                                              ; preds = %3
  br label %167

167:                                              ; preds = %166, %163, %54
  %168 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %169 = call i32 @RAL_UNLOCK(%struct.ural_softc* %168)
  %170 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %171 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %170)
  %172 = load %struct.ural_vap*, %struct.ural_vap** %8, align 8
  %173 = getelementptr inbounds %struct.ural_vap, %struct.ural_vap* %172, i32 0, i32 0
  %174 = load i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 (%struct.ieee80211vap.0*, i32, i32)** %173, align 8
  %175 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %176 = bitcast %struct.ieee80211vap* %175 to %struct.ieee80211vap.0*
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 %174(%struct.ieee80211vap.0* %176, i32 %177, i32 %178)
  store i32 %179, i32* %4, align 4
  br label %187

180:                                              ; preds = %124, %111, %71
  %181 = load %struct.ural_softc*, %struct.ural_softc** %10, align 8
  %182 = call i32 @RAL_UNLOCK(%struct.ural_softc* %181)
  %183 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %184 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %183)
  %185 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %186 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %185)
  store i32 -1, i32* %4, align 4
  br label %187

187:                                              ; preds = %180, %167
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.ural_vap* @URAL_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @RAL_LOCK(%struct.ural_softc*) #1

declare dso_local i32 @usb_callout_stop(i32*) #1

declare dso_local i32 @ural_write(%struct.ural_softc*, i32, i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @ural_update_slot(%struct.ural_softc*) #1

declare dso_local i32 @ural_set_txpreamble(%struct.ural_softc*) #1

declare dso_local i32 @ural_set_basicrates(%struct.ural_softc*, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @ural_set_bssid(%struct.ural_softc*, i32) #1

declare dso_local %struct.mbuf* @ieee80211_beacon_alloc(%struct.ieee80211_node*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ural_tx_bcn(%struct.ural_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @ural_enable_tsf_sync(%struct.ural_softc*) #1

declare dso_local i32 @ural_enable_tsf(%struct.ural_softc*) #1

declare dso_local i64 @ieee80211_chan2mode(i32) #1

declare dso_local i32 @ural_ratectl_start(%struct.ural_softc*, %struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.ural_softc*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
