; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i32, %struct.iwn_softc* }
%struct.iwn_softc = type { i32, i32 }
%struct.ieee80211vap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @iwn_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 2
  %8 = load %struct.iwn_softc*, %struct.iwn_softc** %7, align 8
  store %struct.iwn_softc* %8, %struct.iwn_softc** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %15 = call i32 @iwn_init(%struct.iwn_softc* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %27 [
    i32 0, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %13
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %19 = call i32 @ieee80211_start_all(%struct.ieee80211com* %18)
  br label %37

20:                                               ; preds = %13
  %21 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %22 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %24, i32 0, i32 0
  %26 = call i32 @taskqueue_enqueue(i32 %23, i32* %25)
  br label %37

27:                                               ; preds = %13
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 1
  %30 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %29)
  store %struct.ieee80211vap* %30, %struct.ieee80211vap** %4, align 8
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %32 = icmp ne %struct.ieee80211vap* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %35 = call i32 @ieee80211_stop(%struct.ieee80211vap* %34)
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36, %20, %17
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %40 = call i32 @iwn_stop(%struct.iwn_softc* %39)
  br label %41

41:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @iwn_init(%struct.iwn_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ieee80211_stop(%struct.ieee80211vap*) #1

declare dso_local i32 @iwn_stop(%struct.iwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
