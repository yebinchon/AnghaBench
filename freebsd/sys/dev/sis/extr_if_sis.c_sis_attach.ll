; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i64, i32, i32, i32*, i32, i32, %struct.ifnet*, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.sis_softc* }
%struct.TYPE_3__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SIS_DEVICEID_900 = common dso_local global i64 0, align 8
@SIS_TYPE_900 = common dso_local global i64 0, align 8
@SIS_DEVICEID_7016 = common dso_local global i64 0, align 8
@SIS_TYPE_7016 = common dso_local global i64 0, align 8
@SIS_TYPE_83815 = common dso_local global i64 0, align 8
@PCIR_REVID = common dso_local global i32 0, align 4
@sis_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't allocate resources\0A\00", align 1
@SIS_REV_635 = common dso_local global i64 0, align 8
@SIS_REV_900B = common dso_local global i64 0, align 8
@SIS_CFG_RND_CNT = common dso_local global i32 0, align 4
@SIS_CFG_PERR_DETECT = common dso_local global i32 0, align 4
@NS_SRR = common dso_local global i32 0, align 4
@NS_SRR_15C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Silicon Revision: DP83815C\0A\00", align 1
@NS_SRR_15D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Silicon Revision: DP83815D\0A\00", align 1
@NS_SRR_16A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Silicon Revision: DP83816A\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Silicon Revision %x\0A\00", align 1
@NS_EE_NODEADDR = common dso_local global i32 0, align 4
@SIS_REV_630S = common dso_local global i64 0, align 8
@SIS_REV_630E = common dso_local global i64 0, align 8
@SIS_REV_630EA1 = common dso_local global i64 0, align 8
@SIS_REV_630ET = common dso_local global i64 0, align 8
@SIS_REV_96x = common dso_local global i64 0, align 8
@SIS_EECMD_REQ = common dso_local global i32 0, align 4
@SIS_TIMEOUT = common dso_local global i32 0, align 4
@SIS_EECTL = common dso_local global i32 0, align 4
@SIS_EECMD_GNT = common dso_local global i32 0, align 4
@SIS_EE_NODEADDR = common dso_local global i32 0, align 4
@SIS_EECTL_CLK = common dso_local global i32 0, align 4
@SIS_EECMD_DONE = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"can not if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@sis_ioctl = common dso_local global i32 0, align 4
@sis_start = common dso_local global i32 0, align 4
@sis_init = common dso_local global i32 0, align 4
@SIS_TX_LIST_CNT = common dso_local global i64 0, align 8
@PCIY_PMG = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@sis_ifmedia_upd = common dso_local global i32 0, align 4
@sis_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sis_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sis_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sis_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.sis_softc* @device_get_softc(i32 %15)
  store %struct.sis_softc* %16, %struct.sis_softc** %5, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %19 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %21 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %20, i32 0, i32 8
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @device_get_nameunit(i32 %22)
  %24 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %21, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %28 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %27, i32 0, i32 9
  %29 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %30 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %29, i32 0, i32 8
  %31 = call i32 @callout_init_mtx(i32* %28, i32* %30, i32 0)
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @pci_get_device(i32 %32)
  %34 = load i64, i64* @SIS_DEVICEID_900, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i64, i64* @SIS_TYPE_900, align 8
  %38 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %39 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %1
  %41 = load i32, i32* %2, align 4
  %42 = call i64 @pci_get_device(i32 %41)
  %43 = load i64, i64* @SIS_DEVICEID_7016, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i64, i64* @SIS_TYPE_7016, align 8
  %47 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %48 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @pci_get_vendor(i32 %50)
  %52 = icmp eq i32 %51, 129
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* @SIS_TYPE_83815, align 8
  %55 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %56 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @PCIR_REVID, align 4
  %60 = call i64 @pci_read_config(i32 %58, i32 %59, i32 1)
  %61 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %62 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @pci_enable_busmaster(i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @sis_res_spec, align 4
  %67 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %68 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @bus_alloc_resources(i32 %65, i32 %66, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = load i32, i32* %2, align 4
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %447

76:                                               ; preds = %57
  %77 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %78 = call i32 @sis_reset(%struct.sis_softc* %77)
  %79 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %80 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SIS_TYPE_900, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %76
  %85 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %86 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SIS_REV_635, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %92 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SIS_REV_900B, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90, %84
  %97 = load i32, i32* @SIS_CFG_RND_CNT, align 4
  %98 = call i32 @SIO_SET(i32 %97)
  %99 = load i32, i32* @SIS_CFG_PERR_DETECT, align 4
  %100 = call i32 @SIO_SET(i32 %99)
  br label %101

101:                                              ; preds = %96, %90, %76
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @pci_get_vendor(i32 %102)
  switch i32 %103, label %222 [
    i32 129, label %104
    i32 128, label %221
  ]

104:                                              ; preds = %101
  %105 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %106 = load i32, i32* @NS_SRR, align 4
  %107 = call i32 @CSR_READ_4(%struct.sis_softc* %105, i32 %106)
  %108 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %109 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %111 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NS_SRR_15C, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %2, align 4
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %144

118:                                              ; preds = %104
  %119 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %120 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @NS_SRR_15D, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %2, align 4
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %143

127:                                              ; preds = %118
  %128 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %129 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NS_SRR_16A, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %2, align 4
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %142

136:                                              ; preds = %127
  %137 = load i32, i32* %2, align 4
  %138 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %139 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %133
  br label %143

143:                                              ; preds = %142, %124
  br label %144

144:                                              ; preds = %143, %115
  %145 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %146 = ptrtoint [4 x i32]* %10 to i32
  %147 = load i32, i32* @NS_EE_NODEADDR, align 4
  %148 = call i32 @sis_read_eeprom(%struct.sis_softc* %145, i32 %146, i32 %147, i32 4, i32 0)
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 1
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %151, i32* %152, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %154, 15
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = ashr i32 %160, 1
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %161, i32* %162, align 8
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 15
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %165
  store i32 %168, i32* %166, align 8
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = ashr i32 %170, 1
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %171, i32* %172, align 4
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %174 = load i32, i32* %173, align 16
  %175 = shl i32 %174, 15
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @sis_reverse(i32 %180)
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %181, i32* %182, align 4
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @sis_reverse(i32 %184)
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %185, i32* %186, align 8
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sis_reverse(i32 %188)
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %189, i32* %190, align 4
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = ashr i32 %192, 0
  %194 = and i32 %193, 255
  %195 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %194, i32* %195, align 16
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = ashr i32 %197, 8
  %199 = and i32 %198, 255
  %200 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %199, i32* %200, align 4
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %202 = load i32, i32* %201, align 8
  %203 = ashr i32 %202, 0
  %204 = and i32 %203, 255
  %205 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 %204, i32* %205, align 8
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %207 = load i32, i32* %206, align 8
  %208 = ashr i32 %207, 8
  %209 = and i32 %208, 255
  %210 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 %209, i32* %210, align 4
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 0
  %214 = and i32 %213, 255
  %215 = getelementptr inbounds i32, i32* %14, i64 4
  store i32 %214, i32* %215, align 16
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %217 = load i32, i32* %216, align 4
  %218 = ashr i32 %217, 8
  %219 = and i32 %218, 255
  %220 = getelementptr inbounds i32, i32* %14, i64 5
  store i32 %219, i32* %220, align 4
  br label %307

221:                                              ; preds = %101
  br label %222

222:                                              ; preds = %101, %221
  %223 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %224 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @SIS_REV_630S, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %240, label %228

228:                                              ; preds = %222
  %229 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %230 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SIS_REV_630E, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %240, label %234

234:                                              ; preds = %228
  %235 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %236 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @SIS_REV_630EA1, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %234, %228, %222
  %241 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %242 = load i32, i32* %2, align 4
  %243 = ptrtoint i32* %14 to i32
  %244 = call i32 @sis_read_cmos(%struct.sis_softc* %241, i32 %242, i32 %243, i32 9, i32 6)
  br label %306

245:                                              ; preds = %234
  %246 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %247 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @SIS_REV_635, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %253 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @SIS_REV_630ET, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %251, %245
  %258 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %259 = load i32, i32* %2, align 4
  %260 = ptrtoint i32* %14 to i32
  %261 = call i32 @sis_read_mac(%struct.sis_softc* %258, i32 %259, i32 %260)
  br label %305

262:                                              ; preds = %251
  %263 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %264 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @SIS_REV_96x, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %299

268:                                              ; preds = %262
  %269 = load i32, i32* @SIS_EECMD_REQ, align 4
  %270 = call i32 @SIO_SET(i32 %269)
  store i32 0, i32* %9, align 4
  br label %271

271:                                              ; preds = %291, %268
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @SIS_TIMEOUT, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %294

275:                                              ; preds = %271
  %276 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %277 = call i32 @sis_eeprom_idle(%struct.sis_softc* %276)
  %278 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %279 = load i32, i32* @SIS_EECTL, align 4
  %280 = call i32 @CSR_READ_4(%struct.sis_softc* %278, i32 %279)
  %281 = load i32, i32* @SIS_EECMD_GNT, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %275
  %285 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %286 = ptrtoint i32* %14 to i32
  %287 = load i32, i32* @SIS_EE_NODEADDR, align 4
  %288 = call i32 @sis_read_eeprom(%struct.sis_softc* %285, i32 %286, i32 %287, i32 3, i32 0)
  br label %294

289:                                              ; preds = %275
  %290 = call i32 @DELAY(i32 1)
  br label %291

291:                                              ; preds = %289
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %271

294:                                              ; preds = %284, %271
  %295 = load i32, i32* @SIS_EECTL_CLK, align 4
  %296 = call i32 @SIO_SET(i32 %295)
  %297 = load i32, i32* @SIS_EECMD_DONE, align 4
  %298 = call i32 @SIO_SET(i32 %297)
  br label %304

299:                                              ; preds = %262
  %300 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %301 = ptrtoint i32* %14 to i32
  %302 = load i32, i32* @SIS_EE_NODEADDR, align 4
  %303 = call i32 @sis_read_eeprom(%struct.sis_softc* %300, i32 %301, i32 %302, i32 3, i32 0)
  br label %304

304:                                              ; preds = %299, %294
  br label %305

305:                                              ; preds = %304, %257
  br label %306

306:                                              ; preds = %305, %240
  br label %307

307:                                              ; preds = %306, %144
  %308 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %309 = call i32 @sis_add_sysctls(%struct.sis_softc* %308)
  %310 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %311 = call i32 @sis_dma_alloc(%struct.sis_softc* %310)
  store i32 %311, i32* %7, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  br label %447

314:                                              ; preds = %307
  %315 = load i32, i32* @IFT_ETHER, align 4
  %316 = call %struct.ifnet* @if_alloc(i32 %315)
  %317 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %318 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %317, i32 0, i32 7
  store %struct.ifnet* %316, %struct.ifnet** %318, align 8
  store %struct.ifnet* %316, %struct.ifnet** %6, align 8
  %319 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %320 = icmp eq %struct.ifnet* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %314
  %322 = load i32, i32* %2, align 4
  %323 = call i32 (i32, i8*, ...) @device_printf(i32 %322, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %324 = load i32, i32* @ENOSPC, align 4
  store i32 %324, i32* %7, align 4
  br label %447

325:                                              ; preds = %314
  %326 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %327 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %328 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %327, i32 0, i32 8
  store %struct.sis_softc* %326, %struct.sis_softc** %328, align 8
  %329 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %330 = load i32, i32* %2, align 4
  %331 = call i32 @device_get_name(i32 %330)
  %332 = load i32, i32* %2, align 4
  %333 = call i32 @device_get_unit(i32 %332)
  %334 = call i32 @if_initname(%struct.ifnet* %329, i32 %331, i32 %333)
  %335 = load i32, i32* @IFF_BROADCAST, align 4
  %336 = load i32, i32* @IFF_SIMPLEX, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @IFF_MULTICAST, align 4
  %339 = or i32 %337, %338
  %340 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %341 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %340, i32 0, i32 0
  store i32 %339, i32* %341, align 8
  %342 = load i32, i32* @sis_ioctl, align 4
  %343 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %344 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %343, i32 0, i32 7
  store i32 %342, i32* %344, align 8
  %345 = load i32, i32* @sis_start, align 4
  %346 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %347 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %346, i32 0, i32 6
  store i32 %345, i32* %347, align 4
  %348 = load i32, i32* @sis_init, align 4
  %349 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %350 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %349, i32 0, i32 5
  store i32 %348, i32* %350, align 8
  %351 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %352 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %351, i32 0, i32 4
  %353 = load i64, i64* @SIS_TX_LIST_CNT, align 8
  %354 = sub nsw i64 %353, 1
  %355 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %352, i64 %354)
  %356 = load i64, i64* @SIS_TX_LIST_CNT, align 8
  %357 = sub nsw i64 %356, 1
  %358 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %359 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 0
  store i64 %357, i64* %360, align 8
  %361 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %362 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %361, i32 0, i32 4
  %363 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %362)
  %364 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %365 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %364, i32 0, i32 6
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @PCIY_PMG, align 4
  %368 = call i64 @pci_find_cap(i32 %366, i32 %367, i32* %8)
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %394

370:                                              ; preds = %325
  %371 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %372 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @SIS_TYPE_83815, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %382

376:                                              ; preds = %370
  %377 = load i32, i32* @IFCAP_WOL, align 4
  %378 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %379 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 8
  br label %388

382:                                              ; preds = %370
  %383 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %384 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %385 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = or i32 %386, %383
  store i32 %387, i32* %385, align 8
  br label %388

388:                                              ; preds = %382, %376
  %389 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %390 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %393 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 4
  br label %394

394:                                              ; preds = %388, %325
  %395 = load i32, i32* %2, align 4
  %396 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %397 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %396, i32 0, i32 5
  %398 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %399 = load i32, i32* @sis_ifmedia_upd, align 4
  %400 = load i32, i32* @sis_ifmedia_sts, align 4
  %401 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %402 = load i32, i32* @MII_PHY_ANY, align 4
  %403 = load i32, i32* @MII_OFFSET_ANY, align 4
  %404 = call i32 @mii_attach(i32 %395, i32* %397, %struct.ifnet* %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 0)
  store i32 %404, i32* %7, align 4
  %405 = load i32, i32* %7, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %394
  %408 = load i32, i32* %2, align 4
  %409 = call i32 (i32, i8*, ...) @device_printf(i32 %408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %447

410:                                              ; preds = %394
  %411 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %412 = call i32 @ether_ifattach(%struct.ifnet* %411, i32* %14)
  %413 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %414 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %413, i32 0, i32 1
  store i32 4, i32* %414, align 4
  %415 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %416 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %417 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = or i32 %418, %415
  store i32 %419, i32* %417, align 8
  %420 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %421 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %424 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %423, i32 0, i32 3
  store i32 %422, i32* %424, align 4
  %425 = load i32, i32* %2, align 4
  %426 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %427 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %426, i32 0, i32 4
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 1
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @INTR_TYPE_NET, align 4
  %432 = load i32, i32* @INTR_MPSAFE, align 4
  %433 = or i32 %431, %432
  %434 = load i32, i32* @sis_intr, align 4
  %435 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %436 = load %struct.sis_softc*, %struct.sis_softc** %5, align 8
  %437 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %436, i32 0, i32 3
  %438 = call i32 @bus_setup_intr(i32 %425, i32 %430, i32 %433, i32* null, i32 %434, %struct.sis_softc* %435, i32* %437)
  store i32 %438, i32* %7, align 4
  %439 = load i32, i32* %7, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %410
  %442 = load i32, i32* %2, align 4
  %443 = call i32 (i32, i8*, ...) @device_printf(i32 %442, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %444 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %445 = call i32 @ether_ifdetach(%struct.ifnet* %444)
  br label %447

446:                                              ; preds = %410
  br label %447

447:                                              ; preds = %446, %441, %407, %321, %313, %73
  %448 = load i32, i32* %7, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %453

450:                                              ; preds = %447
  %451 = load i32, i32* %2, align 4
  %452 = call i32 @sis_detach(i32 %451)
  br label %453

453:                                              ; preds = %450, %447
  %454 = load i32, i32* %7, align 4
  %455 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %455)
  ret i32 %454
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sis_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i64 @pci_get_device(i32) #2

declare dso_local i32 @pci_get_vendor(i32) #2

declare dso_local i64 @pci_read_config(i32, i32, i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @sis_reset(%struct.sis_softc*) #2

declare dso_local i32 @SIO_SET(i32) #2

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #2

declare dso_local i32 @sis_read_eeprom(%struct.sis_softc*, i32, i32, i32, i32) #2

declare dso_local i32 @sis_reverse(i32) #2

declare dso_local i32 @sis_read_cmos(%struct.sis_softc*, i32, i32, i32, i32) #2

declare dso_local i32 @sis_read_mac(%struct.sis_softc*, i32, i32) #2

declare dso_local i32 @sis_eeprom_idle(%struct.sis_softc*) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @sis_add_sysctls(%struct.sis_softc*) #2

declare dso_local i32 @sis_dma_alloc(%struct.sis_softc*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i64) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.sis_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @sis_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
