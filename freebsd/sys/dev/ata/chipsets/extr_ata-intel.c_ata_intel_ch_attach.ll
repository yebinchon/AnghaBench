; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.ata_channel = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@ATA_IDX_DATA = common dso_local global i64 0, align 8
@ATA_ALWAYS_DMASTAT = common dso_local global i32 0, align 4
@ATA_SA150 = common dso_local global i64 0, align 8
@INTEL_ICH5 = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@INTEL_6CH2 = common dso_local global i32 0, align 4
@ata_intel_sata_cscr_read = common dso_local global i32 0, align 4
@ata_intel_sata_cscr_write = common dso_local global i32* null, align 8
@INTEL_ICH7 = common dso_local global i32 0, align 4
@ata_intel_sata_ahci_read = common dso_local global i32 0, align 4
@ata_intel_sata_ahci_write = common dso_local global i32* null, align 8
@ata_intel_sata_sidpr_read = common dso_local global i32 0, align 4
@ata_intel_sata_sidpr_write = common dso_local global i32* null, align 8
@ATA_PERIODIC_POLL = common dso_local global i32 0, align 4
@ata_intel_sata_status = common dso_local global i32 0, align 4
@ATA_SERROR = common dso_local global i32 0, align 4
@ata_intel_new_setmode = common dso_local global i32 0, align 4
@ATA_SA600 = common dso_local global i64 0, align 8
@ATA_USE_16BIT = common dso_local global i32 0, align 4
@ATA_ISCH = common dso_local global i64 0, align 8
@ATA_CHECKS_CABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_intel_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @ata_pci_ch_attach(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %399

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %17, %struct.ata_pci_controller** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @device_get_softc(i32 %18)
  %20 = bitcast i8* %19 to %struct.ata_channel*
  store %struct.ata_channel* %20, %struct.ata_channel** %5, align 8
  %21 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %22 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %13
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %30 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @ATA_IDX_ADDR, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 %28, i64* %34, align 8
  %35 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* @ATA_IDX_ADDR, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %42 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %45 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @ATA_IDX_DATA, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 %43, i64* %49, align 8
  %50 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %51 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* @ATA_IDX_DATA, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 4, i32* %55, align 8
  br label %56

56:                                               ; preds = %25, %13
  %57 = load i32, i32* @ATA_ALWAYS_DMASTAT, align 4
  %58 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %59 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %63 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ATA_SA150, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %383

69:                                               ; preds = %56
  %70 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %71 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %72 = call i32* @ATA_INTEL_SMAP(%struct.ata_pci_controller* %70, %struct.ata_channel* %71)
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @device_get_parent(i32 %73)
  %75 = call i32 @pci_read_config(i32 %74, i32 144, i32 1)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %77 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @INTEL_ICH5, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %172

84:                                               ; preds = %69
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 7
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load i32, i32* @ATA_SATA, align 4
  %92 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %93 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @ATA_NO_SLAVE, align 4
  %97 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %98 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, 1
  %103 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %104 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %102, %105
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 0, i32* %110, align 4
  br label %171

111:                                              ; preds = %84
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 2
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %111
  %116 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %117 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = load i32, i32* @ATA_SATA, align 4
  %122 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %123 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, 1
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %7, align 4
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 0, i32 1
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %137, i32* %139, align 4
  br label %170

140:                                              ; preds = %115, %111
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, 2
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %140
  %145 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %146 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load i32, i32* @ATA_SATA, align 4
  %151 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %152 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, 1
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 0, i32 1
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %149, %144, %140
  br label %170

170:                                              ; preds = %169, %120
  br label %171

171:                                              ; preds = %170, %90
  br label %269

172:                                              ; preds = %69
  %173 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %174 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %173, i32 0, i32 0
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @INTEL_6CH2, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %202

181:                                              ; preds = %172
  %182 = load i32, i32* @ATA_SATA, align 4
  %183 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %184 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load i32, i32* @ATA_NO_SLAVE, align 4
  %188 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %189 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %193 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 0, i32 1
  %198 = load i32*, i32** %6, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %197, i32* %199, align 4
  %200 = load i32*, i32** %6, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 0, i32* %201, align 4
  br label %268

202:                                              ; preds = %172
  %203 = load i32, i32* %7, align 4
  %204 = and i32 %203, 3
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %229

207:                                              ; preds = %202
  %208 = load i32, i32* @ATA_SATA, align 4
  %209 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %210 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %214 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 0, i32 1
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  store i32 %218, i32* %220, align 4
  %221 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %222 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 2, i32 3
  %227 = load i32*, i32** %6, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  store i32 %226, i32* %228, align 4
  br label %267

229:                                              ; preds = %202
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %234 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %232
  %238 = load i32, i32* @ATA_SATA, align 4
  %239 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %240 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  %243 = load i32*, i32** %6, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 0, i32* %244, align 4
  %245 = load i32*, i32** %6, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  store i32 2, i32* %246, align 4
  br label %266

247:                                              ; preds = %232, %229
  %248 = load i32, i32* %7, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %265

250:                                              ; preds = %247
  %251 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %252 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %265

255:                                              ; preds = %250
  %256 = load i32, i32* @ATA_SATA, align 4
  %257 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %258 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load i32*, i32** %6, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 1, i32* %262, align 4
  %263 = load i32*, i32** %6, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  store i32 3, i32* %264, align 4
  br label %265

265:                                              ; preds = %255, %250, %247
  br label %266

266:                                              ; preds = %265, %237
  br label %267

267:                                              ; preds = %266, %207
  br label %268

268:                                              ; preds = %267, %181
  br label %269

269:                                              ; preds = %268, %171
  %270 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %271 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @ATA_SATA, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %364

276:                                              ; preds = %269
  %277 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %278 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %277, i32 0, i32 0
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @INTEL_ICH5, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %276
  %286 = load i32, i32* @ata_intel_sata_cscr_read, align 4
  %287 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %288 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 2
  store i32 %286, i32* %289, align 8
  %290 = load i32*, i32** @ata_intel_sata_cscr_write, align 8
  %291 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %292 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 1
  store i32* %290, i32** %293, align 8
  br label %333

294:                                              ; preds = %276
  %295 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %296 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %332

299:                                              ; preds = %294
  %300 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %301 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %300, i32 0, i32 0
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @INTEL_ICH7, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %299
  %309 = load i32, i32* @ata_intel_sata_ahci_read, align 4
  %310 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %311 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 2
  store i32 %309, i32* %312, align 8
  %313 = load i32*, i32** @ata_intel_sata_ahci_write, align 8
  %314 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %315 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  store i32* %313, i32** %316, align 8
  br label %331

317:                                              ; preds = %299
  %318 = load i32, i32* %3, align 4
  %319 = call i64 @ata_intel_sata_sidpr_test(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %317
  %322 = load i32, i32* @ata_intel_sata_sidpr_read, align 4
  %323 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %324 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 2
  store i32 %322, i32* %325, align 8
  %326 = load i32*, i32** @ata_intel_sata_sidpr_write, align 8
  %327 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %328 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 1
  store i32* %326, i32** %329, align 8
  br label %330

330:                                              ; preds = %321, %317
  br label %331

331:                                              ; preds = %330, %308
  br label %332

332:                                              ; preds = %331, %294
  br label %333

333:                                              ; preds = %332, %285
  %334 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %335 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %363

339:                                              ; preds = %333
  %340 = load i32, i32* @ATA_PERIODIC_POLL, align 4
  %341 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %342 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  %345 = load i32, i32* @ata_intel_sata_status, align 4
  %346 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %347 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 0
  store i32 %345, i32* %348, align 8
  %349 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %350 = load i32, i32* @ATA_SERROR, align 4
  %351 = call i32 @ata_sata_scr_write(%struct.ata_channel* %349, i32 0, i32 %350, i32 -1)
  %352 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %353 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @ATA_NO_SLAVE, align 4
  %356 = and i32 %354, %355
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %339
  %359 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %360 = load i32, i32* @ATA_SERROR, align 4
  %361 = call i32 @ata_sata_scr_write(%struct.ata_channel* %359, i32 1, i32 %360, i32 -1)
  br label %362

362:                                              ; preds = %358, %339
  br label %363

363:                                              ; preds = %362, %333
  br label %368

364:                                              ; preds = %269
  %365 = load i32, i32* @ata_intel_new_setmode, align 4
  %366 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %367 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %366, i32 0, i32 1
  store i32 %365, i32* %367, align 8
  br label %368

368:                                              ; preds = %364, %363
  %369 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %370 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %369, i32 0, i32 0
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @ATA_SA600, align 8
  %375 = icmp sge i64 %373, %374
  br i1 %375, label %376, label %382

376:                                              ; preds = %368
  %377 = load i32, i32* @ATA_USE_16BIT, align 4
  %378 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %379 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 8
  br label %382

382:                                              ; preds = %376, %368
  br label %398

383:                                              ; preds = %56
  %384 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %385 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %384, i32 0, i32 0
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @ATA_ISCH, align 8
  %390 = icmp ne i64 %388, %389
  br i1 %390, label %391, label %397

391:                                              ; preds = %383
  %392 = load i32, i32* @ATA_CHECKS_CABLE, align 4
  %393 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %394 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  br label %397

397:                                              ; preds = %391, %383
  br label %398

398:                                              ; preds = %397, %382
  store i32 0, i32* %2, align 4
  br label %399

399:                                              ; preds = %398, %11
  %400 = load i32, i32* %2, align 4
  ret i32 %400
}

declare dso_local i64 @ata_pci_ch_attach(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @ATA_INTEL_SMAP(%struct.ata_pci_controller*, %struct.ata_channel*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @ata_intel_sata_sidpr_test(i32) #1

declare dso_local i32 @ata_sata_scr_write(%struct.ata_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
