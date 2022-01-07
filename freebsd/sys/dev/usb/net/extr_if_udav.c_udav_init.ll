; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.udav_softc* }
%struct.udav_softc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UDAV_PAR = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@UDAV_NCR = common dso_local global i32 0, align 4
@UDAV_NCR_LBK0 = common dso_local global i32 0, align 4
@UDAV_NCR_LBK1 = common dso_local global i32 0, align 4
@UDAV_RCR = common dso_local global i32 0, align 4
@UDAV_RCR_DIS_LONG = common dso_local global i32 0, align 4
@UDAV_RCR_DIS_CRC = common dso_local global i32 0, align 4
@UDAV_RCR_RXEN = common dso_local global i32 0, align 4
@UDAV_GPCR = common dso_local global i32 0, align 4
@UDAV_GPCR_GEP_CNTL0 = common dso_local global i32 0, align 4
@UDAV_GPR = common dso_local global i32 0, align 4
@UDAV_GPR_GEPIO0 = common dso_local global i32 0, align 4
@UDAV_BULK_DT_WR = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @udav_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udav_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.udav_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %5, i32 0, i32 0
  %7 = load %struct.udav_softc*, %struct.udav_softc** %6, align 8
  store %struct.udav_softc* %7, %struct.udav_softc** %3, align 8
  %8 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %9 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %8, i32 0, i32 1
  %10 = call %struct.ifnet* @uether_getifp(i32* %9)
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @UDAV_LOCK_ASSERT(%struct.udav_softc* %11, i32 %12)
  %14 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %15 = call i32 @udav_stop(%struct.usb_ether* %14)
  %16 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %17 = load i32, i32* @UDAV_PAR, align 4
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = call i32 @IF_LLADDR(%struct.ifnet* %18)
  %20 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %21 = call i32 @udav_csr_write(%struct.udav_softc* %16, i32 %17, i32 %19, i32 %20)
  %22 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %23 = load i32, i32* @UDAV_NCR, align 4
  %24 = load i32, i32* @UDAV_NCR_LBK0, align 4
  %25 = load i32, i32* @UDAV_NCR_LBK1, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @UDAV_CLRBIT(%struct.udav_softc* %22, i32 %23, i32 %26)
  %28 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %29 = load i32, i32* @UDAV_RCR, align 4
  %30 = load i32, i32* @UDAV_RCR_DIS_LONG, align 4
  %31 = load i32, i32* @UDAV_RCR_DIS_CRC, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @UDAV_SETBIT(%struct.udav_softc* %28, i32 %29, i32 %32)
  %34 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %35 = call i32 @udav_setpromisc(%struct.usb_ether* %34)
  %36 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %37 = load i32, i32* @UDAV_RCR, align 4
  %38 = load i32, i32* @UDAV_RCR_RXEN, align 4
  %39 = call i32 @UDAV_SETBIT(%struct.udav_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %41 = load i32, i32* @UDAV_GPCR, align 4
  %42 = load i32, i32* @UDAV_GPCR_GEP_CNTL0, align 4
  %43 = call i32 @UDAV_SETBIT(%struct.udav_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %45 = load i32, i32* @UDAV_GPR, align 4
  %46 = load i32, i32* @UDAV_GPR_GEPIO0, align 4
  %47 = call i32 @UDAV_CLRBIT(%struct.udav_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %49 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @UDAV_BULK_DT_WR, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usbd_xfer_set_stall(i32 %53)
  %55 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %61 = call i32 @udav_start(%struct.usb_ether* %60)
  ret void
}

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @UDAV_LOCK_ASSERT(%struct.udav_softc*, i32) #1

declare dso_local i32 @udav_stop(%struct.usb_ether*) #1

declare dso_local i32 @udav_csr_write(%struct.udav_softc*, i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @UDAV_CLRBIT(%struct.udav_softc*, i32, i32) #1

declare dso_local i32 @UDAV_SETBIT(%struct.udav_softc*, i32, i32) #1

declare dso_local i32 @udav_setpromisc(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @udav_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
