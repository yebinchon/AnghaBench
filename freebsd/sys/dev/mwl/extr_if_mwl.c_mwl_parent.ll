; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.mwl_softc* }
%struct.mwl_softc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @mwl_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.mwl_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.mwl_softc*, %struct.mwl_softc** %6, align 8
  store %struct.mwl_softc* %7, %struct.mwl_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %9 = call i32 @MWL_LOCK(%struct.mwl_softc* %8)
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %21 = call i32 @mwl_mode_init(%struct.mwl_softc* %20)
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %29 = call i32 @mwl_init(%struct.mwl_softc* %28)
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %19
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %34 = call i32 @mwl_stop(%struct.mwl_softc* %33)
  br label %35

35:                                               ; preds = %32, %31
  %36 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %37 = call i32 @MWL_UNLOCK(%struct.mwl_softc* %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %42 = call i32 @ieee80211_start_all(%struct.ieee80211com* %41)
  br label %43

43:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @MWL_LOCK(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_mode_init(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_init(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_stop(%struct.mwl_softc*) #1

declare dso_local i32 @MWL_UNLOCK(%struct.mwl_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
