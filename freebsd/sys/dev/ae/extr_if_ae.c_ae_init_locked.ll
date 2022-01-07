; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AE_ISR_REG = common dso_local global i32 0, align 4
@AE_EADDR0_REG = common dso_local global i32 0, align 4
@AE_EADDR1_REG = common dso_local global i32 0, align 4
@AE_RXD_COUNT_DEFAULT = common dso_local global i32 0, align 4
@AE_RXD_PADDING = common dso_local global i32 0, align 4
@AE_TXD_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@AE_TXS_COUNT_DEFAULT = common dso_local global i32 0, align 4
@AE_DESC_ADDR_HI_REG = common dso_local global i32 0, align 4
@AE_RXD_ADDR_LO_REG = common dso_local global i32 0, align 4
@AE_TXD_ADDR_LO_REG = common dso_local global i32 0, align 4
@AE_TXS_ADDR_LO_REG = common dso_local global i32 0, align 4
@AE_RXD_COUNT_REG = common dso_local global i32 0, align 4
@AE_TXD_BUFSIZE_REG = common dso_local global i32 0, align 4
@AE_TXS_COUNT_REG = common dso_local global i32 0, align 4
@AE_IFG_TXIPG_DEFAULT = common dso_local global i32 0, align 4
@AE_IFG_TXIPG_SHIFT = common dso_local global i32 0, align 4
@AE_IFG_TXIPG_MASK = common dso_local global i32 0, align 4
@AE_IFG_RXIPG_DEFAULT = common dso_local global i32 0, align 4
@AE_IFG_RXIPG_SHIFT = common dso_local global i32 0, align 4
@AE_IFG_RXIPG_MASK = common dso_local global i32 0, align 4
@AE_IFG_IPGR1_DEFAULT = common dso_local global i32 0, align 4
@AE_IFG_IPGR1_SHIFT = common dso_local global i32 0, align 4
@AE_IFG_IPGR1_MASK = common dso_local global i32 0, align 4
@AE_IFG_IPGR2_DEFAULT = common dso_local global i32 0, align 4
@AE_IFG_IPGR2_SHIFT = common dso_local global i32 0, align 4
@AE_IFG_IPGR2_MASK = common dso_local global i32 0, align 4
@AE_IFG_REG = common dso_local global i32 0, align 4
@AE_HDPX_LCOL_DEFAULT = common dso_local global i32 0, align 4
@AE_HDPX_LCOL_SHIFT = common dso_local global i32 0, align 4
@AE_HDPX_LCOL_MASK = common dso_local global i32 0, align 4
@AE_HDPX_RETRY_DEFAULT = common dso_local global i32 0, align 4
@AE_HDPX_RETRY_SHIFT = common dso_local global i32 0, align 4
@AE_HDPX_RETRY_MASK = common dso_local global i32 0, align 4
@AE_HDPX_ABEBT_DEFAULT = common dso_local global i32 0, align 4
@AE_HDPX_ABEBT_SHIFT = common dso_local global i32 0, align 4
@AE_HDPX_ABEBT_MASK = common dso_local global i32 0, align 4
@AE_HDPX_JAMIPG_DEFAULT = common dso_local global i32 0, align 4
@AE_HDPX_JAMIPG_SHIFT = common dso_local global i32 0, align 4
@AE_HDPX_JAMIPG_MASK = common dso_local global i32 0, align 4
@AE_HDPX_EXC_EN = common dso_local global i32 0, align 4
@AE_HDPX_REG = common dso_local global i32 0, align 4
@AE_IMT_REG = common dso_local global i32 0, align 4
@AE_IMT_DEFAULT = common dso_local global i32 0, align 4
@AE_MASTER_REG = common dso_local global i32 0, align 4
@AE_MASTER_IMT_EN = common dso_local global i32 0, align 4
@AE_ICT_REG = common dso_local global i32 0, align 4
@AE_ICT_DEFAULT = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@AE_MTU_REG = common dso_local global i32 0, align 4
@AE_CUT_THRESH_REG = common dso_local global i32 0, align 4
@AE_CUT_THRESH_DEFAULT = common dso_local global i32 0, align 4
@AE_FLOW_THRESH_HI_REG = common dso_local global i32 0, align 4
@AE_FLOW_THRESH_LO_REG = common dso_local global i32 0, align 4
@AE_RXD_COUNT_MIN = common dso_local global i32 0, align 4
@AE_MB_TXD_IDX_REG = common dso_local global i32 0, align 4
@AE_MB_RXD_IDX_REG = common dso_local global i32 0, align 4
@AE_FLAG_TXAVAIL = common dso_local global i32 0, align 4
@AE_DMAREAD_REG = common dso_local global i32 0, align 4
@AE_DMAREAD_EN = common dso_local global i32 0, align 4
@AE_DMAWRITE_REG = common dso_local global i32 0, align 4
@AE_DMAWRITE_EN = common dso_local global i32 0, align 4
@AE_ISR_PHY_LINKDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Initialization failed.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AE_MASTER_MANUAL_INT = common dso_local global i32 0, align 4
@AE_IMR_REG = common dso_local global i32 0, align 4
@AE_IMR_DEFAULT = common dso_local global i32 0, align 4
@AE_WOL_REG = common dso_local global i32 0, align 4
@AE_MAC_TX_CRC_EN = common dso_local global i32 0, align 4
@AE_MAC_TX_AUTOPAD = common dso_local global i32 0, align 4
@AE_MAC_FULL_DUPLEX = common dso_local global i32 0, align 4
@AE_MAC_CLK_PHY = common dso_local global i32 0, align 4
@AE_MAC_TX_FLOW_EN = common dso_local global i32 0, align 4
@AE_MAC_RX_FLOW_EN = common dso_local global i32 0, align 4
@AE_HALFBUF_DEFAULT = common dso_local global i32 0, align 4
@AE_HALFBUF_SHIFT = common dso_local global i32 0, align 4
@AE_HALFBUF_MASK = common dso_local global i32 0, align 4
@AE_MAC_PREAMBLE_DEFAULT = common dso_local global i32 0, align 4
@AE_MAC_PREAMBLE_SHIFT = common dso_local global i32 0, align 4
@AE_MAC_PREAMBLE_MASK = common dso_local global i32 0, align 4
@AE_MAC_REG = common dso_local global i32 0, align 4
@AE_MAC_TX_EN = common dso_local global i32 0, align 4
@AE_MAC_RX_EN = common dso_local global i32 0, align 4
@AE_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ae_tick = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @ae_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ae_init_locked(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mii_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = call i32 @AE_LOCK_ASSERT(%struct.TYPE_16__* %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 15
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %4, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %391

27:                                               ; preds = %1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.mii_data* @device_get_softc(i32 %30)
  store %struct.mii_data* %31, %struct.mii_data** %5, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = call i32 @ae_stop(%struct.TYPE_16__* %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = call i32 @ae_reset(%struct.TYPE_16__* %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i32 @ae_pcie_init(%struct.TYPE_16__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = call i32 @ae_phy_init(%struct.TYPE_16__* %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = call i32 @ae_powersave_disable(%struct.TYPE_16__* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = load i32, i32* @AE_ISR_REG, align 4
  %44 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %42, i32 %43, i32 -1)
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = call i32 @IF_LLADDR(%struct.ifnet* %45)
  %47 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %48 = call i32 @bcopy(i32 %46, i32* %14, i32 %47)
  %49 = getelementptr inbounds i32, i32* %14, i64 2
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 24
  %52 = getelementptr inbounds i32, i32* %14, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = or i32 %51, %54
  %56 = getelementptr inbounds i32, i32* %14, i64 4
  %57 = load i32, i32* %56, align 16
  %58 = shl i32 %57, 8
  %59 = or i32 %55, %58
  %60 = getelementptr inbounds i32, i32* %14, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %59, %61
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = load i32, i32* @AE_EADDR0_REG, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %63, i32 %64, i32 %65)
  %67 = getelementptr inbounds i32, i32* %14, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = shl i32 %68, 8
  %70 = getelementptr inbounds i32, i32* %14, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %69, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = load i32, i32* @AE_EADDR1_REG, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 13
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AE_RXD_COUNT_DEFAULT, align 4
  %81 = mul nsw i32 %80, 1536
  %82 = load i32, i32* @AE_RXD_PADDING, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @bzero(i32 %79, i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 12
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AE_TXD_BUFSIZE_DEFAULT, align 4
  %89 = call i32 @bzero(i32 %87, i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @AE_TXS_COUNT_DEFAULT, align 4
  %94 = mul nsw i32 %93, 4
  %95 = call i32 @bzero(i32 %92, i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %9, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = load i32, i32* @AE_DESC_ADDR_HI_REG, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @BUS_ADDR_HI(i32 %101)
  %103 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %99, i32 %100, i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = load i32, i32* @AE_RXD_ADDR_LO_REG, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @BUS_ADDR_LO(i32 %106)
  %108 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %104, i32 %105, i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %9, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = load i32, i32* @AE_TXD_ADDR_LO_REG, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @BUS_ADDR_LO(i32 %114)
  %116 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %112, i32 %113, i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %9, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = load i32, i32* @AE_TXS_ADDR_LO_REG, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @BUS_ADDR_LO(i32 %122)
  %124 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %120, i32 %121, i32 %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = load i32, i32* @AE_RXD_COUNT_REG, align 4
  %127 = load i32, i32* @AE_RXD_COUNT_DEFAULT, align 4
  %128 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %125, i32 %126, i32 %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = load i32, i32* @AE_TXD_BUFSIZE_REG, align 4
  %131 = load i32, i32* @AE_TXD_BUFSIZE_DEFAULT, align 4
  %132 = sdiv i32 %131, 4
  %133 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %129, i32 %130, i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = load i32, i32* @AE_TXS_COUNT_REG, align 4
  %136 = load i32, i32* @AE_TXS_COUNT_DEFAULT, align 4
  %137 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %134, i32 %135, i32 %136)
  %138 = load i32, i32* @AE_IFG_TXIPG_DEFAULT, align 4
  %139 = load i32, i32* @AE_IFG_TXIPG_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* @AE_IFG_TXIPG_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @AE_IFG_RXIPG_DEFAULT, align 4
  %144 = load i32, i32* @AE_IFG_RXIPG_SHIFT, align 4
  %145 = shl i32 %143, %144
  %146 = load i32, i32* @AE_IFG_RXIPG_MASK, align 4
  %147 = and i32 %145, %146
  %148 = or i32 %142, %147
  %149 = load i32, i32* @AE_IFG_IPGR1_DEFAULT, align 4
  %150 = load i32, i32* @AE_IFG_IPGR1_SHIFT, align 4
  %151 = shl i32 %149, %150
  %152 = load i32, i32* @AE_IFG_IPGR1_MASK, align 4
  %153 = and i32 %151, %152
  %154 = or i32 %148, %153
  %155 = load i32, i32* @AE_IFG_IPGR2_DEFAULT, align 4
  %156 = load i32, i32* @AE_IFG_IPGR2_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* @AE_IFG_IPGR2_MASK, align 4
  %159 = and i32 %157, %158
  %160 = or i32 %154, %159
  store i32 %160, i32* %8, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = load i32, i32* @AE_IFG_REG, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %161, i32 %162, i32 %163)
  %165 = load i32, i32* @AE_HDPX_LCOL_DEFAULT, align 4
  %166 = load i32, i32* @AE_HDPX_LCOL_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* @AE_HDPX_LCOL_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @AE_HDPX_RETRY_DEFAULT, align 4
  %171 = load i32, i32* @AE_HDPX_RETRY_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = load i32, i32* @AE_HDPX_RETRY_MASK, align 4
  %174 = and i32 %172, %173
  %175 = or i32 %169, %174
  %176 = load i32, i32* @AE_HDPX_ABEBT_DEFAULT, align 4
  %177 = load i32, i32* @AE_HDPX_ABEBT_SHIFT, align 4
  %178 = shl i32 %176, %177
  %179 = load i32, i32* @AE_HDPX_ABEBT_MASK, align 4
  %180 = and i32 %178, %179
  %181 = or i32 %175, %180
  %182 = load i32, i32* @AE_HDPX_JAMIPG_DEFAULT, align 4
  %183 = load i32, i32* @AE_HDPX_JAMIPG_SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = load i32, i32* @AE_HDPX_JAMIPG_MASK, align 4
  %186 = and i32 %184, %185
  %187 = or i32 %181, %186
  %188 = load i32, i32* @AE_HDPX_EXC_EN, align 4
  %189 = or i32 %187, %188
  store i32 %189, i32* %8, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %191 = load i32, i32* @AE_HDPX_REG, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %190, i32 %191, i32 %192)
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %195 = load i32, i32* @AE_IMT_REG, align 4
  %196 = load i32, i32* @AE_IMT_DEFAULT, align 4
  %197 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %194, i32 %195, i32 %196)
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %199 = load i32, i32* @AE_MASTER_REG, align 4
  %200 = call i32 @AE_READ_4(%struct.TYPE_16__* %198, i32 %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* @AE_MASTER_IMT_EN, align 4
  %202 = load i32, i32* %8, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %205 = load i32, i32* @AE_MASTER_REG, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %204, i32 %205, i32 %206)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %209 = load i32, i32* @AE_ICT_REG, align 4
  %210 = load i32, i32* @AE_ICT_DEFAULT, align 4
  %211 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %208, i32 %209, i32 %210)
  %212 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %213 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @ETHER_HDR_LEN, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* @ETHER_CRC_LEN, align 4
  %220 = add nsw i32 %218, %219
  store i32 %220, i32* %8, align 4
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %222 = load i32, i32* @AE_MTU_REG, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %221, i32 %222, i32 %223)
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %226 = load i32, i32* @AE_CUT_THRESH_REG, align 4
  %227 = load i32, i32* @AE_CUT_THRESH_DEFAULT, align 4
  %228 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %225, i32 %226, i32 %227)
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %230 = load i32, i32* @AE_FLOW_THRESH_HI_REG, align 4
  %231 = load i32, i32* @AE_RXD_COUNT_DEFAULT, align 4
  %232 = sdiv i32 %231, 8
  %233 = mul nsw i32 %232, 7
  %234 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %229, i32 %230, i32 %233)
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %236 = load i32, i32* @AE_FLOW_THRESH_LO_REG, align 4
  %237 = load i32, i32* @AE_RXD_COUNT_MIN, align 4
  %238 = sdiv i32 %237, 8
  %239 = load i32, i32* @AE_RXD_COUNT_DEFAULT, align 4
  %240 = sdiv i32 %239, 12
  %241 = icmp sgt i32 %238, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %27
  %243 = load i32, i32* @AE_RXD_COUNT_MIN, align 4
  %244 = sdiv i32 %243, 8
  br label %248

245:                                              ; preds = %27
  %246 = load i32, i32* @AE_RXD_COUNT_DEFAULT, align 4
  %247 = sdiv i32 %246, 12
  br label %248

248:                                              ; preds = %245, %242
  %249 = phi i32 [ %244, %242 ], [ %247, %245 ]
  %250 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %235, i32 %236, i32 %249)
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  store i32 0, i32* %252, align 4
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  store i32 0, i32* %254, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 6
  store i64 0, i64* %256, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 7
  store i64 0, i64* %258, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  store i32 0, i32* %260, align 4
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %262 = load i32, i32* @AE_MB_TXD_IDX_REG, align 4
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %261, i32 %262, i32 %265)
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %268 = load i32, i32* @AE_MB_RXD_IDX_REG, align 4
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @AE_WRITE_2(%struct.TYPE_16__* %267, i32 %268, i32 %271)
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 5
  store i64 0, i64* %274, align 8
  %275 = load i32, i32* @AE_FLAG_TXAVAIL, align 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %281 = load i32, i32* @AE_DMAREAD_REG, align 4
  %282 = load i32, i32* @AE_DMAREAD_EN, align 4
  %283 = call i32 @AE_WRITE_1(%struct.TYPE_16__* %280, i32 %281, i32 %282)
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %285 = load i32, i32* @AE_DMAWRITE_REG, align 4
  %286 = load i32, i32* @AE_DMAWRITE_EN, align 4
  %287 = call i32 @AE_WRITE_1(%struct.TYPE_16__* %284, i32 %285, i32 %286)
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %289 = load i32, i32* @AE_ISR_REG, align 4
  %290 = call i32 @AE_READ_4(%struct.TYPE_16__* %288, i32 %289)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @AE_ISR_PHY_LINKDOWN, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %248
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @device_printf(i32 %298, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %300 = load i32, i32* @ENXIO, align 4
  store i32 %300, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %391

301:                                              ; preds = %248
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %303 = load i32, i32* @AE_ISR_REG, align 4
  %304 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %302, i32 %303, i32 1073741823)
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %306 = load i32, i32* @AE_ISR_REG, align 4
  %307 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %305, i32 %306, i32 0)
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %309 = load i32, i32* @AE_MASTER_REG, align 4
  %310 = call i32 @AE_READ_4(%struct.TYPE_16__* %308, i32 %309)
  store i32 %310, i32* %8, align 4
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %312 = load i32, i32* @AE_MASTER_REG, align 4
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* @AE_MASTER_MANUAL_INT, align 4
  %315 = or i32 %313, %314
  %316 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %311, i32 %312, i32 %315)
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %318 = load i32, i32* @AE_IMR_REG, align 4
  %319 = load i32, i32* @AE_IMR_DEFAULT, align 4
  %320 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %317, i32 %318, i32 %319)
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %322 = load i32, i32* @AE_WOL_REG, align 4
  %323 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %321, i32 %322, i32 0)
  %324 = load i32, i32* @AE_MAC_TX_CRC_EN, align 4
  %325 = load i32, i32* @AE_MAC_TX_AUTOPAD, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @AE_MAC_FULL_DUPLEX, align 4
  %328 = or i32 %326, %327
  %329 = load i32, i32* @AE_MAC_CLK_PHY, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @AE_MAC_TX_FLOW_EN, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @AE_MAC_RX_FLOW_EN, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* @AE_HALFBUF_DEFAULT, align 4
  %336 = load i32, i32* @AE_HALFBUF_SHIFT, align 4
  %337 = shl i32 %335, %336
  %338 = load i32, i32* @AE_HALFBUF_MASK, align 4
  %339 = and i32 %337, %338
  %340 = or i32 %334, %339
  %341 = load i32, i32* @AE_MAC_PREAMBLE_DEFAULT, align 4
  %342 = load i32, i32* @AE_MAC_PREAMBLE_SHIFT, align 4
  %343 = shl i32 %341, %342
  %344 = load i32, i32* @AE_MAC_PREAMBLE_MASK, align 4
  %345 = and i32 %343, %344
  %346 = or i32 %340, %345
  store i32 %346, i32* %8, align 4
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %348 = load i32, i32* @AE_MAC_REG, align 4
  %349 = load i32, i32* %8, align 4
  %350 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %347, i32 %348, i32 %349)
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %352 = call i32 @ae_rxfilter(%struct.TYPE_16__* %351)
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %354 = call i32 @ae_rxvlan(%struct.TYPE_16__* %353)
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %356 = load i32, i32* @AE_MAC_REG, align 4
  %357 = call i32 @AE_READ_4(%struct.TYPE_16__* %355, i32 %356)
  store i32 %357, i32* %8, align 4
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %359 = load i32, i32* @AE_MAC_REG, align 4
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* @AE_MAC_TX_EN, align 4
  %362 = or i32 %360, %361
  %363 = load i32, i32* @AE_MAC_RX_EN, align 4
  %364 = or i32 %362, %363
  %365 = call i32 @AE_WRITE_4(%struct.TYPE_16__* %358, i32 %359, i32 %364)
  %366 = load i32, i32* @AE_FLAG_LINK, align 4
  %367 = xor i32 %366, -1
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = and i32 %370, %367
  store i32 %371, i32* %369, align 8
  %372 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %373 = call i32 @mii_mediachg(%struct.mii_data* %372)
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 3
  %376 = load i32, i32* @hz, align 4
  %377 = load i32, i32* @ae_tick, align 4
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %379 = call i32 @callout_reset(i32* %375, i32 %376, i32 %377, %struct.TYPE_16__* %378)
  %380 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %381 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %382 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 4
  %385 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %386 = xor i32 %385, -1
  %387 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %388 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %389, %386
  store i32 %390, i32* %388, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %391

391:                                              ; preds = %301, %295, %26
  %392 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %392)
  %393 = load i32, i32* %2, align 4
  ret i32 %393
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AE_LOCK_ASSERT(%struct.TYPE_16__*) #2

declare dso_local %struct.mii_data* @device_get_softc(i32) #2

declare dso_local i32 @ae_stop(%struct.TYPE_16__*) #2

declare dso_local i32 @ae_reset(%struct.TYPE_16__*) #2

declare dso_local i32 @ae_pcie_init(%struct.TYPE_16__*) #2

declare dso_local i32 @ae_phy_init(%struct.TYPE_16__*) #2

declare dso_local i32 @ae_powersave_disable(%struct.TYPE_16__*) #2

declare dso_local i32 @AE_WRITE_4(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i32 @bzero(i32, i32) #2

declare dso_local i32 @BUS_ADDR_HI(i32) #2

declare dso_local i32 @BUS_ADDR_LO(i32) #2

declare dso_local i32 @AE_WRITE_2(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @AE_READ_4(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @AE_WRITE_1(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @ae_rxfilter(%struct.TYPE_16__*) #2

declare dso_local i32 @ae_rxvlan(%struct.TYPE_16__*) #2

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #2

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
