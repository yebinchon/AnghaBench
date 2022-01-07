; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.iwm_softc* }
%struct.iwm_softc = type { i32 }

@IWM_FLAG_HW_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @iwm_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  store %struct.iwm_softc* %7, %struct.iwm_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %9 = call i32 @IWM_LOCK(%struct.iwm_softc* %8)
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %16 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IWM_FLAG_HW_INITED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %23 = call i32 @iwm_init(%struct.iwm_softc* %22)
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %14
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %27 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IWM_FLAG_HW_INITED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %34 = call i32 @iwm_stop(%struct.iwm_softc* %33)
  br label %35

35:                                               ; preds = %32, %25
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %38 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %43 = call i32 @ieee80211_start_all(%struct.ieee80211com* %42)
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @IWM_LOCK(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_init(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_stop(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_UNLOCK(%struct.iwm_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
