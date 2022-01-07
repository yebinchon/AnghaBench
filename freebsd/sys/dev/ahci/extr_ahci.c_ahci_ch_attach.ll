; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32, i32, i64, i8*, i32, i32, i32, i32, i32 }
%struct.ahci_channel = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32*, i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.cam_devq = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.mtx = type { i32 }

@AHCI_CAP_NCS = common dso_local global i32 0, align 4
@AHCI_CAP_NCS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"AHCI channel lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pm_level\00", align 1
@AHCI_Q_SATA1_UNIT0 = common dso_local global i32 0, align 4
@AHCI_Q_SATA2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"sata_rev\00", align 1
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_APST = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_APST = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_DMAAA = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_AN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_VS = common dso_local global i32 0, align 4
@AHCI_CAP_FBSS = common dso_local global i32 0, align 4
@AHCI_P_CMD_FBSCP = common dso_local global i32 0, align 4
@AHCI_CAP2_SDS = common dso_local global i32 0, align 4
@AHCI_P_DEVSLP = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Caps:%s%s%s%s%s%s\0A\00", align 1
@AHCI_P_CMD_HPCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" HPCP\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AHCI_P_CMD_MPSP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" MPSP\00", align 1
@AHCI_P_CMD_CPD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" CPD\00", align 1
@AHCI_P_CMD_ESP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c" ESP\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" FBSCP\00", align 1
@AHCI_P_DEVSLP_DSP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c" DSP\00", align 1
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Unable to map interrupt\0A\00", align 1
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@ahci_ch_intr_direct = common dso_local global i32 0, align 4
@ahci_ch_intr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Unable to setup interrupt\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Unable to allocate simq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ahciaction = common dso_local global i32 0, align 4
@ahcipoll = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"ahcich\00", align 1
@AHCI_Q_NOCCS = common dso_local global i32 0, align 4
@AHCI_CAP_SNCQ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"unable to allocate sim\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [28 x i8] c"unable to register xpt bus\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [23 x i8] c"unable to create path\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@ahci_ch_pm = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"disable_phy\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@ahci_ch_disablephy_proc = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Disable PHY\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca %struct.ahci_channel*, align 8
  %6 = alloca %struct.cam_devq*, align 8
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.ahci_controller*
  store %struct.ahci_controller* %17, %struct.ahci_controller** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @device_get_softc(i32 %18)
  %20 = bitcast i8* %19 to %struct.ahci_channel*
  store %struct.ahci_channel* %20, %struct.ahci_channel** %5, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %22, i32 0, i32 24
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @device_get_ivars(i32 %24)
  %26 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %29 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %34 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %37 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %39 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %42 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %41, i32 0, i32 23
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %44 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %47 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %49 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %52 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %51, i32 0, i32 22
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %54 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %57 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %56, i32 0, i32 21
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %59 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %62 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %61, i32 0, i32 20
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %64 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %67 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %66, i32 0, i32 19
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %69 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AHCI_CAP_NCS, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @AHCI_CAP_NCS_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %77 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %79 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %78, i32 0, i32 8
  %80 = load i32, i32* @MTX_DEF, align 4
  %81 = call i32 @mtx_init(i32* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null, i32 %80)
  %82 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %83 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %82, i32 0, i32 5
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @device_get_name(i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @device_get_unit(i32 %86)
  %88 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %89 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %88, i32 0, i32 5
  %90 = call i32 @resource_int_value(i32 %85, i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %89)
  %91 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %92 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %91, i32 0, i32 18
  %93 = call i32 @STAILQ_INIT(i32* %92)
  %94 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %95 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 3
  br i1 %97, label %98, label %104

98:                                               ; preds = %1
  %99 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %100 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %99, i32 0, i32 12
  %101 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %102 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %101, i32 0, i32 8
  %103 = call i32 @callout_init_mtx(i32* %100, i32* %102, i32 0)
  br label %104

104:                                              ; preds = %98, %1
  %105 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %106 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %105, i32 0, i32 17
  %107 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %108 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %107, i32 0, i32 8
  %109 = call i32 @callout_init_mtx(i32* %106, i32* %108, i32 0)
  %110 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %111 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @AHCI_Q_SATA1_UNIT0, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %104
  %117 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %118 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 1, i32* %12, align 4
  br label %122

122:                                              ; preds = %121, %116, %104
  %123 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %124 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @AHCI_Q_SATA2, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 2, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %122
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @device_get_name(i32 %131)
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @device_get_unit(i32 %133)
  %135 = call i32 @resource_int_value(i32 %132, i32 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %225, %130
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 16
  br i1 %138, label %139, label %228

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %142 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %141, i32 0, i32 15
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 8
  %148 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %149 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %148, i32 0, i32 15
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  store i64 0, i64* %154, align 8
  %155 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %156 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %155, i32 0, i32 15
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  store i32 8192, i32* %161, align 4
  %162 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %163 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %166 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %165, i32 0, i32 15
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  store i32 %164, i32* %171, align 8
  %172 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %173 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %172, i32 0, i32 15
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  store i32 0, i32* %178, align 4
  %179 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %180 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %179, i32 0, i32 16
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %186 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %185, i32 0, i32 15
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = bitcast %struct.TYPE_2__* %184 to i8*
  %192 = bitcast %struct.TYPE_2__* %190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 8 %192, i64 24, i1 false)
  %193 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %194 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %139
  %198 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %199 = load i32, i32* @CTS_SATA_CAPS_H_APST, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @CTS_SATA_CAPS_D_PMREQ, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @CTS_SATA_CAPS_D_APST, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %206 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %205, i32 0, i32 15
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 3
  store i32 %204, i32* %211, align 4
  br label %212

212:                                              ; preds = %197, %139
  %213 = load i32, i32* @CTS_SATA_CAPS_H_DMAAA, align 4
  %214 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %217 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %216, i32 0, i32 15
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %215
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %212
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %136

228:                                              ; preds = %136
  store i32 0, i32* %9, align 4
  %229 = load i32, i32* %3, align 4
  %230 = load i32, i32* @SYS_RES_MEMORY, align 4
  %231 = load i32, i32* @RF_ACTIVE, align 4
  %232 = call i8* @bus_alloc_resource_any(i32 %229, i32 %230, i32* %9, i32 %231)
  %233 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %234 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %233, i32 0, i32 9
  store i8* %232, i8** %234, align 8
  %235 = icmp ne i8* %232, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %228
  %237 = load i32, i32* @ENXIO, align 4
  store i32 %237, i32* %2, align 4
  br label %559

238:                                              ; preds = %228
  %239 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %240 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %239, i32 0, i32 9
  %241 = load i8*, i8** %240, align 8
  %242 = load i32, i32* @AHCI_P_CMD, align 4
  %243 = call i8* @ATA_INL(i8* %241, i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %246 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %245, i32 0, i32 6
  store i32 %244, i32* %246, align 4
  %247 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %248 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %247, i32 0, i32 4
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* @AHCI_VS, align 4
  %251 = call i8* @ATA_INL(i8* %249, i32 %250)
  %252 = ptrtoint i8* %251 to i32
  store i32 %252, i32* %13, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp slt i32 %253, 66048
  br i1 %254, label %255, label %268

255:                                              ; preds = %238
  %256 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %257 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @AHCI_CAP_FBSS, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = load i32, i32* @AHCI_P_CMD_FBSCP, align 4
  %264 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %265 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %262, %255, %238
  %269 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %270 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @AHCI_CAP2_SDS, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %268
  %276 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %277 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %276, i32 0, i32 9
  %278 = load i8*, i8** %277, align 8
  %279 = load i32, i32* @AHCI_P_DEVSLP, align 4
  %280 = call i8* @ATA_INL(i8* %278, i32 %279)
  %281 = ptrtoint i8* %280 to i32
  %282 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %283 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %282, i32 0, i32 7
  store i32 %281, i32* %283, align 8
  br label %284

284:                                              ; preds = %275, %268
  %285 = load i64, i64* @bootverbose, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %338

287:                                              ; preds = %284
  %288 = load i32, i32* %3, align 4
  %289 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %290 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @AHCI_P_CMD_HPCP, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %297 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %298 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @AHCI_P_CMD_MPSP, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %305 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %306 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @AHCI_P_CMD_CPD, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %313 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %314 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @AHCI_P_CMD_ESP, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %321 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %322 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @AHCI_P_CMD_FBSCP, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i64
  %328 = select i1 %326, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %329 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %330 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @AHCI_P_DEVSLP_DSP, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %337 = call i32 (i32, i8*, ...) @device_printf(i32 %288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %296, i8* %304, i8* %312, i8* %320, i8* %328, i8* %336)
  br label %338

338:                                              ; preds = %287, %284
  %339 = load i32, i32* %3, align 4
  %340 = call i32 @ahci_dmainit(i32 %339)
  %341 = load i32, i32* %3, align 4
  %342 = call i32 @ahci_slotsalloc(i32 %341)
  %343 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %344 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %343, i32 0, i32 8
  %345 = call i32 @mtx_lock(i32* %344)
  %346 = load i32, i32* %3, align 4
  %347 = call i32 @ahci_ch_init(i32 %346)
  %348 = load i32, i32* @ATA_IRQ_RID, align 4
  store i32 %348, i32* %9, align 4
  %349 = load i32, i32* %3, align 4
  %350 = load i32, i32* @SYS_RES_IRQ, align 4
  %351 = load i32, i32* @RF_SHAREABLE, align 4
  %352 = load i32, i32* @RF_ACTIVE, align 4
  %353 = or i32 %351, %352
  %354 = call i8* @bus_alloc_resource_any(i32 %349, i32 %350, i32* %9, i32 %353)
  %355 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %356 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %355, i32 0, i32 10
  store i8* %354, i8** %356, align 8
  %357 = icmp ne i8* %354, null
  br i1 %357, label %362, label %358

358:                                              ; preds = %338
  %359 = load i32, i32* %3, align 4
  %360 = call i32 (i32, i8*, ...) @device_printf(i32 %359, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %361 = load i32, i32* @ENXIO, align 4
  store i32 %361, i32* %10, align 4
  br label %541

362:                                              ; preds = %338
  %363 = load i32, i32* %3, align 4
  %364 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %365 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %364, i32 0, i32 10
  %366 = load i8*, i8** %365, align 8
  %367 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %368 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %369 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %362
  %373 = load i32, i32* @ahci_ch_intr_direct, align 4
  br label %376

374:                                              ; preds = %362
  %375 = load i32, i32* @ahci_ch_intr, align 4
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi i32 [ %373, %372 ], [ %375, %374 ]
  %378 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %379 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %380 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %379, i32 0, i32 14
  %381 = call i64 @bus_setup_intr(i32 %363, i8* %366, i32 %367, i32* null, i32 %377, %struct.ahci_channel* %378, i32* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %376
  %384 = load i32, i32* %3, align 4
  %385 = call i32 (i32, i8*, ...) @device_printf(i32 %384, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %386 = load i32, i32* @ENXIO, align 4
  store i32 %386, i32* %10, align 4
  br label %533

387:                                              ; preds = %376
  %388 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %389 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = call %struct.cam_devq* @cam_simq_alloc(i32 %390)
  store %struct.cam_devq* %391, %struct.cam_devq** %6, align 8
  %392 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %393 = icmp eq %struct.cam_devq* %392, null
  br i1 %393, label %394, label %398

394:                                              ; preds = %387
  %395 = load i32, i32* %3, align 4
  %396 = call i32 (i32, i8*, ...) @device_printf(i32 %395, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %397 = load i32, i32* @ENOMEM, align 4
  store i32 %397, i32* %10, align 4
  br label %533

398:                                              ; preds = %387
  %399 = load i32, i32* @ahciaction, align 4
  %400 = load i32, i32* @ahcipoll, align 4
  %401 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %402 = load i32, i32* %3, align 4
  %403 = call i32 @device_get_unit(i32 %402)
  %404 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %405 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %404, i32 0, i32 8
  %406 = bitcast i32* %405 to %struct.mtx*
  %407 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %408 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %407, i32 0, i32 3
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @AHCI_Q_NOCCS, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %398
  br label %419

414:                                              ; preds = %398
  %415 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %416 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @min(i32 2, i32 %417)
  br label %419

419:                                              ; preds = %414, %413
  %420 = phi i32 [ 1, %413 ], [ %418, %414 ]
  %421 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %422 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @AHCI_CAP_SNCQ, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %419
  %428 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %429 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 4
  br label %432

431:                                              ; preds = %419
  br label %432

432:                                              ; preds = %431, %427
  %433 = phi i32 [ %430, %427 ], [ 0, %431 ]
  %434 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %435 = call i32* @cam_sim_alloc(i32 %399, i32 %400, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %struct.ahci_channel* %401, i32 %403, %struct.mtx* %406, i32 %420, i32 %433, %struct.cam_devq* %434)
  %436 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %437 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %436, i32 0, i32 11
  store i32* %435, i32** %437, align 8
  %438 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %439 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %438, i32 0, i32 11
  %440 = load i32*, i32** %439, align 8
  %441 = icmp eq i32* %440, null
  br i1 %441, label %442, label %448

442:                                              ; preds = %432
  %443 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %444 = call i32 @cam_simq_free(%struct.cam_devq* %443)
  %445 = load i32, i32* %3, align 4
  %446 = call i32 (i32, i8*, ...) @device_printf(i32 %445, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %447 = load i32, i32* @ENOMEM, align 4
  store i32 %447, i32* %10, align 4
  br label %533

448:                                              ; preds = %432
  %449 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %450 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %449, i32 0, i32 11
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %3, align 4
  %453 = call i64 @xpt_bus_register(i32* %451, i32 %452, i32 0)
  %454 = load i64, i64* @CAM_SUCCESS, align 8
  %455 = icmp ne i64 %453, %454
  br i1 %455, label %456, label %460

456:                                              ; preds = %448
  %457 = load i32, i32* %3, align 4
  %458 = call i32 (i32, i8*, ...) @device_printf(i32 %457, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %459 = load i32, i32* @ENXIO, align 4
  store i32 %459, i32* %10, align 4
  br label %527

460:                                              ; preds = %448
  %461 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %462 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %461, i32 0, i32 13
  %463 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %464 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %463, i32 0, i32 11
  %465 = load i32*, i32** %464, align 8
  %466 = call i32 @cam_sim_path(i32* %465)
  %467 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %468 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %469 = call i64 @xpt_create_path(i32* %462, i32* null, i32 %466, i32 %467, i32 %468)
  %470 = load i64, i64* @CAM_REQ_CMP, align 8
  %471 = icmp ne i64 %469, %470
  br i1 %471, label %472, label %476

472:                                              ; preds = %460
  %473 = load i32, i32* %3, align 4
  %474 = call i32 (i32, i8*, ...) @device_printf(i32 %473, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %475 = load i32, i32* @ENXIO, align 4
  store i32 %475, i32* %10, align 4
  br label %521

476:                                              ; preds = %460
  %477 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %478 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %477, i32 0, i32 5
  %479 = load i32, i32* %478, align 8
  %480 = icmp sgt i32 %479, 3
  br i1 %480, label %481, label %499

481:                                              ; preds = %476
  %482 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %483 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %482, i32 0, i32 12
  %484 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %485 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 8
  %487 = icmp eq i32 %486, 4
  br i1 %487, label %488, label %491

488:                                              ; preds = %481
  %489 = load i32, i32* @hz, align 4
  %490 = sdiv i32 %489, 1000
  br label %494

491:                                              ; preds = %481
  %492 = load i32, i32* @hz, align 4
  %493 = sdiv i32 %492, 8
  br label %494

494:                                              ; preds = %491, %488
  %495 = phi i32 [ %490, %488 ], [ %493, %491 ]
  %496 = load i32, i32* @ahci_ch_pm, align 4
  %497 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %498 = call i32 @callout_reset(i32* %483, i32 %495, i32 %496, %struct.ahci_channel* %497)
  br label %499

499:                                              ; preds = %494, %476
  %500 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %501 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %500, i32 0, i32 8
  %502 = call i32 @mtx_unlock(i32* %501)
  %503 = load i32, i32* %3, align 4
  %504 = call i32 @device_get_parent(i32 %503)
  %505 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %506 = call i32 @ahci_attached(i32 %504, %struct.ahci_channel* %505)
  %507 = load i32, i32* %3, align 4
  %508 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %507)
  store %struct.sysctl_ctx_list* %508, %struct.sysctl_ctx_list** %7, align 8
  %509 = load i32, i32* %3, align 4
  %510 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %509)
  store %struct.sysctl_oid* %510, %struct.sysctl_oid** %8, align 8
  %511 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %512 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %513 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %512)
  %514 = load i32, i32* @OID_AUTO, align 4
  %515 = load i32, i32* @CTLFLAG_RW, align 4
  %516 = load i32, i32* @CTLTYPE_UINT, align 4
  %517 = or i32 %515, %516
  %518 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %519 = load i32, i32* @ahci_ch_disablephy_proc, align 4
  %520 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %511, i32 %513, i32 %514, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %517, %struct.ahci_channel* %518, i32 0, i32 %519, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %559

521:                                              ; preds = %472
  %522 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %523 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %522, i32 0, i32 11
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @cam_sim_path(i32* %524)
  %526 = call i32 @xpt_bus_deregister(i32 %525)
  br label %527

527:                                              ; preds = %521, %456
  %528 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %529 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %528, i32 0, i32 11
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* @TRUE, align 4
  %532 = call i32 @cam_sim_free(i32* %530, i32 %531)
  br label %533

533:                                              ; preds = %527, %442, %394, %383
  %534 = load i32, i32* %3, align 4
  %535 = load i32, i32* @SYS_RES_IRQ, align 4
  %536 = load i32, i32* @ATA_IRQ_RID, align 4
  %537 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %538 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %537, i32 0, i32 10
  %539 = load i8*, i8** %538, align 8
  %540 = call i32 @bus_release_resource(i32 %534, i32 %535, i32 %536, i8* %539)
  br label %541

541:                                              ; preds = %533, %358
  %542 = load i32, i32* %3, align 4
  %543 = load i32, i32* @SYS_RES_MEMORY, align 4
  %544 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %545 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %544, i32 0, i32 0
  %546 = load i64, i64* %545, align 8
  %547 = trunc i64 %546 to i32
  %548 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %549 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %548, i32 0, i32 9
  %550 = load i8*, i8** %549, align 8
  %551 = call i32 @bus_release_resource(i32 %542, i32 %543, i32 %547, i8* %550)
  %552 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %553 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %552, i32 0, i32 8
  %554 = call i32 @mtx_unlock(i32* %553)
  %555 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %556 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %555, i32 0, i32 8
  %557 = call i32 @mtx_destroy(i32* %556)
  %558 = load i32, i32* %10, align 4
  store i32 %558, i32* %2, align 4
  br label %559

559:                                              ; preds = %541, %499, %236
  %560 = load i32, i32* %2, align 4
  ret i32 %560
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i8* @ATA_INL(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ahci_dmainit(i32) #1

declare dso_local i32 @ahci_slotsalloc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ahci_ch_init(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.ahci_channel*, i32*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.ahci_channel*, i32, %struct.mtx*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ahci_channel*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ahci_attached(i32, %struct.ahci_channel*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.ahci_channel*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
