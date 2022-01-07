; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i32, %struct.rum_softc* }
%struct.rum_softc = type { i64 }
%struct.ieee80211vap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @rum_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 2
  %7 = load %struct.rum_softc*, %struct.rum_softc** %6, align 8
  store %struct.rum_softc* %7, %struct.rum_softc** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 1
  %10 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %9)
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %4, align 8
  %11 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %12 = call i32 @RUM_LOCK(%struct.rum_softc* %11)
  %13 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %14 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %19 = call i32 @RUM_UNLOCK(%struct.rum_softc* %18)
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %22 = call i32 @RUM_UNLOCK(%struct.rum_softc* %21)
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %29 = call i64 @rum_init(%struct.rum_softc* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %33 = call i32 @ieee80211_start_all(%struct.ieee80211com* %32)
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %36 = call i32 @ieee80211_stop(%struct.ieee80211vap* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %41

38:                                               ; preds = %20
  %39 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %40 = call i32 @rum_stop(%struct.rum_softc* %39)
  br label %41

41:                                               ; preds = %17, %38, %37
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

declare dso_local i64 @rum_init(%struct.rum_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_stop(%struct.ieee80211vap*) #1

declare dso_local i32 @rum_stop(%struct.rum_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
