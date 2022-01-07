; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32, i64, i64, i32 }

@CGEM_NET_CFG_DBUS_WIDTH_32 = common dso_local global i32 0, align 4
@CGEM_NET_CFG_MDC_CLK_DIV_64 = common dso_local global i32 0, align 4
@CGEM_NET_CFG_FCS_REMOVE = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@CGEM_NET_CFG_GIGE_EN = common dso_local global i32 0, align 4
@CGEM_NET_CFG_1536RXEN = common dso_local global i32 0, align 4
@CGEM_NET_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@CGEM_NET_CFG_SPEED100 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN = common dso_local global i32 0, align 4
@CGEM_NET_CFG = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@CGEM_DMA_CFG_RX_PKTBUF_MEMSZ_SEL_8K = common dso_local global i32 0, align 4
@CGEM_DMA_CFG_TX_PKTBUF_MEMSZ_SEL = common dso_local global i32 0, align 4
@CGEM_DMA_CFG_AHB_FIXED_BURST_LEN_16 = common dso_local global i32 0, align 4
@CGEM_DMA_CFG_DISC_WHEN_NO_AHB = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN = common dso_local global i32 0, align 4
@CGEM_DMA_CFG = common dso_local global i32 0, align 4
@CGEM_RX_QBAR = common dso_local global i32 0, align 4
@CGEM_TX_QBAR = common dso_local global i32 0, align 4
@CGEM_NET_CTRL_TX_EN = common dso_local global i32 0, align 4
@CGEM_NET_CTRL_RX_EN = common dso_local global i32 0, align 4
@CGEM_NET_CTRL = common dso_local global i32 0, align 4
@CGEM_INTR_EN = common dso_local global i32 0, align 4
@CGEM_INTR_RX_COMPLETE = common dso_local global i32 0, align 4
@CGEM_INTR_RX_OVERRUN = common dso_local global i32 0, align 4
@CGEM_INTR_TX_USED_READ = common dso_local global i32 0, align 4
@CGEM_INTR_RX_USED_READ = common dso_local global i32 0, align 4
@CGEM_INTR_HRESP_NOT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_config(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  %7 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %8 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32* @if_getlladdr(i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %13 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %12)
  %14 = load i32, i32* @CGEM_NET_CFG_DBUS_WIDTH_32, align 4
  %15 = load i32, i32* @CGEM_NET_CFG_MDC_CLK_DIV_64, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CGEM_NET_CFG_FCS_REMOVE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ETHER_ALIGN, align 4
  %20 = call i32 @CGEM_NET_CFG_RX_BUF_OFFSET(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @CGEM_NET_CFG_GIGE_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CGEM_NET_CFG_1536RXEN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CGEM_NET_CFG_FULL_DUPLEX, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CGEM_NET_CFG_SPEED100, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @if_getcapenable(i32 %30)
  %32 = load i32, i32* @IFCAP_RXCSUM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %1
  %40 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %41 = load i32, i32* @CGEM_NET_CFG, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @WR4(%struct.cgem_softc* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @MCLBYTES, align 4
  %45 = call i32 @CGEM_DMA_CFG_RX_BUF_SIZE(i32 %44)
  %46 = load i32, i32* @CGEM_DMA_CFG_RX_PKTBUF_MEMSZ_SEL_8K, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CGEM_DMA_CFG_TX_PKTBUF_MEMSZ_SEL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CGEM_DMA_CFG_AHB_FIXED_BURST_LEN_16, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CGEM_DMA_CFG_DISC_WHEN_NO_AHB, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @if_getcapenable(i32 %54)
  %56 = load i32, i32* @IFCAP_TXCSUM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load i32, i32* @CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %39
  %64 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %65 = load i32, i32* @CGEM_DMA_CFG, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @WR4(%struct.cgem_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %69 = load i32, i32* @CGEM_RX_QBAR, align 4
  %70 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %71 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @WR4(%struct.cgem_softc* %68, i32 %69, i32 %73)
  %75 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %76 = load i32, i32* @CGEM_TX_QBAR, align 4
  %77 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %78 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @WR4(%struct.cgem_softc* %75, i32 %76, i32 %80)
  %82 = load i32, i32* @CGEM_NET_CTRL_TX_EN, align 4
  %83 = load i32, i32* @CGEM_NET_CTRL_RX_EN, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %86 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %90 = load i32, i32* @CGEM_NET_CTRL, align 4
  %91 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %92 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @WR4(%struct.cgem_softc* %89, i32 %90, i32 %93)
  %95 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %96 = call i32 @CGEM_SPEC_ADDR_LOW(i32 0)
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 24
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 16
  %105 = or i32 %100, %104
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %105, %109
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  %115 = call i32 @WR4(%struct.cgem_softc* %95, i32 %96, i32 %114)
  %116 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %117 = call i32 @CGEM_SPEC_ADDR_HI(i32 0)
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %121, %124
  %126 = call i32 @WR4(%struct.cgem_softc* %116, i32 %117, i32 %125)
  %127 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %128 = load i32, i32* @CGEM_INTR_EN, align 4
  %129 = load i32, i32* @CGEM_INTR_RX_COMPLETE, align 4
  %130 = load i32, i32* @CGEM_INTR_RX_OVERRUN, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @CGEM_INTR_TX_USED_READ, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @CGEM_INTR_RX_USED_READ, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @CGEM_INTR_HRESP_NOT_OK, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @WR4(%struct.cgem_softc* %127, i32 %128, i32 %137)
  ret void
}

declare dso_local i32* @if_getlladdr(i32) #1

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i32 @CGEM_NET_CFG_RX_BUF_OFFSET(i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

declare dso_local i32 @CGEM_DMA_CFG_RX_BUF_SIZE(i32) #1

declare dso_local i32 @CGEM_SPEC_ADDR_LOW(i32) #1

declare dso_local i32 @CGEM_SPEC_ADDR_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
