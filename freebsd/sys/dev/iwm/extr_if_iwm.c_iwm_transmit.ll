; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.iwm_softc* }
%struct.iwm_softc = type { i32, i32 }
%struct.mbuf = type { i32 }

@IWM_FLAG_HW_INITED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, %struct.mbuf*)* @iwm_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_transmit(%struct.ieee80211com* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.iwm_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = load %struct.iwm_softc*, %struct.iwm_softc** %9, align 8
  store %struct.iwm_softc* %10, %struct.iwm_softc** %6, align 8
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %12 = call i32 @IWM_LOCK(%struct.iwm_softc* %11)
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %14 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IWM_FLAG_HW_INITED, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %21 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %20)
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %25 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %24, i32 0, i32 1
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %27 = call i32 @mbufq_enqueue(i32* %25, %struct.mbuf* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %32 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %23
  %35 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %36 = call i32 @iwm_start(%struct.iwm_softc* %35)
  %37 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %38 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %30, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @IWM_LOCK(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_UNLOCK(%struct.iwm_softc*) #1

declare dso_local i32 @mbufq_enqueue(i32*, %struct.mbuf*) #1

declare dso_local i32 @iwm_start(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
