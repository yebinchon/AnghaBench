; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, %struct.octm_softc*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.octm_softc = type { i32, i32, i32, %struct.ifnet*, i32*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@OCTEON_IRQ_MII = common dso_local global i32 0, align 4
@OCTEON_IRQ_MII1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported management port %u.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to allocate IRQ.\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@octm_rx_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to setup interrupt.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot allocate ifnet.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@octm_init = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@octm_ioctl = common dso_local global i32 0, align 4
@octm_medchange = common dso_local global i32 0, align 4
@octm_medstat = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@octm_transmit = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@CVMX_MGMT_PORT_NUM_TX_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.octm_softc*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.octm_softc* @device_get_softc(i32 %12)
  store %struct.octm_softc* %13, %struct.octm_softc** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %16 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_unit(i32 %17)
  %19 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %20 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %22 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %28 [
    i32 0, label %24
    i32 1, label %26
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* @OCTEON_IRQ_MII, align 4
  store i32 %25, i32* %10, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load i32, i32* @OCTEON_IRQ_MII1, align 4
  store i32 %27, i32* %10, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %31 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %222

35:                                               ; preds = %26, %24
  store i64 0, i64* %8, align 8
  %36 = bitcast i64* %8 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = call %struct.TYPE_10__* (...) @cvmx_sysinfo_get()
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32* %37, i32 %40, i32 6)
  %42 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %43 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %49 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @cvmx_mgmt_port_set_mac(i32 %50, i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %55 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @CVMX_MIXX_IRHWM(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @cvmx_write_csr(i32 %57, i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %65 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @CVMX_MIXX_INTENA(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @cvmx_write_csr(i32 %67, i64 %69)
  store i32 0, i32* %11, align 4
  %71 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %72 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SYS_RES_IRQ, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @RF_ACTIVE, align 4
  %78 = call i32* @bus_alloc_resource(i32 %73, i32 %74, i32* %11, i32 %75, i32 %76, i32 1, i32 %77)
  %79 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %80 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %79, i32 0, i32 4
  store i32* %78, i32** %80, align 8
  %81 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %82 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %35
  %86 = load i32, i32* %3, align 4
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %2, align 4
  br label %222

89:                                               ; preds = %35
  %90 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %91 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %94 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @INTR_TYPE_NET, align 4
  %97 = load i32, i32* @octm_rx_intr, align 4
  %98 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %99 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %100 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %99, i32 0, i32 5
  %101 = call i32 @bus_setup_intr(i32 %92, i32* %95, i32 %96, i32* null, i32 %97, %struct.octm_softc* %98, i32* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %89
  %105 = load i32, i32* %3, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @SYS_RES_IRQ, align 4
  %109 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %110 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @bus_release_resource(i32 %107, i32 %108, i32 0, i32* %111)
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %2, align 4
  br label %222

114:                                              ; preds = %89
  %115 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %116 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %119 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %122 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @bus_describe_intr(i32 %117, i32* %120, i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @IFT_ETHER, align 4
  %126 = call %struct.ifnet* @if_alloc(i32 %125)
  store %struct.ifnet* %126, %struct.ifnet** %4, align 8
  %127 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %128 = icmp eq %struct.ifnet* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %114
  %130 = load i32, i32* %3, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @SYS_RES_IRQ, align 4
  %134 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %135 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @bus_release_resource(i32 %132, i32 %133, i32 0, i32* %136)
  %138 = load i32, i32* @ENOMEM, align 4
  store i32 %138, i32* %2, align 4
  br label %222

139:                                              ; preds = %114
  %140 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @device_get_name(i32 %141)
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @device_get_unit(i32 %143)
  %145 = call i32 @if_initname(%struct.ifnet* %140, i32 %142, i32 %144)
  %146 = load i32, i32* @ETHERMTU, align 4
  %147 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %148 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %147, i32 0, i32 9
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @octm_init, align 4
  %150 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %151 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 8
  %152 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %153 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 7
  store %struct.octm_softc* %152, %struct.octm_softc** %154, align 8
  %155 = load i32, i32* @IFF_BROADCAST, align 4
  %156 = load i32, i32* @IFF_SIMPLEX, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @IFF_MULTICAST, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @IFF_ALLMULTI, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @octm_ioctl, align 4
  %165 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %168 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %169 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %168, i32 0, i32 3
  store %struct.ifnet* %167, %struct.ifnet** %169, align 8
  %170 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %174 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %176 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %175, i32 0, i32 2
  %177 = load i32, i32* @octm_medchange, align 4
  %178 = load i32, i32* @octm_medstat, align 4
  %179 = call i32 @ifmedia_init(i32* %176, i32 0, i32 %177, i32 %178)
  %180 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %181 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %180, i32 0, i32 2
  %182 = load i32, i32* @IFM_ETHER, align 4
  %183 = load i32, i32* @IFM_AUTO, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @ifmedia_add(i32* %181, i32 %184, i32 0, i32* null)
  %186 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %187 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %186, i32 0, i32 2
  %188 = load i32, i32* @IFM_ETHER, align 4
  %189 = load i32, i32* @IFM_AUTO, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @ifmedia_set(i32* %187, i32 %190)
  %192 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %193 = bitcast i64* %8 to i32*
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = call i32 @ether_ifattach(%struct.ifnet* %192, i32* %194)
  %196 = load i32, i32* @octm_transmit, align 4
  %197 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %198 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 4
  %199 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %200 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %199, i32 0, i32 1
  store i32 4, i32* %200, align 4
  %201 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %202 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %203 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 4
  %204 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %205 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %208 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  %209 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 2
  %211 = load i32, i32* @CVMX_MGMT_PORT_NUM_TX_BUFFERS, align 4
  %212 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_11__* %210, i32 %211)
  %213 = load i32, i32* @CVMX_MGMT_PORT_NUM_TX_BUFFERS, align 4
  %214 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %215 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 8
  %217 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 2
  %219 = call i32 @IFQ_SET_READY(%struct.TYPE_11__* %218)
  %220 = load i32, i32* %3, align 4
  %221 = call i32 @bus_generic_attach(i32 %220)
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %139, %129, %104, %85, %28
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local %struct.octm_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_mgmt_port_set_mac(i32, i64) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_MIXX_IRHWM(i32) #1

declare dso_local i32 @CVMX_MIXX_INTENA(i32) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.octm_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32*, i32, i8*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_11__*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
