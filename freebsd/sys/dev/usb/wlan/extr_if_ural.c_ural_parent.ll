; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.ural_softc* }
%struct.ural_softc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @ural_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ural_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  store %struct.ural_softc* %7, %struct.ural_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %9 = call i32 @RAL_LOCK(%struct.ural_softc* %8)
  %10 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %16 = call i32 @RAL_UNLOCK(%struct.ural_softc* %15)
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %29 = call i32 @ural_init(%struct.ural_softc* %28)
  store i32 1, i32* %4, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %32 = call i32 @ural_setpromisc(%struct.ural_softc* %31)
  br label %33

33:                                               ; preds = %30, %27
  br label %43

34:                                               ; preds = %17
  %35 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %41 = call i32 @ural_stop(%struct.ural_softc* %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %45 = call i32 @RAL_UNLOCK(%struct.ural_softc* %44)
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %50 = call i32 @ieee80211_start_all(%struct.ieee80211com* %49)
  br label %51

51:                                               ; preds = %14, %48, %43
  ret void
}

declare dso_local i32 @RAL_LOCK(%struct.ural_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.ural_softc*) #1

declare dso_local i32 @ural_init(%struct.ural_softc*) #1

declare dso_local i32 @ural_setpromisc(%struct.ural_softc*) #1

declare dso_local i32 @ural_stop(%struct.ural_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
