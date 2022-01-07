; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ieee80211com* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211com = type { i32 }
%struct.ifmediareq = type { i32, i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IEEE80211_S_SLEEP = common dso_local global i64 0, align 8
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_MODE_AUTO = common dso_local global i32 0, align 4
@IEEE80211_FIXED_RATE_NONE = common dso_local global i64 0, align 8
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@IFM_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %5, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 4
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %6, align 8
  %14 = load i32, i32* @IFM_AVALID, align 4
  %15 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %16 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_S_RUN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IEEE80211_S_SLEEP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @IFM_ACTIVE, align 4
  %30 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %31 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ieee80211_chan2mode(i32 %36)
  store i32 %37, i32* %7, align 4
  br label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %28
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @media_status(i64 %43, i32 %46)
  %48 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %49 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IEEE80211_FIXED_RATE_NONE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %40
  %61 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ieee80211_rate2media(%struct.ieee80211com* %61, i64 %69, i32 %70)
  %72 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %73 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %102

76:                                               ; preds = %40
  %77 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IEEE80211_M_STA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %84 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ieee80211_rate2media(%struct.ieee80211com* %83, i64 %88, i32 %89)
  %91 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %92 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %101

95:                                               ; preds = %76
  %96 = load i32, i32* @IFM_AUTO, align 4
  %97 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %98 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %82
  br label %102

102:                                              ; preds = %101, %60
  %103 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %104 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IFM_ACTIVE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %111 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %114 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %102
  ret void
}

declare dso_local i32 @ieee80211_chan2mode(i32) #1

declare dso_local i32 @media_status(i64, i32) #1

declare dso_local i32 @ieee80211_rate2media(%struct.ieee80211com*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
