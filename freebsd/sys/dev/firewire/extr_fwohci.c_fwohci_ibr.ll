; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_ibr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_ibr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32 }
%struct.fwohci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"Initiate bus reset\0A\00", align 1
@OHCI_CROMHDR = common dso_local global i32 0, align 4
@OHCI_BUS_OPT = common dso_local global i32 0, align 4
@FW_PHY_IBR_REG = common dso_local global i32 0, align 4
@FW_PHY_IBR = common dso_local global i32 0, align 4
@FW_PHY_RHB = common dso_local global i32 0, align 4
@FW_PHY_ISBR = common dso_local global i32 0, align 4
@FW_PHY_ISBR_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwohci_ibr(%struct.firewire_comm* %0) #0 {
  %2 = alloca %struct.firewire_comm*, align 8
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.firewire_comm* %0, %struct.firewire_comm** %2, align 8
  %5 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %6 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @device_printf(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %10 = bitcast %struct.firewire_comm* %9 to %struct.fwohci_softc*
  store %struct.fwohci_softc* %10, %struct.fwohci_softc** %3, align 8
  %11 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %12 = call i32 @FW_GLOCK(%struct.firewire_comm* %11)
  %13 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %14 = load i32, i32* @OHCI_CROMHDR, align 4
  %15 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = call i32 @OWRITE(%struct.fwohci_softc* %13, i32 %14, i32 %21)
  %23 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %24 = load i32, i32* @OHCI_BUS_OPT, align 4
  %25 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohl(i32 %30)
  %32 = call i32 @OWRITE(%struct.fwohci_softc* %23, i32 %24, i32 %31)
  %33 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %34 = load i32, i32* @FW_PHY_IBR_REG, align 4
  %35 = call i32 @fwphy_rddata(%struct.fwohci_softc* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @FW_PHY_IBR, align 4
  %37 = load i32, i32* @FW_PHY_RHB, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %42 = load i32, i32* @FW_PHY_IBR_REG, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @fwphy_wrdata(%struct.fwohci_softc* %41, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %46 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %45)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @fwphy_rddata(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @fwphy_wrdata(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
