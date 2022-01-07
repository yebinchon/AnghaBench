; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.iwi_softc* }
%struct.iwi_softc = type { i64 }

@IWI_LOCK_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @iwi_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  store %struct.iwi_softc* %7, %struct.iwi_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @IWI_LOCK_DECL, align 4
  %9 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %10 = call i32 @IWI_LOCK(%struct.iwi_softc* %9)
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %22 = call i32 @iwi_init_locked(%struct.iwi_softc* %21)
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %15
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %31 = call i32 @iwi_stop_locked(%struct.iwi_softc* %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %35 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %40 = call i32 @ieee80211_start_all(%struct.ieee80211com* %39)
  br label %41

41:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @IWI_LOCK(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_init_locked(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_stop_locked(%struct.iwi_softc*) #1

declare dso_local i32 @IWI_UNLOCK(%struct.iwi_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
