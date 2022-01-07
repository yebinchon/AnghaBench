; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_ticktask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_ticktask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i64, i64, i32, %struct.ieee80211com, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.ieee80211com = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211vap = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@NDIS_STATUS_MEDIA_CONNECT = common dso_local global i64 0, align 8
@IEEE80211_S_RUN = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@NDIS_STATUS_MEDIA_DISCONNECT = common dso_local global i64 0, align 8
@IEEE80211_S_SCAN = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @ndis_ticktask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndis_ticktask(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ndis_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.ieee80211vap*, align 8
  %10 = alloca %struct.ieee80211com*, align 8
  %11 = alloca %struct.ieee80211vap*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ndis_softc*
  store %struct.ndis_softc* %13, %struct.ndis_softc** %5, align 8
  %14 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %15 = call i32 @NDIS_LOCK(%struct.ndis_softc* %14)
  %16 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %17 = call i32 @NDIS_INITIALIZED(%struct.ndis_softc* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %21 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %20)
  br label %148

22:                                               ; preds = %2
  %23 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %24 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %23)
  %25 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %25, i32 0, i32 6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @MSCALL1(i32* %33, i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @TRUE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %45 = call i32 @ndis_reset_nic(%struct.ndis_softc* %44)
  br label %148

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %22
  %48 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %49 = call i32 @NDIS_LOCK(%struct.ndis_softc* %48)
  %50 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %51 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %47
  %55 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NDIS_STATUS_MEDIA_CONNECT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %54
  %61 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %62 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %64 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %69 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %68, i32 0, i32 4
  store %struct.ieee80211com* %69, %struct.ieee80211com** %8, align 8
  %70 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %70, i32 0, i32 0
  %72 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %71)
  store %struct.ieee80211vap* %72, %struct.ieee80211vap** %9, align 8
  %73 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %74 = icmp ne %struct.ieee80211vap* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %67
  %76 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %77 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %76)
  %78 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %79 = call i32 @ndis_getstate_80211(%struct.ndis_softc* %78)
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %81 = load i32, i32* @IEEE80211_S_RUN, align 4
  %82 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %80, i32 %81, i32 -1)
  %83 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %84 = call i32 @NDIS_LOCK(%struct.ndis_softc* %83)
  %85 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  %86 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LINK_STATE_UP, align 4
  %89 = call i32 @if_link_state_change(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %75, %67
  br label %97

91:                                               ; preds = %60
  %92 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %93 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @LINK_STATE_UP, align 4
  %96 = call i32 @if_link_state_change(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %90
  br label %98

98:                                               ; preds = %97, %54, %47
  %99 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %100 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %145

103:                                              ; preds = %98
  %104 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %105 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NDIS_STATUS_MEDIA_DISCONNECT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %103
  %110 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %111 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %113 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %109
  %117 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %118 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %117, i32 0, i32 4
  store %struct.ieee80211com* %118, %struct.ieee80211com** %10, align 8
  %119 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  %120 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %119, i32 0, i32 0
  %121 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %120)
  store %struct.ieee80211vap* %121, %struct.ieee80211vap** %11, align 8
  %122 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %123 = icmp ne %struct.ieee80211vap* %122, null
  br i1 %123, label %124, label %137

124:                                              ; preds = %116
  %125 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %126 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %125)
  %127 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %128 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %129 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %127, i32 %128, i32 0)
  %130 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %131 = call i32 @NDIS_LOCK(%struct.ndis_softc* %130)
  %132 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %133 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @LINK_STATE_DOWN, align 4
  %136 = call i32 @if_link_state_change(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %124, %116
  br label %144

138:                                              ; preds = %109
  %139 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %140 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @LINK_STATE_DOWN, align 4
  %143 = call i32 @if_link_state_change(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %137
  br label %145

145:                                              ; preds = %144, %103, %98
  %146 = load %struct.ndis_softc*, %struct.ndis_softc** %5, align 8
  %147 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %146)
  br label %148

148:                                              ; preds = %145, %43, %19
  ret void
}

declare dso_local i32 @NDIS_LOCK(%struct.ndis_softc*) #1

declare dso_local i32 @NDIS_INITIALIZED(%struct.ndis_softc*) #1

declare dso_local i32 @NDIS_UNLOCK(%struct.ndis_softc*) #1

declare dso_local i64 @MSCALL1(i32*, i32) #1

declare dso_local i32 @ndis_reset_nic(%struct.ndis_softc*) #1

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ndis_getstate_80211(%struct.ndis_softc*) #1

declare dso_local i32 @ieee80211_new_state(%struct.ieee80211vap*, i32, i32) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
