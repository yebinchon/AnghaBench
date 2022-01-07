; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ural_softc = type { i32, i32*, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64, i64, i32, i32, i32 }
%struct.ieee80211vap = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ural_def_mac = common dso_local global %struct.TYPE_3__* null, align 8
@RAL_MAC_CSR17 = common dso_local global i32 0, align 4
@RAL_BBP_AWAKE = common dso_local global i32 0, align 4
@RAL_RF_AWAKE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"timeout waiting for BBP/RF to wakeup\0A\00", align 1
@RAL_MAC_CSR1 = common dso_local global i32 0, align 4
@RAL_HOST_READY = common dso_local global i32 0, align 4
@RAL_TXRX_CSR11 = common dso_local global i32 0, align 4
@RAL_STA_CSR0 = common dso_local global i32 0, align 4
@RAL_DROP_PHY = common dso_local global i32 0, align 4
@RAL_DROP_CRC = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@RAL_DROP_CTL = common dso_local global i32 0, align 4
@RAL_DROP_BAD_VERSION = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@RAL_DROP_TODS = common dso_local global i32 0, align 4
@RAL_DROP_NOT_TO_ME = common dso_local global i32 0, align 4
@RAL_TXRX_CSR2 = common dso_local global i32 0, align 4
@URAL_BULK_WR = common dso_local global i64 0, align 8
@URAL_BULK_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*)* @ural_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_init(%struct.ural_softc* %0) #0 {
  %2 = alloca %struct.ural_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %2, align 8
  %8 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %8, i32 0, i32 6
  store %struct.ieee80211com* %9, %struct.ieee80211com** %3, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 4
  %12 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %11)
  store %struct.ieee80211vap* %12, %struct.ieee80211vap** %4, align 8
  %13 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @RAL_LOCK_ASSERT(%struct.ural_softc* %13, i32 %14)
  %16 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %17 = call i32 @ural_set_testmode(%struct.ural_softc* %16)
  %18 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %19 = call i32 @ural_write(%struct.ural_softc* %18, i32 776, i32 240)
  %20 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %21 = call i32 @ural_stop(%struct.ural_softc* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %42, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ural_def_mac, align 8
  %25 = call i32 @nitems(%struct.TYPE_3__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ural_def_mac, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ural_def_mac, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ural_write(%struct.ural_softc* %28, i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %22

45:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 100
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %51 = load i32, i32* @RAL_MAC_CSR17, align 4
  %52 = call i32 @ural_read(%struct.ural_softc* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @RAL_BBP_AWAKE, align 4
  %55 = load i32, i32* @RAL_RF_AWAKE, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load i32, i32* @RAL_BBP_AWAKE, align 4
  %59 = load i32, i32* @RAL_RF_AWAKE, align 4
  %60 = or i32 %58, %59
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %74

63:                                               ; preds = %49
  %64 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %65 = load i32, i32* @hz, align 4
  %66 = sdiv i32 %65, 100
  %67 = call i64 @ural_pause(%struct.ural_softc* %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %74

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %46

74:                                               ; preds = %69, %62, %46
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 100
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %186

82:                                               ; preds = %74
  %83 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %84 = load i32, i32* @RAL_MAC_CSR1, align 4
  %85 = load i32, i32* @RAL_HOST_READY, align 4
  %86 = call i32 @ural_write(%struct.ural_softc* %83, i32 %84, i32 %85)
  %87 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %88 = load i32, i32* @RAL_TXRX_CSR11, align 4
  %89 = call i32 @ural_write(%struct.ural_softc* %87, i32 %88, i32 351)
  %90 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %91 = call i64 @ural_bbp_init(%struct.ural_softc* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %186

94:                                               ; preds = %82
  %95 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %96 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ural_set_chan(%struct.ural_softc* %95, i32 %98)
  %100 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %101 = load i32, i32* @RAL_STA_CSR0, align 4
  %102 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ural_read_multi(%struct.ural_softc* %100, i32 %101, i32 %104, i32 4)
  %106 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %107 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %108 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ural_set_txantenna(%struct.ural_softc* %106, i32 %109)
  %111 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %112 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %113 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ural_set_rxantenna(%struct.ural_softc* %111, i32 %114)
  %116 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %117 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %118 = icmp ne %struct.ieee80211vap* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %94
  %120 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %121 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  br label %127

123:                                              ; preds = %94
  %124 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %125 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i32 [ %122, %119 ], [ %126, %123 ]
  %129 = call i32 @ural_set_macaddr(%struct.ural_softc* %116, i32 %128)
  %130 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %131 = call i32 @ural_setup_tx_list(%struct.ural_softc* %130)
  %132 = load i32, i32* @RAL_DROP_PHY, align 4
  %133 = load i32, i32* @RAL_DROP_CRC, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %5, align 4
  %135 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %136 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %127
  %141 = load i32, i32* @RAL_DROP_CTL, align 4
  %142 = load i32, i32* @RAL_DROP_BAD_VERSION, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  %146 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %147 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %140
  %152 = load i32, i32* @RAL_DROP_TODS, align 4
  %153 = load i32, i32* %5, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %151, %140
  %156 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %157 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* @RAL_DROP_NOT_TO_ME, align 4
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %160, %155
  br label %165

165:                                              ; preds = %164, %127
  %166 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %167 = load i32, i32* @RAL_TXRX_CSR2, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @ural_write(%struct.ural_softc* %166, i32 %167, i32 %168)
  %170 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %171 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %173 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @URAL_BULK_WR, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @usbd_xfer_set_stall(i32 %177)
  %179 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %180 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @URAL_BULK_RD, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @usbd_transfer_start(i32 %184)
  br label %189

186:                                              ; preds = %93, %77
  %187 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %188 = call i32 @ural_stop(%struct.ural_softc* %187)
  br label %189

189:                                              ; preds = %186, %165
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_set_testmode(%struct.ural_softc*) #1

declare dso_local i32 @ural_write(%struct.ural_softc*, i32, i32) #1

declare dso_local i32 @ural_stop(%struct.ural_softc*) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @ural_read(%struct.ural_softc*, i32) #1

declare dso_local i64 @ural_pause(%struct.ural_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ural_bbp_init(%struct.ural_softc*) #1

declare dso_local i32 @ural_set_chan(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_read_multi(%struct.ural_softc*, i32, i32, i32) #1

declare dso_local i32 @ural_set_txantenna(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_set_rxantenna(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_set_macaddr(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_setup_tx_list(%struct.ural_softc*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
