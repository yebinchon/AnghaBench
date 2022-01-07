; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_update_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_7__, i32*, %struct.ieee80211com }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.ieee80211com = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ath_tx_status = type { i32, i64, i64, i32, i32, i32 }
%struct.ath_buf = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.ieee80211_node* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_node = type { i32, i32 }

@WME_AC_VO = common dso_local global i32 0, align 4
@HAL_TXDESC_NOACK = common dso_local global i32 0, align 4
@HAL_TXERR_XRETRY = common dso_local global i32 0, align 4
@HAL_TXERR_FIFO = common dso_local global i32 0, align 4
@HAL_TXERR_FILT = common dso_local global i32 0, align 4
@HAL_TXERR_XTXOP = common dso_local global i32 0, align 4
@HAL_TXERR_TIMER_EXPIRED = common dso_local global i32 0, align 4
@M_FF = common dso_local global i32 0, align 4
@HAL_TX_DESC_CFG_ERR = common dso_local global i32 0, align 4
@HAL_TX_DATA_UNDERRUN = common dso_local global i32 0, align 4
@HAL_TX_DELIM_UNDERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_tx_status*, %struct.ath_buf*)* @ath_tx_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_update_stats(%struct.ath_softc* %0, %struct.ath_tx_status* %1, %struct.ath_buf* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_tx_status*, align 8
  %6 = alloca %struct.ath_buf*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_tx_status* %1, %struct.ath_tx_status** %5, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %6, align 8
  %13 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %14 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %13, i32 0, i32 2
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %14, align 8
  store %struct.ieee80211_node* %15, %struct.ieee80211_node** %7, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 2
  store %struct.ieee80211com* %17, %struct.ieee80211com** %8, align 8
  %18 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %19 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %3
  %23 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %24 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 12
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %42 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %22
  %46 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %22
  %52 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %53 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @M_WME_GETAC(%struct.TYPE_8__* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @WME_AC_VO, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %67 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HAL_TXDESC_NOACK, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %78 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %65
  br label %161

80:                                               ; preds = %3
  %81 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %82 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @HAL_TXERR_XRETRY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %95 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @HAL_TXERR_FIFO, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %102 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %93
  %107 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %108 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @HAL_TXERR_FILT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %115 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %106
  %120 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %121 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @HAL_TXERR_XTXOP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %128 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %119
  %133 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %134 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @HAL_TXERR_TIMER_EXPIRED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %141 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %132
  %146 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %147 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @M_FF, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %145
  %155 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %145
  br label %161

161:                                              ; preds = %160, %79
  %162 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %163 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @HAL_TX_DESC_CFG_ERR, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %170 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %161
  %175 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %176 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @HAL_TX_DATA_UNDERRUN, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %174
  %182 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %183 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %174
  %188 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %189 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @HAL_TX_DELIM_UNDERRUN, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %196 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %187
  %201 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %202 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %9, align 4
  %204 = load %struct.ath_tx_status*, %struct.ath_tx_status** %5, align 8
  %205 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %209 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, %207
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %215 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %213
  store i32 %218, i32* %216, align 4
  ret void
}

declare dso_local i32 @M_WME_GETAC(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
