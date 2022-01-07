; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_construct_nulldata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_construct_nulldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64 }
%struct.ieee80211vap = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rtwn_vap = type { i32 }
%struct.rtwn_tx_desc_common = type { i32, i8* }
%struct.ieee80211_frame = type { i32*, i32, i32, i32 }
%struct.ieee80211_qosframe = type { i32*, i32* }

@IEEE80211_FC0_VERSION_0 = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@WME_AC_BE = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_QOS_NULL = common dso_local global i32 0, align 4
@IEEE80211_QOS_TID = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_NODATA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, %struct.ieee80211vap*, i32*, i32)* @rtwn_construct_nulldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_construct_nulldata(%struct.rtwn_softc* %0, %struct.ieee80211vap* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtwn_vap*, align 8
  %10 = alloca %struct.ieee80211com*, align 8
  %11 = alloca %struct.rtwn_tx_desc_common*, align 8
  %12 = alloca %struct.ieee80211_frame*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_qosframe*, align 8
  %15 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %17 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %16)
  store %struct.rtwn_vap* %17, %struct.rtwn_vap** %9, align 8
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %19 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %18, i32 0, i32 1
  store %struct.ieee80211com* %19, %struct.ieee80211com** %10, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %22 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = bitcast i32* %25 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %26, %struct.ieee80211_frame** %12, align 8
  %27 = load i32, i32* @IEEE80211_FC0_VERSION_0, align 4
  %28 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %12, align 8
  %31 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %35 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %12, align 8
  %36 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %12, align 8
  %40 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IEEE80211_ADDR_COPY(i32 %41, i32 %46)
  %48 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %12, align 8
  %49 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @IEEE80211_ADDR_COPY(i32 %50, i32 %53)
  %55 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %12, align 8
  %56 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IEEE80211_ADDR_COPY(i32 %57, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = bitcast i32* %64 to %struct.rtwn_tx_desc_common*
  store %struct.rtwn_tx_desc_common* %65, %struct.rtwn_tx_desc_common** %11, align 8
  %66 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %67 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %11, align 8
  %70 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %72 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %4
  %77 = load i32, i32* @WME_AC_BE, align 4
  %78 = call i32 @WME_AC_TO_TID(i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %12, align 8
  %80 = bitcast %struct.ieee80211_frame* %79 to %struct.ieee80211_qosframe*
  store %struct.ieee80211_qosframe* %80, %struct.ieee80211_qosframe** %14, align 8
  %81 = load i32, i32* @IEEE80211_FC0_SUBTYPE_QOS_NULL, align 4
  %82 = load %struct.ieee80211_qosframe*, %struct.ieee80211_qosframe** %14, align 8
  %83 = getelementptr inbounds %struct.ieee80211_qosframe, %struct.ieee80211_qosframe* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @IEEE80211_QOS_TID, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.ieee80211_qosframe*, %struct.ieee80211_qosframe** %14, align 8
  %92 = getelementptr inbounds %struct.ieee80211_qosframe, %struct.ieee80211_qosframe* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = call i8* @htole16(i32 16)
  %96 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %11, align 8
  %97 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 16
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %13, align 4
  br label %117

102:                                              ; preds = %4
  %103 = load i32, i32* @IEEE80211_FC0_SUBTYPE_NODATA, align 4
  %104 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %12, align 8
  %105 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = call i8* @htole16(i32 24)
  %111 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %11, align 8
  %112 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, 24
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %102, %76
  %118 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  %121 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.rtwn_vap*, %struct.rtwn_vap** %9, align 8
  %128 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @rtwn_fill_tx_desc_null(%struct.rtwn_softc* %118, i32* %119, i32 %125, i32 %126, i32 %129)
  %131 = load i32, i32* %13, align 4
  ret i32 %131
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @WME_AC_TO_TID(i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @rtwn_fill_tx_desc_null(%struct.rtwn_softc*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
