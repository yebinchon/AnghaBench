; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i64, i32*, i32 }

@DME_IMR = common dso_local global i32 0, align 4
@IMR_PAR = common dso_local global i32 0, align 4
@DME_GPCR = common dso_local global i32 0, align 4
@DME_GPR = common dso_local global i32 0, align 4
@DME_NCR = common dso_local global i32 0, align 4
@NCR_LBK_NORMAL = common dso_local global i32 0, align 4
@DME_TCR = common dso_local global i32 0, align 4
@DME_BPTR = common dso_local global i32 0, align 4
@DME_FCTR = common dso_local global i32 0, align 4
@DME_FCR = common dso_local global i32 0, align 4
@DME_SMCR = common dso_local global i32 0, align 4
@DME_NSR = common dso_local global i32 0, align 4
@NSR_WAKEST = common dso_local global i32 0, align 4
@NSR_TX2END = common dso_local global i32 0, align 4
@NSR_TX1END = common dso_local global i32 0, align 4
@DME_ISR = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DME_RCR = common dso_local global i32 0, align 4
@RCR_DIS_LONG = common dso_local global i32 0, align 4
@RCR_DIS_CRC = common dso_local global i32 0, align 4
@RCR_RXEN = common dso_local global i32 0, align 4
@IMR_PRI = common dso_local global i32 0, align 4
@IMR_PTI = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@DME_CHIP_DM9000B = common dso_local global i64 0, align 8
@DME_INT_PHY = common dso_local global i32 0, align 4
@DSPCR_INIT = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_DME_DSPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dme_softc*)* @dme_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme_config(%struct.dme_softc* %0) #0 {
  %2 = alloca %struct.dme_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dme_softc* %0, %struct.dme_softc** %2, align 8
  %4 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %5 = load i32, i32* @DME_IMR, align 4
  %6 = load i32, i32* @IMR_PAR, align 4
  %7 = call i32 @dme_write_reg(%struct.dme_softc* %4, i32 %5, i32 %6)
  %8 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %9 = load i32, i32* @DME_GPCR, align 4
  %10 = call i32 @dme_write_reg(%struct.dme_softc* %8, i32 %9, i32 1)
  %11 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %12 = load i32, i32* @DME_GPR, align 4
  %13 = call i32 @dme_write_reg(%struct.dme_softc* %11, i32 %12, i32 0)
  %14 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %15 = load i32, i32* @DME_NCR, align 4
  %16 = load i32, i32* @NCR_LBK_NORMAL, align 4
  %17 = call i32 @dme_write_reg(%struct.dme_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %19 = load i32, i32* @DME_TCR, align 4
  %20 = call i32 @dme_write_reg(%struct.dme_softc* %18, i32 %19, i32 0)
  %21 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %22 = load i32, i32* @DME_BPTR, align 4
  %23 = call i32 @BPTR_BPHW(i32 3)
  %24 = call i32 @BPTR_JPT(i32 15)
  %25 = or i32 %23, %24
  %26 = call i32 @dme_write_reg(%struct.dme_softc* %21, i32 %22, i32 %25)
  %27 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %28 = load i32, i32* @DME_FCTR, align 4
  %29 = call i32 @FCTR_HWOT(i32 3)
  %30 = call i32 @FCTR_LWOT(i32 8)
  %31 = or i32 %29, %30
  %32 = call i32 @dme_write_reg(%struct.dme_softc* %27, i32 %28, i32 %31)
  %33 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %34 = load i32, i32* @DME_FCR, align 4
  %35 = call i32 @dme_write_reg(%struct.dme_softc* %33, i32 %34, i32 255)
  %36 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %37 = load i32, i32* @DME_SMCR, align 4
  %38 = call i32 @dme_write_reg(%struct.dme_softc* %36, i32 %37, i32 0)
  %39 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %40 = load i32, i32* @DME_NSR, align 4
  %41 = load i32, i32* @NSR_WAKEST, align 4
  %42 = load i32, i32* @NSR_TX2END, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NSR_TX1END, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @dme_write_reg(%struct.dme_softc* %39, i32 %40, i32 %45)
  %47 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %48 = load i32, i32* @DME_ISR, align 4
  %49 = call i32 @dme_write_reg(%struct.dme_softc* %47, i32 %48, i32 255)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %58, %1
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @DME_MAR(i32 %55)
  %57 = call i32 @dme_write_reg(%struct.dme_softc* %54, i32 %56, i32 255)
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %50

61:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @DME_PAR(i32 %68)
  %70 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %71 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dme_write_reg(%struct.dme_softc* %67, i32 %69, i32 %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %83 = load i32, i32* @DME_RCR, align 4
  %84 = load i32, i32* @RCR_DIS_LONG, align 4
  %85 = load i32, i32* @RCR_DIS_CRC, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @RCR_RXEN, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @dme_write_reg(%struct.dme_softc* %82, i32 %83, i32 %88)
  %90 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %91 = load i32, i32* @DME_IMR, align 4
  %92 = load i32, i32* @IMR_PAR, align 4
  %93 = load i32, i32* @IMR_PRI, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IMR_PTI, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @dme_write_reg(%struct.dme_softc* %90, i32 %91, i32 %96)
  ret void
}

declare dso_local i32 @dme_write_reg(%struct.dme_softc*, i32, i32) #1

declare dso_local i32 @BPTR_BPHW(i32) #1

declare dso_local i32 @BPTR_JPT(i32) #1

declare dso_local i32 @FCTR_HWOT(i32) #1

declare dso_local i32 @FCTR_LWOT(i32) #1

declare dso_local i32 @DME_MAR(i32) #1

declare dso_local i32 @DME_PAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
