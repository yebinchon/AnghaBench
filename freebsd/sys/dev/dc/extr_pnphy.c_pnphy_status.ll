; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_pnphy.c_pnphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_pnphy.c_pnphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, i32 }
%struct.dc_softc = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@DC_ISR = common dso_local global i32 0, align 4
@DC_ISR_LINKFAIL = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_SPEEDSEL = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@DC_NETCFG_FULLDUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @pnphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_softc*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 0
  %8 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  store %struct.mii_data* %8, %struct.mii_data** %3, align 8
  %9 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %10 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dc_softc* @if_getsoftc(i32 %11)
  store %struct.dc_softc* %12, %struct.dc_softc** %5, align 8
  %13 = load i32, i32* @IFM_AVALID, align 4
  %14 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IFM_ETHER, align 4
  %17 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %18 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %20 = load i32, i32* @DC_ISR, align 4
  %21 = call i32 @CSR_READ_4(%struct.dc_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DC_ISR_LINKFAIL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @IFM_ACTIVE, align 4
  %28 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %34 = load i32, i32* @DC_NETCFG, align 4
  %35 = call i32 @CSR_READ_4(%struct.dc_softc* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @DC_NETCFG_SPEEDSEL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @IFM_10_T, align 4
  %42 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %43 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %52

46:                                               ; preds = %32
  %47 = load i32, i32* @IFM_100_TX, align 4
  %48 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %49 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @IFM_FDX, align 4
  %59 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %60 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %69

63:                                               ; preds = %52
  %64 = load i32, i32* @IFM_HDX, align 4
  %65 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %66 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %57
  ret void
}

declare dso_local %struct.dc_softc* @if_getsoftc(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
