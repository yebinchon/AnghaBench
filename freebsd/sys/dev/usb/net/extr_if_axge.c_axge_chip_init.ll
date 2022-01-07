; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_chip_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axge_softc = type { i32 }

@AXGE_ACCESS_MAC = common dso_local global i32 0, align 4
@AXGE_EPPRCR = common dso_local global i32 0, align 4
@EPPRCR_IPRL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AXGE_CLK_SELECT = common dso_local global i32 0, align 4
@AXGE_CLK_SELECT_ACS = common dso_local global i32 0, align 4
@AXGE_CLK_SELECT_BCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axge_softc*)* @axge_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_chip_init(%struct.axge_softc* %0) #0 {
  %2 = alloca %struct.axge_softc*, align 8
  store %struct.axge_softc* %0, %struct.axge_softc** %2, align 8
  %3 = load %struct.axge_softc*, %struct.axge_softc** %2, align 8
  %4 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %5 = load i32, i32* @AXGE_EPPRCR, align 4
  %6 = call i32 @axge_write_cmd_2(%struct.axge_softc* %3, i32 %4, i32 2, i32 %5, i32 0)
  %7 = load %struct.axge_softc*, %struct.axge_softc** %2, align 8
  %8 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %9 = load i32, i32* @AXGE_EPPRCR, align 4
  %10 = load i32, i32* @EPPRCR_IPRL, align 4
  %11 = call i32 @axge_write_cmd_2(%struct.axge_softc* %7, i32 %8, i32 2, i32 %9, i32 %10)
  %12 = load %struct.axge_softc*, %struct.axge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %12, i32 0, i32 0
  %14 = load i32, i32* @hz, align 4
  %15 = sdiv i32 %14, 4
  %16 = call i32 @uether_pause(i32* %13, i32 %15)
  %17 = load %struct.axge_softc*, %struct.axge_softc** %2, align 8
  %18 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %19 = load i32, i32* @AXGE_CLK_SELECT, align 4
  %20 = load i32, i32* @AXGE_CLK_SELECT_ACS, align 4
  %21 = load i32, i32* @AXGE_CLK_SELECT_BCS, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @axge_write_cmd_1(%struct.axge_softc* %17, i32 %18, i32 %19, i32 %22)
  %24 = load %struct.axge_softc*, %struct.axge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %24, i32 0, i32 0
  %26 = load i32, i32* @hz, align 4
  %27 = sdiv i32 %26, 10
  %28 = call i32 @uether_pause(i32* %25, i32 %27)
  ret void
}

declare dso_local i32 @axge_write_cmd_2(%struct.axge_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @uether_pause(i32*, i32) #1

declare dso_local i32 @axge_write_cmd_1(%struct.axge_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
