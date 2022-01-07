; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ndis_softc* }
%struct.ndis_softc = type { i32 }
%struct.ifmediareq = type { i32 }

@OID_GEN_LINK_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @ndis_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndis_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ndis_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %5, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.ndis_softc*, %struct.ndis_softc** %15, align 8
  store %struct.ndis_softc* %16, %struct.ndis_softc** %6, align 8
  %17 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %18 = call i32 @NDIS_INITIALIZED(%struct.ndis_softc* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %37

21:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  %22 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %23 = load i32, i32* @OID_GEN_LINK_SPEED, align 4
  %24 = call i64 @ndis_get_info(%struct.ndis_softc* %22, i32 %23, i32* %7, i32* %8)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %27, 5000
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %36 = call i32 @ieee80211_media_status(%struct.ifnet* %34, %struct.ifmediareq* %35)
  br label %37

37:                                               ; preds = %33, %20
  ret void
}

declare dso_local i32 @NDIS_INITIALIZED(%struct.ndis_softc*) #1

declare dso_local i64 @ndis_get_info(%struct.ndis_softc*, i32, i32*, i32*) #1

declare dso_local i32 @ieee80211_media_status(%struct.ifnet*, %struct.ifmediareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
