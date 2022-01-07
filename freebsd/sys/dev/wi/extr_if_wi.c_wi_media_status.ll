; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__*, %struct.ieee80211com* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211com = type { %struct.wi_softc* }
%struct.wi_softc = type { i64, i64 }
%struct.ifmediareq = type { i32 }

@WI_RID_CUR_TX_RATE = common dso_local global i32 0, align 4
@WI_LUCENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @wi_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wi_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.wi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %12, align 8
  store %struct.ieee80211vap* %13, %struct.ieee80211vap** %5, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 1
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %15, align 8
  store %struct.ieee80211com* %16, %struct.ieee80211com** %6, align 8
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 0
  %19 = load %struct.wi_softc*, %struct.wi_softc** %18, align 8
  store %struct.wi_softc* %19, %struct.wi_softc** %7, align 8
  store i32 4, i32* %10, align 4
  %20 = load %struct.wi_softc*, %struct.wi_softc** %7, align 8
  %21 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %2
  %25 = load %struct.wi_softc*, %struct.wi_softc** %7, align 8
  %26 = load i32, i32* @WI_RID_CUR_TX_RATE, align 4
  %27 = call i64 @wi_read_rid(%struct.wi_softc* %25, i32 %26, i32* %8, i32* %10)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @le16toh(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* %9, align 4
  %38 = load %struct.wi_softc*, %struct.wi_softc** %7, align 8
  %39 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WI_LUCENT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 11, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %58

48:                                               ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 11, i32* %9, align 4
  br label %57

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 22, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %29, %24, %2
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %67 = call i32 @ieee80211_media_status(%struct.ifnet* %65, %struct.ifmediareq* %66)
  ret void
}

declare dso_local i64 @wi_read_rid(%struct.wi_softc*, i32, i32*, i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @ieee80211_media_status(%struct.ifnet*, %struct.ifmediareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
