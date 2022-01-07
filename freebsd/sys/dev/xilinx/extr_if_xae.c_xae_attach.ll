; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32, i32, i32, i32, i8*, i32, %struct.ifnet*, i32, i32*, i32, i32, i32, i32, i32, i32* }
%struct.ifnet = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, %struct.xae_softc* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Could not setup xDMA.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@BUFRING_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xae_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Identification: %x\0A\00", align 1
@XAE_IDENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"can't get mac\0A\00", align 1
@MDIO_CLK_DIV_DEFAULT = common dso_local global i32 0, align 4
@MDIO_SETUP_CLK_DIV_S = common dso_local global i32 0, align 4
@MDIO_SETUP_ENABLE = common dso_local global i32 0, align 4
@XAE_MDIO_SETUP = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@xae_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"could not setup interrupt handler.\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"could not allocate ifp.\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@xae_transmit = common dso_local global i32 0, align 4
@xae_qflush = common dso_local global i32 0, align 4
@xae_ioctl = common dso_local global i32 0, align 4
@xae_init = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i64 0, align 8
@xae_media_change = common dso_local global i32 0, align 4
@xae_media_status = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"PHY attach failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"xlnx,vcu118\00", align 1
@NUM_RX_MBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xae_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xae_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xae_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.xae_softc*
  store %struct.xae_softc* %11, %struct.xae_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %14 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %18 = call i64 @setup_xdma(%struct.xae_softc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %253

24:                                               ; preds = %1
  %25 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %26 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %25, i32 0, i32 9
  %27 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %28 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_get_nameunit(i32 %29)
  %31 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %32 = load i32, i32* @MTX_DEF, align 4
  %33 = call i32 @mtx_init(i32* %26, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @BUFRING_SIZE, align 4
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %38 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %37, i32 0, i32 9
  %39 = call i32* @buf_ring_alloc(i32 %34, i32 %35, i32 %36, i32* %38)
  %40 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %41 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %40, i32 0, i32 14
  store i32* %39, i32** %41, align 8
  %42 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %43 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %42, i32 0, i32 14
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %24
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %2, align 4
  br label %253

48:                                               ; preds = %24
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @xae_spec, align 4
  %51 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %52 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @bus_alloc_resources(i32 %49, i32 %50, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %253

60:                                               ; preds = %48
  %61 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %62 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %61, i32 0, i32 8
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rman_get_bustag(i32 %65)
  %67 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %68 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %67, i32 0, i32 13
  store i32 %66, i32* %68, align 8
  %69 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %70 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rman_get_bushandle(i32 %73)
  %75 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %76 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 4
  %77 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %78 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %81 = load i32, i32* @XAE_IDENT, align 4
  %82 = call i32 @READ4(%struct.xae_softc* %80, i32 %81)
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %85 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %86 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @xae_get_hwaddr(%struct.xae_softc* %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %60
  %91 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %92 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %91, i32 0, i32 11
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %2, align 4
  br label %253

96:                                               ; preds = %60
  %97 = load i32, i32* @MDIO_CLK_DIV_DEFAULT, align 4
  %98 = load i32, i32* @MDIO_SETUP_CLK_DIV_S, align 4
  %99 = shl i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* @MDIO_SETUP_ENABLE, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %104 = load i32, i32* @XAE_MDIO_SETUP, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @WRITE4(%struct.xae_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %108 = call i64 @mdio_wait(%struct.xae_softc* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* @ENXIO, align 4
  store i32 %111, i32* %2, align 4
  br label %253

112:                                              ; preds = %96
  %113 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %114 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %113, i32 0, i32 10
  %115 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %116 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %115, i32 0, i32 9
  %117 = call i32 @callout_init_mtx(i32* %114, i32* %116, i32 0)
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %120 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %119, i32 0, i32 8
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @INTR_TYPE_NET, align 4
  %125 = load i32, i32* @INTR_MPSAFE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @xae_intr, align 4
  %128 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %129 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %130 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %129, i32 0, i32 7
  %131 = call i32 @bus_setup_intr(i32 %118, i32 %123, i32 %126, i32* null, i32 %127, %struct.xae_softc* %128, i32* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %112
  %135 = load i32, i32* %3, align 4
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* @ENXIO, align 4
  store i32 %137, i32* %2, align 4
  br label %253

138:                                              ; preds = %112
  %139 = load i32, i32* @IFT_ETHER, align 4
  %140 = call %struct.ifnet* @if_alloc(i32 %139)
  store %struct.ifnet* %140, %struct.ifnet** %5, align 8
  %141 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %142 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %141, i32 0, i32 6
  store %struct.ifnet* %140, %struct.ifnet** %142, align 8
  %143 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %144 = icmp eq %struct.ifnet* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* %3, align 4
  %147 = call i32 (i32, i8*, ...) @device_printf(i32 %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @ENXIO, align 4
  store i32 %148, i32* %2, align 4
  br label %253

149:                                              ; preds = %138
  %150 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %151 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %152 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %151, i32 0, i32 8
  store %struct.xae_softc* %150, %struct.xae_softc** %152, align 8
  %153 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @device_get_name(i32 %154)
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @device_get_unit(i32 %156)
  %158 = call i32 @if_initname(%struct.ifnet* %153, i32 %155, i32 %157)
  %159 = load i32, i32* @IFF_BROADCAST, align 4
  %160 = load i32, i32* @IFF_SIMPLEX, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @IFF_MULTICAST, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %167 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %170 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @xae_transmit, align 4
  %175 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %176 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @xae_qflush, align 4
  %178 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %179 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @xae_ioctl, align 4
  %181 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %182 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @xae_init, align 4
  %184 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %185 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %187 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %186, i32 0, i32 1
  %188 = load i64, i64* @TX_DESC_COUNT, align 8
  %189 = sub nsw i64 %188, 1
  %190 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %187, i64 %189)
  %191 = load i64, i64* @TX_DESC_COUNT, align 8
  %192 = sub nsw i64 %191, 1
  %193 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %194 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  %196 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %197 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %196, i32 0, i32 1
  %198 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %197)
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %201 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %200, i32 0, i32 5
  %202 = call i64 @xae_get_phyaddr(i32 %199, i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %149
  %205 = load i32, i32* @ENXIO, align 4
  store i32 %205, i32* %2, align 4
  br label %253

206:                                              ; preds = %149
  %207 = load i32, i32* %3, align 4
  %208 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %209 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %208, i32 0, i32 3
  %210 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %211 = load i32, i32* @xae_media_change, align 4
  %212 = load i32, i32* @xae_media_status, align 4
  %213 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %214 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %215 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @MII_OFFSET_ANY, align 4
  %218 = call i32 @mii_attach(i32 %207, i32* %209, %struct.ifnet* %210, i32 %211, i32 %212, i32 %213, i32 %216, i32 %217, i32 0)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %206
  %222 = load i32, i32* %3, align 4
  %223 = call i32 (i32, i8*, ...) @device_printf(i32 %222, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %224 = load i32, i32* @ENXIO, align 4
  store i32 %224, i32* %2, align 4
  br label %253

225:                                              ; preds = %206
  %226 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %227 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @device_get_softc(i32 %228)
  %230 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %231 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %230, i32 0, i32 4
  store i8* %229, i8** %231, align 8
  %232 = load i32, i32* %6, align 4
  %233 = call i64 @OF_getproplen(i32 %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %234 = icmp sge i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %225
  %236 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %237 = call i32 @xae_phy_fixup(%struct.xae_softc* %236)
  br label %238

238:                                              ; preds = %235, %225
  %239 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %240 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %241 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @ether_ifattach(%struct.ifnet* %239, i32 %242)
  %244 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %245 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %244, i32 0, i32 0
  store i32 1, i32* %245, align 8
  %246 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %247 = load i32, i32* @NUM_RX_MBUF, align 4
  %248 = call i32 @xae_rx_enqueue(%struct.xae_softc* %246, i32 %247)
  %249 = load %struct.xae_softc*, %struct.xae_softc** %4, align 8
  %250 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @xdma_queue_submit(i32 %251)
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %238, %221, %204, %145, %134, %110, %90, %56, %46, %20
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @setup_xdma(%struct.xae_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @READ4(%struct.xae_softc*, i32) #1

declare dso_local i64 @xae_get_hwaddr(%struct.xae_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.xae_softc*, i32, i32) #1

declare dso_local i64 @mdio_wait(%struct.xae_softc*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.xae_softc*, i32*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i64 @xae_get_phyaddr(i32, i32*) #1

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @xae_phy_fixup(%struct.xae_softc*) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @xae_rx_enqueue(%struct.xae_softc*, i32) #1

declare dso_local i32 @xdma_queue_submit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
