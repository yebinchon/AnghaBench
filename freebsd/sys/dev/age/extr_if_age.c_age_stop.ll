; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_2__, i32, i64, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, %struct.age_txdesc*, i32, %struct.age_rxdesc*, i32* }
%struct.age_txdesc = type { i32*, i32 }
%struct.age_rxdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AGE_FLAG_LINK = common dso_local global i32 0, align 4
@AGE_INTR_MASK = common dso_local global i32 0, align 4
@AGE_INTR_STATUS = common dso_local global i32 0, align 4
@AGE_CSMB_CTRL = common dso_local global i32 0, align 4
@AGE_DMA_CFG = common dso_local global i32 0, align 4
@DMA_CFG_RD_ENB = common dso_local global i32 0, align 4
@DMA_CFG_WR_ENB = common dso_local global i32 0, align 4
@AGE_TXQ_CFG = common dso_local global i32 0, align 4
@TXQ_CFG_ENB = common dso_local global i32 0, align 4
@AGE_RXQ_CFG = common dso_local global i32 0, align 4
@RXQ_CFG_ENB = common dso_local global i32 0, align 4
@AGE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@AGE_IDLE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"stopping Rx/Tx MACs timed out(0x%08x)!\0A\00", align 1
@AGE_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@AGE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_stop(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.age_txdesc*, align 8
  %5 = alloca %struct.age_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %8 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %9 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %8)
  %10 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %11 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %10, i32 0, i32 5
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @AGE_FLAG_LINK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %24 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %28 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %27, i32 0, i32 3
  %29 = call i32 @callout_stop(i32* %28)
  %30 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %31 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %33 = load i32, i32* @AGE_INTR_MASK, align 4
  %34 = call i32 @CSR_WRITE_4(%struct.age_softc* %32, i32 %33, i32 0)
  %35 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %36 = load i32, i32* @AGE_INTR_STATUS, align 4
  %37 = call i32 @CSR_WRITE_4(%struct.age_softc* %35, i32 %36, i32 -1)
  %38 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %39 = load i32, i32* @AGE_CSMB_CTRL, align 4
  %40 = call i32 @CSR_WRITE_4(%struct.age_softc* %38, i32 %39, i32 0)
  %41 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %42 = call i32 @age_stop_rxmac(%struct.age_softc* %41)
  %43 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %44 = call i32 @age_stop_txmac(%struct.age_softc* %43)
  %45 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %46 = load i32, i32* @AGE_DMA_CFG, align 4
  %47 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %48 = load i32, i32* @AGE_DMA_CFG, align 4
  %49 = call i32 @CSR_READ_4(%struct.age_softc* %47, i32 %48)
  %50 = load i32, i32* @DMA_CFG_RD_ENB, align 4
  %51 = load i32, i32* @DMA_CFG_WR_ENB, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = call i32 @CSR_WRITE_4(%struct.age_softc* %45, i32 %46, i32 %54)
  %56 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %57 = load i32, i32* @AGE_TXQ_CFG, align 4
  %58 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %59 = load i32, i32* @AGE_TXQ_CFG, align 4
  %60 = call i32 @CSR_READ_4(%struct.age_softc* %58, i32 %59)
  %61 = load i32, i32* @TXQ_CFG_ENB, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @CSR_WRITE_4(%struct.age_softc* %56, i32 %57, i32 %63)
  %65 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %66 = load i32, i32* @AGE_RXQ_CFG, align 4
  %67 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %68 = load i32, i32* @AGE_RXQ_CFG, align 4
  %69 = call i32 @CSR_READ_4(%struct.age_softc* %67, i32 %68)
  %70 = load i32, i32* @RXQ_CFG_ENB, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @CSR_WRITE_4(%struct.age_softc* %65, i32 %66, i32 %72)
  %74 = load i32, i32* @AGE_RESET_TIMEOUT, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %86, %1
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %80 = load i32, i32* @AGE_IDLE_STATUS, align 4
  %81 = call i32 @CSR_READ_4(%struct.age_softc* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %89

84:                                               ; preds = %78
  %85 = call i32 @DELAY(i32 10)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %7, align 4
  br label %75

89:                                               ; preds = %83, %75
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %94 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %100 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %106 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @m_freem(i32* %108)
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %112 = call i32 @AGE_RXCHAIN_RESET(%struct.age_softc* %111)
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %154, %110
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @AGE_RX_RING_CNT, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %157

117:                                              ; preds = %113
  %118 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %119 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load %struct.age_rxdesc*, %struct.age_rxdesc** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %121, i64 %123
  store %struct.age_rxdesc* %124, %struct.age_rxdesc** %5, align 8
  %125 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %126 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %153

129:                                              ; preds = %117
  %130 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %131 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %135 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %138 = call i32 @bus_dmamap_sync(i32 %133, i32 %136, i32 %137)
  %139 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %140 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %144 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @bus_dmamap_unload(i32 %142, i32 %145)
  %147 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %148 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @m_freem(i32* %149)
  %151 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %152 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %151, i32 0, i32 0
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %129, %117
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %113

157:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %199, %157
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @AGE_TX_RING_CNT, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %202

162:                                              ; preds = %158
  %163 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %164 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load %struct.age_txdesc*, %struct.age_txdesc** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %166, i64 %168
  store %struct.age_txdesc* %169, %struct.age_txdesc** %4, align 8
  %170 = load %struct.age_txdesc*, %struct.age_txdesc** %4, align 8
  %171 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %198

174:                                              ; preds = %162
  %175 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %176 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.age_txdesc*, %struct.age_txdesc** %4, align 8
  %180 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %183 = call i32 @bus_dmamap_sync(i32 %178, i32 %181, i32 %182)
  %184 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %185 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.age_txdesc*, %struct.age_txdesc** %4, align 8
  %189 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @bus_dmamap_unload(i32 %187, i32 %190)
  %192 = load %struct.age_txdesc*, %struct.age_txdesc** %4, align 8
  %193 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @m_freem(i32* %194)
  %196 = load %struct.age_txdesc*, %struct.age_txdesc** %4, align 8
  %197 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %196, i32 0, i32 0
  store i32* null, i32** %197, align 8
  br label %198

198:                                              ; preds = %174, %162
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %158

202:                                              ; preds = %158
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

declare dso_local i32 @age_stop_rxmac(%struct.age_softc*) #1

declare dso_local i32 @age_stop_txmac(%struct.age_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @AGE_RXCHAIN_RESET(%struct.age_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
