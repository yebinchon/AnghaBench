; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.mos_softc = type { i64, i32* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MOS_ENDPT_TX = common dso_local global i64 0, align 8
@MOS_ENDPT_RX = common dso_local global i64 0, align 8
@MOS_ENDPT_INTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @mos_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_stop(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.mos_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.mos_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.mos_softc* %6, %struct.mos_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %10 = call i32 @mos_reset(%struct.mos_softc* %9)
  %11 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @MOS_LOCK_ASSERT(%struct.mos_softc* %11, i32 %12)
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @MOS_ENDPT_TX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usbd_transfer_stop(i32 %25)
  %27 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @MOS_ENDPT_RX, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usbd_transfer_stop(i32 %32)
  %34 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @MOS_ENDPT_INTR, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usbd_transfer_stop(i32 %39)
  %41 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local %struct.mos_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @mos_reset(%struct.mos_softc*) #1

declare dso_local i32 @MOS_LOCK_ASSERT(%struct.mos_softc*, i32) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
