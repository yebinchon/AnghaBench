; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@BWI_F_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*)* @bwi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_init(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %4 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %4, i32 0, i32 1
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %7 = call i32 @BWI_LOCK(%struct.bwi_softc* %6)
  %8 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %9 = call i32 @bwi_init_statechg(%struct.bwi_softc* %8, i32 1)
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %11 = call i32 @BWI_UNLOCK(%struct.bwi_softc* %10)
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BWI_F_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %20 = call i32 @ieee80211_start_all(%struct.ieee80211com* %19)
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @BWI_LOCK(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_init_statechg(%struct.bwi_softc*, i32) #1

declare dso_local i32 @BWI_UNLOCK(%struct.bwi_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
