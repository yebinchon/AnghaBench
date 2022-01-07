; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.rue_softc = type { i32* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RUE_IDR0 = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@RUE_TCR = common dso_local global i32 0, align 4
@RUE_TCR_CONFIG = common dso_local global i32 0, align 4
@RUE_RCR = common dso_local global i32 0, align 4
@RUE_RCR_CONFIG = common dso_local global i32 0, align 4
@RUE_RCR_AB = common dso_local global i32 0, align 4
@RUE_CR = common dso_local global i32 0, align 4
@RUE_CR_TE = common dso_local global i32 0, align 4
@RUE_CR_RE = common dso_local global i32 0, align 4
@RUE_CR_EP3CLREN = common dso_local global i32 0, align 4
@RUE_BULK_DT_WR = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @rue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rue_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.rue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.rue_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.rue_softc* %6, %struct.rue_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @RUE_LOCK_ASSERT(%struct.rue_softc* %9, i32 %10)
  %12 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %13 = call i32 @rue_reset(%struct.rue_softc* %12)
  %14 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %15 = load i32, i32* @RUE_IDR0, align 4
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = call i32 @IF_LLADDR(%struct.ifnet* %16)
  %18 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %19 = call i32 @rue_write_mem(%struct.rue_softc* %14, i32 %15, i32 %17, i32 %18)
  %20 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %21 = call i32 @rue_stop(%struct.usb_ether* %20)
  %22 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %23 = load i32, i32* @RUE_TCR, align 4
  %24 = load i32, i32* @RUE_TCR_CONFIG, align 4
  %25 = call i32 @rue_csr_write_1(%struct.rue_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %27 = load i32, i32* @RUE_RCR, align 4
  %28 = load i32, i32* @RUE_RCR_CONFIG, align 4
  %29 = load i32, i32* @RUE_RCR_AB, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @rue_csr_write_2(%struct.rue_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %33 = call i32 @rue_setpromisc(%struct.usb_ether* %32)
  %34 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %35 = call i32 @rue_setmulti(%struct.usb_ether* %34)
  %36 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %37 = load i32, i32* @RUE_CR, align 4
  %38 = load i32, i32* @RUE_CR_TE, align 4
  %39 = load i32, i32* @RUE_CR_RE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RUE_CR_EP3CLREN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @rue_csr_write_1(%struct.rue_softc* %36, i32 %37, i32 %42)
  %44 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @RUE_BULK_DT_WR, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usbd_xfer_set_stall(i32 %49)
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %57 = call i32 @rue_start(%struct.usb_ether* %56)
  ret void
}

declare dso_local %struct.rue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @RUE_LOCK_ASSERT(%struct.rue_softc*, i32) #1

declare dso_local i32 @rue_reset(%struct.rue_softc*) #1

declare dso_local i32 @rue_write_mem(%struct.rue_softc*, i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @rue_stop(%struct.usb_ether*) #1

declare dso_local i32 @rue_csr_write_1(%struct.rue_softc*, i32, i32) #1

declare dso_local i32 @rue_csr_write_2(%struct.rue_softc*, i32, i32) #1

declare dso_local i32 @rue_setpromisc(%struct.usb_ether*) #1

declare dso_local i32 @rue_setmulti(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @rue_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
