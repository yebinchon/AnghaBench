; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_pci.c_ahci_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_pci.c_ahci_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.ahci_controller = type { i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32*, i32*, i8*, i32 }

@ahci_ids = common dso_local global %struct.TYPE_2__* null, align 8
@AHCI_Q_SATA1_UNIT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@AHCI_Q_ABAR0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AHCI_VSCAP = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i32 0, align 4
@PCIS_STORAGE_NVM = common dso_local global i32 0, align 4
@PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Detected %d nvme remapped devices\0A\00", align 1
@AHCI_Q_NOMSIX = common dso_local global i32 0, align 4
@AHCI_Q_NOMSI = common dso_local global i32 0, align 4
@AHCI_Q_1MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to allocate MSI/MSI-x, falling back to INTx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.ahci_controller* @device_get_softc(i32 %16)
  store %struct.ahci_controller* %17, %struct.ahci_controller** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pci_get_devid(i32 %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @pci_get_revid(i32 %21)
  store i64 %22, i64* %8, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_msi_count(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_msix_count(i32 %25)
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %57, %1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %27
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sgt i64 %50, %51
  br label %53

53:                                               ; preds = %44, %35
  %54 = phi i1 [ true, %35 ], [ %52, %44 ]
  br label %55

55:                                               ; preds = %53, %27
  %56 = phi i1 [ false, %27 ], [ %54, %53 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %27

60:                                               ; preds = %55
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %68 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pci_get_devid(i32 %69)
  %71 = icmp eq i32 %70, 593697147
  br i1 %71, label %72, label %86

72:                                               ; preds = %60
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @pci_get_subvendor(i32 %73)
  %75 = icmp eq i32 %74, 4163
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @pci_get_subdevice(i32 %77)
  %79 = icmp eq i32 %78, 33252
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @AHCI_Q_SATA1_UNIT0, align 4
  %82 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %83 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %76, %72, %60
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_get_name(i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_get_unit(i32 %89)
  %91 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %92 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %91, i32 0, i32 0
  %93 = call i32 @resource_int_value(i32 %88, i32 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %92)
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @pci_get_vendor(i32 %94)
  %96 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %97 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @pci_get_device(i32 %98)
  %100 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %101 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %100, i32 0, i32 15
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @pci_get_subvendor(i32 %102)
  %104 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %105 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @pci_get_subdevice(i32 %106)
  %108 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %109 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %111 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @AHCI_Q_ABAR0, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %86
  %117 = call i8* @PCIR_BAR(i32 0)
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %120 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  br label %126

121:                                              ; preds = %86
  %122 = call i8* @PCIR_BAR(i32 5)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %125 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %124, i32 0, i32 4
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @SYS_RES_MEMORY, align 4
  %129 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %130 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %129, i32 0, i32 4
  %131 = load i32, i32* @RF_ACTIVE, align 4
  %132 = call i8* @bus_alloc_resource_any(i32 %127, i32 %128, i64* %130, i32 %131)
  %133 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %134 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %133, i32 0, i32 14
  store i8* %132, i8** %134, align 8
  %135 = icmp ne i8* %132, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %126
  %137 = load i32, i32* @ENXIO, align 4
  store i32 %137, i32* %2, align 4
  br label %454

138:                                              ; preds = %126
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @pci_get_vendor(i32 %139)
  %141 = icmp eq i32 %140, 32902
  br i1 %141, label %142, label %217

142:                                              ; preds = %138
  %143 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %144 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %143, i32 0, i32 14
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* @AHCI_VSCAP, align 4
  %147 = call i32 @ATA_INL(i8* %145, i32 %146)
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %13, align 8
  %149 = load i64, i64* %13, align 8
  %150 = and i64 %149, 1
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %216

152:                                              ; preds = %142
  %153 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %154 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %153, i32 0, i32 14
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @ATA_INL(i8* %155, i32 2048)
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %14, align 8
  %158 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %159 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %158, i32 0, i32 5
  store i32 16384, i32* %159, align 8
  %160 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %161 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %160, i32 0, i32 6
  store i32 16384, i32* %161, align 4
  store i32 0, i32* %15, align 4
  br label %162

162:                                              ; preds = %194, %152
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %197

165:                                              ; preds = %162
  %166 = load i64, i64* %14, align 8
  %167 = load i32, i32* %15, align 4
  %168 = shl i32 1, %167
  %169 = sext i32 %168 to i64
  %170 = and i64 %166, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %193

172:                                              ; preds = %165
  %173 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %174 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %173, i32 0, i32 14
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %176, 128
  %178 = add nsw i32 2176, %177
  %179 = call i32 @ATA_INL(i8* %175, i32 %178)
  %180 = load i32, i32* @PCIC_STORAGE, align 4
  %181 = shl i32 %180, 16
  %182 = load i32, i32* @PCIS_STORAGE_NVM, align 4
  %183 = shl i32 %182, 8
  %184 = or i32 %181, %183
  %185 = load i32, i32* @PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0, align 4
  %186 = or i32 %184, %185
  %187 = icmp eq i32 %179, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %172
  %189 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %190 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %188, %172, %165
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %15, align 4
  br label %162

197:                                              ; preds = %162
  %198 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %199 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %198, i32 0, i32 7
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load i32, i32* %3, align 4
  %204 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %205 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i32, i8*, ...) @device_printf(i32 %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %206)
  %208 = load i32, i32* @AHCI_Q_NOMSIX, align 4
  %209 = load i32, i32* @AHCI_Q_NOMSI, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %212 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %202, %197
  br label %216

216:                                              ; preds = %215, %142
  br label %217

217:                                              ; preds = %216, %138
  %218 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %219 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @AHCI_Q_NOMSIX, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  store i32 0, i32* %10, align 4
  br label %225

225:                                              ; preds = %224, %217
  %226 = load i32, i32* %10, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %225
  %229 = load i32, i32* %3, align 4
  %230 = call i32 @ahci_pci_read_msix_bars(i32 %229, i64* %11, i64* %12)
  store i32 %230, i32* %5, align 4
  %231 = load i32, i32* %5, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = load i64, i64* %11, align 8
  %235 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %236 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %235, i32 0, i32 8
  store i64 %234, i64* %236, align 8
  %237 = load i64, i64* %12, align 8
  %238 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %239 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %238, i32 0, i32 9
  store i64 %237, i64* %239, align 8
  br label %241

240:                                              ; preds = %228
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %240, %233
  br label %242

242:                                              ; preds = %241, %225
  %243 = load i32, i32* %10, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %312

245:                                              ; preds = %242
  %246 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %247 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %246, i32 0, i32 13
  store i32* null, i32** %247, align 8
  %248 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %249 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %248, i32 0, i32 8
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %252 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %250, %253
  br i1 %254, label %255, label %274

255:                                              ; preds = %245
  %256 = load i32, i32* %3, align 4
  %257 = load i32, i32* @SYS_RES_MEMORY, align 4
  %258 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %259 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %258, i32 0, i32 8
  %260 = load i32, i32* @RF_ACTIVE, align 4
  %261 = call i8* @bus_alloc_resource_any(i32 %256, i32 %257, i64* %259, i32 %260)
  %262 = bitcast i8* %261 to i32*
  %263 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %264 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %263, i32 0, i32 13
  store i32* %262, i32** %264, align 8
  %265 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %266 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %265, i32 0, i32 13
  %267 = load i32*, i32** %266, align 8
  %268 = icmp eq i32* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %255
  %270 = load i32, i32* %3, align 4
  %271 = call i32 @ahci_free_mem(i32 %270)
  %272 = load i32, i32* @ENXIO, align 4
  store i32 %272, i32* %2, align 4
  br label %454

273:                                              ; preds = %255
  br label %274

274:                                              ; preds = %273, %245
  %275 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %276 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %275, i32 0, i32 12
  store i32* null, i32** %276, align 8
  %277 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %278 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %277, i32 0, i32 9
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %281 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %280, i32 0, i32 8
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %279, %282
  br i1 %283, label %284, label %311

284:                                              ; preds = %274
  %285 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %286 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %285, i32 0, i32 9
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %289 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %287, %290
  br i1 %291, label %292, label %311

292:                                              ; preds = %284
  %293 = load i32, i32* %3, align 4
  %294 = load i32, i32* @SYS_RES_MEMORY, align 4
  %295 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %296 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %295, i32 0, i32 9
  %297 = load i32, i32* @RF_ACTIVE, align 4
  %298 = call i8* @bus_alloc_resource_any(i32 %293, i32 %294, i64* %296, i32 %297)
  %299 = bitcast i8* %298 to i32*
  %300 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %301 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %300, i32 0, i32 12
  store i32* %299, i32** %301, align 8
  %302 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %303 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %302, i32 0, i32 12
  %304 = load i32*, i32** %303, align 8
  %305 = icmp eq i32* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %292
  %307 = load i32, i32* %3, align 4
  %308 = call i32 @ahci_free_mem(i32 %307)
  %309 = load i32, i32* @ENXIO, align 4
  store i32 %309, i32* %2, align 4
  br label %454

310:                                              ; preds = %292
  br label %311

311:                                              ; preds = %310, %284, %274
  br label %312

312:                                              ; preds = %311, %242
  %313 = load i32, i32* %3, align 4
  %314 = call i32 @pci_enable_busmaster(i32 %313)
  %315 = load i32, i32* %3, align 4
  %316 = call i32 @ahci_pci_ctlr_reset(i32 %315)
  store i32 %316, i32* %5, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %312
  %319 = load i32, i32* %3, align 4
  %320 = call i32 @ahci_free_mem(i32 %319)
  %321 = load i32, i32* %5, align 4
  store i32 %321, i32* %2, align 4
  br label %454

322:                                              ; preds = %312
  %323 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %324 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @AHCI_Q_NOMSI, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %322
  %330 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %331 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %330, i32 0, i32 10
  store i32 0, i32* %331, align 8
  br label %346

332:                                              ; preds = %322
  %333 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %334 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @AHCI_Q_1MSI, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %332
  %340 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %341 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %340, i32 0, i32 10
  store i32 1, i32* %341, align 8
  br label %345

342:                                              ; preds = %332
  %343 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %344 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %343, i32 0, i32 10
  store i32 2, i32* %344, align 8
  br label %345

345:                                              ; preds = %342, %339
  br label %346

346:                                              ; preds = %345, %329
  %347 = load i32, i32* %3, align 4
  %348 = call i32 @device_get_name(i32 %347)
  %349 = load i32, i32* %3, align 4
  %350 = call i32 @device_get_unit(i32 %349)
  %351 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %352 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %351, i32 0, i32 10
  %353 = call i32 @resource_int_value(i32 %348, i32 %350, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %352)
  %354 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %355 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %354, i32 0, i32 11
  store i32 1, i32* %355, align 4
  %356 = load i32, i32* %9, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %346
  %359 = load i32, i32* %10, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %363 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %362, i32 0, i32 10
  store i32 0, i32* %363, align 8
  br label %364

364:                                              ; preds = %361, %358, %346
  %365 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %366 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %365, i32 0, i32 10
  %367 = load i32, i32* %366, align 8
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %371 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %370, i32 0, i32 10
  store i32 0, i32* %371, align 8
  br label %392

372:                                              ; preds = %364
  %373 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %374 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %373, i32 0, i32 10
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %382

377:                                              ; preds = %372
  %378 = load i32, i32* %9, align 4
  %379 = call i32 @min(i32 1, i32 %378)
  store i32 %379, i32* %9, align 4
  %380 = load i32, i32* %10, align 4
  %381 = call i32 @min(i32 1, i32 %380)
  store i32 %381, i32* %10, align 4
  br label %391

382:                                              ; preds = %372
  %383 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %384 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %383, i32 0, i32 10
  %385 = load i32, i32* %384, align 8
  %386 = icmp sgt i32 %385, 1
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %389 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %388, i32 0, i32 10
  store i32 2, i32* %389, align 8
  br label %390

390:                                              ; preds = %387, %382
  br label %391

391:                                              ; preds = %390, %377
  br label %392

392:                                              ; preds = %391, %369
  %393 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %394 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %393, i32 0, i32 10
  %395 = load i32, i32* %394, align 8
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %436

397:                                              ; preds = %392
  %398 = load i32, i32* @ENXIO, align 4
  store i32 %398, i32* %5, align 4
  %399 = load i32, i32* %10, align 4
  %400 = icmp sgt i32 %399, 0
  br i1 %400, label %401, label %411

401:                                              ; preds = %397
  %402 = load i32, i32* %3, align 4
  %403 = call i32 @pci_alloc_msix(i32 %402, i32* %10)
  store i32 %403, i32* %5, align 4
  %404 = load i32, i32* %5, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %401
  %407 = load i32, i32* %10, align 4
  %408 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %409 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %408, i32 0, i32 11
  store i32 %407, i32* %409, align 4
  br label %410

410:                                              ; preds = %406, %401
  br label %411

411:                                              ; preds = %410, %397
  %412 = load i32, i32* %5, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %427

414:                                              ; preds = %411
  %415 = load i32, i32* %9, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %427

417:                                              ; preds = %414
  %418 = load i32, i32* %3, align 4
  %419 = call i32 @pci_alloc_msi(i32 %418, i32* %9)
  store i32 %419, i32* %5, align 4
  %420 = load i32, i32* %5, align 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %417
  %423 = load i32, i32* %9, align 4
  %424 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %425 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %424, i32 0, i32 11
  store i32 %423, i32* %425, align 4
  br label %426

426:                                              ; preds = %422, %417
  br label %427

427:                                              ; preds = %426, %414, %411
  %428 = load i32, i32* %5, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %427
  %431 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %432 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %431, i32 0, i32 10
  store i32 0, i32* %432, align 8
  %433 = load i32, i32* %3, align 4
  %434 = call i32 (i32, i8*, ...) @device_printf(i32 %433, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %435

435:                                              ; preds = %430, %427
  br label %436

436:                                              ; preds = %435, %392
  %437 = load i32, i32* %3, align 4
  %438 = call i32 @ahci_attach(i32 %437)
  store i32 %438, i32* %5, align 4
  %439 = load i32, i32* %5, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %436
  %442 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %443 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %442, i32 0, i32 10
  %444 = load i32, i32* %443, align 8
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %441
  %447 = load i32, i32* %3, align 4
  %448 = call i32 @pci_release_msi(i32 %447)
  br label %449

449:                                              ; preds = %446, %441
  %450 = load i32, i32* %3, align 4
  %451 = call i32 @ahci_free_mem(i32 %450)
  br label %452

452:                                              ; preds = %449, %436
  %453 = load i32, i32* %5, align 4
  store i32 %453, i32* %2, align 4
  br label %454

454:                                              ; preds = %452, %318, %306, %269, %136
  %455 = load i32, i32* %2, align 4
  ret i32 %455
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @ATA_INL(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ahci_pci_read_msix_bars(i32, i64*, i64*) #1

declare dso_local i32 @ahci_free_mem(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @ahci_pci_ctlr_reset(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @ahci_attach(i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
