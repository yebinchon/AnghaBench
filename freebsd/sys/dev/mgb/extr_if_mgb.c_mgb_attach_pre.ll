; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_attach_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_attach_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i64, i32, i32* }
%struct.ether_addr = type { i32 }
%struct.mii_data = type { i32 }

@mgb_txrx = common dso_local global i32 0, align 4
@MGB_DMA_MAXSEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate bus resource: registers.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"MGB device init failed. (err: %d)\0A\00", align 1
@MII_PHY_ANY = common dso_local global i32 0, align 4
@mgb_media_change = common dso_local global i32 0, align 4
@mgb_media_status = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to attach MII interface\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to setup PBA BAR\0A\00", align 1
@MGB_INTR_VEC_RX_MAP = common dso_local global i32 0, align 4
@MGB_INTR_VEC_TX_MAP = common dso_local global i32 0, align 4
@MGB_INTR_VEC_OTHER_MAP = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mgb_attach_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_attach_pre(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mgb_softc*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ether_addr, align 4
  %10 = alloca %struct.mii_data*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.mgb_softc* @iflib_get_softc(i32 %11)
  store %struct.mgb_softc* %12, %struct.mgb_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @iflib_get_dev(i32 %16)
  %18 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.TYPE_3__* @iflib_get_softc_ctx(i32 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 12
  store i32* @mgb_txrx, i32** %23, align 8
  %24 = load i32, i32* @MGB_DMA_MAXSEGS, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 10
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 7
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 6
  store i32 0, i32* %84, align 8
  %85 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %86 = call i32 @mgb_alloc_regs(%struct.mgb_softc* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %1
  %90 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %91 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %221

94:                                               ; preds = %1
  %95 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %96 = call i32 @mgb_test_bar(%struct.mgb_softc* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %221

100:                                              ; preds = %94
  %101 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %102 = call i32 @mgb_hw_init(%struct.mgb_softc* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %107 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %221

111:                                              ; preds = %100
  %112 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %113 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @pci_get_device(i32 %114)
  switch i32 %115, label %118 [
    i32 129, label %116
    i32 128, label %117
  ]

116:                                              ; preds = %111
  store i32 1, i32* %7, align 4
  br label %120

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %111, %117
  %119 = load i32, i32* @MII_PHY_ANY, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %122 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %125 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @iflib_get_ifp(i32 %126)
  %128 = load i32, i32* @mgb_media_change, align 4
  %129 = load i32, i32* @mgb_media_status, align 4
  %130 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @MII_OFFSET_ANY, align 4
  %133 = load i32, i32* @MIIF_DOPAUSE, align 4
  %134 = call i32 @mii_attach(i32 %123, i32* %125, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %120
  %138 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %139 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %221

142:                                              ; preds = %120
  %143 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %144 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call %struct.mii_data* @device_get_softc(i32 %145)
  store %struct.mii_data* %146, %struct.mii_data** %10, align 8
  %147 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  %148 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %147, i32 0, i32 0
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 9
  store i32* %148, i32** %150, align 8
  %151 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %152 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @pci_msix_table_bar(i32 %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 8
  store i32 %154, i32* %156, align 8
  %157 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %158 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @pci_msix_pba_bar(i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %142
  %167 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %168 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @SYS_RES_MEMORY, align 4
  %171 = load i32, i32* @RF_ACTIVE, align 4
  %172 = call i32* @bus_alloc_resource_any(i32 %169, i32 %170, i32* %8, i32 %171)
  %173 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %174 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %173, i32 0, i32 1
  store i32* %172, i32** %174, align 8
  %175 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %176 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %185

179:                                              ; preds = %166
  %180 = load i32, i32* @ENXIO, align 4
  store i32 %180, i32* %6, align 4
  %181 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %182 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @device_printf(i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %221

185:                                              ; preds = %166
  br label %186

186:                                              ; preds = %185, %142
  %187 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %188 = call i32 @mgb_get_ethaddr(%struct.mgb_softc* %187, %struct.ether_addr* %9)
  %189 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %9, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @ETHER_IS_BROADCAST(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %9, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @ETHER_IS_MULTICAST(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %9, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @ETHER_IS_ZERO(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198, %193, %186
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @iflib_get_ifp(i32 %204)
  %206 = call i32 @ether_gen_addr(i32 %205, %struct.ether_addr* %9)
  br label %207

207:                                              ; preds = %203, %198
  %208 = load i32, i32* %3, align 4
  %209 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %9, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @iflib_set_mac(i32 %208, i32 %210)
  %212 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %213 = load i32, i32* @MGB_INTR_VEC_RX_MAP, align 4
  %214 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %212, i32 %213, i32 0)
  %215 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %216 = load i32, i32* @MGB_INTR_VEC_TX_MAP, align 4
  %217 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %215, i32 %216, i32 0)
  %218 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %219 = load i32, i32* @MGB_INTR_VEC_OTHER_MAP, align 4
  %220 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %218, i32 %219, i32 0)
  store i32 0, i32* %2, align 4
  br label %225

221:                                              ; preds = %179, %137, %105, %99, %89
  %222 = load i32, i32* %3, align 4
  %223 = call i32 @mgb_detach(i32 %222)
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %221, %207
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.TYPE_3__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @mgb_alloc_regs(%struct.mgb_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mgb_test_bar(%struct.mgb_softc*) #1

declare dso_local i32 @mgb_hw_init(%struct.mgb_softc*) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @mii_attach(i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @pci_msix_table_bar(i32) #1

declare dso_local i32 @pci_msix_pba_bar(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @mgb_get_ethaddr(%struct.mgb_softc*, %struct.ether_addr*) #1

declare dso_local i64 @ETHER_IS_BROADCAST(i32) #1

declare dso_local i64 @ETHER_IS_MULTICAST(i32) #1

declare dso_local i64 @ETHER_IS_ZERO(i32) #1

declare dso_local i32 @ether_gen_addr(i32, %struct.ether_addr*) #1

declare dso_local i32 @iflib_set_mac(i32, i32) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @mgb_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
