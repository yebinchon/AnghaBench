; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.malo_softc* }
%struct.malo_softc = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @malo_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malo_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.malo_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.malo_softc*, %struct.malo_softc** %6, align 8
  store %struct.malo_softc* %7, %struct.malo_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %9 = call i32 @MALO_LOCK(%struct.malo_softc* %8)
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %16 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %21 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %26 = call i32 @malo_init(%struct.malo_softc* %25)
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %19, %14
  %28 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %29 = call i32 @malo_mode_init(%struct.malo_softc* %28)
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %32 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %37 = call i32 @malo_stop(%struct.malo_softc* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %41 = call i32 @MALO_UNLOCK(%struct.malo_softc* %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %46 = call i32 @ieee80211_start_all(%struct.ieee80211com* %45)
  br label %47

47:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @MALO_LOCK(%struct.malo_softc*) #1

declare dso_local i32 @malo_init(%struct.malo_softc*) #1

declare dso_local i32 @malo_mode_init(%struct.malo_softc*) #1

declare dso_local i32 @malo_stop(%struct.malo_softc*) #1

declare dso_local i32 @MALO_UNLOCK(%struct.malo_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
