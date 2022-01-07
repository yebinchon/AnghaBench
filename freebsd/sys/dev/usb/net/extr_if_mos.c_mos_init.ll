; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.mos_softc = type { i32* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MOS_IPG0 = common dso_local global i32 0, align 4
@MOS_IPG1 = common dso_local global i32 0, align 4
@MOS_CTL = common dso_local global i32 0, align 4
@MOS_CTL_RX_ENB = common dso_local global i32 0, align 4
@MOS_CTL_TX_ENB = common dso_local global i32 0, align 4
@MOS_CTL_BS_ENB = common dso_local global i32 0, align 4
@MOS_CTL_SLEEP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @mos_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.mos_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.mos_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.mos_softc* %7, %struct.mos_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @MOS_LOCK_ASSERT(%struct.mos_softc* %10, i32 %11)
  %13 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %14 = call i32 @mos_reset(%struct.mos_softc* %13)
  %15 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = call i32 @IF_LLADDR(%struct.ifnet* %16)
  %18 = call i32 @mos_writemac(%struct.mos_softc* %15, i32 %17)
  %19 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %20 = load i32, i32* @MOS_IPG0, align 4
  %21 = call i8* @mos_reg_read_1(%struct.mos_softc* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %28 = load i32, i32* @MOS_IPG1, align 4
  %29 = call i8* @mos_reg_read_1(%struct.mos_softc* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %36 = load i32, i32* @MOS_IPG0, align 4
  %37 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mos_reg_write_1(%struct.mos_softc* %35, i32 %36, i32 %41)
  %43 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %44 = load i32, i32* @MOS_IPG1, align 4
  %45 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mos_reg_write_1(%struct.mos_softc* %43, i32 %44, i32 %49)
  %51 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %52 = load i32, i32* @MOS_CTL, align 4
  %53 = call i8* @mos_reg_read_1(%struct.mos_softc* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @MOS_CTL_RX_ENB, align 4
  %56 = load i32, i32* @MOS_CTL_TX_ENB, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MOS_CTL_BS_ENB, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @MOS_CTL_SLEEP, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %67 = call i32 @mos_setpromisc(%struct.usb_ether* %66)
  %68 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %69 = load i32, i32* @MOS_CTL, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @mos_reg_write_1(%struct.mos_softc* %68, i32 %69, i32 %70)
  %72 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %73 = call i32 @mos_setmulti(%struct.usb_ether* %72)
  %74 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %80 = call i32 @mos_start(%struct.usb_ether* %79)
  ret void
}

declare dso_local %struct.mos_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @MOS_LOCK_ASSERT(%struct.mos_softc*, i32) #1

declare dso_local i32 @mos_reset(%struct.mos_softc*) #1

declare dso_local i32 @mos_writemac(%struct.mos_softc*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i8* @mos_reg_read_1(%struct.mos_softc*, i32) #1

declare dso_local i32 @mos_reg_write_1(%struct.mos_softc*, i32, i32) #1

declare dso_local i32 @mos_setpromisc(%struct.usb_ether*) #1

declare dso_local i32 @mos_setmulti(%struct.usb_ether*) #1

declare dso_local i32 @mos_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
