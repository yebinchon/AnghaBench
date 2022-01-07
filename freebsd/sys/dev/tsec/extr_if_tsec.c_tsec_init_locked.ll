; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32, i32, i32, i64, i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.ifnet*, %struct.tsec_desc*, %struct.tsec_desc* }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32, i32, i32, i32 }
%struct.tsec_desc = type { i32, i64, i64 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@TSEC_REG_MACCFG2 = common dso_local global i32 0, align 4
@TSEC_MACCFG2_FULLDUPLEX = common dso_local global i32 0, align 4
@TSEC_MACCFG2_PADCRC = common dso_local global i32 0, align 4
@TSEC_MACCFG2_GMII = common dso_local global i32 0, align 4
@TSEC_MACCFG2_PRECNT = common dso_local global i32 0, align 4
@TSEC_REG_ID2 = common dso_local global i32 0, align 4
@TSEC_ECNTRL_TBIM = common dso_local global i32 0, align 4
@TSEC_ECNTRL_SGMIIM = common dso_local global i32 0, align 4
@TSEC_ECNTRL_R100M = common dso_local global i32 0, align 4
@TSEC_REG_ECNTRL = common dso_local global i32 0, align 4
@TSEC_ECNTRL_STEN = common dso_local global i32 0, align 4
@TSEC_REG_TBIPA = common dso_local global i32 0, align 4
@TSEC_REG_MIIMCFG = common dso_local global i32 0, align 4
@TSEC_MIIMCFG_RESETMGMT = common dso_local global i32 0, align 4
@TSEC_MIIMCFG_CLKDIV28 = common dso_local global i32 0, align 4
@TSEC_MIIMIND_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"tsec_init_locked(): Mgmt busy timeout\0A\00", align 1
@TSEC_REG_IEVENT = common dso_local global i32 0, align 4
@TSEC_REG_IADDR0 = common dso_local global i32 0, align 4
@TSEC_REG_IADDR1 = common dso_local global i32 0, align 4
@TSEC_REG_IADDR2 = common dso_local global i32 0, align 4
@TSEC_REG_IADDR3 = common dso_local global i32 0, align 4
@TSEC_REG_IADDR4 = common dso_local global i32 0, align 4
@TSEC_REG_IADDR5 = common dso_local global i32 0, align 4
@TSEC_REG_IADDR6 = common dso_local global i32 0, align 4
@TSEC_REG_IADDR7 = common dso_local global i32 0, align 4
@TSEC_REG_GADDR0 = common dso_local global i32 0, align 4
@TSEC_REG_GADDR1 = common dso_local global i32 0, align 4
@TSEC_REG_GADDR2 = common dso_local global i32 0, align 4
@TSEC_REG_GADDR3 = common dso_local global i32 0, align 4
@TSEC_REG_GADDR4 = common dso_local global i32 0, align 4
@TSEC_REG_GADDR5 = common dso_local global i32 0, align 4
@TSEC_REG_GADDR6 = common dso_local global i32 0, align 4
@TSEC_REG_GADDR7 = common dso_local global i32 0, align 4
@TSEC_REG_RCTRL = common dso_local global i32 0, align 4
@TSEC_REG_FIFO_PAUSE_CTRL = common dso_local global i32 0, align 4
@TSEC_FIFO_PAUSE_CTRL_EN = common dso_local global i32 0, align 4
@TSEC_REG_TBASE = common dso_local global i32 0, align 4
@TSEC_REG_RBASE = common dso_local global i32 0, align 4
@TSEC_TX_NUM_DESC = common dso_local global i32 0, align 4
@TSEC_TXBD_W = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@TSEC_RX_NUM_DESC = common dso_local global i32 0, align 4
@TSEC_RXBD_E = common dso_local global i32 0, align 4
@TSEC_RXBD_I = common dso_local global i32 0, align 4
@TSEC_RXBD_W = common dso_local global i32 0, align 4
@TSEC_REG_MRBLR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@TSEC_REG_MINFLR = common dso_local global i32 0, align 4
@TSEC_MIN_FRAME_SIZE = common dso_local global i32 0, align 4
@TSEC_REG_ATTR = common dso_local global i32 0, align 4
@TSEC_ATTR_RDSEN = common dso_local global i32 0, align 4
@TSEC_ATTR_RBDSEN = common dso_local global i32 0, align 4
@TSEC_REG_ATTRELI = common dso_local global i32 0, align 4
@TSEC_REG_MON_TSCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_TMCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_TLCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_TXCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_TNCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_CAM1 = common dso_local global i32 0, align 4
@TSEC_REG_MON_CAM2 = common dso_local global i32 0, align 4
@TSEC_REG_MACCFG1 = common dso_local global i32 0, align 4
@TSEC_MACCFG1_RX_EN = common dso_local global i32 0, align 4
@TSEC_MACCFG1_TX_EN = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tsec_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_init_locked(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca %struct.tsec_desc*, align 8
  %4 = alloca %struct.tsec_desc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  %9 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %10 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %9, i32 0, i32 14
  %11 = load %struct.tsec_desc*, %struct.tsec_desc** %10, align 8
  store %struct.tsec_desc* %11, %struct.tsec_desc** %3, align 8
  %12 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %13 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %12, i32 0, i32 13
  %14 = load %struct.tsec_desc*, %struct.tsec_desc** %13, align 8
  store %struct.tsec_desc* %14, %struct.tsec_desc** %4, align 8
  %15 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %16 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %15, i32 0, i32 12
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %355

25:                                               ; preds = %1
  %26 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %27 = call i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc* %26)
  %28 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %29 = call i32 @tsec_stop(%struct.tsec_softc* %28)
  %30 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %31 = call i32 @tsec_reset_mac(%struct.tsec_softc* %30)
  %32 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %33 = load i32, i32* @TSEC_REG_MACCFG2, align 4
  %34 = load i32, i32* @TSEC_MACCFG2_FULLDUPLEX, align 4
  %35 = load i32, i32* @TSEC_MACCFG2_PADCRC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @TSEC_MACCFG2_GMII, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TSEC_MACCFG2_PRECNT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @TSEC_WRITE(%struct.tsec_softc* %32, i32 %33, i32 %40)
  %42 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %43 = load i32, i32* @TSEC_REG_ID2, align 4
  %44 = call i32 @TSEC_READ(%struct.tsec_softc* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 65535
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load i32, i32* @TSEC_ECNTRL_TBIM, align 4
  %50 = load i32, i32* @TSEC_ECNTRL_SGMIIM, align 4
  %51 = or i32 %49, %50
  br label %54

52:                                               ; preds = %25
  %53 = load i32, i32* @TSEC_ECNTRL_R100M, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ %53, %52 ]
  store i32 %55, i32* %6, align 4
  %56 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %57 = load i32, i32* @TSEC_REG_ECNTRL, align 4
  %58 = load i32, i32* @TSEC_ECNTRL_STEN, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @TSEC_WRITE(%struct.tsec_softc* %56, i32 %57, i32 %60)
  %62 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %63 = call i32 @tsec_set_mac_address(%struct.tsec_softc* %62)
  %64 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %65 = load i32, i32* @TSEC_REG_TBIPA, align 4
  %66 = call i32 @TSEC_WRITE(%struct.tsec_softc* %64, i32 %65, i32 5)
  %67 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %68 = call i32 @TSEC_PHY_LOCK(%struct.tsec_softc* %67)
  %69 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %70 = load i32, i32* @TSEC_REG_MIIMCFG, align 4
  %71 = load i32, i32* @TSEC_MIIMCFG_RESETMGMT, align 4
  %72 = call i32 @TSEC_PHY_WRITE(%struct.tsec_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %74 = load i32, i32* @TSEC_REG_MIIMCFG, align 4
  %75 = load i32, i32* @TSEC_MIIMCFG_CLKDIV28, align 4
  %76 = call i32 @TSEC_PHY_WRITE(%struct.tsec_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %78 = load i32, i32* @TSEC_MIIMIND_BUSY, align 4
  %79 = call i32 @tsec_mii_wait(%struct.tsec_softc* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %81 = call i32 @TSEC_PHY_UNLOCK(%struct.tsec_softc* %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %54
  %85 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %86 = call i32 @if_printf(%struct.ifnet* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %355

87:                                               ; preds = %54
  %88 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %89 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mii_mediachg(i32 %90)
  %92 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %93 = load i32, i32* @TSEC_REG_IEVENT, align 4
  %94 = call i32 @TSEC_WRITE(%struct.tsec_softc* %92, i32 %93, i32 -1)
  %95 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %96 = call i32 @tsec_intrs_ctl(%struct.tsec_softc* %95, i32 1)
  %97 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %98 = load i32, i32* @TSEC_REG_IADDR0, align 4
  %99 = call i32 @TSEC_WRITE(%struct.tsec_softc* %97, i32 %98, i32 0)
  %100 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %101 = load i32, i32* @TSEC_REG_IADDR1, align 4
  %102 = call i32 @TSEC_WRITE(%struct.tsec_softc* %100, i32 %101, i32 0)
  %103 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %104 = load i32, i32* @TSEC_REG_IADDR2, align 4
  %105 = call i32 @TSEC_WRITE(%struct.tsec_softc* %103, i32 %104, i32 0)
  %106 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %107 = load i32, i32* @TSEC_REG_IADDR3, align 4
  %108 = call i32 @TSEC_WRITE(%struct.tsec_softc* %106, i32 %107, i32 0)
  %109 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %110 = load i32, i32* @TSEC_REG_IADDR4, align 4
  %111 = call i32 @TSEC_WRITE(%struct.tsec_softc* %109, i32 %110, i32 0)
  %112 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %113 = load i32, i32* @TSEC_REG_IADDR5, align 4
  %114 = call i32 @TSEC_WRITE(%struct.tsec_softc* %112, i32 %113, i32 0)
  %115 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %116 = load i32, i32* @TSEC_REG_IADDR6, align 4
  %117 = call i32 @TSEC_WRITE(%struct.tsec_softc* %115, i32 %116, i32 0)
  %118 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %119 = load i32, i32* @TSEC_REG_IADDR7, align 4
  %120 = call i32 @TSEC_WRITE(%struct.tsec_softc* %118, i32 %119, i32 0)
  %121 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %122 = load i32, i32* @TSEC_REG_GADDR0, align 4
  %123 = call i32 @TSEC_WRITE(%struct.tsec_softc* %121, i32 %122, i32 0)
  %124 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %125 = load i32, i32* @TSEC_REG_GADDR1, align 4
  %126 = call i32 @TSEC_WRITE(%struct.tsec_softc* %124, i32 %125, i32 0)
  %127 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %128 = load i32, i32* @TSEC_REG_GADDR2, align 4
  %129 = call i32 @TSEC_WRITE(%struct.tsec_softc* %127, i32 %128, i32 0)
  %130 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %131 = load i32, i32* @TSEC_REG_GADDR3, align 4
  %132 = call i32 @TSEC_WRITE(%struct.tsec_softc* %130, i32 %131, i32 0)
  %133 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %134 = load i32, i32* @TSEC_REG_GADDR4, align 4
  %135 = call i32 @TSEC_WRITE(%struct.tsec_softc* %133, i32 %134, i32 0)
  %136 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %137 = load i32, i32* @TSEC_REG_GADDR5, align 4
  %138 = call i32 @TSEC_WRITE(%struct.tsec_softc* %136, i32 %137, i32 0)
  %139 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %140 = load i32, i32* @TSEC_REG_GADDR6, align 4
  %141 = call i32 @TSEC_WRITE(%struct.tsec_softc* %139, i32 %140, i32 0)
  %142 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %143 = load i32, i32* @TSEC_REG_GADDR7, align 4
  %144 = call i32 @TSEC_WRITE(%struct.tsec_softc* %142, i32 %143, i32 0)
  %145 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %146 = load i32, i32* @TSEC_REG_RCTRL, align 4
  %147 = call i32 @TSEC_WRITE(%struct.tsec_softc* %145, i32 %146, i32 0)
  %148 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %149 = call i32 @tsec_dma_ctl(%struct.tsec_softc* %148, i32 1)
  %150 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %151 = load i32, i32* @TSEC_REG_FIFO_PAUSE_CTRL, align 4
  %152 = load i32, i32* @TSEC_FIFO_PAUSE_CTRL_EN, align 4
  %153 = call i32 @TSEC_WRITE(%struct.tsec_softc* %150, i32 %151, i32 %152)
  %154 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %155 = load i32, i32* @TSEC_REG_TBASE, align 4
  %156 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %157 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @TSEC_WRITE(%struct.tsec_softc* %154, i32 %155, i32 %158)
  %160 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %161 = load i32, i32* @TSEC_REG_RBASE, align 4
  %162 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %163 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @TSEC_WRITE(%struct.tsec_softc* %160, i32 %161, i32 %164)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %195, %87
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @TSEC_TX_NUM_DESC, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %198

170:                                              ; preds = %166
  %171 = load %struct.tsec_desc*, %struct.tsec_desc** %3, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %171, i64 %173
  %175 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  %176 = load %struct.tsec_desc*, %struct.tsec_desc** %3, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %176, i64 %178
  %180 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @TSEC_TX_NUM_DESC, align 4
  %183 = sub nsw i32 %182, 1
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %170
  %186 = load i32, i32* @TSEC_TXBD_W, align 4
  br label %188

187:                                              ; preds = %170
  br label %188

188:                                              ; preds = %187, %185
  %189 = phi i32 [ %186, %185 ], [ 0, %187 ]
  %190 = load %struct.tsec_desc*, %struct.tsec_desc** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %190, i64 %192
  %194 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %193, i32 0, i32 0
  store i32 %189, i32* %194, align 8
  br label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %166

198:                                              ; preds = %166
  %199 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %200 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %203 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %206 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @bus_dmamap_sync(i32 %201, i32 %204, i32 %207)
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %250, %198
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @TSEC_RX_NUM_DESC, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %253

213:                                              ; preds = %209
  %214 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %215 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %214, i32 0, i32 8
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.tsec_desc*, %struct.tsec_desc** %4, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %222, i64 %224
  %226 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %225, i32 0, i32 2
  store i64 %221, i64* %226, align 8
  %227 = load %struct.tsec_desc*, %struct.tsec_desc** %4, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %227, i64 %229
  %231 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %230, i32 0, i32 1
  store i64 0, i64* %231, align 8
  %232 = load i32, i32* @TSEC_RXBD_E, align 4
  %233 = load i32, i32* @TSEC_RXBD_I, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @TSEC_RX_NUM_DESC, align 4
  %237 = sub nsw i32 %236, 1
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %213
  %240 = load i32, i32* @TSEC_RXBD_W, align 4
  br label %242

241:                                              ; preds = %213
  br label %242

242:                                              ; preds = %241, %239
  %243 = phi i32 [ %240, %239 ], [ 0, %241 ]
  %244 = or i32 %234, %243
  %245 = load %struct.tsec_desc*, %struct.tsec_desc** %4, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %245, i64 %247
  %249 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %248, i32 0, i32 0
  store i32 %244, i32* %249, align 8
  br label %250

250:                                              ; preds = %242
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %7, align 4
  br label %209

253:                                              ; preds = %209
  %254 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %255 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %258 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %261 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %262 = or i32 %260, %261
  %263 = call i32 @bus_dmamap_sync(i32 %256, i32 %259, i32 %262)
  %264 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %265 = load i32, i32* @TSEC_REG_MRBLR, align 4
  %266 = load i32, i32* @MCLBYTES, align 4
  %267 = call i32 @TSEC_WRITE(%struct.tsec_softc* %264, i32 %265, i32 %266)
  %268 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %269 = load i32, i32* @TSEC_REG_MINFLR, align 4
  %270 = load i32, i32* @TSEC_MIN_FRAME_SIZE, align 4
  %271 = call i32 @TSEC_WRITE(%struct.tsec_softc* %268, i32 %269, i32 %270)
  %272 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %273 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %274 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @tsec_set_mtu(%struct.tsec_softc* %272, i32 %275)
  %277 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %278 = load i32, i32* @TSEC_REG_ATTR, align 4
  %279 = load i32, i32* @TSEC_ATTR_RDSEN, align 4
  %280 = load i32, i32* @TSEC_ATTR_RBDSEN, align 4
  %281 = or i32 %279, %280
  %282 = call i32 @TSEC_WRITE(%struct.tsec_softc* %277, i32 %278, i32 %281)
  %283 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %284 = load i32, i32* @TSEC_REG_ATTRELI, align 4
  %285 = call i32 @TSEC_WRITE(%struct.tsec_softc* %283, i32 %284, i32 0)
  %286 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %287 = load i32, i32* @TSEC_REG_MON_TSCL, align 4
  %288 = call i32 @TSEC_WRITE(%struct.tsec_softc* %286, i32 %287, i32 0)
  %289 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %290 = load i32, i32* @TSEC_REG_MON_TMCL, align 4
  %291 = call i32 @TSEC_WRITE(%struct.tsec_softc* %289, i32 %290, i32 0)
  %292 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %293 = load i32, i32* @TSEC_REG_MON_TLCL, align 4
  %294 = call i32 @TSEC_WRITE(%struct.tsec_softc* %292, i32 %293, i32 0)
  %295 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %296 = load i32, i32* @TSEC_REG_MON_TXCL, align 4
  %297 = call i32 @TSEC_WRITE(%struct.tsec_softc* %295, i32 %296, i32 0)
  %298 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %299 = load i32, i32* @TSEC_REG_MON_TNCL, align 4
  %300 = call i32 @TSEC_WRITE(%struct.tsec_softc* %298, i32 %299, i32 0)
  %301 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %302 = load i32, i32* @TSEC_REG_MON_CAM1, align 4
  %303 = call i32 @TSEC_WRITE(%struct.tsec_softc* %301, i32 %302, i32 -1)
  %304 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %305 = load i32, i32* @TSEC_REG_MON_CAM2, align 4
  %306 = call i32 @TSEC_WRITE(%struct.tsec_softc* %304, i32 %305, i32 -1)
  %307 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %308 = load i32, i32* @TSEC_REG_MACCFG1, align 4
  %309 = call i32 @TSEC_READ(%struct.tsec_softc* %307, i32 %308)
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* @TSEC_MACCFG1_RX_EN, align 4
  %311 = load i32, i32* @TSEC_MACCFG1_TX_EN, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* %6, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %6, align 4
  %315 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %316 = load i32, i32* @TSEC_REG_MACCFG1, align 4
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @TSEC_WRITE(%struct.tsec_softc* %315, i32 %316, i32 %317)
  %319 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %320 = call i32 @TSEC_TX_RX_COUNTERS_INIT(%struct.tsec_softc* %319)
  %321 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %322 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %321, i32 0, i32 5
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %253
  %326 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %327 = call i32 @tsec_offload_setup(%struct.tsec_softc* %326)
  br label %328

328:                                              ; preds = %325, %253
  %329 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %330 = call i32 @tsec_setup_multicast(%struct.tsec_softc* %329)
  %331 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %332 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %333 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = or i32 %334, %331
  store i32 %335, i32* %333, align 4
  %336 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %337 = xor i32 %336, -1
  %338 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %339 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = and i32 %340, %337
  store i32 %341, i32* %339, align 4
  %342 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %343 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %346 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %345, i32 0, i32 4
  store i32 %344, i32* %346, align 8
  %347 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %348 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %347, i32 0, i32 3
  store i64 0, i64* %348, align 8
  %349 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %350 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %349, i32 0, i32 2
  %351 = load i32, i32* @hz, align 4
  %352 = load i32, i32* @tsec_tick, align 4
  %353 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %354 = call i32 @callout_reset(i32* %350, i32 %351, i32 %352, %struct.tsec_softc* %353)
  br label %355

355:                                              ; preds = %328, %84, %24
  ret void
}

declare dso_local i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_stop(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_reset_mac(%struct.tsec_softc*) #1

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @TSEC_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @tsec_set_mac_address(%struct.tsec_softc*) #1

declare dso_local i32 @TSEC_PHY_LOCK(%struct.tsec_softc*) #1

declare dso_local i32 @TSEC_PHY_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @tsec_mii_wait(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_PHY_UNLOCK(%struct.tsec_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @mii_mediachg(i32) #1

declare dso_local i32 @tsec_intrs_ctl(%struct.tsec_softc*, i32) #1

declare dso_local i32 @tsec_dma_ctl(%struct.tsec_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @tsec_set_mtu(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_TX_RX_COUNTERS_INIT(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_offload_setup(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_setup_multicast(%struct.tsec_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.tsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
