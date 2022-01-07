; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_del_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_del_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ndis_softc* }
%struct.ndis_softc = type { i32 }
%struct.ieee80211_key = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@OID_802_11_REMOVE_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndis_del_key(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_key*, align 8
  %6 = alloca %struct.ndis_softc*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.ndis_softc*, %struct.ndis_softc** %13, align 8
  store %struct.ndis_softc* %14, %struct.ndis_softc** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = bitcast %struct.TYPE_7__* %7 to i8*
  %16 = call i32 @bzero(i8* %15, i32 12)
  store i32 12, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %31 = call i32 @bcopy(i32 %27, i32 %29, i32 %30)
  %32 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %33 = load i32, i32* @OID_802_11_REMOVE_KEY, align 4
  %34 = call i32 @ndis_set_info(%struct.ndis_softc* %32, i32 %33, %struct.TYPE_7__* %7, i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

38:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @ndis_set_info(%struct.ndis_softc*, i32, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
