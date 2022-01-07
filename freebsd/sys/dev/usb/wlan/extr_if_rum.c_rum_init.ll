; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.rum_softc = type { i32, i64, i32*, i32, %struct.TYPE_4__*, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ieee80211com = type { i64, i64, i32, i32, i32 }
%struct.ieee80211vap = type { i32 }

@rum_def_mac = common dso_local global %struct.TYPE_5__* null, align 8
@RT2573_MAC_CSR1 = common dso_local global i32 0, align 4
@RT2573_RESET_ASIC = common dso_local global i32 0, align 4
@RT2573_RESET_BBP = common dso_local global i32 0, align 4
@RT2573_STA_CSR0 = common dso_local global i32 0, align 4
@RT2573_HOST_READY = common dso_local global i32 0, align 4
@RT2573_TXRX_CSR0 = common dso_local global i32 0, align 4
@RT2573_DROP_PHY_ERROR = common dso_local global i32 0, align 4
@RT2573_DROP_CRC_ERROR = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@RT2573_DROP_CTL = common dso_local global i32 0, align 4
@RT2573_DROP_VER_ERROR = common dso_local global i32 0, align 4
@RT2573_DROP_ACKCTS = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@RT2573_DROP_TODS = common dso_local global i32 0, align 4
@RT2573_DROP_NOT_TO_ME = common dso_local global i32 0, align 4
@RUM_BULK_WR = common dso_local global i64 0, align 8
@RUM_BULK_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*)* @rum_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_init(%struct.rum_softc* %0) #0 {
  %2 = alloca %struct.rum_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %2, align 8
  %8 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %8, i32 0, i32 5
  store %struct.ieee80211com* %9, %struct.ieee80211com** %3, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 4
  %12 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %11)
  store %struct.ieee80211vap* %12, %struct.ieee80211vap** %4, align 8
  %13 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %14 = call i32 @RUM_LOCK(%struct.rum_softc* %13)
  %15 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %16 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %189

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rum_def_mac, align 8
  %24 = call i32 @nitems(%struct.TYPE_5__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rum_def_mac, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rum_def_mac, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rum_write(%struct.rum_softc* %27, i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %46 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 2, i32* %49, align 4
  %50 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %51 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 4, i32* %54, align 4
  %55 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 10, i32* %59, align 4
  %60 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %61 = load i32, i32* @RT2573_MAC_CSR1, align 4
  %62 = load i32, i32* @RT2573_RESET_ASIC, align 4
  %63 = load i32, i32* @RT2573_RESET_BBP, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @rum_write(%struct.rum_softc* %60, i32 %61, i32 %64)
  %66 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %67 = load i32, i32* @RT2573_MAC_CSR1, align 4
  %68 = call i32 @rum_write(%struct.rum_softc* %66, i32 %67, i32 0)
  %69 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %70 = call i32 @rum_bbp_wakeup(%struct.rum_softc* %69)
  store i32 %70, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %44
  br label %189

73:                                               ; preds = %44
  %74 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %75 = call i32 @rum_bbp_init(%struct.rum_softc* %74)
  store i32 %75, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %189

78:                                               ; preds = %73
  %79 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %80 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rum_select_band(%struct.rum_softc* %79, i32 %82)
  %84 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %85 = call i32 @rum_select_antenna(%struct.rum_softc* %84)
  %86 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %87 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rum_set_chan(%struct.rum_softc* %86, i32 %89)
  %91 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %92 = load i32, i32* @RT2573_STA_CSR0, align 4
  %93 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %94 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @rum_read_multi(%struct.rum_softc* %91, i32 %92, i32 %95, i32 4)
  %97 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %98 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %78
  %102 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %103 = call i32 @rum_clr_shkey_regs(%struct.rum_softc* %102)
  %104 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %105 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %104, i32 0, i32 1
  store i64 1, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %78
  %107 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %108 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %109 = icmp ne %struct.ieee80211vap* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  br label %118

114:                                              ; preds = %106
  %115 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %116 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i32 [ %113, %110 ], [ %117, %114 ]
  %120 = call i32 @rum_set_macaddr(%struct.rum_softc* %107, i32 %119)
  %121 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %122 = load i32, i32* @RT2573_MAC_CSR1, align 4
  %123 = load i32, i32* @RT2573_HOST_READY, align 4
  %124 = call i32 @rum_write(%struct.rum_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %126 = call i32 @rum_setup_tx_list(%struct.rum_softc* %125)
  %127 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %128 = load i32, i32* @RT2573_TXRX_CSR0, align 4
  %129 = call i32 @rum_read(%struct.rum_softc* %127, i32 %128)
  %130 = and i32 %129, 65535
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @RT2573_DROP_PHY_ERROR, align 4
  %132 = load i32, i32* @RT2573_DROP_CRC_ERROR, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %137 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %118
  %142 = load i32, i32* @RT2573_DROP_CTL, align 4
  %143 = load i32, i32* @RT2573_DROP_VER_ERROR, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @RT2573_DROP_ACKCTS, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  %149 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %150 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %141
  %155 = load i32, i32* @RT2573_DROP_TODS, align 4
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %154, %141
  %159 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %160 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* @RT2573_DROP_NOT_TO_ME, align 4
  %165 = load i32, i32* %5, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %163, %158
  br label %168

168:                                              ; preds = %167, %118
  %169 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %170 = load i32, i32* @RT2573_TXRX_CSR0, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @rum_write(%struct.rum_softc* %169, i32 %170, i32 %171)
  %173 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %174 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %176 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @RUM_BULK_WR, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @usbd_xfer_set_stall(i32 %180)
  %182 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %183 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @RUM_BULK_RD, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @usbd_transfer_start(i32 %187)
  br label %189

189:                                              ; preds = %168, %77, %72, %19
  %190 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %191 = call i32 @RUM_UNLOCK(%struct.rum_softc* %190)
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %196 = call i32 @rum_stop(%struct.rum_softc* %195)
  br label %197

197:                                              ; preds = %194, %189
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @rum_write(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_bbp_wakeup(%struct.rum_softc*) #1

declare dso_local i32 @rum_bbp_init(%struct.rum_softc*) #1

declare dso_local i32 @rum_select_band(%struct.rum_softc*, i32) #1

declare dso_local i32 @rum_select_antenna(%struct.rum_softc*) #1

declare dso_local i32 @rum_set_chan(%struct.rum_softc*, i32) #1

declare dso_local i32 @rum_read_multi(%struct.rum_softc*, i32, i32, i32) #1

declare dso_local i32 @rum_clr_shkey_regs(%struct.rum_softc*) #1

declare dso_local i32 @rum_set_macaddr(%struct.rum_softc*, i32) #1

declare dso_local i32 @rum_setup_tx_list(%struct.rum_softc*) #1

declare dso_local i32 @rum_read(%struct.rum_softc*, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

declare dso_local i32 @rum_stop(%struct.rum_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
