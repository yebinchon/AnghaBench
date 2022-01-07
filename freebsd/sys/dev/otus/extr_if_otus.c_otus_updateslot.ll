; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_updateslot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_updateslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@AR_MAC_REG_SLOT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otus_softc*)* @otus_updateslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otus_updateslot(%struct.otus_softc* %0) #0 {
  %2 = alloca %struct.otus_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %2, align 8
  %5 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %6 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %5, i32 0, i32 0
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %8 = call i32 @OTUS_LOCK_ASSERT(%struct.otus_softc* %7)
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = call i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %12 = load i32, i32* @AR_MAC_REG_SLOT_TIME, align 4
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 10
  %15 = call i32 @otus_write(%struct.otus_softc* %11, i32 %12, i32 %14)
  %16 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %17 = call i32 @otus_write_barrier(%struct.otus_softc* %16)
  ret void
}

declare dso_local i32 @OTUS_LOCK_ASSERT(%struct.otus_softc*) #1

declare dso_local i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com*) #1

declare dso_local i32 @otus_write(%struct.otus_softc*, i32, i32) #1

declare dso_local i32 @otus_write_barrier(%struct.otus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
