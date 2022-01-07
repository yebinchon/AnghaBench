; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32, i32 }
%struct.ahci_enclosure = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_2__*, i32, i32, i8* }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"AHCI enclosure lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AHCI_EM_XMT = common dso_local global i32 0, align 4
@AHCI_EM_SMB = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to allocate SIM queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ahciemaction = common dso_local global i32 0, align 4
@ahciempoll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ahciem\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unable to allocate SIM\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to register xpt bus\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Unable to create path\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Caps:%s%s%s%s%s%s%s%s\0A\00", align 1
@AHCI_EM_PM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" PM\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AHCI_EM_ALHD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c" ALHD\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" XMT\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" SMB\00", align 1
@AHCI_EM_SGPIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c" SGPIO\00", align 1
@AHCI_EM_SES2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c" SES-2\00", align 1
@AHCI_EM_SAFTE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c" SAF-TE\00", align 1
@AHCI_EM_LED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c" LED\00", align 1
@AHCI_NUM_LEDS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"%s.%d.act\00", align 1
@ahci_em_led = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"%s.%d.locate\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"%s.%d.fault\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ahci_em_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_em_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ahci_controller*, align 8
  %6 = alloca %struct.ahci_enclosure*, align 8
  %7 = alloca %struct.cam_devq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @device_get_parent(i8* %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @device_get_softc(i8* %15)
  %17 = bitcast i8* %16 to %struct.ahci_controller*
  store %struct.ahci_controller* %17, %struct.ahci_controller** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @device_get_softc(i8* %18)
  %20 = bitcast i8* %19 to %struct.ahci_enclosure*
  store %struct.ahci_enclosure* %20, %struct.ahci_enclosure** %6, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %23 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %22, i32 0, i32 11
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %25 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %28 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %30 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %33 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %35 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %38 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %40 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %39, i32 0, i32 3
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null, i32 %41)
  store i32 0, i32* %10, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i8* %43, i32 %44, i32* %10, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %49 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = icmp ne i32* %47, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %1
  %52 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %53 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %52, i32 0, i32 3
  %54 = call i32 @mtx_destroy(i32* %53)
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %2, align 4
  br label %444

56:                                               ; preds = %1
  %57 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %58 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ATA_INL(i32* %59, i32 0)
  %61 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %62 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  store i32 1, i32* %10, align 4
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* @SYS_RES_MEMORY, align 4
  %65 = load i32, i32* @RF_ACTIVE, align 4
  %66 = call i8* @bus_alloc_resource_any(i8* %63, i32 %64, i32* %10, i32 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %69 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = icmp ne i32* %67, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %11, align 4
  br label %421

73:                                               ; preds = %56
  %74 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %75 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AHCI_EM_XMT, align 4
  %78 = load i32, i32* @AHCI_EM_SMB, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %73
  store i32 2, i32* %10, align 4
  %83 = load i8*, i8** %3, align 8
  %84 = load i32, i32* @SYS_RES_MEMORY, align 4
  %85 = load i32, i32* @RF_ACTIVE, align 4
  %86 = call i8* @bus_alloc_resource_any(i8* %83, i32 %84, i32* %10, i32 %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %89 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %88, i32 0, i32 6
  store i32* %87, i32** %89, align 8
  %90 = icmp ne i32* %87, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %11, align 4
  br label %421

93:                                               ; preds = %82
  br label %97

94:                                               ; preds = %73
  %95 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %96 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %95, i32 0, i32 6
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %94, %93
  %98 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %99 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %98, i32 0, i32 3
  %100 = call i32 @mtx_lock(i32* %99)
  %101 = load i8*, i8** %3, align 8
  %102 = call i64 @ahci_em_reset(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %11, align 4
  br label %405

106:                                              ; preds = %97
  %107 = load i32, i32* @ATA_IRQ_RID, align 4
  store i32 %107, i32* %10, align 4
  %108 = call %struct.cam_devq* @cam_simq_alloc(i32 1)
  store %struct.cam_devq* %108, %struct.cam_devq** %7, align 8
  %109 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %110 = icmp eq %struct.cam_devq* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 (i8*, i8*, ...) @device_printf(i8* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  store i32 %114, i32* %11, align 4
  br label %405

115:                                              ; preds = %106
  %116 = load i32, i32* @ahciemaction, align 4
  %117 = load i32, i32* @ahciempoll, align 4
  %118 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 @device_get_unit(i8* %119)
  %121 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %122 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %121, i32 0, i32 3
  %123 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %124 = call i32* @cam_sim_alloc(i32 %116, i32 %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.ahci_enclosure* %118, i32 %120, i32* %122, i32 1, i32 0, %struct.cam_devq* %123)
  %125 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %126 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %125, i32 0, i32 7
  store i32* %124, i32** %126, align 8
  %127 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %128 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %115
  %132 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %133 = call i32 @cam_simq_free(%struct.cam_devq* %132)
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 (i8*, i8*, ...) @device_printf(i8* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32, i32* @ENOMEM, align 4
  store i32 %136, i32* %11, align 4
  br label %405

137:                                              ; preds = %115
  %138 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %139 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %138, i32 0, i32 7
  %140 = load i32*, i32** %139, align 8
  %141 = load i8*, i8** %3, align 8
  %142 = call i64 @xpt_bus_register(i32* %140, i8* %141, i32 0)
  %143 = load i64, i64* @CAM_SUCCESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i8*, i8** %3, align 8
  %147 = call i32 (i8*, i8*, ...) @device_printf(i8* %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @ENXIO, align 4
  store i32 %148, i32* %11, align 4
  br label %399

149:                                              ; preds = %137
  %150 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %151 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %150, i32 0, i32 9
  %152 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %153 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %152, i32 0, i32 7
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @cam_sim_path(i32* %154)
  %156 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %157 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %158 = call i64 @xpt_create_path(i32* %151, i32* null, i32 %155, i32 %156, i32 %157)
  %159 = load i64, i64* @CAM_REQ_CMP, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %149
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 (i8*, i8*, ...) @device_printf(i8* %162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %164 = load i32, i32* @ENXIO, align 4
  store i32 %164, i32* %11, align 4
  br label %393

165:                                              ; preds = %149
  %166 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %167 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %166, i32 0, i32 3
  %168 = call i32 @mtx_unlock(i32* %167)
  %169 = load i64, i64* @bootverbose, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %238

171:                                              ; preds = %165
  %172 = load i8*, i8** %3, align 8
  %173 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %174 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @AHCI_EM_PM, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %181 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %182 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @AHCI_EM_ALHD, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %189 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %190 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @AHCI_EM_XMT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %197 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %198 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @AHCI_EM_SMB, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %205 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %206 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @AHCI_EM_SGPIO, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %213 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %214 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @AHCI_EM_SES2, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %221 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %222 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @AHCI_EM_SAFTE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %229 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %230 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @AHCI_EM_LED, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %237 = call i32 (i8*, i8*, ...) @device_printf(i8* %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %180, i8* %188, i8* %196, i8* %204, i8* %212, i8* %220, i8* %228, i8* %236)
  br label %238

238:                                              ; preds = %171, %165
  %239 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %240 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @AHCI_EM_LED, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %392

245:                                              ; preds = %238
  store i32 0, i32* %9, align 4
  br label %246

246:                                              ; preds = %388, %245
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %249 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %391

252:                                              ; preds = %246
  %253 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %254 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %9, align 4
  %257 = shl i32 1, %256
  %258 = and i32 %255, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %252
  br label %388

261:                                              ; preds = %252
  store i32 0, i32* %8, align 4
  br label %262

262:                                              ; preds = %295, %261
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %298

266:                                              ; preds = %262
  %267 = load i8*, i8** %3, align 8
  %268 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %269 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %268, i32 0, i32 8
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load i32, i32* %8, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 2
  store i8* %267, i8** %278, align 8
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %281 = mul nsw i32 %279, %280
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %281, %282
  %284 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %285 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %284, i32 0, i32 8
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %285, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %289 = mul nsw i32 %287, %288
  %290 = load i32, i32* %8, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  store i32 %283, i32* %294, align 8
  br label %295

295:                                              ; preds = %266
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %262

298:                                              ; preds = %262
  %299 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %300 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @AHCI_EM_ALHD, align 4
  %303 = and i32 %301, %302
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %333

305:                                              ; preds = %298
  %306 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %307 = load i8*, i8** %4, align 8
  %308 = call i8* @device_get_nameunit(i8* %307)
  %309 = load i32, i32* %9, align 4
  %310 = call i32 @snprintf(i8* %306, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %308, i32 %309)
  %311 = load i32, i32* @ahci_em_led, align 4
  %312 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %313 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %312, i32 0, i32 8
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** %313, align 8
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %317 = mul nsw i32 %315, %316
  %318 = add nsw i32 %317, 0
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i64 %319
  %321 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %322 = call i8* @led_create(i32 %311, %struct.TYPE_2__* %320, i8* %321)
  %323 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %324 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %323, i32 0, i32 8
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %328 = mul nsw i32 %326, %327
  %329 = add nsw i32 %328, 0
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 1
  store i8* %322, i8** %332, align 8
  br label %333

333:                                              ; preds = %305, %298
  %334 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %335 = load i8*, i8** %4, align 8
  %336 = call i8* @device_get_nameunit(i8* %335)
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @snprintf(i8* %334, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %336, i32 %337)
  %339 = load i32, i32* @ahci_em_led, align 4
  %340 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %341 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %340, i32 0, i32 8
  %342 = load %struct.TYPE_2__*, %struct.TYPE_2__** %341, align 8
  %343 = load i32, i32* %9, align 4
  %344 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %345 = mul nsw i32 %343, %344
  %346 = add nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i64 %347
  %349 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %350 = call i8* @led_create(i32 %339, %struct.TYPE_2__* %348, i8* %349)
  %351 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %352 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %351, i32 0, i32 8
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** %352, align 8
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %356 = mul nsw i32 %354, %355
  %357 = add nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 1
  store i8* %350, i8** %360, align 8
  %361 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %362 = load i8*, i8** %4, align 8
  %363 = call i8* @device_get_nameunit(i8* %362)
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @snprintf(i8* %361, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %363, i32 %364)
  %366 = load i32, i32* @ahci_em_led, align 4
  %367 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %368 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %367, i32 0, i32 8
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** %368, align 8
  %370 = load i32, i32* %9, align 4
  %371 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %372 = mul nsw i32 %370, %371
  %373 = add nsw i32 %372, 2
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %374
  %376 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %377 = call i8* @led_create(i32 %366, %struct.TYPE_2__* %375, i8* %376)
  %378 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %379 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %378, i32 0, i32 8
  %380 = load %struct.TYPE_2__*, %struct.TYPE_2__** %379, align 8
  %381 = load i32, i32* %9, align 4
  %382 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %383 = mul nsw i32 %381, %382
  %384 = add nsw i32 %383, 2
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 1
  store i8* %377, i8** %387, align 8
  br label %388

388:                                              ; preds = %333, %260
  %389 = load i32, i32* %9, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %9, align 4
  br label %246

391:                                              ; preds = %246
  br label %392

392:                                              ; preds = %391, %238
  store i32 0, i32* %2, align 4
  br label %444

393:                                              ; preds = %161
  %394 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %395 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %394, i32 0, i32 7
  %396 = load i32*, i32** %395, align 8
  %397 = call i32 @cam_sim_path(i32* %396)
  %398 = call i32 @xpt_bus_deregister(i32 %397)
  br label %399

399:                                              ; preds = %393, %145
  %400 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %401 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %400, i32 0, i32 7
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* @TRUE, align 4
  %404 = call i32 @cam_sim_free(i32* %402, i32 %403)
  br label %405

405:                                              ; preds = %399, %131, %111, %104
  %406 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %407 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %406, i32 0, i32 3
  %408 = call i32 @mtx_unlock(i32* %407)
  %409 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %410 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %409, i32 0, i32 6
  %411 = load i32*, i32** %410, align 8
  %412 = icmp ne i32* %411, null
  br i1 %412, label %413, label %420

413:                                              ; preds = %405
  %414 = load i8*, i8** %3, align 8
  %415 = load i32, i32* @SYS_RES_MEMORY, align 4
  %416 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %417 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %416, i32 0, i32 6
  %418 = load i32*, i32** %417, align 8
  %419 = call i32 @bus_release_resource(i8* %414, i32 %415, i32 2, i32* %418)
  br label %420

420:                                              ; preds = %413, %405
  br label %421

421:                                              ; preds = %420, %91, %71
  %422 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %423 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %422, i32 0, i32 5
  %424 = load i32*, i32** %423, align 8
  %425 = icmp ne i32* %424, null
  br i1 %425, label %426, label %433

426:                                              ; preds = %421
  %427 = load i8*, i8** %3, align 8
  %428 = load i32, i32* @SYS_RES_MEMORY, align 4
  %429 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %430 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %429, i32 0, i32 5
  %431 = load i32*, i32** %430, align 8
  %432 = call i32 @bus_release_resource(i8* %427, i32 %428, i32 1, i32* %431)
  br label %433

433:                                              ; preds = %426, %421
  %434 = load i8*, i8** %3, align 8
  %435 = load i32, i32* @SYS_RES_MEMORY, align 4
  %436 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %437 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %436, i32 0, i32 4
  %438 = load i32*, i32** %437, align 8
  %439 = call i32 @bus_release_resource(i8* %434, i32 %435, i32 0, i32* %438)
  %440 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %441 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %440, i32 0, i32 3
  %442 = call i32 @mtx_destroy(i32* %441)
  %443 = load i32, i32* %11, align 4
  store i32 %443, i32* %2, align 4
  br label %444

444:                                              ; preds = %433, %392, %51
  %445 = load i32, i32* %2, align 4
  ret i32 %445
}

declare dso_local i8* @device_get_parent(i8*) #1

declare dso_local i8* @device_get_softc(i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @ATA_INL(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @ahci_em_reset(i8*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.ahci_enclosure*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i8*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(i32*, i8*, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i8*) #1

declare dso_local i8* @led_create(i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @bus_release_resource(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
