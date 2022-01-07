; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_gmii_2500_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_gmii_2500_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque

@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_CTRL2 = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL2_TYPE = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL2_10GBX = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEEDSEL = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEED1G = common dso_local global i32 0, align 4
@SIR1_SPEED = common dso_local global i32 0, align 4
@DATARATE = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_RATE = common dso_local global i32 0, align 4
@WORDMODE = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_WORD = common dso_local global i32 0, align 4
@PLLSEL = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_PLL = common dso_local global i32 0, align 4
@CDR_RATE = common dso_local global i32 0, align 4
@XGBE_SPEED_2500 = common dso_local global i64 0, align 8
@TXAMP = common dso_local global i32 0, align 4
@RXTX_REG20 = common dso_local global i32 0, align 4
@BLWC_ENA = common dso_local global i32 0, align 4
@RXTX_REG114 = common dso_local global i32 0, align 4
@PQ_REG = common dso_local global i32 0, align 4
@RXTX_REG129 = common dso_local global i32 0, align 4
@RXDFE_CONFIG = common dso_local global i32 0, align 4
@RXTX_REG22 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_gmii_2500_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_gmii_2500_mode(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = call i32 @xgbe_an_disable_kr_training(%struct.xgbe_prv_data* %4)
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %8, align 8
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = bitcast %struct.xgbe_prv_data* %10 to %struct.xgbe_prv_data.0*
  %12 = call i32 %9(%struct.xgbe_prv_data.0* %11)
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = load i32, i32* @MDIO_MMD_PCS, align 4
  %15 = load i32, i32* @MDIO_CTRL2, align 4
  %16 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %13, i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @MDIO_PCS_CTRL2_TYPE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @MDIO_PCS_CTRL2_10GBX, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = load i32, i32* @MDIO_MMD_PCS, align 4
  %26 = load i32, i32* @MDIO_CTRL2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = load i32, i32* @MDIO_MMD_PCS, align 4
  %31 = load i32, i32* @MDIO_CTRL1, align 4
  %32 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @MDIO_CTRL1_SPEEDSEL, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @MDIO_CTRL1_SPEED1G, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %41 = load i32, i32* @MDIO_MMD_PCS, align 4
  %42 = load i32, i32* @MDIO_CTRL1, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %46 = call i32 @xgbe_pcs_power_cycle(%struct.xgbe_prv_data* %45)
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %48 = call i32 @xgbe_serdes_start_ratechange(%struct.xgbe_prv_data* %47)
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %50 = load i32, i32* @SIR1_SPEED, align 4
  %51 = load i32, i32* @DATARATE, align 4
  %52 = load i32, i32* @XGBE_SPEED_2500_RATE, align 4
  %53 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %55 = load i32, i32* @SIR1_SPEED, align 4
  %56 = load i32, i32* @WORDMODE, align 4
  %57 = load i32, i32* @XGBE_SPEED_2500_WORD, align 4
  %58 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %60 = load i32, i32* @SIR1_SPEED, align 4
  %61 = load i32, i32* @PLLSEL, align 4
  %62 = load i32, i32* @XGBE_SPEED_2500_PLL, align 4
  %63 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = load i32, i32* @SIR1_SPEED, align 4
  %66 = load i32, i32* @CDR_RATE, align 4
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %68 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @XGBE_SPEED_2500, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %64, i32 %65, i32 %66, i32 %72)
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %75 = load i32, i32* @SIR1_SPEED, align 4
  %76 = load i32, i32* @TXAMP, align 4
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %78 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @XGBE_SPEED_2500, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %74, i32 %75, i32 %76, i32 %82)
  %84 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %85 = load i32, i32* @RXTX_REG20, align 4
  %86 = load i32, i32* @BLWC_ENA, align 4
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %88 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @XGBE_SPEED_2500, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data* %84, i32 %85, i32 %86, i32 %92)
  %94 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %95 = load i32, i32* @RXTX_REG114, align 4
  %96 = load i32, i32* @PQ_REG, align 4
  %97 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %98 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @XGBE_SPEED_2500, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data* %94, i32 %95, i32 %96, i32 %102)
  %104 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %105 = load i32, i32* @RXTX_REG129, align 4
  %106 = load i32, i32* @RXDFE_CONFIG, align 4
  %107 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %108 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @XGBE_SPEED_2500, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data* %104, i32 %105, i32 %106, i32 %112)
  %114 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %115 = load i32, i32* @RXTX_REG22, align 4
  %116 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %117 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @XGBE_SPEED_2500, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @XRXTX_IOWRITE(%struct.xgbe_prv_data* %114, i32 %115, i32 %121)
  %123 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %124 = call i32 @xgbe_serdes_complete_ratechange(%struct.xgbe_prv_data* %123)
  ret void
}

declare dso_local i32 @xgbe_an_disable_kr_training(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_pcs_power_cycle(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_serdes_start_ratechange(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XRXTX_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @xgbe_serdes_complete_ratechange(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
