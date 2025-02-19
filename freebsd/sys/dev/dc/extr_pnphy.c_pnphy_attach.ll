; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_pnphy.c_pnphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_pnphy.c_pnphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32, i32 }

@MIIF_NOISOLATE = common dso_local global i32 0, align 4
@MIIF_NOMANPAUSE = common dso_local global i32 0, align 4
@pnphy_funcs = common dso_local global i32 0, align 4
@BMSR_100TXFDX = common dso_local global i32 0, align 4
@BMSR_100TXHDX = common dso_local global i32 0, align 4
@BMSR_10TFDX = common dso_local global i32 0, align 4
@BMSR_10THDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pnphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mii_softc* @device_get_softc(i32 %4)
  store %struct.mii_softc* %5, %struct.mii_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @MIIF_NOISOLATE, align 4
  %8 = load i32, i32* @MIIF_NOMANPAUSE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mii_phy_dev_attach(i32 %6, i32 %9, i32* @pnphy_funcs, i32 0)
  %11 = load i32, i32* @BMSR_100TXFDX, align 4
  %12 = load i32, i32* @BMSR_100TXHDX, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @BMSR_10TFDX, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @BMSR_10THDX, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %30 = call i32 @mii_phy_add_media(%struct.mii_softc* %29)
  %31 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MIIBUS_MEDIAINIT(i32 %34)
  ret i32 0
}

declare dso_local %struct.mii_softc* @device_get_softc(i32) #1

declare dso_local i32 @mii_phy_dev_attach(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mii_phy_add_media(%struct.mii_softc*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @MIIBUS_MEDIAINIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
