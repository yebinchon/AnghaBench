; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_setup_fis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_setup_fis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_cmd = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%union.ccb = type { %struct.TYPE_10__, [40 x i8] }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.siis_channel = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XPT_SCSI_IO = common dso_local global i64 0, align 8
@ATA_PACKET_CMD = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@ATA_DMA = common dso_local global i64 0, align 8
@ATA_F_DMA = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@ATA_A_4BIT = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@ATA_FLAG_AUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.siis_cmd*, %union.ccb*, i32)* @siis_setup_fis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_setup_fis(i32 %0, %struct.siis_cmd* %1, %union.ccb* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.siis_cmd*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.siis_channel*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.siis_cmd* %1, %struct.siis_cmd** %6, align 8
  store %union.ccb* %2, %union.ccb** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.siis_channel* @device_get_softc(i32 %11)
  store %struct.siis_channel* %12, %struct.siis_channel** %9, align 8
  %13 = load %struct.siis_cmd*, %struct.siis_cmd** %6, align 8
  %14 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @bzero(i32* %17, i32 24)
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 39, i32* %20, align 4
  %21 = load %union.ccb*, %union.ccb** %7, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_10__*
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 15
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load %union.ccb*, %union.ccb** %7, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_10__*
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XPT_SCSI_IO, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %126

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 128
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @ATA_PACKET_CMD, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %39, i32* %41, align 4
  %42 = load %union.ccb*, %union.ccb** %7, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CAM_DIR_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CAM_DIR_NONE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %34
  %51 = load %struct.siis_channel*, %struct.siis_channel** %9, align 8
  %52 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load %union.ccb*, %union.ccb** %7, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATA_DMA, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load i32, i32* @ATA_F_DMA, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %65, i32* %67, align 4
  br label %82

68:                                               ; preds = %50, %34
  %69 = load %union.ccb*, %union.ccb** %7, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_14__*
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 %72, i32* %74, align 4
  %75 = load %union.ccb*, %union.ccb** %7, align 8
  %76 = bitcast %union.ccb* %75 to %struct.TYPE_14__*
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 8
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %68, %64
  %83 = load i32, i32* @ATA_D_LBA, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @ATA_A_4BIT, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 15
  store i32 %86, i32* %88, align 4
  %89 = load %struct.siis_cmd*, %struct.siis_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @bzero(i32* %93, i32 16)
  %95 = load %union.ccb*, %union.ccb** %7, align 8
  %96 = bitcast %union.ccb* %95 to %struct.TYPE_10__*
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CAM_CDB_POINTER, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %82
  %103 = load %union.ccb*, %union.ccb** %7, align 8
  %104 = bitcast %union.ccb* %103 to %struct.TYPE_14__*
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  br label %114

108:                                              ; preds = %82
  %109 = load %union.ccb*, %union.ccb** %7, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_14__*
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  br label %114

114:                                              ; preds = %108, %102
  %115 = phi i32 [ %107, %102 ], [ %113, %108 ]
  %116 = load %struct.siis_cmd*, %struct.siis_cmd** %6, align 8
  %117 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %union.ccb*, %union.ccb** %7, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_14__*
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @bcopy(i32 %115, i32* %120, i32 %124)
  br label %286

126:                                              ; preds = %4
  %127 = load %union.ccb*, %union.ccb** %7, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_16__*
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %284

135:                                              ; preds = %126
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, 128
  store i32 %139, i32* %137, align 4
  %140 = load %union.ccb*, %union.ccb** %7, align 8
  %141 = bitcast %union.ccb* %140 to %struct.TYPE_16__*
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32 %144, i32* %146, align 4
  %147 = load %union.ccb*, %union.ccb** %7, align 8
  %148 = bitcast %union.ccb* %147 to %struct.TYPE_16__*
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 3
  store i32 %151, i32* %153, align 4
  %154 = load %union.ccb*, %union.ccb** %7, align 8
  %155 = bitcast %union.ccb* %154 to %struct.TYPE_16__*
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %10, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  store i32 %158, i32* %160, align 4
  %161 = load %union.ccb*, %union.ccb** %7, align 8
  %162 = bitcast %union.ccb* %161 to %struct.TYPE_16__*
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 5
  store i32 %165, i32* %167, align 4
  %168 = load %union.ccb*, %union.ccb** %7, align 8
  %169 = bitcast %union.ccb* %168 to %struct.TYPE_16__*
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %10, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 6
  store i32 %172, i32* %174, align 4
  %175 = load %union.ccb*, %union.ccb** %7, align 8
  %176 = bitcast %union.ccb* %175 to %struct.TYPE_16__*
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 7
  store i32 %179, i32* %181, align 4
  %182 = load %union.ccb*, %union.ccb** %7, align 8
  %183 = bitcast %union.ccb* %182 to %struct.TYPE_16__*
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 8
  store i32 %186, i32* %188, align 4
  %189 = load %union.ccb*, %union.ccb** %7, align 8
  %190 = bitcast %union.ccb* %189 to %struct.TYPE_16__*
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = load i32*, i32** %10, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 9
  store i32 %193, i32* %195, align 4
  %196 = load %union.ccb*, %union.ccb** %7, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_16__*
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %10, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 10
  store i32 %200, i32* %202, align 4
  %203 = load %union.ccb*, %union.ccb** %7, align 8
  %204 = bitcast %union.ccb* %203 to %struct.TYPE_16__*
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 10
  %207 = load i32, i32* %206, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 11
  store i32 %207, i32* %209, align 4
  %210 = load %union.ccb*, %union.ccb** %7, align 8
  %211 = bitcast %union.ccb* %210 to %struct.TYPE_16__*
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %135
  %219 = load i32, i32* %8, align 4
  %220 = shl i32 %219, 3
  %221 = load i32*, i32** %10, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 12
  store i32 %220, i32* %222, align 4
  %223 = load i32*, i32** %10, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 13
  store i32 0, i32* %224, align 4
  br label %240

225:                                              ; preds = %135
  %226 = load %union.ccb*, %union.ccb** %7, align 8
  %227 = bitcast %union.ccb* %226 to %struct.TYPE_16__*
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %10, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 12
  store i32 %230, i32* %232, align 4
  %233 = load %union.ccb*, %union.ccb** %7, align 8
  %234 = bitcast %union.ccb* %233 to %struct.TYPE_16__*
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 12
  %237 = load i32, i32* %236, align 8
  %238 = load i32*, i32** %10, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 13
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %225, %218
  %241 = load i32, i32* @ATA_A_4BIT, align 4
  %242 = load i32*, i32** %10, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 15
  store i32 %241, i32* %243, align 4
  %244 = load %union.ccb*, %union.ccb** %7, align 8
  %245 = bitcast %union.ccb* %244 to %struct.TYPE_16__*
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @ATA_FLAG_AUX, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %283

251:                                              ; preds = %240
  %252 = load %union.ccb*, %union.ccb** %7, align 8
  %253 = bitcast %union.ccb* %252 to %struct.TYPE_16__*
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = and i32 %255, 255
  %257 = load i32*, i32** %10, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 16
  store i32 %256, i32* %258, align 4
  %259 = load %union.ccb*, %union.ccb** %7, align 8
  %260 = bitcast %union.ccb* %259 to %struct.TYPE_16__*
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = ashr i32 %262, 8
  %264 = and i32 %263, 255
  %265 = load i32*, i32** %10, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 17
  store i32 %264, i32* %266, align 4
  %267 = load %union.ccb*, %union.ccb** %7, align 8
  %268 = bitcast %union.ccb* %267 to %struct.TYPE_16__*
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = ashr i32 %270, 16
  %272 = and i32 %271, 255
  %273 = load i32*, i32** %10, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 18
  store i32 %272, i32* %274, align 4
  %275 = load %union.ccb*, %union.ccb** %7, align 8
  %276 = bitcast %union.ccb* %275 to %struct.TYPE_16__*
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = ashr i32 %278, 24
  %280 = and i32 %279, 255
  %281 = load i32*, i32** %10, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 19
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %251, %240
  br label %285

284:                                              ; preds = %126
  br label %285

285:                                              ; preds = %284, %283
  br label %286

286:                                              ; preds = %285, %114
  ret i32 20
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
