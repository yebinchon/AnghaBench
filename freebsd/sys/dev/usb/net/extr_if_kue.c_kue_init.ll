; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.kue_softc = type { i32* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@KUE_CTL_WRITE = common dso_local global i32 0, align 4
@KUE_CMD_SET_MAC = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@KUE_CMD_SET_URB_SIZE = common dso_local global i32 0, align 4
@KUE_BULK_DT_WR = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@KUE_CMD_SET_SOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @kue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kue_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.kue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.kue_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.kue_softc* %6, %struct.kue_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @KUE_LOCK_ASSERT(%struct.kue_softc* %9, i32 %10)
  %12 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %13 = load i32, i32* @KUE_CTL_WRITE, align 4
  %14 = load i32, i32* @KUE_CMD_SET_MAC, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = call i32 @IF_LLADDR(%struct.ifnet* %15)
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = call i32 @kue_ctl(%struct.kue_softc* %12, i32 %13, i32 %14, i32 0, i32 %16, i32 %17)
  %19 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %20 = load i32, i32* @KUE_CMD_SET_URB_SIZE, align 4
  %21 = call i32 @kue_setword(%struct.kue_softc* %19, i32 %20, i32 64)
  %22 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %23 = call i32 @kue_setpromisc(%struct.usb_ether* %22)
  %24 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %25 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @KUE_BULK_DT_WR, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usbd_xfer_set_stall(i32 %29)
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %37 = call i32 @kue_start(%struct.usb_ether* %36)
  ret void
}

declare dso_local %struct.kue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @KUE_LOCK_ASSERT(%struct.kue_softc*, i32) #1

declare dso_local i32 @kue_ctl(%struct.kue_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @kue_setword(%struct.kue_softc*, i32, i32) #1

declare dso_local i32 @kue_setpromisc(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @kue_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
