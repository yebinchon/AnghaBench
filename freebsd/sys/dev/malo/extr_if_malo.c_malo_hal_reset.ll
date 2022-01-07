; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_hal_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_hal_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i32, i32, %struct.malo_hal*, %struct.ieee80211com }
%struct.malo_hal = type { i32 }
%struct.ieee80211com = type { i32 }

@malo_hal_reset.first = internal global i32 0, align 4
@MHA_ANTENNATYPE_RX = common dso_local global i32 0, align 4
@MHA_ANTENNATYPE_TX = common dso_local global i32 0, align 4
@MHP_AUTO_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malo_softc*)* @malo_hal_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_hal_reset(%struct.malo_softc* %0) #0 {
  %2 = alloca %struct.malo_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.malo_hal*, align 8
  store %struct.malo_softc* %0, %struct.malo_softc** %2, align 8
  %5 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %6 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %5, i32 0, i32 3
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %8 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %7, i32 0, i32 2
  %9 = load %struct.malo_hal*, %struct.malo_hal** %8, align 8
  store %struct.malo_hal* %9, %struct.malo_hal** %4, align 8
  %10 = load i32, i32* @malo_hal_reset.first, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %14 = call i32 @malo_hal_set_rxtxdma(%struct.malo_softc* %13)
  store i32 1, i32* @malo_hal_reset.first, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %17 = load i32, i32* @MHA_ANTENNATYPE_RX, align 4
  %18 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %19 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @malo_hal_setantenna(%struct.malo_hal* %16, i32 %17, i32 %20)
  %22 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %23 = load i32, i32* @MHA_ANTENNATYPE_TX, align 4
  %24 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %25 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @malo_hal_setantenna(%struct.malo_hal* %22, i32 %23, i32 %26)
  %28 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %29 = load i32, i32* @MHP_AUTO_PREAMBLE, align 4
  %30 = call i32 @malo_hal_setradio(%struct.malo_hal* %28, i32 1, i32 %29)
  %31 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @malo_chan_set(%struct.malo_softc* %31, i32 %34)
  ret i32 1
}

declare dso_local i32 @malo_hal_set_rxtxdma(%struct.malo_softc*) #1

declare dso_local i32 @malo_hal_setantenna(%struct.malo_hal*, i32, i32) #1

declare dso_local i32 @malo_hal_setradio(%struct.malo_hal*, i32, i32) #1

declare dso_local i32 @malo_chan_set(%struct.malo_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
