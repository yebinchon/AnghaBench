; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_alloc_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_alloc_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }
%struct.ieee80211vap = type { %struct.ieee80211_node* }
%struct.ieee80211_node = type { i64 }
%struct.rum_vap = type { %struct.mbuf* }
%struct.mbuf = type { i32 }

@IEEE80211_CHAN_ANYC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*, %struct.ieee80211vap*)* @rum_alloc_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_alloc_beacon(%struct.rum_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.rum_vap*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %4, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %5, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %10 = call %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap* %9)
  store %struct.rum_vap* %10, %struct.rum_vap** %6, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  store %struct.ieee80211_node* %13, %struct.ieee80211_node** %7, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IEEE80211_CHAN_ANYC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %23 = call %struct.mbuf* @ieee80211_beacon_alloc(%struct.ieee80211_node* %22)
  store %struct.mbuf* %23, %struct.mbuf** %8, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %25 = icmp eq %struct.mbuf* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %21
  %29 = load %struct.rum_vap*, %struct.rum_vap** %6, align 8
  %30 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %29, i32 0, i32 0
  %31 = load %struct.mbuf*, %struct.mbuf** %30, align 8
  %32 = icmp ne %struct.mbuf* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.rum_vap*, %struct.rum_vap** %6, align 8
  %35 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %34, i32 0, i32 0
  %36 = load %struct.mbuf*, %struct.mbuf** %35, align 8
  %37 = call i32 @m_freem(%struct.mbuf* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = load %struct.rum_vap*, %struct.rum_vap** %6, align 8
  %41 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %40, i32 0, i32 0
  store %struct.mbuf* %39, %struct.mbuf** %41, align 8
  %42 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %44 = call i32 @rum_set_beacon(%struct.rum_softc* %42, %struct.ieee80211vap* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %26, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap*) #1

declare dso_local %struct.mbuf* @ieee80211_beacon_alloc(%struct.ieee80211_node*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @rum_set_beacon(%struct.rum_softc*, %struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
