; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.wi_softc* @device_get_softc(i32 %5)
  store %struct.wi_softc* %6, %struct.wi_softc** %3, align 8
  %7 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %7, i32 0, i32 5
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %10 = call i32 @WI_LOCK(%struct.wi_softc* %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @bus_child_present(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %21 = call i32 @wi_stop(%struct.wi_softc* %20, i32 0)
  %22 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %23 = call i32 @WI_UNLOCK(%struct.wi_softc* %22)
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %25 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %24)
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bus_teardown_intr(i32 %26, i32 %29, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @wi_free(i32 %34)
  %36 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %36, i32 0, i32 2
  %38 = call i32 @mbufq_drain(i32* %37)
  %39 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %40 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %39, i32 0, i32 1
  %41 = call i32 @mtx_destroy(i32* %40)
  ret i32 0
}

declare dso_local %struct.wi_softc* @device_get_softc(i32) #1

declare dso_local i32 @WI_LOCK(%struct.wi_softc*) #1

declare dso_local i32 @bus_child_present(i32) #1

declare dso_local i32 @wi_stop(%struct.wi_softc*, i32) #1

declare dso_local i32 @WI_UNLOCK(%struct.wi_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @wi_free(i32) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
