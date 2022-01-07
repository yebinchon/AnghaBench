; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_set_eth_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_set_eth_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { i32* }

@ATSE_ETH_ADDR_DEF = common dso_local global i32 0, align 4
@BASE_CFG_MAC_0 = common dso_local global i32 0, align 4
@BASE_CFG_MAC_1 = common dso_local global i32 0, align 4
@ATSE_ETH_ADDR_SUPP1 = common dso_local global i32 0, align 4
@SUPPL_ADDR_SMAC_0_0 = common dso_local global i32 0, align 4
@SUPPL_ADDR_SMAC_0_1 = common dso_local global i32 0, align 4
@ATSE_ETH_ADDR_SUPP2 = common dso_local global i32 0, align 4
@SUPPL_ADDR_SMAC_1_0 = common dso_local global i32 0, align 4
@SUPPL_ADDR_SMAC_1_1 = common dso_local global i32 0, align 4
@ATSE_ETH_ADDR_SUPP3 = common dso_local global i32 0, align 4
@SUPPL_ADDR_SMAC_2_0 = common dso_local global i32 0, align 4
@SUPPL_ADDR_SMAC_2_1 = common dso_local global i32 0, align 4
@ATSE_ETH_ADDR_SUPP4 = common dso_local global i32 0, align 4
@SUPPL_ADDR_SMAC_3_0 = common dso_local global i32 0, align 4
@SUPPL_ADDR_SMAC_3_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atse_softc*, i32)* @atse_set_eth_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_set_eth_address(%struct.atse_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.atse_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atse_softc* %0, %struct.atse_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %8 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 24
  %13 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %14 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %12, %18
  %20 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %21 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %19, %25
  %27 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %28 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %34 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %40 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %38, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ATSE_ETH_ADDR_DEF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %2
  %50 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %51 = load i32, i32* @BASE_CFG_MAC_0, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @CSR_WRITE_4(%struct.atse_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %55 = load i32, i32* @BASE_CFG_MAC_1, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @CSR_WRITE_4(%struct.atse_softc* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %2
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ATSE_ETH_ADDR_SUPP1, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %65 = load i32, i32* @SUPPL_ADDR_SMAC_0_0, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @CSR_WRITE_4(%struct.atse_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %69 = load i32, i32* @SUPPL_ADDR_SMAC_0_1, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @CSR_WRITE_4(%struct.atse_softc* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %58
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @ATSE_ETH_ADDR_SUPP2, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %79 = load i32, i32* @SUPPL_ADDR_SMAC_1_0, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @CSR_WRITE_4(%struct.atse_softc* %78, i32 %79, i32 %80)
  %82 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %83 = load i32, i32* @SUPPL_ADDR_SMAC_1_1, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @CSR_WRITE_4(%struct.atse_softc* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %72
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @ATSE_ETH_ADDR_SUPP3, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %93 = load i32, i32* @SUPPL_ADDR_SMAC_2_0, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @CSR_WRITE_4(%struct.atse_softc* %92, i32 %93, i32 %94)
  %96 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %97 = load i32, i32* @SUPPL_ADDR_SMAC_2_1, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @CSR_WRITE_4(%struct.atse_softc* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %86
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @ATSE_ETH_ADDR_SUPP4, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %107 = load i32, i32* @SUPPL_ADDR_SMAC_3_0, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @CSR_WRITE_4(%struct.atse_softc* %106, i32 %107, i32 %108)
  %110 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %111 = load i32, i32* @SUPPL_ADDR_SMAC_3_1, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @CSR_WRITE_4(%struct.atse_softc* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %100
  ret i32 0
}

declare dso_local i32 @CSR_WRITE_4(%struct.atse_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
