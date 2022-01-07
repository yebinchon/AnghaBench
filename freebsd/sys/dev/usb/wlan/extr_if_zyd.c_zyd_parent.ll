; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.zyd_softc* }
%struct.zyd_softc = type { i32 }

@ZYD_FLAG_DETACHED = common dso_local global i32 0, align 4
@ZYD_FLAG_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @zyd_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zyd_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.zyd_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.zyd_softc*, %struct.zyd_softc** %6, align 8
  store %struct.zyd_softc* %7, %struct.zyd_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %9 = call i32 @ZYD_LOCK(%struct.zyd_softc* %8)
  %10 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %11 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ZYD_FLAG_DETACHED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %18 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %17)
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ZYD_FLAG_RUNNING, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %33 = call i32 @zyd_init_locked(%struct.zyd_softc* %32)
  store i32 1, i32* %4, align 4
  br label %37

34:                                               ; preds = %24
  %35 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %36 = call i32 @zyd_set_multi(%struct.zyd_softc* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %49

38:                                               ; preds = %19
  %39 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %40 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ZYD_FLAG_RUNNING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %47 = call i32 @zyd_stop(%struct.zyd_softc* %46)
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %51 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %50)
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %56 = call i32 @ieee80211_start_all(%struct.ieee80211com* %55)
  br label %57

57:                                               ; preds = %16, %54, %49
  ret void
}

declare dso_local i32 @ZYD_LOCK(%struct.zyd_softc*) #1

declare dso_local i32 @ZYD_UNLOCK(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_init_locked(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_set_multi(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_stop(%struct.zyd_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
