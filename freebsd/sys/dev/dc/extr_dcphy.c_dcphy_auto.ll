; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_dcphy.c_dcphy_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_dcphy.c_dcphy_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dc_softc = type { i32 }

@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_PORTSEL = common dso_local global i32 0, align 4
@DC_NETCFG_FULLDUPLEX = common dso_local global i32 0, align 4
@DC_SIARESET = common dso_local global i32 0, align 4
@DC_SIA_RESET = common dso_local global i32 0, align 4
@BMSR_100TXHDX = common dso_local global i32 0, align 4
@DC_10BTCTRL = common dso_local global i32 0, align 4
@DC_TCTL_AUTONEGENBL = common dso_local global i32 0, align 4
@DC_10BTSTAT = common dso_local global i32 0, align 4
@DC_ASTAT_TXDISABLE = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*)* @dcphy_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcphy_auto(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.dc_softc*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %4 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dc_softc* @if_getsoftc(i32 %8)
  store %struct.dc_softc* %9, %struct.dc_softc** %3, align 8
  %10 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %11 = load i32, i32* @DC_NETCFG, align 4
  %12 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %13 = call i32 @DC_CLRBIT(%struct.dc_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %15 = load i32, i32* @DC_NETCFG, align 4
  %16 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %17 = call i32 @DC_SETBIT(%struct.dc_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %19 = load i32, i32* @DC_SIARESET, align 4
  %20 = load i32, i32* @DC_SIA_RESET, align 4
  %21 = call i32 @DC_CLRBIT(%struct.dc_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BMSR_100TXHDX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %30 = load i32, i32* @DC_10BTCTRL, align 4
  %31 = call i32 @CSR_WRITE_4(%struct.dc_softc* %29, i32 %30, i32 262143)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %34 = load i32, i32* @DC_10BTCTRL, align 4
  %35 = call i32 @CSR_WRITE_4(%struct.dc_softc* %33, i32 %34, i32 65535)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %38 = load i32, i32* @DC_SIARESET, align 4
  %39 = load i32, i32* @DC_SIA_RESET, align 4
  %40 = call i32 @DC_SETBIT(%struct.dc_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %42 = load i32, i32* @DC_10BTCTRL, align 4
  %43 = load i32, i32* @DC_TCTL_AUTONEGENBL, align 4
  %44 = call i32 @DC_SETBIT(%struct.dc_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %46 = load i32, i32* @DC_10BTSTAT, align 4
  %47 = load i32, i32* @DC_ASTAT_TXDISABLE, align 4
  %48 = call i32 @DC_SETBIT(%struct.dc_softc* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %49
}

declare dso_local %struct.dc_softc* @if_getsoftc(i32) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
