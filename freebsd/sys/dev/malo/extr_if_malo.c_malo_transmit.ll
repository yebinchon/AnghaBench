; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.malo_softc* }
%struct.malo_softc = type { i32, i32 }
%struct.mbuf = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, %struct.mbuf*)* @malo_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_transmit(%struct.ieee80211com* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.malo_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  store %struct.malo_softc* %10, %struct.malo_softc** %6, align 8
  %11 = load %struct.malo_softc*, %struct.malo_softc** %6, align 8
  %12 = call i32 @MALO_LOCK(%struct.malo_softc* %11)
  %13 = load %struct.malo_softc*, %struct.malo_softc** %6, align 8
  %14 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.malo_softc*, %struct.malo_softc** %6, align 8
  %19 = call i32 @MALO_UNLOCK(%struct.malo_softc* %18)
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.malo_softc*, %struct.malo_softc** %6, align 8
  %23 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %22, i32 0, i32 0
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = call i32 @mbufq_enqueue(i32* %23, %struct.mbuf* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.malo_softc*, %struct.malo_softc** %6, align 8
  %30 = call i32 @MALO_UNLOCK(%struct.malo_softc* %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.malo_softc*, %struct.malo_softc** %6, align 8
  %34 = call i32 @malo_start(%struct.malo_softc* %33)
  %35 = load %struct.malo_softc*, %struct.malo_softc** %6, align 8
  %36 = call i32 @MALO_UNLOCK(%struct.malo_softc* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %28, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @MALO_LOCK(%struct.malo_softc*) #1

declare dso_local i32 @MALO_UNLOCK(%struct.malo_softc*) #1

declare dso_local i32 @mbufq_enqueue(i32*, %struct.mbuf*) #1

declare dso_local i32 @malo_start(%struct.malo_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
