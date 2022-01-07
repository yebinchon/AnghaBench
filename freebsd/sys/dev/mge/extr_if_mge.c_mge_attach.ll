; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.mge_softc = type { i32, i32, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_5__*, i32, %struct.ifnet*, i32, i64, i64, i64, i64, i64, i32, i32, i32, %struct.mge_softc*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, %struct.mge_softc* }
%struct.TYPE_7__ = type { i64 }
%struct.mii_softc = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PHY%i attached, phy_sc points to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"PHY not attached.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mrvl,sw\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Switch attached.\0A\00", align 1
@switch_attached = common dso_local global i32 0, align 4
@sx_smi = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"mge_tick() SMI access threads interlock\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"mge TX lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"mge RX lock\00", align 1
@res_spec = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"if_alloc() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@MGE_CHECKSUM_FEATURES = common dso_local global i32 0, align 4
@mge_init = common dso_local global i32 0, align 4
@mge_start = common dso_local global i32 0, align 4
@mge_ioctl = common dso_local global i32 0, align 4
@MGE_TX_DESC_NUM = common dso_local global i64 0, align 8
@mge_ifmedia_upd = common dso_local global i32 0, align 4
@mge_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"MII failed to find PHY\0A\00", align 1
@MGE_REG_PHYDEV = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@mge_intrs = common dso_local global %struct.TYPE_6__* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"could not setup %s\0A\00", align 1
@MGE_SWITCH_PHYDEV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mge_softc*, align 8
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @device_get_softc(i32 %18)
  %20 = bitcast i8* %19 to %struct.mge_softc*
  store %struct.mge_softc* %20, %struct.mge_softc** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %23 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %22, i32 0, i32 21
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ofw_bus_get_node(i32 %24)
  %26 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %26, i32 0, i32 19
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %11, align 4
  %28 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %29 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %28, i32 0, i32 19
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %31, i32 0, i32 21
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %34, i32 0, i32 20
  %36 = bitcast %struct.mge_softc** %35 to i8**
  %37 = call i64 @fdt_get_phyaddr(i32 %30, i32 %33, i32* %11, i8** %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %42, i32 0, i32 20
  %44 = load %struct.mge_softc*, %struct.mge_softc** %43, align 8
  %45 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %44, i32 0, i32 21
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_get_nameunit(i32 %46)
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %47)
  %49 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %50 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %59

51:                                               ; preds = %1
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %55 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %57 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %57, i32 0, i32 20
  store %struct.mge_softc* %56, %struct.mge_softc** %58, align 8
  br label %59

59:                                               ; preds = %51, %39
  %60 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %60, i32 0, i32 19
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @fdt_find_compatible(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %69 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  store i32 1, i32* @switch_attached, align 4
  br label %73

70:                                               ; preds = %59
  %71 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %3, align 4
  %75 = call i64 @device_get_unit(i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @sx_init(i32* @sx_smi, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %81 = call i32 @mge_ver_params(%struct.mge_softc* %80)
  %82 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %83 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %82, i32 0, i32 18
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @device_get_nameunit(i32 %84)
  %86 = load i32, i32* @MTX_DEF, align 4
  %87 = call i32 @mtx_init(i32* %83, i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %89 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %88, i32 0, i32 17
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_get_nameunit(i32 %90)
  %92 = load i32, i32* @MTX_DEF, align 4
  %93 = call i32 @mtx_init(i32* %89, i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @res_spec, align 4
  %96 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %97 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_alloc_resources(i32 %94, i32 %95, i32* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %79
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @mge_detach(i32 %105)
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %366

108:                                              ; preds = %79
  %109 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %110 = call i32 @mge_allocate_dma(%struct.mge_softc* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @mge_detach(i32 %114)
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %366

117:                                              ; preds = %108
  %118 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %119 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %118, i32 0, i32 16
  store i64 0, i64* %119, align 8
  %120 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %121 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %120, i32 0, i32 15
  store i64 0, i64* %121, align 8
  %122 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %123 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %122, i32 0, i32 14
  store i64 0, i64* %123, align 8
  %124 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %125 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %124, i32 0, i32 13
  store i64 0, i64* %125, align 8
  %126 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %127 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %126, i32 0, i32 2
  store i32 768, i32* %127, align 8
  %128 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %129 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %128, i32 0, i32 3
  store i32 768, i32* %129, align 4
  %130 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %131 = call i32 @mge_add_sysctls(%struct.mge_softc* %130)
  %132 = load i32, i32* @IFT_ETHER, align 4
  %133 = call %struct.ifnet* @if_alloc(i32 %132)
  %134 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %135 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %134, i32 0, i32 10
  store %struct.ifnet* %133, %struct.ifnet** %135, align 8
  store %struct.ifnet* %133, %struct.ifnet** %6, align 8
  %136 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %137 = icmp eq %struct.ifnet* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %117
  %139 = load i32, i32* %3, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @mge_detach(i32 %141)
  %143 = load i32, i32* @ENOMEM, align 4
  store i32 %143, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %366

144:                                              ; preds = %117
  %145 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @device_get_name(i32 %146)
  %148 = load i32, i32* %3, align 4
  %149 = call i64 @device_get_unit(i32 %148)
  %150 = call i32 @if_initname(%struct.ifnet* %145, i32 %147, i64 %149)
  %151 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %152 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 8
  store %struct.mge_softc* %151, %struct.mge_softc** %153, align 8
  %154 = load i32, i32* @IFF_SIMPLEX, align 4
  %155 = load i32, i32* @IFF_MULTICAST, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @IFF_BROADCAST, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %160 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %162 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %165 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %164, i32 0, i32 12
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %144
  %169 = load i32, i32* @IFCAP_HWCSUM, align 4
  %170 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* @MGE_CHECKSUM_FEATURES, align 4
  %175 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %176 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %144
  %178 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %179 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %182 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* @mge_init, align 4
  %184 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %185 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* @mge_start, align 4
  %187 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @mge_ioctl, align 4
  %190 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load i64, i64* @MGE_TX_DESC_NUM, align 8
  %193 = sub nsw i64 %192, 1
  %194 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %195 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i64 %193, i64* %196, align 8
  %197 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %198 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %197, i32 0, i32 1
  %199 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %200 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_7__* %198, i64 %202)
  %204 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %205 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %204, i32 0, i32 1
  %206 = call i32 @IFQ_SET_READY(%struct.TYPE_7__* %205)
  %207 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %208 = call i32 @mge_get_mac_address(%struct.mge_softc* %207, i32* %17)
  %209 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %210 = call i32 @ether_ifattach(%struct.ifnet* %209, i32* %17)
  %211 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %212 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %211, i32 0, i32 11
  %213 = call i32 @callout_init(i32* %212, i32 0)
  %214 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %215 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %260

218:                                              ; preds = %177
  %219 = load i32, i32* %3, align 4
  %220 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %221 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %220, i32 0, i32 9
  %222 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %223 = load i32, i32* @mge_ifmedia_upd, align 4
  %224 = load i32, i32* @mge_ifmedia_sts, align 4
  %225 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @MII_OFFSET_ANY, align 4
  %228 = call i32 @mii_attach(i32 %219, i32* %221, %struct.ifnet* %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 0)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %218
  %232 = load i32, i32* %3, align 4
  %233 = call i32 (i32, i8*, ...) @device_printf(i32 %232, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %234 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %235 = call i32 @if_free(%struct.ifnet* %234)
  %236 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %237 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %236, i32 0, i32 10
  store %struct.ifnet* null, %struct.ifnet** %237, align 8
  %238 = load i32, i32* %3, align 4
  %239 = call i32 @mge_detach(i32 %238)
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %366

241:                                              ; preds = %218
  %242 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %243 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = call i8* @device_get_softc(i32 %244)
  %246 = bitcast i8* %245 to %struct.TYPE_5__*
  %247 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %248 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %247, i32 0, i32 8
  store %struct.TYPE_5__* %246, %struct.TYPE_5__** %248, align 8
  %249 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %250 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %249, i32 0, i32 8
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = call %struct.mii_softc* @LIST_FIRST(i32* %252)
  store %struct.mii_softc* %253, %struct.mii_softc** %5, align 8
  %254 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %255 = load i32, i32* @MGE_REG_PHYDEV, align 4
  %256 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %257 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @MGE_WRITE(%struct.mge_softc* %254, i32 %255, i32 %258)
  br label %282

260:                                              ; preds = %177
  %261 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %262 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %261, i32 0, i32 7
  %263 = load i32, i32* @mge_ifmedia_upd, align 4
  %264 = load i32, i32* @mge_ifmedia_sts, align 4
  %265 = call i32 @ifmedia_init(i32* %262, i32 0, i32 %263, i32 %264)
  %266 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %267 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %266, i32 0, i32 7
  %268 = load i32, i32* @IFM_ETHER, align 4
  %269 = load i32, i32* @IFM_1000_T, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @IFM_FDX, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @ifmedia_add(i32* %267, i32 %272, i32 0, i32* null)
  %274 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %275 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %274, i32 0, i32 7
  %276 = load i32, i32* @IFM_ETHER, align 4
  %277 = load i32, i32* @IFM_1000_T, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @IFM_FDX, align 4
  %280 = or i32 %278, %279
  %281 = call i32 @ifmedia_set(i32* %275, i32 %280)
  br label %282

282:                                              ; preds = %260, %241
  store i32 1, i32* %9, align 4
  br label %283

283:                                              ; preds = %348, %282
  %284 = load i32, i32* %9, align 4
  %285 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %286 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = icmp sle i32 %284, %287
  br i1 %288, label %289, label %351

289:                                              ; preds = %283
  %290 = load i32, i32* %3, align 4
  %291 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %292 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %291, i32 0, i32 6
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @INTR_TYPE_NET, align 4
  %299 = load i32, i32* @INTR_MPSAFE, align 4
  %300 = or i32 %298, %299
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mge_intrs, align 8
  %302 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %303 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %307

306:                                              ; preds = %289
  br label %309

307:                                              ; preds = %289
  %308 = load i32, i32* %9, align 4
  br label %309

309:                                              ; preds = %307, %306
  %310 = phi i32 [ 0, %306 ], [ %308, %307 ]
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %317 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %318 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %317, i32 0, i32 5
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sub nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  %324 = call i32 @bus_setup_intr(i32 %290, i32 %297, i32 %300, i32* null, i32 %315, %struct.mge_softc* %316, i32* %323)
  store i32 %324, i32* %10, align 4
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %347

327:                                              ; preds = %309
  %328 = load i32, i32* %3, align 4
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mge_intrs, align 8
  %330 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %331 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %335

334:                                              ; preds = %327
  br label %337

335:                                              ; preds = %327
  %336 = load i32, i32* %9, align 4
  br label %337

337:                                              ; preds = %335, %334
  %338 = phi i32 [ 0, %334 ], [ %336, %335 ]
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 (i32, i8*, ...) @device_printf(i32 %328, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %342)
  %344 = load i32, i32* %3, align 4
  %345 = call i32 @mge_detach(i32 %344)
  %346 = load i32, i32* %10, align 4
  store i32 %346, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %366

347:                                              ; preds = %309
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %9, align 4
  br label %283

351:                                              ; preds = %283
  %352 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %353 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %351
  %357 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %358 = load i32, i32* @MGE_REG_PHYDEV, align 4
  %359 = load i32, i32* @MGE_SWITCH_PHYDEV, align 4
  %360 = call i32 @MGE_WRITE(%struct.mge_softc* %357, i32 %358, i32 %359)
  %361 = load i32, i32* %3, align 4
  %362 = call i32 @device_add_child(i32 %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 -1)
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* %3, align 4
  %364 = call i32 @bus_generic_attach(i32 %363)
  br label %365

365:                                              ; preds = %356, %351
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %366

366:                                              ; preds = %365, %337, %231, %138, %113, %102
  %367 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %367)
  %368 = load i32, i32* %2, align 4
  ret i32 %368
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @device_get_softc(i32) #2

declare dso_local i32 @ofw_bus_get_node(i32) #2

declare dso_local i64 @fdt_get_phyaddr(i32, i32, i32*, i8**) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i64 @fdt_find_compatible(i32, i8*, i32) #2

declare dso_local i64 @device_get_unit(i32) #2

declare dso_local i32 @sx_init(i32*, i8*) #2

declare dso_local i32 @mge_ver_params(%struct.mge_softc*) #2

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #2

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #2

declare dso_local i32 @mge_detach(i32) #2

declare dso_local i32 @mge_allocate_dma(%struct.mge_softc*) #2

declare dso_local i32 @mge_add_sysctls(%struct.mge_softc*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i64) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_7__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_7__*) #2

declare dso_local i32 @mge_get_mac_address(%struct.mge_softc*, i32*) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @callout_init(i32*, i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @if_free(%struct.ifnet*) #2

declare dso_local %struct.mii_softc* @LIST_FIRST(i32*) #2

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #2

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #2

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #2

declare dso_local i32 @ifmedia_set(i32*, i32) #2

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.mge_softc*, i32*) #2

declare dso_local i32 @device_add_child(i32, i8*, i32) #2

declare dso_local i32 @bus_generic_attach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
