; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_phy_initn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_phy_initn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy, %struct.bwn_softc* }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32, i32, i32, i32*, i32, i32, i64, i32, i32, i32, %struct.TYPE_11__*, i32*, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.bwn_softc = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }
%struct.bwn_nphy_txgains = type { i32 }

@BHND_NVAR_TSSIPOS2G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error reading %s from NVRAM: %d\0A\00", align 1
@BHND_BFL_EXTLNA = common dso_local global i32 0, align 4
@BWN_BAND_2G = common dso_local global i64 0, align 8
@BHND_BFL2_INTERNDET_TXIQCAL = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_40CO_B1S1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_REV7_RF_CTL_OVER3 = common dso_local global i32 0, align 4
@BWN_NPHY_REV7_RF_CTL_OVER4 = common dso_local global i32 0, align 4
@BWN_NPHY_REV7_RF_CTL_OVER5 = common dso_local global i32 0, align 4
@BWN_NPHY_REV7_RF_CTL_OVER6 = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_40CO_B1S0 = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_40CO_B32S1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC3 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC4 = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQMODE = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQMODE_CAOVER = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQMODE_TROVER = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_BPHY_CTL3 = common dso_local global i32 0, align 4
@BWN_NPHY_BPHY_CTL3_SCALE = common dso_local global i32 0, align 4
@BWN_NPHY_BPHY_CTL3_SCALE_SHIFT = common dso_local global i32 0, align 4
@BWN_NPHY_AFESEQ_TX2RX_PUD_20M = common dso_local global i32 0, align 4
@BWN_NPHY_AFESEQ_TX2RX_PUD_40M = common dso_local global i32 0, align 4
@BHND_BFL2_SKWRKFEM_BRD = common dso_local global i32 0, align 4
@PCI_VENDOR_APPLE = common dso_local global i64 0, align 8
@BHND_BOARD_BCM943224M93 = common dso_local global i64 0, align 8
@BWN_NPHY_TXREALFD = common dso_local global i32 0, align 4
@BWN_NPHY_MIMO_CRSTXEXT = common dso_local global i32 0, align 4
@BWN_NPHY_PLOAD_CSENSE_EXTLEN = common dso_local global i32 0, align 4
@BWN_NPHY_TXRIFS_FRDEL = common dso_local global i32 0, align 4
@BWN_NPHY_DUP40_GFBL = common dso_local global i32 0, align 4
@BWN_NPHY_DUP40_BL = common dso_local global i32 0, align 4
@BWN_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@BWN_NPHY_EPS_TABLE_ADJ0 = common dso_local global i32 0, align 4
@BWN_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@BWN_NPHY_EPS_TABLE_ADJ1 = common dso_local global i32 0, align 4
@BWN_NPHY_BBCFG = common dso_local global i32 0, align 4
@BWN_NPHY_BBCFG_RSTCCA = common dso_local global i32 0, align 4
@BWN_RFSEQ_RX2TX = common dso_local global i32 0, align 4
@BWN_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@BWN_NPHY_TXMACIF_HOLDOFF = common dso_local global i32 0, align 4
@BWN_NPHY_TXMACDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_phy_initn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_initn(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca %struct.bwn_phy_n*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwn_nphy_txgains, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bwn_nphy_txgains, align 4
  %16 = alloca %struct.bwn_nphy_txgains, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %18 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %17, i32 0, i32 1
  %19 = load %struct.bwn_softc*, %struct.bwn_softc** %18, align 8
  store %struct.bwn_softc* %19, %struct.bwn_softc** %4, align 8
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %21 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %20, i32 0, i32 0
  store %struct.bwn_phy* %21, %struct.bwn_phy** %5, align 8
  %22 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %23 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %22, i32 0, i32 1
  %24 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %23, align 8
  store %struct.bwn_phy_n* %24, %struct.bwn_phy_n** %6, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %26 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 3
  br i1 %29, label %30, label %49

30:                                               ; preds = %1
  %31 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %32 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BHND_NVAR_TSSIPOS2G, align 4
  %35 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %36 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %35, i32 0, i32 19
  %37 = call i32 @bhnd_nvram_getvar_uint8(i32 %33, i32 %34, i64* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %42 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %41, i32 0, i32 1
  %43 = load %struct.bwn_softc*, %struct.bwn_softc** %42, align 8
  %44 = load i32, i32* @BHND_NVAR_TSSIPOS2G, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @BWN_ERRPRINTF(%struct.bwn_softc* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %619

48:                                               ; preds = %30
  br label %52

49:                                               ; preds = %1
  %50 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %51 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %50, i32 0, i32 19
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %48
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %54 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 3
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %60 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BHND_BFL_EXTLNA, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %68 = call i64 @bwn_current_band(%struct.bwn_mac* %67)
  %69 = load i64, i64* @BWN_BAND_2G, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %73 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @BHND_CHIPC_WRITE_CHIPCTRL(i32 %74, i32 64, i32 64)
  br label %76

76:                                               ; preds = %71, %66, %58, %52
  %77 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %78 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %76
  %81 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %82 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %83, 7
  br i1 %84, label %100, label %85

85:                                               ; preds = %80
  %86 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %87 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 5
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %92 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @BHND_BFL2_INTERNDET_TXIQCAL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %90, %85
  %99 = phi i1 [ false, %85 ], [ %97, %90 ]
  br label %100

100:                                              ; preds = %98, %80, %76
  %101 = phi i1 [ true, %80 ], [ true, %76 ], [ %99, %98 ]
  %102 = zext i1 %101 to i32
  %103 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %104 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %106 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %105, i32 0, i32 18
  store i64 0, i64* %106, align 8
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %108 = call i32 @bwn_nphy_tables_init(%struct.bwn_mac* %107)
  %109 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %110 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %112 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %111, i32 0, i32 2
  store i32 0, i32* %112, align 8
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %114 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %116, 3
  br i1 %117, label %118, label %155

118:                                              ; preds = %100
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %120 = load i32, i32* @BWN_NPHY_TXF_40CO_B1S1, align 4
  %121 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %119, i32 %120, i32 0)
  %122 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %123 = load i32, i32* @BWN_NPHY_RFCTL_OVER, align 4
  %124 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %122, i32 %123, i32 0)
  %125 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %126 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 7
  br i1 %128, label %129, label %142

129:                                              ; preds = %118
  %130 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %131 = load i32, i32* @BWN_NPHY_REV7_RF_CTL_OVER3, align 4
  %132 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %130, i32 %131, i32 0)
  %133 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %134 = load i32, i32* @BWN_NPHY_REV7_RF_CTL_OVER4, align 4
  %135 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %133, i32 %134, i32 0)
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %137 = load i32, i32* @BWN_NPHY_REV7_RF_CTL_OVER5, align 4
  %138 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %136, i32 %137, i32 0)
  %139 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %140 = load i32, i32* @BWN_NPHY_REV7_RF_CTL_OVER6, align 4
  %141 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %139, i32 %140, i32 0)
  br label %142

142:                                              ; preds = %129, %118
  %143 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %144 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sge i32 %145, 19
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %142
  %149 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %150 = load i32, i32* @BWN_NPHY_TXF_40CO_B1S0, align 4
  %151 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %149, i32 %150, i32 0)
  %152 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %153 = load i32, i32* @BWN_NPHY_TXF_40CO_B32S1, align 4
  %154 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %152, i32 %153, i32 0)
  br label %159

155:                                              ; preds = %100
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %157 = load i32, i32* @BWN_NPHY_RFCTL_OVER, align 4
  %158 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %156, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %155, %148
  %160 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %161 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %162 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %160, i32 %161, i32 0)
  %163 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %164 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %165 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %163, i32 %164, i32 0)
  %166 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %167 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %169, 6
  br i1 %170, label %171, label %178

171:                                              ; preds = %159
  %172 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %173 = load i32, i32* @BWN_NPHY_RFCTL_INTC3, align 4
  %174 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %172, i32 %173, i32 0)
  %175 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %176 = load i32, i32* @BWN_NPHY_RFCTL_INTC4, align 4
  %177 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %175, i32 %176, i32 0)
  br label %178

178:                                              ; preds = %171, %159
  %179 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %180 = load i32, i32* @BWN_NPHY_RFSEQMODE, align 4
  %181 = load i32, i32* @BWN_NPHY_RFSEQMODE_CAOVER, align 4
  %182 = load i32, i32* @BWN_NPHY_RFSEQMODE_TROVER, align 4
  %183 = or i32 %181, %182
  %184 = xor i32 %183, -1
  %185 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %179, i32 %180, i32 %184)
  %186 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %187 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp sge i32 %189, 3
  br i1 %190, label %191, label %195

191:                                              ; preds = %178
  %192 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %193 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %194 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %192, i32 %193, i32 0)
  br label %195

195:                                              ; preds = %191, %178
  %196 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %197 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %198 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %196, i32 %197, i32 0)
  %199 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %200 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp sle i32 %202, 2
  br i1 %203, label %204, label %220

204:                                              ; preds = %195
  %205 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %206 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 59, i32 64
  store i32 %211, i32* %10, align 4
  %212 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %213 = load i32, i32* @BWN_NPHY_BPHY_CTL3, align 4
  %214 = load i32, i32* @BWN_NPHY_BPHY_CTL3_SCALE, align 4
  %215 = xor i32 %214, -1
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @BWN_NPHY_BPHY_CTL3_SCALE_SHIFT, align 4
  %218 = shl i32 %216, %217
  %219 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %212, i32 %213, i32 %215, i32 %218)
  br label %220

220:                                              ; preds = %204, %195
  %221 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %222 = load i32, i32* @BWN_NPHY_AFESEQ_TX2RX_PUD_20M, align 4
  %223 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %221, i32 %222, i32 32)
  %224 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %225 = load i32, i32* @BWN_NPHY_AFESEQ_TX2RX_PUD_40M, align 4
  %226 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %224, i32 %225, i32 32)
  %227 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %228 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @BHND_BFL2_SKWRKFEM_BRD, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %248, label %234

234:                                              ; preds = %220
  %235 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %236 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @PCI_VENDOR_APPLE, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %234
  %242 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %243 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @BHND_BOARD_BCM943224M93, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %241, %220
  %249 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %250 = load i32, i32* @BWN_NPHY_TXREALFD, align 4
  %251 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %249, i32 %250, i32 160)
  br label %256

252:                                              ; preds = %241, %234
  %253 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %254 = load i32, i32* @BWN_NPHY_TXREALFD, align 4
  %255 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %253, i32 %254, i32 184)
  br label %256

256:                                              ; preds = %252, %248
  %257 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %258 = load i32, i32* @BWN_NPHY_MIMO_CRSTXEXT, align 4
  %259 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %257, i32 %258, i32 200)
  %260 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %261 = load i32, i32* @BWN_NPHY_PLOAD_CSENSE_EXTLEN, align 4
  %262 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %260, i32 %261, i32 80)
  %263 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %264 = load i32, i32* @BWN_NPHY_TXRIFS_FRDEL, align 4
  %265 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %263, i32 %264, i32 48)
  %266 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %267 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %268, 8
  br i1 %269, label %270, label %276

270:                                              ; preds = %256
  %271 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %272 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %273 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %272, i32 0, i32 17
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @bwn_nphy_update_mimo_config(%struct.bwn_mac* %271, i32 %274)
  br label %276

276:                                              ; preds = %270, %256
  %277 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %278 = call i32 @bwn_nphy_update_txrx_chain(%struct.bwn_mac* %277)
  %279 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %280 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %281, 2
  br i1 %282, label %283, label %290

283:                                              ; preds = %276
  %284 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %285 = load i32, i32* @BWN_NPHY_DUP40_GFBL, align 4
  %286 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %284, i32 %285, i32 2728)
  %287 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %288 = load i32, i32* @BWN_NPHY_DUP40_BL, align 4
  %289 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %287, i32 %288, i32 2468)
  br label %290

290:                                              ; preds = %283, %276
  %291 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %292 = call i64 @bwn_current_band(%struct.bwn_mac* %291)
  store i64 %292, i64* %11, align 8
  %293 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %294 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %323

296:                                              ; preds = %290
  %297 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %298 = load i32, i32* @BWN_NPHY_PAPD_EN0, align 4
  %299 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %297, i32 %298, i32 1)
  %300 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %301 = load i32, i32* @BWN_NPHY_EPS_TABLE_ADJ0, align 4
  %302 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %303 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = shl i32 %306, 7
  %308 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %300, i32 %301, i32 127, i32 %307)
  %309 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %310 = load i32, i32* @BWN_NPHY_PAPD_EN1, align 4
  %311 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %309, i32 %310, i32 1)
  %312 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %313 = load i32, i32* @BWN_NPHY_EPS_TABLE_ADJ1, align 4
  %314 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %315 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  %318 = load i32, i32* %317, align 4
  %319 = shl i32 %318, 7
  %320 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %312, i32 %313, i32 127, i32 %319)
  %321 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %322 = call i32 @bwn_nphy_int_pa_set_tx_dig_filters(%struct.bwn_mac* %321)
  br label %332

323:                                              ; preds = %290
  %324 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %325 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = icmp sge i32 %326, 5
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %330 = call i32 @bwn_nphy_ext_pa_set_tx_dig_filters(%struct.bwn_mac* %329)
  br label %331

331:                                              ; preds = %328, %323
  br label %332

332:                                              ; preds = %331, %296
  %333 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %334 = call i32 @bwn_nphy_workarounds(%struct.bwn_mac* %333)
  store i32 %334, i32* %9, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %332
  %337 = load i32, i32* %9, align 4
  store i32 %337, i32* %2, align 4
  br label %619

338:                                              ; preds = %332
  %339 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %340 = call i32 @bwn_phy_force_clock(%struct.bwn_mac* %339, i32 1)
  %341 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %342 = load i32, i32* @BWN_NPHY_BBCFG, align 4
  %343 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %341, i32 %342)
  store i32 %343, i32* %10, align 4
  %344 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %345 = load i32, i32* @BWN_NPHY_BBCFG, align 4
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* @BWN_NPHY_BBCFG_RSTCCA, align 4
  %348 = or i32 %346, %347
  %349 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %344, i32 %345, i32 %348)
  %350 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %351 = load i32, i32* @BWN_NPHY_BBCFG, align 4
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* @BWN_NPHY_BBCFG_RSTCCA, align 4
  %354 = xor i32 %353, -1
  %355 = and i32 %352, %354
  %356 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %350, i32 %351, i32 %355)
  %357 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %358 = call i32 @bwn_phy_force_clock(%struct.bwn_mac* %357, i32 0)
  %359 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %360 = call i32 @bwn_mac_phy_clock_set(%struct.bwn_mac* %359, i32 1)
  %361 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %362 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %363, 7
  br i1 %364, label %365, label %376

365:                                              ; preds = %338
  %366 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %367 = call i32 @bwn_nphy_pa_override(%struct.bwn_mac* %366, i32 0)
  %368 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %369 = load i32, i32* @BWN_RFSEQ_RX2TX, align 4
  %370 = call i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac* %368, i32 %369)
  %371 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %372 = load i32, i32* @BWN_RFSEQ_RESET2RX, align 4
  %373 = call i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac* %371, i32 %372)
  %374 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %375 = call i32 @bwn_nphy_pa_override(%struct.bwn_mac* %374, i32 1)
  br label %376

376:                                              ; preds = %365, %338
  %377 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %378 = call i32 @bwn_nphy_classifier(%struct.bwn_mac* %377, i32 0, i32 0)
  %379 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %380 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %381 = call i32 @bwn_nphy_read_clip_detection(%struct.bwn_mac* %379, i32* %380)
  %382 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %383 = call i64 @bwn_current_band(%struct.bwn_mac* %382)
  %384 = load i64, i64* @BWN_BAND_2G, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %389

386:                                              ; preds = %376
  %387 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %388 = call i32 @bwn_nphy_bphy_init(%struct.bwn_mac* %387)
  br label %389

389:                                              ; preds = %386, %376
  %390 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %391 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 8
  store i32 %392, i32* %7, align 4
  %393 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %394 = call i32 @bwn_nphy_tx_power_ctrl(%struct.bwn_mac* %393, i32 0)
  %395 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %396 = call i32 @bwn_nphy_tx_power_fix(%struct.bwn_mac* %395)
  store i32 %396, i32* %9, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %389
  %399 = load i32, i32* %9, align 4
  store i32 %399, i32* %2, align 4
  br label %619

400:                                              ; preds = %389
  %401 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %402 = call i32 @bwn_nphy_tx_power_ctl_idle_tssi(%struct.bwn_mac* %401)
  %403 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %404 = call i32 @bwn_nphy_tx_power_ctl_setup(%struct.bwn_mac* %403)
  %405 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %406 = call i32 @bwn_nphy_tx_gain_table_upload(%struct.bwn_mac* %405)
  %407 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %408 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, 3
  br i1 %410, label %411, label %417

411:                                              ; preds = %400
  %412 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %413 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %414 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @bwn_nphy_set_rx_core_state(%struct.bwn_mac* %412, i32 %415)
  br label %417

417:                                              ; preds = %411, %400
  %418 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %419 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %418, i32 0, i32 6
  %420 = load i64, i64* %419, align 8
  %421 = icmp sgt i64 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %417
  br label %423

423:                                              ; preds = %422, %417
  store i32 0, i32* %12, align 4
  %424 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %425 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = icmp sge i32 %426, 3
  br i1 %427, label %428, label %459

428:                                              ; preds = %423
  %429 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %430 = call i64 @bwn_current_band(%struct.bwn_mac* %429)
  %431 = load i64, i64* @BWN_BAND_2G, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %441

433:                                              ; preds = %428
  %434 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %435 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %434, i32 0, i32 16
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = icmp ne i32 %437, 0
  %439 = xor i1 %438, true
  %440 = zext i1 %439 to i32
  store i32 %440, i32* %12, align 4
  br label %449

441:                                              ; preds = %428
  %442 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %443 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp ne i32 %445, 0
  %447 = xor i1 %446, true
  %448 = zext i1 %447 to i32
  store i32 %448, i32* %12, align 4
  br label %449

449:                                              ; preds = %441, %433
  %450 = load i32, i32* %12, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %454 = call i32 @bwn_nphy_rssi_cal(%struct.bwn_mac* %453)
  br label %458

455:                                              ; preds = %449
  %456 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %457 = call i32 @bwn_nphy_restore_rssi_cal(%struct.bwn_mac* %456)
  br label %458

458:                                              ; preds = %455, %452
  br label %462

459:                                              ; preds = %423
  %460 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %461 = call i32 @bwn_nphy_rssi_cal(%struct.bwn_mac* %460)
  br label %462

462:                                              ; preds = %459, %458
  %463 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %464 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %463, i32 0, i32 7
  %465 = load i32, i32* %464, align 8
  %466 = and i32 %465, 6
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %583, label %468

468:                                              ; preds = %462
  %469 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %470 = call i64 @bwn_current_band(%struct.bwn_mac* %469)
  %471 = load i64, i64* @BWN_BAND_2G, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %481

473:                                              ; preds = %468
  %474 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %475 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %474, i32 0, i32 14
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = icmp ne i32 %477, 0
  %479 = xor i1 %478, true
  %480 = zext i1 %479 to i32
  store i32 %480, i32* %14, align 4
  br label %489

481:                                              ; preds = %468
  %482 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %483 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %482, i32 0, i32 13
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = icmp ne i32 %485, 0
  %487 = xor i1 %486, true
  %488 = zext i1 %487 to i32
  store i32 %488, i32* %14, align 4
  br label %489

489:                                              ; preds = %481, %473
  %490 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %491 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %490, i32 0, i32 12
  %492 = load i64, i64* %491, align 8
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %489
  store i32 0, i32* %14, align 4
  br label %495

495:                                              ; preds = %494, %489
  %496 = load i32, i32* %14, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %579

498:                                              ; preds = %495
  %499 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %500 = call i32 @bwn_nphy_get_tx_gains(%struct.bwn_mac* %499)
  %501 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %15, i32 0, i32 0
  store i32 %500, i32* %501, align 4
  %502 = bitcast %struct.bwn_nphy_txgains* %8 to i8*
  %503 = bitcast %struct.bwn_nphy_txgains* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %502, i8* align 4 %503, i64 4, i1 false)
  %504 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %505 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %504, i32 0, i32 8
  %506 = load i32, i32* %505, align 4
  %507 = icmp eq i32 %506, 2
  br i1 %507, label %508, label %516

508:                                              ; preds = %498
  %509 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %510 = call i32 @bwn_nphy_superswitch_init(%struct.bwn_mac* %509, i32 1)
  store i32 %510, i32* %9, align 4
  %511 = load i32, i32* %9, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %508
  %514 = load i32, i32* %9, align 4
  store i32 %514, i32* %2, align 4
  br label %619

515:                                              ; preds = %508
  br label %516

516:                                              ; preds = %515, %498
  %517 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %518 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %517, i32 0, i32 9
  %519 = load i32, i32* %518, align 8
  %520 = icmp ne i32 %519, 2
  br i1 %520, label %521, label %571

521:                                              ; preds = %516
  %522 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %523 = call i32 @bwn_nphy_rssi_cal(%struct.bwn_mac* %522)
  %524 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %525 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = icmp sge i32 %526, 3
  br i1 %527, label %528, label %554

528:                                              ; preds = %521
  %529 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %530 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %529, i32 0, i32 10
  %531 = load %struct.TYPE_11__*, %struct.TYPE_11__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i64 0
  %533 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %536 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %535, i32 0, i32 11
  %537 = load i32*, i32** %536, align 8
  %538 = getelementptr inbounds i32, i32* %537, i64 0
  store i32 %534, i32* %538, align 4
  %539 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %540 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %539, i32 0, i32 10
  %541 = load %struct.TYPE_11__*, %struct.TYPE_11__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i64 1
  %543 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %546 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %545, i32 0, i32 11
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 1
  store i32 %544, i32* %548, align 4
  %549 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %550 = call i32 @bwn_nphy_get_tx_gains(%struct.bwn_mac* %549)
  %551 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %16, i32 0, i32 0
  store i32 %550, i32* %551, align 4
  %552 = bitcast %struct.bwn_nphy_txgains* %8 to i8*
  %553 = bitcast %struct.bwn_nphy_txgains* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %552, i8* align 4 %553, i64 4, i1 false)
  br label %554

554:                                              ; preds = %528, %521
  %555 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %556 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %8, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @bwn_nphy_cal_tx_iq_lo(%struct.bwn_mac* %555, i32 %557, i32 1, i32 0)
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %570, label %560

560:                                              ; preds = %554
  %561 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %562 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %8, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = call i64 @bwn_nphy_cal_rx_iq(%struct.bwn_mac* %561, i32 %563, i32 2, i32 0)
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %566, label %569

566:                                              ; preds = %560
  %567 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %568 = call i32 @bwn_nphy_save_cal(%struct.bwn_mac* %567)
  br label %569

569:                                              ; preds = %566, %560
  br label %570

570:                                              ; preds = %569, %554
  br label %578

571:                                              ; preds = %516
  %572 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %573 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %572, i32 0, i32 6
  %574 = load i64, i64* %573, align 8
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %576, label %577

576:                                              ; preds = %571
  br label %577

577:                                              ; preds = %576, %571
  br label %578

578:                                              ; preds = %577, %570
  br label %582

579:                                              ; preds = %495
  %580 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %581 = call i32 @bwn_nphy_restore_cal(%struct.bwn_mac* %580)
  br label %582

582:                                              ; preds = %579, %578
  br label %583

583:                                              ; preds = %582, %462
  %584 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %585 = call i32 @bwn_nphy_tx_pwr_ctrl_coef_setup(%struct.bwn_mac* %584)
  %586 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %587 = load i32, i32* %7, align 4
  %588 = call i32 @bwn_nphy_tx_power_ctrl(%struct.bwn_mac* %586, i32 %587)
  %589 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %590 = load i32, i32* @BWN_NPHY_TXMACIF_HOLDOFF, align 4
  %591 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %589, i32 %590, i32 21)
  %592 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %593 = load i32, i32* @BWN_NPHY_TXMACDELAY, align 4
  %594 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %592, i32 %593, i32 800)
  %595 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %596 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = icmp sge i32 %597, 3
  br i1 %598, label %599, label %608

599:                                              ; preds = %583
  %600 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %601 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = icmp sle i32 %602, 6
  br i1 %603, label %604, label %608

604:                                              ; preds = %599
  %605 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %606 = load i32, i32* @BWN_NPHY_PLOAD_CSENSE_EXTLEN, align 4
  %607 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %605, i32 %606, i32 50)
  br label %608

608:                                              ; preds = %604, %599, %583
  %609 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %610 = call i32 @bwn_nphy_tx_lpf_bw(%struct.bwn_mac* %609)
  %611 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %612 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = icmp sge i32 %613, 3
  br i1 %614, label %615, label %618

615:                                              ; preds = %608
  %616 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %617 = call i32 @bwn_nphy_spur_workaround(%struct.bwn_mac* %616)
  br label %618

618:                                              ; preds = %615, %608
  store i32 0, i32* %2, align 4
  br label %619

619:                                              ; preds = %618, %513, %398, %336, %40
  %620 = load i32, i32* %2, align 4
  ret i32 %620
}

declare dso_local i32 @bhnd_nvram_getvar_uint8(i32, i32, i64*) #1

declare dso_local i32 @BWN_ERRPRINTF(%struct.bwn_softc*, i8*, i32, i32) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @BHND_CHIPC_WRITE_CHIPCTRL(i32, i32, i32) #1

declare dso_local i64 @bwn_nphy_ipa(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tables_init(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_nphy_update_mimo_config(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_update_txrx_chain(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_int_pa_set_tx_dig_filters(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_ext_pa_set_tx_dig_filters(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_workarounds(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_force_clock(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_mac_phy_clock_set(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_pa_override(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_classifier(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_read_clip_detection(%struct.bwn_mac*, i32*) #1

declare dso_local i32 @bwn_nphy_bphy_init(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tx_power_ctrl(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_tx_power_fix(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tx_power_ctl_idle_tssi(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tx_power_ctl_setup(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tx_gain_table_upload(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_set_rx_core_state(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_rssi_cal(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_restore_rssi_cal(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_get_tx_gains(%struct.bwn_mac*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bwn_nphy_superswitch_init(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_cal_tx_iq_lo(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i64 @bwn_nphy_cal_rx_iq(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_nphy_save_cal(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_restore_cal(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tx_pwr_ctrl_coef_setup(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tx_lpf_bw(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_spur_workaround(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
