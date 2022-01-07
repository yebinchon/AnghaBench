; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i64, i32, %struct.ifnet*, %struct.msk_softc* }
%struct.TYPE_2__ = type { i32, %struct.msk_txdesc*, i32, %struct.msk_rxdesc*, i32, %struct.msk_rxdesc* }
%struct.msk_txdesc = type { i32*, i32 }
%struct.msk_rxdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }
%struct.msk_softc = type { i32, i32 }

@MSK_PORT_A = common dso_local global i64 0, align 8
@Y2_IS_PORT_A = common dso_local global i32 0, align 4
@Y2_HWE_L1_MASK = common dso_local global i32 0, align 4
@Y2_IS_PORT_B = common dso_local global i32 0, align 4
@Y2_HWE_L2_MASK = common dso_local global i32 0, align 4
@B0_HWE_IMSK = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_TX_ENA = common dso_local global i32 0, align 4
@Q_CSR = common dso_local global i32 0, align 4
@BMU_STOP = common dso_local global i32 0, align 4
@MSK_TIMEOUT = common dso_local global i32 0, align 4
@BMU_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Tx BMU stop failed\0A\00", align 1
@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_SET = common dso_local global i32 0, align 4
@RB_DIS_OP_MD = common dso_local global i32 0, align 4
@GMAC_IRQ_MSK = common dso_local global i32 0, align 4
@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@TXA_CTRL = common dso_local global i32 0, align 4
@TXA_DIS_ARB = common dso_local global i32 0, align 4
@BMU_RST_SET = common dso_local global i32 0, align 4
@BMU_FIFO_RST = common dso_local global i32 0, align 4
@PREF_UNIT_CTRL_REG = common dso_local global i32 0, align 4
@PREF_UNIT_RST_SET = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_SET = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_PAUSE_OFF = common dso_local global i32 0, align 4
@Q_RSL = common dso_local global i32 0, align 4
@Q_RL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Rx BMU stop failed\0A\00", align 1
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@MSK_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MSK_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@MSK_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@MSK_FLAG_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_stop(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.msk_txdesc*, align 8
  %5 = alloca %struct.msk_rxdesc*, align 8
  %6 = alloca %struct.msk_rxdesc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %10 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %11 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %10)
  %12 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %13 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %12, i32 0, i32 9
  %14 = load %struct.msk_softc*, %struct.msk_softc** %13, align 8
  store %struct.msk_softc* %14, %struct.msk_softc** %3, align 8
  %15 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %16 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %15, i32 0, i32 8
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  %18 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %19 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %18, i32 0, i32 7
  %20 = call i32 @callout_stop(i32* %19)
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %24 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MSK_PORT_A, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = load i32, i32* @Y2_IS_PORT_A, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %32 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @Y2_HWE_L1_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %38 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %54

41:                                               ; preds = %1
  %42 = load i32, i32* @Y2_IS_PORT_B, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %45 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @Y2_HWE_L2_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %51 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %41, %28
  %55 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %56 = load i32, i32* @B0_HWE_IMSK, align 4
  %57 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %58 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CSR_WRITE_4(%struct.msk_softc* %55, i32 %56, i32 %59)
  %61 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %62 = load i32, i32* @B0_HWE_IMSK, align 4
  %63 = call i32 @CSR_READ_4(%struct.msk_softc* %61, i32 %62)
  %64 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %65 = load i32, i32* @B0_IMSK, align 4
  %66 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %67 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CSR_WRITE_4(%struct.msk_softc* %64, i32 %65, i32 %68)
  %70 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %71 = load i32, i32* @B0_IMSK, align 4
  %72 = call i32 @CSR_READ_4(%struct.msk_softc* %70, i32 %71)
  %73 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %74 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %75 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @GM_GP_CTRL, align 4
  %78 = call i32 @GMAC_READ_2(%struct.msk_softc* %73, i64 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %80 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %86 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %87 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @GM_GP_CTRL, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %85, i64 %88, i32 %89, i32 %90)
  %92 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %93 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %94 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @GM_GP_CTRL, align 4
  %97 = call i32 @GMAC_READ_2(%struct.msk_softc* %92, i64 %95, i32 %96)
  %98 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %99 = call i32 @msk_stats_update(%struct.msk_if_softc* %98)
  %100 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %101 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %102 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @Q_CSR, align 4
  %105 = call i32 @Q_ADDR(i32 %103, i32 %104)
  %106 = load i32, i32* @BMU_STOP, align 4
  %107 = call i32 @CSR_WRITE_4(%struct.msk_softc* %100, i32 %105, i32 %106)
  %108 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %109 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %110 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @Q_CSR, align 4
  %113 = call i32 @Q_ADDR(i32 %111, i32 %112)
  %114 = call i32 @CSR_READ_4(%struct.msk_softc* %108, i32 %113)
  store i32 %114, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %145, %54
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @MSK_TIMEOUT, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @BMU_STOP, align 4
  %122 = load i32, i32* @BMU_IDLE, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %119
  %127 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %128 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %129 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @Q_CSR, align 4
  %132 = call i32 @Q_ADDR(i32 %130, i32 %131)
  %133 = load i32, i32* @BMU_STOP, align 4
  %134 = call i32 @CSR_WRITE_4(%struct.msk_softc* %127, i32 %132, i32 %133)
  %135 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %136 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %137 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @Q_CSR, align 4
  %140 = call i32 @Q_ADDR(i32 %138, i32 %139)
  %141 = call i32 @CSR_READ_4(%struct.msk_softc* %135, i32 %140)
  store i32 %141, i32* %8, align 4
  br label %143

142:                                              ; preds = %119
  br label %148

143:                                              ; preds = %126
  %144 = call i32 @DELAY(i32 1)
  br label %145

145:                                              ; preds = %143
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %115

148:                                              ; preds = %142, %115
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @MSK_TIMEOUT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %154 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @device_printf(i32 %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %157

157:                                              ; preds = %152, %148
  %158 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %159 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %160 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @RB_CTRL, align 4
  %163 = call i32 @RB_ADDR(i32 %161, i32 %162)
  %164 = load i32, i32* @RB_RST_SET, align 4
  %165 = load i32, i32* @RB_DIS_OP_MD, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @CSR_WRITE_1(%struct.msk_softc* %158, i32 %163, i32 %166)
  %168 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %169 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %170 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* @GMAC_IRQ_MSK, align 4
  %173 = call i32 @MR_ADDR(i64 %171, i32 %172)
  %174 = call i32 @CSR_WRITE_1(%struct.msk_softc* %168, i32 %173, i32 0)
  %175 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %176 = load i32, i32* @PHY_ADDR_MARV, align 4
  %177 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %178 = call i32 @msk_phy_writereg(%struct.msk_if_softc* %175, i32 %176, i32 %177, i32 0)
  %179 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %180 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %181 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* @TXA_CTRL, align 4
  %184 = call i32 @MR_ADDR(i64 %182, i32 %183)
  %185 = load i32, i32* @TXA_DIS_ARB, align 4
  %186 = call i32 @CSR_WRITE_1(%struct.msk_softc* %179, i32 %184, i32 %185)
  %187 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %188 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %189 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @Q_CSR, align 4
  %192 = call i32 @Q_ADDR(i32 %190, i32 %191)
  %193 = load i32, i32* @BMU_RST_SET, align 4
  %194 = load i32, i32* @BMU_FIFO_RST, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @CSR_WRITE_4(%struct.msk_softc* %187, i32 %192, i32 %195)
  %197 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %198 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %199 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @PREF_UNIT_CTRL_REG, align 4
  %202 = call i32 @Y2_PREF_Q_ADDR(i32 %200, i32 %201)
  %203 = load i32, i32* @PREF_UNIT_RST_SET, align 4
  %204 = call i32 @CSR_WRITE_4(%struct.msk_softc* %197, i32 %202, i32 %203)
  %205 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %206 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %207 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @RB_CTRL, align 4
  %210 = call i32 @RB_ADDR(i32 %208, i32 %209)
  %211 = load i32, i32* @RB_RST_SET, align 4
  %212 = call i32 @CSR_WRITE_1(%struct.msk_softc* %205, i32 %210, i32 %211)
  %213 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %214 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %215 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %218 = call i32 @MR_ADDR(i64 %216, i32 %217)
  %219 = load i32, i32* @GMF_RST_SET, align 4
  %220 = call i32 @CSR_WRITE_4(%struct.msk_softc* %213, i32 %218, i32 %219)
  %221 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %222 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %223 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @GMAC_CTRL, align 4
  %226 = call i32 @MR_ADDR(i64 %224, i32 %225)
  %227 = load i32, i32* @GMC_PAUSE_OFF, align 4
  %228 = call i32 @CSR_WRITE_4(%struct.msk_softc* %221, i32 %226, i32 %227)
  %229 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %230 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %231 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @RB_CTRL, align 4
  %234 = call i32 @RB_ADDR(i32 %232, i32 %233)
  %235 = load i32, i32* @RB_DIS_OP_MD, align 4
  %236 = call i32 @CSR_WRITE_1(%struct.msk_softc* %229, i32 %234, i32 %235)
  store i32 0, i32* %9, align 4
  br label %237

237:                                              ; preds = %260, %157
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @MSK_TIMEOUT, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %263

241:                                              ; preds = %237
  %242 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %243 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %244 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @Q_RSL, align 4
  %247 = call i32 @RB_ADDR(i32 %245, i32 %246)
  %248 = call i64 @CSR_READ_1(%struct.msk_softc* %242, i32 %247)
  %249 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %250 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %251 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @Q_RL, align 4
  %254 = call i32 @RB_ADDR(i32 %252, i32 %253)
  %255 = call i64 @CSR_READ_1(%struct.msk_softc* %249, i32 %254)
  %256 = icmp eq i64 %248, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %241
  br label %263

258:                                              ; preds = %241
  %259 = call i32 @DELAY(i32 1)
  br label %260

260:                                              ; preds = %258
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %237

263:                                              ; preds = %257, %237
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* @MSK_TIMEOUT, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %269 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @device_printf(i32 %270, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %272

272:                                              ; preds = %267, %263
  %273 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %274 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %275 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @Q_CSR, align 4
  %278 = call i32 @Q_ADDR(i32 %276, i32 %277)
  %279 = load i32, i32* @BMU_RST_SET, align 4
  %280 = load i32, i32* @BMU_FIFO_RST, align 4
  %281 = or i32 %279, %280
  %282 = call i32 @CSR_WRITE_4(%struct.msk_softc* %273, i32 %278, i32 %281)
  %283 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %284 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %285 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @PREF_UNIT_CTRL_REG, align 4
  %288 = call i32 @Y2_PREF_Q_ADDR(i32 %286, i32 %287)
  %289 = load i32, i32* @PREF_UNIT_RST_SET, align 4
  %290 = call i32 @CSR_WRITE_4(%struct.msk_softc* %283, i32 %288, i32 %289)
  %291 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %292 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %293 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @RB_CTRL, align 4
  %296 = call i32 @RB_ADDR(i32 %294, i32 %295)
  %297 = load i32, i32* @RB_RST_SET, align 4
  %298 = call i32 @CSR_WRITE_1(%struct.msk_softc* %291, i32 %296, i32 %297)
  %299 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %300 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %301 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %304 = call i32 @MR_ADDR(i64 %302, i32 %303)
  %305 = load i32, i32* @GMF_RST_SET, align 4
  %306 = call i32 @CSR_WRITE_4(%struct.msk_softc* %299, i32 %304, i32 %305)
  store i32 0, i32* %9, align 4
  br label %307

307:                                              ; preds = %348, %272
  %308 = load i32, i32* %9, align 4
  %309 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %351

311:                                              ; preds = %307
  %312 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %313 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 5
  %315 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %314, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %315, i64 %317
  store %struct.msk_rxdesc* %318, %struct.msk_rxdesc** %5, align 8
  %319 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %320 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %347

323:                                              ; preds = %311
  %324 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %325 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %329 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %332 = call i32 @bus_dmamap_sync(i32 %327, i32 %330, i32 %331)
  %333 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %334 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %338 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @bus_dmamap_unload(i32 %336, i32 %339)
  %341 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %342 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @m_freem(i32* %343)
  %345 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %346 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %345, i32 0, i32 0
  store i32* null, i32** %346, align 8
  br label %347

347:                                              ; preds = %323, %311
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %9, align 4
  br label %307

351:                                              ; preds = %307
  store i32 0, i32* %9, align 4
  br label %352

352:                                              ; preds = %393, %351
  %353 = load i32, i32* %9, align 4
  %354 = load i32, i32* @MSK_JUMBO_RX_RING_CNT, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %396

356:                                              ; preds = %352
  %357 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %358 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 3
  %360 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %359, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %360, i64 %362
  store %struct.msk_rxdesc* %363, %struct.msk_rxdesc** %6, align 8
  %364 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %6, align 8
  %365 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = icmp ne i32* %366, null
  br i1 %367, label %368, label %392

368:                                              ; preds = %356
  %369 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %370 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %6, align 8
  %374 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %377 = call i32 @bus_dmamap_sync(i32 %372, i32 %375, i32 %376)
  %378 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %379 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %6, align 8
  %383 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @bus_dmamap_unload(i32 %381, i32 %384)
  %386 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %6, align 8
  %387 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = call i32 @m_freem(i32* %388)
  %390 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %6, align 8
  %391 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %390, i32 0, i32 0
  store i32* null, i32** %391, align 8
  br label %392

392:                                              ; preds = %368, %356
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %9, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %9, align 4
  br label %352

396:                                              ; preds = %352
  store i32 0, i32* %9, align 4
  br label %397

397:                                              ; preds = %438, %396
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* @MSK_TX_RING_CNT, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %441

401:                                              ; preds = %397
  %402 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %403 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 1
  %405 = load %struct.msk_txdesc*, %struct.msk_txdesc** %404, align 8
  %406 = load i32, i32* %9, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %405, i64 %407
  store %struct.msk_txdesc* %408, %struct.msk_txdesc** %4, align 8
  %409 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %410 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = icmp ne i32* %411, null
  br i1 %412, label %413, label %437

413:                                              ; preds = %401
  %414 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %415 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %419 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %422 = call i32 @bus_dmamap_sync(i32 %417, i32 %420, i32 %421)
  %423 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %424 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %428 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @bus_dmamap_unload(i32 %426, i32 %429)
  %431 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %432 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = call i32 @m_freem(i32* %433)
  %435 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %436 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %435, i32 0, i32 0
  store i32* null, i32** %436, align 8
  br label %437

437:                                              ; preds = %413, %401
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %9, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %9, align 4
  br label %397

441:                                              ; preds = %397
  %442 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %443 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %444 = or i32 %442, %443
  %445 = xor i32 %444, -1
  %446 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %447 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = and i32 %448, %445
  store i32 %449, i32* %447, align 4
  %450 = load i32, i32* @MSK_FLAG_LINK, align 4
  %451 = xor i32 %450, -1
  %452 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %453 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = and i32 %454, %451
  store i32 %455, i32* %453, align 8
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @GMAC_READ_2(%struct.msk_softc*, i64, i32) #1

declare dso_local i32 @GMAC_WRITE_2(%struct.msk_softc*, i64, i32, i32) #1

declare dso_local i32 @msk_stats_update(%struct.msk_if_softc*) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @MR_ADDR(i64, i32) #1

declare dso_local i32 @msk_phy_writereg(%struct.msk_if_softc*, i32, i32, i32) #1

declare dso_local i32 @Y2_PREF_Q_ADDR(i32, i32) #1

declare dso_local i64 @CSR_READ_1(%struct.msk_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
