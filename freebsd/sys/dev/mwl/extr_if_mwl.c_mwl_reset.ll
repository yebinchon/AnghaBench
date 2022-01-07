; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.mwl_softc* }
%struct.mwl_softc = type { i32, %struct.mwl_hal* }
%struct.mwl_hal = type { i32 }
%struct.mwl_hal_vap = type { i32 }
%struct.TYPE_2__ = type { %struct.mwl_hal_vap* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32)* @mwl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_reset(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl_hal_vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.mwl_softc*, align 8
  %9 = alloca %struct.mwl_hal*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %11 = call %struct.TYPE_2__* @MWL_VAP(%struct.ieee80211vap* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %12, align 8
  store %struct.mwl_hal_vap* %13, %struct.mwl_hal_vap** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %5, align 8
  %15 = icmp ne %struct.mwl_hal_vap* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 1
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  store %struct.ieee80211com* %19, %struct.ieee80211com** %7, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 0
  %22 = load %struct.mwl_softc*, %struct.mwl_softc** %21, align 8
  store %struct.mwl_softc* %22, %struct.mwl_softc** %8, align 8
  %23 = load %struct.mwl_softc*, %struct.mwl_softc** %8, align 8
  %24 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %23, i32 0, i32 1
  %25 = load %struct.mwl_hal*, %struct.mwl_hal** %24, align 8
  store %struct.mwl_hal* %25, %struct.mwl_hal** %9, align 8
  %26 = load %struct.mwl_hal*, %struct.mwl_hal** %9, align 8
  %27 = call i32 @mwl_hal_intrset(%struct.mwl_hal* %26, i32 0)
  %28 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mwl_reset_vap(%struct.ieee80211vap* %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mwl_hal*, %struct.mwl_hal** %9, align 8
  %34 = load %struct.mwl_softc*, %struct.mwl_softc** %8, align 8
  %35 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mwl_hal_intrset(%struct.mwl_hal* %33, i32 %36)
  br label %38

38:                                               ; preds = %16, %2
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_2__* @MWL_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @mwl_hal_intrset(%struct.mwl_hal*, i32) #1

declare dso_local i32 @mwl_reset_vap(%struct.ieee80211vap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
