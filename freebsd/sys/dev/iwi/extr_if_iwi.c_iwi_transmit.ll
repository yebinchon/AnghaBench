; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.iwi_softc* }
%struct.iwi_softc = type { i32, i32 }
%struct.mbuf = type { i32 }

@IWI_LOCK_DECL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, %struct.mbuf*)* @iwi_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_transmit(%struct.ieee80211com* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.iwi_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %9, align 8
  store %struct.iwi_softc* %10, %struct.iwi_softc** %6, align 8
  %11 = load i32, i32* @IWI_LOCK_DECL, align 4
  %12 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %13 = call i32 @IWI_LOCK(%struct.iwi_softc* %12)
  %14 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %15 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %20 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %19)
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %24 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %23, i32 0, i32 0
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = call i32 @mbufq_enqueue(i32* %24, %struct.mbuf* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %31 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %22
  %34 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %35 = call i32 @iwi_start(%struct.iwi_softc* %34)
  %36 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %37 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %29, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @IWI_LOCK(%struct.iwi_softc*) #1

declare dso_local i32 @IWI_UNLOCK(%struct.iwi_softc*) #1

declare dso_local i32 @mbufq_enqueue(i32*, %struct.mbuf*) #1

declare dso_local i32 @iwi_start(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
