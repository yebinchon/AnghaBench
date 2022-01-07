; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.my_type = type { i32, i32 }
%struct.my_softc = type { i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_7__, %struct.my_type*, %struct.TYPE_6__*, %struct.ifnet*, %struct.my_list_data*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ifnet = type { i32, i32, %struct.TYPE_8__, i32, i32, i32, %struct.my_softc* }
%struct.TYPE_8__ = type { i32 }
%struct.my_list_data = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@my_info_tmp = common dso_local global %struct.TYPE_6__* null, align 8
@MTD800ID = common dso_local global i64 0, align 8
@MY_PCI_LOIO = common dso_local global i32 0, align 4
@MY_USEIOSPACE = common dso_local global i64 0, align 8
@MY_RID = common dso_local global i32 0, align 4
@MY_RES = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"couldn't map ports/memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@MY_PAR0 = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"no memory for list buffers!\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@my_ioctl = common dso_local global i32 0, align 4
@my_start = common dso_local global i32 0, align 4
@my_init = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@MTD803ID = common dso_local global i64 0, align 8
@my_phys = common dso_local global %struct.my_type* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"probing for a PHY\0A\00", align 1
@MY_PHYADDR_MIN = common dso_local global i32 0, align 4
@MY_PHYADDR_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"checking address: %d\0A\00", align 1
@PHY_BMSR = common dso_local global i32 0, align 4
@PHY_VENID = common dso_local global i32 0, align 4
@PHY_DEVID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"found PHY at address %d, \00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"vendor id: %x device id: %x\0A\00", align 1
@PHY_UNKNOWN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"PHY type: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"MII without any phy!\0A\00", align 1
@my_ifmedia_upd = common dso_local global i32 0, align 4
@my_ifmedia_sts = common dso_local global i32 0, align 4
@MY_FLAG_FORCEDELAY = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@my_intr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @my_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.my_softc*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.my_type*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %20 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load i32, i32* @IFM_ETHER, align 4
  %25 = load i32, i32* @IFM_100_TX, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IFM_FDX, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.my_softc* @device_get_softc(i32 %29)
  store %struct.my_softc* %30, %struct.my_softc** %8, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %33 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %32, i32 0, i32 15
  store i32 %31, i32* %33, align 8
  %34 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %35 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_get_nameunit(i32 %36)
  %38 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %39 = load i32, i32* @MTX_DEF, align 4
  %40 = call i32 @mtx_init(i32* %35, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %42 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %41, i32 0, i32 14
  %43 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %44 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %43, i32 0, i32 1
  %45 = call i32 @callout_init_mtx(i32* %42, i32* %44, i32 0)
  %46 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %47 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %46, i32 0, i32 13
  %48 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %49 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %48, i32 0, i32 1
  %50 = call i32 @callout_init_mtx(i32* %47, i32* %49, i32 0)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @pci_enable_busmaster(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @my_info_tmp, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MTD800ID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %1
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @MY_PCI_LOIO, align 4
  %61 = call i32 @pci_read_config(i32 %59, i32 %60, i32 4)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 768
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i64 0, i64* @MY_USEIOSPACE, align 8
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %1
  %68 = load i32, i32* @MY_RID, align 4
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @MY_RES, align 4
  %71 = load i32, i32* @RF_ACTIVE, align 4
  %72 = call i8* @bus_alloc_resource_any(i32 %69, i32 %70, i32* %17, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %75 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %77 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %18, align 4
  br label %442

84:                                               ; preds = %67
  %85 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %86 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @rman_get_bustag(i32* %87)
  %89 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %90 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %89, i32 0, i32 12
  store i32 %88, i32* %90, align 4
  %91 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %92 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @rman_get_bushandle(i32* %93)
  %95 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %96 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %17, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @SYS_RES_IRQ, align 4
  %99 = load i32, i32* @RF_SHAREABLE, align 4
  %100 = load i32, i32* @RF_ACTIVE, align 4
  %101 = or i32 %99, %100
  %102 = call i8* @bus_alloc_resource_any(i32 %97, i32 %98, i32* %17, i32 %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %105 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %104, i32 0, i32 3
  store i32* %103, i32** %105, align 8
  %106 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %107 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %84
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %18, align 4
  br label %434

114:                                              ; preds = %84
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @my_info_tmp, align 8
  %116 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %117 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %116, i32 0, i32 8
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %117, align 8
  %118 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %119 = call i32 @MY_LOCK(%struct.my_softc* %118)
  %120 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %121 = call i32 @my_reset(%struct.my_softc* %120)
  %122 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %123 = call i32 @MY_UNLOCK(%struct.my_softc* %122)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %138, %114
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %130 = load i64, i64* @MY_PAR0, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  %134 = call i32 @CSR_READ_1(%struct.my_softc* %129, i64 %133)
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %23, i64 %136
  store i32 %134, i32* %137, align 4
  br label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %124

141:                                              ; preds = %124
  %142 = load i32, i32* @M_DEVBUF, align 4
  %143 = load i32, i32* @M_NOWAIT, align 4
  %144 = call i32* @malloc(i32 12, i32 %142, i32 %143)
  %145 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %146 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %145, i32 0, i32 4
  store i32* %144, i32** %146, align 8
  %147 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %148 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = load i32, i32* %3, align 4
  %153 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i32, i32* @ENXIO, align 4
  store i32 %154, i32* %18, align 4
  br label %427

155:                                              ; preds = %141
  %156 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %157 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = bitcast i32* %158 to %struct.my_list_data*
  %160 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %161 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %160, i32 0, i32 10
  store %struct.my_list_data* %159, %struct.my_list_data** %161, align 8
  %162 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %163 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = ptrtoint i32* %164 to i64
  %166 = and i64 %165, 15
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %11, align 4
  %168 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %169 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %12, align 8
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %185, %155
  %172 = load i32, i32* %4, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %188

174:                                              ; preds = %171
  %175 = load i32, i32* %11, align 4
  %176 = urem i32 %175, 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load i32, i32* %11, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %11, align 4
  %181 = load i32*, i32** %12, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %12, align 8
  br label %184

183:                                              ; preds = %174
  br label %188

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %171

188:                                              ; preds = %183, %171
  %189 = load i32*, i32** %12, align 8
  %190 = bitcast i32* %189 to %struct.my_list_data*
  %191 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %192 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %191, i32 0, i32 10
  store %struct.my_list_data* %190, %struct.my_list_data** %192, align 8
  %193 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %194 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %193, i32 0, i32 10
  %195 = load %struct.my_list_data*, %struct.my_list_data** %194, align 8
  %196 = call i32 @bzero(%struct.my_list_data* %195, i32 4)
  %197 = load i32, i32* @IFT_ETHER, align 4
  %198 = call %struct.ifnet* @if_alloc(i32 %197)
  %199 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %200 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %199, i32 0, i32 9
  store %struct.ifnet* %198, %struct.ifnet** %200, align 8
  store %struct.ifnet* %198, %struct.ifnet** %9, align 8
  %201 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %202 = icmp eq %struct.ifnet* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %188
  %204 = load i32, i32* %3, align 4
  %205 = call i32 (i32, i8*, ...) @device_printf(i32 %204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %206 = load i32, i32* @ENOSPC, align 4
  store i32 %206, i32* %18, align 4
  br label %421

207:                                              ; preds = %188
  %208 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %209 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 6
  store %struct.my_softc* %208, %struct.my_softc** %210, align 8
  %211 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @device_get_name(i32 %212)
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @device_get_unit(i32 %214)
  %216 = call i32 @if_initname(%struct.ifnet* %211, i32 %213, i32 %215)
  %217 = load i32, i32* @IFF_BROADCAST, align 4
  %218 = load i32, i32* @IFF_SIMPLEX, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @IFF_MULTICAST, align 4
  %221 = or i32 %219, %220
  %222 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %223 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* @my_ioctl, align 4
  %225 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @my_start, align 4
  %228 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %229 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @my_init, align 4
  %231 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %232 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %234 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %233, i32 0, i32 1
  store i32 10000000, i32* %234, align 4
  %235 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %236 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %235, i32 0, i32 2
  %237 = load i32, i32* @ifqmaxlen, align 4
  %238 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_8__* %236, i32 %237)
  %239 = load i32, i32* @ifqmaxlen, align 4
  %240 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %241 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  store i32 %239, i32* %242, align 8
  %243 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %244 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %243, i32 0, i32 2
  %245 = call i32 @IFQ_SET_READY(%struct.TYPE_8__* %244)
  %246 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %247 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %246, i32 0, i32 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @MTD803ID, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %207
  %254 = load %struct.my_type*, %struct.my_type** @my_phys, align 8
  %255 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %256 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %255, i32 0, i32 7
  store %struct.my_type* %254, %struct.my_type** %256, align 8
  br label %370

257:                                              ; preds = %207
  %258 = load i64, i64* @bootverbose, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32, i32* %3, align 4
  %262 = call i32 (i32, i8*, ...) @device_printf(i32 %261, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %257
  %264 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %265 = call i32 @MY_LOCK(%struct.my_softc* %264)
  %266 = load i32, i32* @MY_PHYADDR_MIN, align 4
  store i32 %266, i32* %4, align 4
  br label %267

267:                                              ; preds = %294, %263
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @MY_PHYADDR_MAX, align 4
  %270 = add nsw i32 %269, 1
  %271 = icmp slt i32 %268, %270
  br i1 %271, label %272, label %297

272:                                              ; preds = %267
  %273 = load i64, i64* @bootverbose, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i32, i32* %3, align 4
  %277 = load i32, i32* %4, align 4
  %278 = call i32 (i32, i8*, ...) @device_printf(i32 %276, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %275, %272
  %280 = load i32, i32* %4, align 4
  %281 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %282 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %284 = load i32, i32* @PHY_BMSR, align 4
  %285 = call i32 @my_phy_readreg(%struct.my_softc* %283, i32 %284)
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* %16, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %279
  %289 = load i32, i32* %16, align 4
  %290 = icmp ne i32 %289, 65535
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  br label %297

292:                                              ; preds = %288, %279
  store i32 0, i32* %16, align 4
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %4, align 4
  br label %267

297:                                              ; preds = %291, %267
  %298 = load i32, i32* %16, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %361

300:                                              ; preds = %297
  %301 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %302 = load i32, i32* @PHY_VENID, align 4
  %303 = call i32 @my_phy_readreg(%struct.my_softc* %301, i32 %302)
  store i32 %303, i32* %14, align 4
  %304 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %305 = load i32, i32* @PHY_DEVID, align 4
  %306 = call i32 @my_phy_readreg(%struct.my_softc* %304, i32 %305)
  store i32 %306, i32* %15, align 4
  %307 = load i64, i64* @bootverbose, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %300
  %310 = load i32, i32* %3, align 4
  %311 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %312 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 (i32, i8*, ...) @device_printf(i32 %310, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* %15, align 4
  %317 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %315, i32 %316)
  br label %318

318:                                              ; preds = %309, %300
  %319 = load %struct.my_type*, %struct.my_type** @my_phys, align 8
  store %struct.my_type* %319, %struct.my_type** %13, align 8
  br label %320

320:                                              ; preds = %335, %318
  %321 = load %struct.my_type*, %struct.my_type** %13, align 8
  %322 = getelementptr inbounds %struct.my_type, %struct.my_type* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %320
  %326 = load i32, i32* %14, align 4
  %327 = load %struct.my_type*, %struct.my_type** %13, align 8
  %328 = getelementptr inbounds %struct.my_type, %struct.my_type* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %326, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %325
  %332 = load %struct.my_type*, %struct.my_type** %13, align 8
  %333 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %334 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %333, i32 0, i32 7
  store %struct.my_type* %332, %struct.my_type** %334, align 8
  br label %338

335:                                              ; preds = %325
  %336 = load %struct.my_type*, %struct.my_type** %13, align 8
  %337 = getelementptr inbounds %struct.my_type, %struct.my_type* %336, i32 1
  store %struct.my_type* %337, %struct.my_type** %13, align 8
  br label %320

338:                                              ; preds = %331, %320
  %339 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %340 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %339, i32 0, i32 7
  %341 = load %struct.my_type*, %struct.my_type** %340, align 8
  %342 = icmp eq %struct.my_type* %341, null
  br i1 %342, label %343, label %349

343:                                              ; preds = %338
  %344 = load %struct.my_type*, %struct.my_type** @my_phys, align 8
  %345 = load i64, i64* @PHY_UNKNOWN, align 8
  %346 = getelementptr inbounds %struct.my_type, %struct.my_type* %344, i64 %345
  %347 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %348 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %347, i32 0, i32 7
  store %struct.my_type* %346, %struct.my_type** %348, align 8
  br label %349

349:                                              ; preds = %343, %338
  %350 = load i64, i64* @bootverbose, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %360

352:                                              ; preds = %349
  %353 = load i32, i32* %3, align 4
  %354 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %355 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %354, i32 0, i32 7
  %356 = load %struct.my_type*, %struct.my_type** %355, align 8
  %357 = getelementptr inbounds %struct.my_type, %struct.my_type* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 (i32, i8*, ...) @device_printf(i32 %353, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %352, %349
  br label %367

361:                                              ; preds = %297
  %362 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %363 = call i32 @MY_UNLOCK(%struct.my_softc* %362)
  %364 = load i32, i32* %3, align 4
  %365 = call i32 (i32, i8*, ...) @device_printf(i32 %364, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %366 = load i32, i32* @ENXIO, align 4
  store i32 %366, i32* %18, align 4
  br label %418

367:                                              ; preds = %360
  %368 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %369 = call i32 @MY_UNLOCK(%struct.my_softc* %368)
  br label %370

370:                                              ; preds = %367, %253
  %371 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %372 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %371, i32 0, i32 6
  %373 = load i32, i32* @my_ifmedia_upd, align 4
  %374 = load i32, i32* @my_ifmedia_sts, align 4
  %375 = call i32 @ifmedia_init(%struct.TYPE_7__* %372, i32 0, i32 %373, i32 %374)
  %376 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %377 = call i32 @MY_LOCK(%struct.my_softc* %376)
  %378 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %379 = call i32 @my_getmode_mii(%struct.my_softc* %378)
  %380 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %381 = load i32, i32* @MY_FLAG_FORCEDELAY, align 4
  %382 = call i32 @my_autoneg_mii(%struct.my_softc* %380, i32 %381, i32 1)
  %383 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %384 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %383, i32 0, i32 6
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %10, align 4
  %387 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %388 = call i32 @my_stop(%struct.my_softc* %387)
  %389 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %390 = call i32 @MY_UNLOCK(%struct.my_softc* %389)
  %391 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %392 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %391, i32 0, i32 6
  %393 = load i32, i32* %10, align 4
  %394 = call i32 @ifmedia_set(%struct.TYPE_7__* %392, i32 %393)
  %395 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %396 = call i32 @ether_ifattach(%struct.ifnet* %395, i32* %23)
  %397 = load i32, i32* %3, align 4
  %398 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %399 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %398, i32 0, i32 3
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* @INTR_TYPE_NET, align 4
  %402 = load i32, i32* @INTR_MPSAFE, align 4
  %403 = or i32 %401, %402
  %404 = load i32, i32* @my_intr, align 4
  %405 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %406 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %407 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %406, i32 0, i32 5
  %408 = call i32 @bus_setup_intr(i32 %397, i32* %400, i32 %403, i32* null, i32 %404, %struct.my_softc* %405, i32* %407)
  store i32 %408, i32* %18, align 4
  %409 = load i32, i32* %18, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %370
  %412 = load i32, i32* %3, align 4
  %413 = call i32 (i32, i8*, ...) @device_printf(i32 %412, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %415

414:                                              ; preds = %370
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %447

415:                                              ; preds = %411
  %416 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %417 = call i32 @ether_ifdetach(%struct.ifnet* %416)
  br label %418

418:                                              ; preds = %415, %361
  %419 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %420 = call i32 @if_free(%struct.ifnet* %419)
  br label %421

421:                                              ; preds = %418, %203
  %422 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %423 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %422, i32 0, i32 4
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* @M_DEVBUF, align 4
  %426 = call i32 @free(i32* %424, i32 %425)
  br label %427

427:                                              ; preds = %421, %151
  %428 = load i32, i32* %3, align 4
  %429 = load i32, i32* @SYS_RES_IRQ, align 4
  %430 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %431 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %430, i32 0, i32 3
  %432 = load i32*, i32** %431, align 8
  %433 = call i32 @bus_release_resource(i32 %428, i32 %429, i32 0, i32* %432)
  br label %434

434:                                              ; preds = %427, %110
  %435 = load i32, i32* %3, align 4
  %436 = load i32, i32* @MY_RES, align 4
  %437 = load i32, i32* @MY_RID, align 4
  %438 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %439 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = call i32 @bus_release_resource(i32 %435, i32 %436, i32 %437, i32* %440)
  br label %442

442:                                              ; preds = %434, %80
  %443 = load %struct.my_softc*, %struct.my_softc** %8, align 8
  %444 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %443, i32 0, i32 1
  %445 = call i32 @mtx_destroy(i32* %444)
  %446 = load i32, i32* %18, align 4
  store i32 %446, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %447

447:                                              ; preds = %442, %414
  %448 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %448)
  %449 = load i32, i32* %2, align 4
  ret i32 %449
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.my_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @pci_read_config(i32, i32, i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @rman_get_bustag(i32*) #2

declare dso_local i32 @rman_get_bushandle(i32*) #2

declare dso_local i32 @MY_LOCK(%struct.my_softc*) #2

declare dso_local i32 @my_reset(%struct.my_softc*) #2

declare dso_local i32 @MY_UNLOCK(%struct.my_softc*) #2

declare dso_local i32 @CSR_READ_1(%struct.my_softc*, i64) #2

declare dso_local i32* @malloc(i32, i32, i32) #2

declare dso_local i32 @bzero(%struct.my_list_data*, i32) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_8__*) #2

declare dso_local i32 @my_phy_readreg(%struct.my_softc*, i32) #2

declare dso_local i32 @printf(i8*, i32, i32) #2

declare dso_local i32 @ifmedia_init(%struct.TYPE_7__*, i32, i32, i32) #2

declare dso_local i32 @my_getmode_mii(%struct.my_softc*) #2

declare dso_local i32 @my_autoneg_mii(%struct.my_softc*, i32, i32) #2

declare dso_local i32 @my_stop(%struct.my_softc*) #2

declare dso_local i32 @ifmedia_set(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.my_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @if_free(%struct.ifnet*) #2

declare dso_local i32 @free(i32*, i32) #2

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #2

declare dso_local i32 @mtx_destroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
