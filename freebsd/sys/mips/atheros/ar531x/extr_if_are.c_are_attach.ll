; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.are_softc* }
%struct.TYPE_3__ = type { i32 }
%struct.are_softc = type { i32*, i32, i32, i32, i32*, i32, i32, i32, i32, %struct.ifnet*, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"macaddr\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Overriding MAC address from environment: '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%x%*c%x%*c%x%*c%x%*c%x%*c%x\00", align 1
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@are_link_task = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"couldn't allocate ifnet structure\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@are_ioctl = common dso_local global i32 0, align 4
@are_start = common dso_local global i32 0, align 4
@are_init = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@CSR_BUSMODE = common dso_local global i32 0, align 4
@BUSMODE_SWR = common dso_local global i32 0, align 4
@are_ifmedia_upd = common dso_local global i32 0, align 4
@are_ifmedia_sts = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@are_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@AR5312_IRQ_ENET0 = common dso_local global i32 0, align 4
@AR5312_IRQ_ENET1 = common dso_local global i32 0, align 4
@AR5315_CPU_IRQ_ENET = common dso_local global i32 0, align 4
@AR531X_SOC_AR5315 = common dso_local global i64 0, align 8
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@ar531x_soc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @are_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.are_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.are_softc* @device_get_softc(i32 %13)
  store %struct.are_softc* %14, %struct.are_softc** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_unit(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %19 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %21 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %25 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 12, i32* %27, align 4
  %28 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %29 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 66, i32* %31, align 4
  %32 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %33 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  store i32 9, i32* %35, align 4
  %36 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %37 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32 94, i32* %39, align 4
  %40 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %41 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  store i32 107, i32* %43, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @device_get_name(i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @device_get_unit(i32 %46)
  %48 = call i32 @resource_string_value(i32 %45, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %11, align 8
  %54 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %12, align 8
  %55 = load i32, i32* %2, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i32, i32* %54, i64 0
  %60 = getelementptr inbounds i32, i32* %54, i64 1
  %61 = getelementptr inbounds i32, i32* %54, i64 2
  %62 = getelementptr inbounds i32, i32* %54, i64 3
  %63 = getelementptr inbounds i32, i32* %54, i64 4
  %64 = getelementptr inbounds i32, i32* %54, i64 5
  %65 = call i32 @sscanf(i8* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 6
  br i1 %67, label %68, label %88

68:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %54, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %79 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %69

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %89)
  br label %90

90:                                               ; preds = %88, %1
  %91 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %92 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %91, i32 0, i32 14
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @device_get_nameunit(i32 %93)
  %95 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %96 = load i32, i32* @MTX_DEF, align 4
  %97 = call i32 @mtx_init(i32* %92, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %99 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %98, i32 0, i32 15
  %100 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %101 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %100, i32 0, i32 14
  %102 = call i32 @callout_init_mtx(i32* %99, i32* %101, i32 0)
  %103 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %104 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %103, i32 0, i32 13
  %105 = load i32, i32* @are_link_task, align 4
  %106 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %107 = call i32 @TASK_INIT(i32* %104, i32 0, i32 %105, %struct.are_softc* %106)
  %108 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %109 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %108, i32 0, i32 1
  store i32 0, i32* %109, align 8
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @SYS_RES_MEMORY, align 4
  %112 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %113 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %112, i32 0, i32 1
  %114 = load i32, i32* @RF_ACTIVE, align 4
  %115 = load i32, i32* @RF_SHAREABLE, align 4
  %116 = or i32 %114, %115
  %117 = call i8* @bus_alloc_resource_any(i32 %110, i32 %111, i32* %113, i32 %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %120 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %119, i32 0, i32 10
  store i32* %118, i32** %120, align 8
  %121 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %122 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %121, i32 0, i32 10
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %90
  %126 = load i32, i32* %2, align 4
  %127 = call i32 (i32, i8*, ...) @device_printf(i32 %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %5, align 4
  br label %275

129:                                              ; preds = %90
  %130 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %131 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %130, i32 0, i32 10
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @rman_get_bustag(i32* %132)
  %134 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %135 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %134, i32 0, i32 12
  store i32 %133, i32* %135, align 4
  %136 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %137 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %136, i32 0, i32 10
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @rman_get_bushandle(i32* %138)
  %140 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %141 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 8
  store i32 0, i32* %6, align 4
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @SYS_RES_IRQ, align 4
  %144 = load i32, i32* @RF_SHAREABLE, align 4
  %145 = load i32, i32* @RF_ACTIVE, align 4
  %146 = or i32 %144, %145
  %147 = call i8* @bus_alloc_resource_any(i32 %142, i32 %143, i32* %6, i32 %146)
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %150 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %149, i32 0, i32 4
  store i32* %148, i32** %150, align 8
  %151 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %152 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %129
  %156 = load i32, i32* %2, align 4
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* @ENXIO, align 4
  store i32 %158, i32* %5, align 4
  br label %275

159:                                              ; preds = %129
  %160 = load i32, i32* @IFT_ETHER, align 4
  %161 = call %struct.ifnet* @if_alloc(i32 %160)
  %162 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %163 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %162, i32 0, i32 9
  store %struct.ifnet* %161, %struct.ifnet** %163, align 8
  store %struct.ifnet* %161, %struct.ifnet** %3, align 8
  %164 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %165 = icmp eq %struct.ifnet* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32, i32* %2, align 4
  %168 = call i32 (i32, i8*, ...) @device_printf(i32 %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %169 = load i32, i32* @ENOSPC, align 4
  store i32 %169, i32* %5, align 4
  br label %275

170:                                              ; preds = %159
  %171 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %172 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 7
  store %struct.are_softc* %171, %struct.are_softc** %173, align 8
  %174 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %175 = load i32, i32* %2, align 4
  %176 = call i32 @device_get_name(i32 %175)
  %177 = load i32, i32* %2, align 4
  %178 = call i32 @device_get_unit(i32 %177)
  %179 = call i32 @if_initname(%struct.ifnet* %174, i32 %176, i32 %178)
  %180 = load i32, i32* @IFF_BROADCAST, align 4
  %181 = load i32, i32* @IFF_SIMPLEX, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @IFF_MULTICAST, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %186 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @are_ioctl, align 4
  %188 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %189 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %188, i32 0, i32 6
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* @are_start, align 4
  %191 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %192 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* @are_init, align 4
  %194 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %195 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 8
  %196 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %197 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %200 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  %201 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %202 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %201, i32 0, i32 3
  %203 = load i32, i32* @ifqmaxlen, align 4
  %204 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %202, i32 %203)
  %205 = load i32, i32* @ifqmaxlen, align 4
  %206 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %207 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 4
  %209 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 3
  %211 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %210)
  %212 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %213 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %214 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %221 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 8
  %222 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %223 = call i64 @are_dma_alloc(%struct.are_softc* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %170
  %226 = load i32, i32* @ENXIO, align 4
  store i32 %226, i32* %5, align 4
  br label %275

227:                                              ; preds = %170
  %228 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %229 = load i32, i32* @CSR_BUSMODE, align 4
  %230 = load i32, i32* @BUSMODE_SWR, align 4
  %231 = call i32 @CSR_WRITE_4(%struct.are_softc* %228, i32 %229, i32 %230)
  %232 = call i32 @DELAY(i32 1000)
  %233 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %234 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %233, i32 0, i32 5
  %235 = load i32, i32* @are_ifmedia_upd, align 4
  %236 = load i32, i32* @are_ifmedia_sts, align 4
  %237 = call i32 @ifmedia_init(i32* %234, i32 0, i32 %235, i32 %236)
  %238 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %239 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %238, i32 0, i32 5
  %240 = load i32, i32* @IFM_ETHER, align 4
  %241 = load i32, i32* @IFM_AUTO, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @ifmedia_add(i32* %239, i32 %242, i32 0, i32* null)
  %244 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %245 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %244, i32 0, i32 5
  %246 = load i32, i32* @IFM_ETHER, align 4
  %247 = load i32, i32* @IFM_AUTO, align 4
  %248 = or i32 %246, %247
  %249 = call i32 @ifmedia_set(i32* %245, i32 %248)
  %250 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %251 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %252 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @ether_ifattach(%struct.ifnet* %250, i32* %253)
  %255 = load i32, i32* %2, align 4
  %256 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %257 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* @INTR_TYPE_NET, align 4
  %260 = load i32, i32* @INTR_MPSAFE, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @are_intr, align 4
  %263 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %264 = load %struct.are_softc*, %struct.are_softc** %4, align 8
  %265 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %264, i32 0, i32 3
  %266 = call i32 @bus_setup_intr(i32 %255, i32* %258, i32 %261, i32* null, i32 %262, %struct.are_softc* %263, i32* %265)
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %5, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %227
  %270 = load i32, i32* %2, align 4
  %271 = call i32 (i32, i8*, ...) @device_printf(i32 %270, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %272 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %273 = call i32 @ether_ifdetach(%struct.ifnet* %272)
  br label %275

274:                                              ; preds = %227
  br label %275

275:                                              ; preds = %274, %269, %225, %166, %155, %125
  %276 = load i32, i32* %5, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32, i32* %2, align 4
  %280 = call i32 @are_detach(i32 %279)
  br label %281

281:                                              ; preds = %278, %275
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local %struct.are_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.are_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i64 @are_dma_alloc(%struct.are_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.are_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.are_softc*, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @are_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
