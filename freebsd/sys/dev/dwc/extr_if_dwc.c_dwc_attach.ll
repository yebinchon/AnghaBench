; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i64, i32, i32, i32, i32, i8*, %struct.ifnet*, i32, i32*, i32, i32, i32, i32, i32, i32, i8*, i64 }
%struct.ifnet = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, %struct.dwc_softc* }
%struct.TYPE_3__ = type { i8* }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i8* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@dwc_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"can't get mac\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Can't reset the PHY\0A\00", align 1
@BUS_MODE = common dso_local global i32 0, align 4
@BUS_MODE_SWR = common dso_local global i32 0, align 4
@MAC_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Can't reset DWC.\0A\00", align 1
@DWC_GMAC_ALT_DESC = common dso_local global i64 0, align 8
@BUS_MODE_FIXEDBURST = common dso_local global i32 0, align 4
@BUS_MODE_PRIORXTX_41 = common dso_local global i32 0, align 4
@BUS_MODE_PRIORXTX_SHIFT = common dso_local global i32 0, align 4
@BUS_MODE_EIGHTXPBL = common dso_local global i32 0, align 4
@BUS_MODE_PBL_BEATS_8 = common dso_local global i32 0, align 4
@BUS_MODE_PBL_SHIFT = common dso_local global i32 0, align 4
@OPERATION_MODE = common dso_local global i32 0, align 4
@MODE_ST = common dso_local global i32 0, align 4
@MODE_SR = common dso_local global i32 0, align 4
@RX_DESCR_LIST_ADDR = common dso_local global i32 0, align 4
@TX_DESCR_LIST_ADDR = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@dwc_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"could not setup interrupt handler.\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@dwc_txstart = common dso_local global i32 0, align 4
@dwc_ioctl = common dso_local global i32 0, align 4
@dwc_init = common dso_local global i32 0, align 4
@dwc_media_change = common dso_local global i32 0, align 4
@dwc_media_status = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"PHY attach failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dwc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dwc_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @device_get_softc(i32 %16)
  %18 = bitcast i8* %17 to %struct.dwc_softc*
  store %struct.dwc_softc* %18, %struct.dwc_softc** %6, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %21 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %23 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %22, i32 0, i32 16
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** @TX_DESC_COUNT, align 8
  %25 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %26 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %25, i32 0, i32 15
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @IF_DWC_MII_CLK(i32 %27)
  %29 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %30 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %29, i32 0, i32 14
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @IF_DWC_MAC_TYPE(i32 %31)
  %33 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %34 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @IF_DWC_INIT(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @dwc_spec, align 4
  %43 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %44 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @bus_alloc_resources(i32 %41, i32 %42, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

52:                                               ; preds = %40
  %53 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %54 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rman_get_bustag(i32 %57)
  %59 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %60 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %62 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %61, i32 0, i32 8
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rman_get_bushandle(i32 %65)
  %67 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %68 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 4
  %69 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %70 = call i64 @dwc_get_hwaddr(%struct.dwc_softc* %69, i32* %15)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %74 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

78:                                               ; preds = %52
  %79 = load i32, i32* %3, align 4
  %80 = call i64 @dwc_reset(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

86:                                               ; preds = %78
  %87 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %88 = load i32, i32* @BUS_MODE, align 4
  %89 = call i32 @READ4(%struct.dwc_softc* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @BUS_MODE_SWR, align 4
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %94 = load i32, i32* @BUS_MODE, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @WRITE4(%struct.dwc_softc* %93, i32 %94, i32 %95)
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %111, %86
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @MAC_RESET_TIMEOUT, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %103 = load i32, i32* @BUS_MODE, align 4
  %104 = call i32 @READ4(%struct.dwc_softc* %102, i32 %103)
  %105 = load i32, i32* @BUS_MODE_SWR, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %114

109:                                              ; preds = %101
  %110 = call i32 @DELAY(i32 10)
  br label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %97

114:                                              ; preds = %108, %97
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @MAC_RESET_TIMEOUT, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %120 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @device_printf(i32 %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

124:                                              ; preds = %114
  %125 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %126 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DWC_GMAC_ALT_DESC, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i32, i32* @BUS_MODE_FIXEDBURST, align 4
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* @BUS_MODE_PRIORXTX_41, align 4
  %133 = load i32, i32* @BUS_MODE_PRIORXTX_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %139

137:                                              ; preds = %124
  %138 = load i32, i32* @BUS_MODE_EIGHTXPBL, align 4
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %137, %130
  %140 = load i32, i32* @BUS_MODE_PBL_BEATS_8, align 4
  %141 = load i32, i32* @BUS_MODE_PBL_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  %145 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %146 = load i32, i32* @BUS_MODE, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @WRITE4(%struct.dwc_softc* %145, i32 %146, i32 %147)
  %149 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %150 = load i32, i32* @OPERATION_MODE, align 4
  %151 = call i32 @READ4(%struct.dwc_softc* %149, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @MODE_ST, align 4
  %153 = load i32, i32* @MODE_SR, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %10, align 4
  %158 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %159 = load i32, i32* @OPERATION_MODE, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @WRITE4(%struct.dwc_softc* %158, i32 %159, i32 %160)
  %162 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %163 = call i64 @setup_dma(%struct.dwc_softc* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %139
  %166 = load i32, i32* @ENXIO, align 4
  store i32 %166, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

167:                                              ; preds = %139
  %168 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %169 = load i32, i32* @RX_DESCR_LIST_ADDR, align 4
  %170 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %171 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @WRITE4(%struct.dwc_softc* %168, i32 %169, i32 %172)
  %174 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %175 = load i32, i32* @TX_DESCR_LIST_ADDR, align 4
  %176 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %177 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @WRITE4(%struct.dwc_softc* %174, i32 %175, i32 %178)
  %180 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %181 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %180, i32 0, i32 9
  %182 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %183 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @device_get_nameunit(i32 %184)
  %186 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %187 = load i32, i32* @MTX_DEF, align 4
  %188 = call i32 @mtx_init(i32* %181, i32 %185, i32 %186, i32 %187)
  %189 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %190 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %189, i32 0, i32 10
  %191 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %192 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %191, i32 0, i32 9
  %193 = call i32 @callout_init_mtx(i32* %190, i32* %192, i32 0)
  %194 = load i32, i32* %3, align 4
  %195 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %196 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %195, i32 0, i32 8
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @INTR_TYPE_NET, align 4
  %201 = load i32, i32* @INTR_MPSAFE, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @dwc_intr, align 4
  %204 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %205 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %206 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %205, i32 0, i32 7
  %207 = call i32 @bus_setup_intr(i32 %194, i32 %199, i32 %202, i32* null, i32 %203, %struct.dwc_softc* %204, i32* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %167
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @device_printf(i32 %211, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %213 = load i32, i32* @ENXIO, align 4
  store i32 %213, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

214:                                              ; preds = %167
  %215 = load i32, i32* @IFT_ETHER, align 4
  %216 = call %struct.ifnet* @if_alloc(i32 %215)
  store %struct.ifnet* %216, %struct.ifnet** %7, align 8
  %217 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %218 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %217, i32 0, i32 6
  store %struct.ifnet* %216, %struct.ifnet** %218, align 8
  %219 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %220 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %221 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %220, i32 0, i32 7
  store %struct.dwc_softc* %219, %struct.dwc_softc** %221, align 8
  %222 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %223 = load i32, i32* %3, align 4
  %224 = call i32 @device_get_name(i32 %223)
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @device_get_unit(i32 %225)
  %227 = call i32 @if_initname(%struct.ifnet* %222, i32 %224, i32 %226)
  %228 = load i32, i32* @IFF_BROADCAST, align 4
  %229 = load i32, i32* @IFF_SIMPLEX, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @IFF_MULTICAST, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %234 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %236 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  %238 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %239 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %242 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %241, i32 0, i32 6
  store i32 %240, i32* %242, align 8
  %243 = load i32, i32* @dwc_txstart, align 4
  %244 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %245 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 8
  %246 = load i32, i32* @dwc_ioctl, align 4
  %247 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %248 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* @dwc_init, align 4
  %250 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %251 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 8
  %252 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %253 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %252, i32 0, i32 1
  %254 = load i8*, i8** @TX_DESC_COUNT, align 8
  %255 = getelementptr i8, i8* %254, i64 -1
  %256 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %253, i8* %255)
  %257 = load i8*, i8** @TX_DESC_COUNT, align 8
  %258 = getelementptr i8, i8* %257, i64 -1
  %259 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  store i8* %258, i8** %261, align 8
  %262 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %263 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %262, i32 0, i32 1
  %264 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %263)
  %265 = load i32, i32* %3, align 4
  %266 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %267 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %266, i32 0, i32 4
  %268 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %269 = load i32, i32* @dwc_media_change, align 4
  %270 = load i32, i32* @dwc_media_status, align 4
  %271 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %272 = load i32, i32* @MII_PHY_ANY, align 4
  %273 = load i32, i32* @MII_OFFSET_ANY, align 4
  %274 = call i32 @mii_attach(i32 %265, i32* %267, %struct.ifnet* %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 0)
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %214
  %278 = load i32, i32* %3, align 4
  %279 = call i32 @device_printf(i32 %278, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %280 = load i32, i32* @ENXIO, align 4
  store i32 %280, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

281:                                              ; preds = %214
  %282 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %283 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = call i8* @device_get_softc(i32 %284)
  %286 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %287 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %286, i32 0, i32 5
  store i8* %285, i8** %287, align 8
  %288 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %289 = call i32 @ether_ifattach(%struct.ifnet* %288, i32* %15)
  %290 = load %struct.dwc_softc*, %struct.dwc_softc** %6, align 8
  %291 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %290, i32 0, i32 3
  store i32 1, i32* %291, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %292

292:                                              ; preds = %281, %277, %210, %165, %118, %82, %72, %48, %38
  %293 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %293)
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @device_get_softc(i32) #2

declare dso_local i32 @IF_DWC_MII_CLK(i32) #2

declare dso_local i64 @IF_DWC_MAC_TYPE(i32) #2

declare dso_local i64 @IF_DWC_INIT(i32) #2

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @rman_get_bustag(i32) #2

declare dso_local i32 @rman_get_bushandle(i32) #2

declare dso_local i64 @dwc_get_hwaddr(%struct.dwc_softc*, i32*) #2

declare dso_local i64 @dwc_reset(i32) #2

declare dso_local i32 @READ4(%struct.dwc_softc*, i32) #2

declare dso_local i32 @WRITE4(%struct.dwc_softc*, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i64 @setup_dma(%struct.dwc_softc*) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.dwc_softc*, i32*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i8*) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
