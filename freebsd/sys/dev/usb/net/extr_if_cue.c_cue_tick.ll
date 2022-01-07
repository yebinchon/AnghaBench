; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.cue_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@CUE_TX_SINGLECOLL = common dso_local global i32 0, align 4
@CUE_TX_MULTICOLL = common dso_local global i32 0, align 4
@CUE_TX_EXCESSCOLL = common dso_local global i32 0, align 4
@CUE_RX_FRAMEERR = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @cue_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cue_tick(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.cue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.cue_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.cue_softc* %6, %struct.cue_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @CUE_LOCK_ASSERT(%struct.cue_softc* %9, i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %14 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %15 = load i32, i32* @CUE_TX_SINGLECOLL, align 4
  %16 = call i32 @cue_csr_read_2(%struct.cue_softc* %14, i32 %15)
  %17 = call i32 @if_inc_counter(%struct.ifnet* %12, i32 %13, i32 %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %20 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %21 = load i32, i32* @CUE_TX_MULTICOLL, align 4
  %22 = call i32 @cue_csr_read_2(%struct.cue_softc* %20, i32 %21)
  %23 = call i32 @if_inc_counter(%struct.ifnet* %18, i32 %19, i32 %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %26 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %27 = load i32, i32* @CUE_TX_EXCESSCOLL, align 4
  %28 = call i32 @cue_csr_read_2(%struct.cue_softc* %26, i32 %27)
  %29 = call i32 @if_inc_counter(%struct.ifnet* %24, i32 %25, i32 %28)
  %30 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %31 = load i32, i32* @CUE_RX_FRAMEERR, align 4
  %32 = call i32 @cue_csr_read_2(%struct.cue_softc* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %37 = call i32 @if_inc_counter(%struct.ifnet* %35, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %34, %1
  ret void
}

declare dso_local %struct.cue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @CUE_LOCK_ASSERT(%struct.cue_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @cue_csr_read_2(%struct.cue_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
