; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { i32, i32*, i32, i32, %struct.ifnet*, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32* }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.atse_softc* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't find DMA controller.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@XCHAN_CAP_NOSEG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't alloc virtual DMA channel.\0A\00", align 1
@atse_xdma_tx_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't setup xDMA interrupt handler.\0A\00", align 1
@TX_QUEUE_SIZE = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@atse_xdma_rx_intr = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"buf ring mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@BUFRING_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32* null, align 8
@MDIO_1_START = common dso_local global i32 0, align 4
@BASE_CFG_MDIO_ADDR1 = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"if_alloc() failed\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@atse_ioctl = common dso_local global i32 0, align 4
@atse_transmit = common dso_local global i32 0, align 4
@atse_qflush = common dso_local global i32 0, align 4
@atse_init = common dso_local global i32 0, align 4
@ATSE_TX_LIST_CNT = common dso_local global i64 0, align 8
@atse_ifmedia_upd = common dso_local global i32 0, align 4
@atse_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"attaching PHY failed: %d\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@NUM_RX_MBUF = common dso_local global i32 0, align 4
@BASE_CFG_MDIO_ADDR0 = common dso_local global i32 0, align 4
@MDIO_0_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atse_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.atse_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.atse_softc* @device_get_softc(i32 %8)
  store %struct.atse_softc* %9, %struct.atse_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %12 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 4
  %13 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %14 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @xdma_ofw_get(i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %19 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %18, i32 0, i32 16
  store i32* %17, i32** %19, align 8
  %20 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %21 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %20, i32 0, i32 16
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %285

28:                                               ; preds = %1
  %29 = load i32, i32* @XCHAN_CAP_NOSEG, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %31 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %30, i32 0, i32 16
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @xdma_channel_alloc(i32* %32, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %37 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %36, i32 0, i32 14
  store i32* %35, i32** %37, align 8
  %38 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %39 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %38, i32 0, i32 14
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %285

46:                                               ; preds = %28
  %47 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %48 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %47, i32 0, i32 14
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @atse_xdma_tx_intr, align 4
  %51 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %52 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %53 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %52, i32 0, i32 15
  %54 = call i32 @xdma_setup_intr(i32* %49, i32 %50, %struct.atse_softc* %51, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %59 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %285

63:                                               ; preds = %46
  %64 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %65 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %64, i32 0, i32 14
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @TX_QUEUE_SIZE, align 4
  %68 = load i32, i32* @MCLBYTES, align 4
  %69 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %70 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %71 = call i32 @xdma_prep_sg(i32* %66, i32 %67, i32 %68, i32 8, i32 16, i32 0, i32 %69, i32 %70)
  %72 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %73 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @xdma_ofw_get(i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %78 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %77, i32 0, i32 13
  store i32* %76, i32** %78, align 8
  %79 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %80 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %79, i32 0, i32 13
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %285

87:                                               ; preds = %63
  %88 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %89 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %88, i32 0, i32 13
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i8* @xdma_channel_alloc(i32* %90, i32 %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %95 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %94, i32 0, i32 1
  store i32* %93, i32** %95, align 8
  %96 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %97 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %87
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %2, align 4
  br label %285

104:                                              ; preds = %87
  %105 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %106 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @atse_xdma_rx_intr, align 4
  %109 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %110 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %111 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %110, i32 0, i32 12
  %112 = call i32 @xdma_setup_intr(i32* %107, i32 %108, %struct.atse_softc* %109, i32* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %104
  %116 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %117 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @device_printf(i32 %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %2, align 4
  br label %285

121:                                              ; preds = %104
  %122 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %123 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %126 = load i32, i32* @MCLBYTES, align 4
  %127 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %128 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %129 = call i32 @xdma_prep_sg(i32* %124, i32 %125, i32 %126, i32 1, i32 16, i32 0, i32 %127, i32 %128)
  %130 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %131 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %130, i32 0, i32 10
  %132 = load i32, i32* @MTX_DEF, align 4
  %133 = call i32 @mtx_init(i32* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %132)
  %134 = load i32, i32* @BUFRING_SIZE, align 4
  %135 = load i32, i32* @M_DEVBUF, align 4
  %136 = load i32, i32* @M_NOWAIT, align 4
  %137 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %138 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %137, i32 0, i32 10
  %139 = call i32* @buf_ring_alloc(i32 %134, i32 %135, i32 %136, i32* %138)
  %140 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %141 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %140, i32 0, i32 9
  store i32* %139, i32** %141, align 8
  %142 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %143 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %142, i32 0, i32 9
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %121
  %147 = load i32, i32* @ENOMEM, align 4
  store i32 %147, i32* %2, align 4
  br label %285

148:                                              ; preds = %121
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @atse_ethernet_option_bits_read(i32 %149)
  %151 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %152 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %151, i32 0, i32 7
  %153 = load i32, i32* %3, align 4
  %154 = call i8* @device_get_nameunit(i32 %153)
  %155 = load i32*, i32** @MTX_NETWORK_LOCK, align 8
  %156 = load i32, i32* @MTX_DEF, align 4
  %157 = call i32 @mtx_init(i32* %152, i8* %154, i32* %155, i32 %156)
  %158 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %159 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %158, i32 0, i32 8
  %160 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %161 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %160, i32 0, i32 7
  %162 = call i32 @callout_init_mtx(i32* %159, i32* %161, i32 0)
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @device_get_unit(i32 %163)
  %165 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %166 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @MDIO_1_START, align 4
  %168 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %169 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  %170 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %171 = load i32, i32* @BASE_CFG_MDIO_ADDR1, align 4
  %172 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %173 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @CSR_WRITE_4(%struct.atse_softc* %170, i32 %171, i32 %174)
  %176 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %177 = call i32 @atse_reset(%struct.atse_softc* %176)
  %178 = load i32, i32* @IFT_ETHER, align 4
  %179 = call %struct.ifnet* @if_alloc(i32 %178)
  %180 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %181 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %180, i32 0, i32 4
  store %struct.ifnet* %179, %struct.ifnet** %181, align 8
  store %struct.ifnet* %179, %struct.ifnet** %5, align 8
  %182 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %183 = icmp eq %struct.ifnet* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %148
  %185 = load i32, i32* %3, align 4
  %186 = call i32 (i32, i8*, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %187 = load i32, i32* @ENOSPC, align 4
  store i32 %187, i32* %7, align 4
  br label %264

188:                                              ; preds = %148
  %189 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %190 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 9
  store %struct.atse_softc* %189, %struct.atse_softc** %191, align 8
  %192 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @device_get_name(i32 %193)
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @device_get_unit(i32 %195)
  %197 = call i32 @if_initname(%struct.ifnet* %192, i32 %194, i32 %196)
  %198 = load i32, i32* @IFF_BROADCAST, align 4
  %199 = load i32, i32* @IFF_SIMPLEX, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @IFF_MULTICAST, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %204 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @atse_ioctl, align 4
  %206 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %207 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %206, i32 0, i32 8
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* @atse_transmit, align 4
  %209 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 7
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* @atse_qflush, align 4
  %212 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %213 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %212, i32 0, i32 6
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @atse_init, align 4
  %215 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %216 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 4
  %219 = load i64, i64* @ATSE_TX_LIST_CNT, align 8
  %220 = sub nsw i64 %219, 1
  %221 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %218, i64 %220)
  %222 = load i64, i64* @ATSE_TX_LIST_CNT, align 8
  %223 = sub nsw i64 %222, 1
  %224 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %225 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  store i64 %223, i64* %226, align 8
  %227 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 4
  %229 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %228)
  %230 = load i32, i32* %3, align 4
  %231 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %232 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %231, i32 0, i32 3
  %233 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %234 = load i32, i32* @atse_ifmedia_upd, align 4
  %235 = load i32, i32* @atse_ifmedia_sts, align 4
  %236 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %237 = load i32, i32* @MII_PHY_ANY, align 4
  %238 = load i32, i32* @MII_OFFSET_ANY, align 4
  %239 = call i32 @mii_attach(i32 %230, i32* %232, %struct.ifnet* %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 0)
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %7, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %188
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* %7, align 4
  %245 = call i32 (i32, i8*, ...) @device_printf(i32 %243, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %244)
  br label %264

246:                                              ; preds = %188
  %247 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %248 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %249 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @ether_ifattach(%struct.ifnet* %247, i32 %250)
  %252 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %253 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %252, i32 0, i32 1
  store i32 4, i32* %253, align 4
  %254 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %255 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %256 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %263 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  br label %264

264:                                              ; preds = %246, %242, %184
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %3, align 4
  %269 = call i32 @atse_detach(i32 %268)
  br label %270

270:                                              ; preds = %267, %264
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* %3, align 4
  %275 = call i32 @atse_sysctl_stats_attach(i32 %274)
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %278 = load i32, i32* @NUM_RX_MBUF, align 4
  %279 = call i32 @atse_rx_enqueue(%struct.atse_softc* %277, i32 %278)
  %280 = load %struct.atse_softc*, %struct.atse_softc** %4, align 8
  %281 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @xdma_queue_submit(i32* %282)
  %284 = load i32, i32* %7, align 4
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %276, %146, %115, %100, %83, %57, %42, %24
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local %struct.atse_softc* @device_get_softc(i32) #1

declare dso_local i8* @xdma_ofw_get(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @xdma_channel_alloc(i32*, i32) #1

declare dso_local i32 @xdma_setup_intr(i32*, i32, %struct.atse_softc*, i32*) #1

declare dso_local i32 @xdma_prep_sg(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32* @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @atse_ethernet_option_bits_read(i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.atse_softc*, i32, i32) #1

declare dso_local i32 @atse_reset(%struct.atse_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @atse_detach(i32) #1

declare dso_local i32 @atse_sysctl_stats_attach(i32) #1

declare dso_local i32 @atse_rx_enqueue(%struct.atse_softc*, i32) #1

declare dso_local i32 @xdma_queue_submit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
