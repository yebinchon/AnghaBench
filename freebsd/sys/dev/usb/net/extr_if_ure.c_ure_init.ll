; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.ure_softc = type { i32* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@URE_PLA_CRWECR = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_CRWECR_CONFIG = common dso_local global i32 0, align 4
@URE_PLA_IDR = common dso_local global i32 0, align 4
@URE_BYTE_EN_SIX_BYTES = common dso_local global i32 0, align 4
@URE_CRWECR_NORAML = common dso_local global i32 0, align 4
@URE_PLA_FMC = common dso_local global i32 0, align 4
@URE_FMC_FCR_MCU_EN = common dso_local global i32 0, align 4
@URE_PLA_CR = common dso_local global i32 0, align 4
@URE_CR_RE = common dso_local global i32 0, align 4
@URE_CR_TE = common dso_local global i32 0, align 4
@URE_PLA_MISC_1 = common dso_local global i32 0, align 4
@URE_RXDY_GATED_EN = common dso_local global i32 0, align 4
@URE_BULK_DT_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @ure_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.ure_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.ure_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.ure_softc* %6, %struct.ure_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @URE_LOCK_ASSERT(%struct.ure_softc* %9, i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %102

19:                                               ; preds = %1
  %20 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %21 = call i32 @ure_stop(%struct.usb_ether* %20)
  %22 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %23 = call i32 @ure_reset(%struct.ure_softc* %22)
  %24 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %25 = load i32, i32* @URE_PLA_CRWECR, align 4
  %26 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %27 = load i32, i32* @URE_CRWECR_CONFIG, align 4
  %28 = call i32 @ure_write_1(%struct.ure_softc* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %30 = load i32, i32* @URE_PLA_IDR, align 4
  %31 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %32 = load i32, i32* @URE_BYTE_EN_SIX_BYTES, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = call i32 @IF_LLADDR(%struct.ifnet* %34)
  %36 = call i32 @ure_write_mem(%struct.ure_softc* %29, i32 %30, i32 %33, i32 %35, i32 8)
  %37 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %38 = load i32, i32* @URE_PLA_CRWECR, align 4
  %39 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %40 = load i32, i32* @URE_CRWECR_NORAML, align 4
  %41 = call i32 @ure_write_1(%struct.ure_softc* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %43 = load i32, i32* @URE_PLA_FMC, align 4
  %44 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %45 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %46 = load i32, i32* @URE_PLA_FMC, align 4
  %47 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %48 = call i32 @ure_read_2(%struct.ure_softc* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @URE_FMC_FCR_MCU_EN, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @ure_write_2(%struct.ure_softc* %42, i32 %43, i32 %44, i32 %51)
  %53 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %54 = load i32, i32* @URE_PLA_FMC, align 4
  %55 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %56 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %57 = load i32, i32* @URE_PLA_FMC, align 4
  %58 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %59 = call i32 @ure_read_2(%struct.ure_softc* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @URE_FMC_FCR_MCU_EN, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @ure_write_2(%struct.ure_softc* %53, i32 %54, i32 %55, i32 %61)
  %63 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %64 = load i32, i32* @URE_PLA_CR, align 4
  %65 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %66 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %67 = load i32, i32* @URE_PLA_CR, align 4
  %68 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %69 = call i32 @ure_read_1(%struct.ure_softc* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @URE_CR_RE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @URE_CR_TE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @ure_write_1(%struct.ure_softc* %63, i32 %64, i32 %65, i32 %73)
  %75 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %76 = load i32, i32* @URE_PLA_MISC_1, align 4
  %77 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %78 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %79 = load i32, i32* @URE_PLA_MISC_1, align 4
  %80 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %81 = call i32 @ure_read_2(%struct.ure_softc* %78, i32 %79, i32 %80)
  %82 = load i32, i32* @URE_RXDY_GATED_EN, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @ure_write_2(%struct.ure_softc* %75, i32 %76, i32 %77, i32 %84)
  %86 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %87 = call i32 @ure_rxfilter(%struct.usb_ether* %86)
  %88 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @URE_BULK_DT_WR, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @usbd_xfer_set_stall(i32 %93)
  %95 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %96 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = call i32 @ure_ifmedia_upd(%struct.ifnet* %100)
  br label %102

102:                                              ; preds = %19, %18
  ret void
}

declare dso_local %struct.ure_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @URE_LOCK_ASSERT(%struct.ure_softc*, i32) #1

declare dso_local i32 @ure_stop(%struct.usb_ether*) #1

declare dso_local i32 @ure_reset(%struct.ure_softc*) #1

declare dso_local i32 @ure_write_1(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_write_mem(%struct.ure_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @ure_write_2(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_read_2(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_read_1(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_rxfilter(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @ure_ifmedia_upd(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
