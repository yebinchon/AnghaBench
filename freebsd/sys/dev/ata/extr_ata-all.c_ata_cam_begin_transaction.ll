; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cam_begin_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cam_begin_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ata_channel = type { i32, %struct.ata_request*, %struct.TYPE_16__, i32, %struct.TYPE_15__*, %struct.ata_request }
%struct.TYPE_16__ = type { i64 (%struct.ata_request*)* }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.ata_request = type { i64, i32, i32, %union.ccb*, i32, i64, i32, i8*, %struct.TYPE_18__, i32, i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_13__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_48BIT = common dso_local global i32 0, align 4
@ATA_R_48BIT = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@ATA_R_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@ATA_R_DMA = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@ATA_R_READ = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@ATA_R_WRITE = common dso_local global i32 0, align 4
@ATA_READ_MUL = common dso_local global i64 0, align 8
@ATA_READ_MUL48 = common dso_local global i64 0, align 8
@ATA_WRITE_MUL = common dso_local global i64 0, align 8
@ATA_WRITE_MUL48 = common dso_local global i64 0, align 8
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@ATA_R_ATAPI = common dso_local global i32 0, align 4
@ATA_R_ATAPI16 = common dso_local global i32 0, align 4
@ATA_DMA = common dso_local global i64 0, align 8
@CALLOUT_RETURNUNLOCKED = common dso_local global i32 0, align 4
@ATA_R_DATA_IN_CCB = common dso_local global i32 0, align 4
@ATA_ACTIVE = common dso_local global i32 0, align 4
@ATA_OP_FINISHED = common dso_local global i64 0, align 8
@ATA_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @ata_cam_begin_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_cam_begin_transaction(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca %struct.ata_request*, align 8
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ata_channel* @device_get_softc(i32 %7)
  store %struct.ata_channel* %8, %struct.ata_channel** %5, align 8
  %9 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %10 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %9, i32 0, i32 5
  store %struct.ata_request* %10, %struct.ata_request** %6, align 8
  %11 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %12 = call i32 @bzero(%struct.ata_request* %11, i32 104)
  %13 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %14 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %13, i32 0, i32 11
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %17 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_11__*
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %23 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_11__*
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XPT_ATA_IO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %295

30:                                               ; preds = %2
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_20__*
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %36 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load %union.ccb*, %union.ccb** %4, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_20__*
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %42 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_20__*
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %49 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i64 %47, i64* %51, align 8
  %52 = load %union.ccb*, %union.ccb** %4, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_20__*
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 8
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_20__*
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = or i32 %58, %64
  %66 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %67 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 8
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_20__*
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 10
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 8
  %77 = load %union.ccb*, %union.ccb** %4, align 8
  %78 = bitcast %union.ccb* %77 to %struct.TYPE_20__*
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 9
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = or i32 %76, %82
  %84 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %85 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 4
  %88 = load %union.ccb*, %union.ccb** %4, align 8
  %89 = bitcast %union.ccb* %88 to %struct.TYPE_20__*
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CAM_ATAIO_48BIT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %30
  %97 = load i32, i32* @ATA_R_48BIT, align 4
  %98 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %99 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %union.ccb*, %union.ccb** %4, align 8
  %103 = bitcast %union.ccb* %102 to %struct.TYPE_20__*
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 %107, 40
  %109 = load %union.ccb*, %union.ccb** %4, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_20__*
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = shl i32 %114, 32
  %116 = or i32 %108, %115
  %117 = load %union.ccb*, %union.ccb** %4, align 8
  %118 = bitcast %union.ccb* %117 to %struct.TYPE_20__*
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = shl i32 %122, 24
  %124 = or i32 %116, %123
  %125 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %126 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  store i32 %124, i32* %128, align 8
  br label %141

129:                                              ; preds = %30
  %130 = load %union.ccb*, %union.ccb** %4, align 8
  %131 = bitcast %union.ccb* %130 to %struct.TYPE_20__*
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 15
  %136 = shl i32 %135, 24
  %137 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %138 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  store i32 %136, i32* %140, align 8
  br label %141

141:                                              ; preds = %129, %96
  %142 = load %union.ccb*, %union.ccb** %4, align 8
  %143 = bitcast %union.ccb* %142 to %struct.TYPE_20__*
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = shl i32 %147, 16
  %149 = load %union.ccb*, %union.ccb** %4, align 8
  %150 = bitcast %union.ccb* %149 to %struct.TYPE_20__*
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = shl i32 %154, 8
  %156 = or i32 %148, %155
  %157 = load %union.ccb*, %union.ccb** %4, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_20__*
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = or i32 %156, %162
  %164 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %165 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %164, i32 0, i32 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %163
  store i32 %169, i32* %167, align 8
  %170 = load %union.ccb*, %union.ccb** %4, align 8
  %171 = bitcast %union.ccb* %170 to %struct.TYPE_20__*
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %141
  %179 = load i32, i32* @ATA_R_NEEDRESULT, align 4
  %180 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %181 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %141
  %185 = load %union.ccb*, %union.ccb** %4, align 8
  %186 = bitcast %union.ccb* %185 to %struct.TYPE_11__*
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CAM_DIR_MASK, align 4
  %190 = and i32 %188, %189
  %191 = load i32, i32* @CAM_DIR_NONE, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %184
  %194 = load %union.ccb*, %union.ccb** %4, align 8
  %195 = bitcast %union.ccb* %194 to %struct.TYPE_20__*
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %193
  %203 = load i32, i32* @ATA_R_DMA, align 4
  %204 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %205 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %193, %184
  %209 = load %union.ccb*, %union.ccb** %4, align 8
  %210 = bitcast %union.ccb* %209 to %struct.TYPE_11__*
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @CAM_DIR_MASK, align 4
  %214 = and i32 %212, %213
  %215 = load i32, i32* @CAM_DIR_IN, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %208
  %218 = load i32, i32* @ATA_R_READ, align 4
  %219 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %220 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %208
  %224 = load %union.ccb*, %union.ccb** %4, align 8
  %225 = bitcast %union.ccb* %224 to %struct.TYPE_11__*
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @CAM_DIR_MASK, align 4
  %229 = and i32 %227, %228
  %230 = load i32, i32* @CAM_DIR_OUT, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %223
  %233 = load i32, i32* @ATA_R_WRITE, align 4
  %234 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %235 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %232, %223
  %239 = load %union.ccb*, %union.ccb** %4, align 8
  %240 = bitcast %union.ccb* %239 to %struct.TYPE_20__*
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @ATA_READ_MUL, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %270, label %246

246:                                              ; preds = %238
  %247 = load %union.ccb*, %union.ccb** %4, align 8
  %248 = bitcast %union.ccb* %247 to %struct.TYPE_20__*
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @ATA_READ_MUL48, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %270, label %254

254:                                              ; preds = %246
  %255 = load %union.ccb*, %union.ccb** %4, align 8
  %256 = bitcast %union.ccb* %255 to %struct.TYPE_20__*
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @ATA_WRITE_MUL, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %270, label %262

262:                                              ; preds = %254
  %263 = load %union.ccb*, %union.ccb** %4, align 8
  %264 = bitcast %union.ccb* %263 to %struct.TYPE_20__*
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @ATA_WRITE_MUL48, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %287

270:                                              ; preds = %262, %254, %246, %238
  %271 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %272 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %275 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %274, i32 0, i32 4
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  %277 = load %union.ccb*, %union.ccb** %4, align 8
  %278 = bitcast %union.ccb* %277 to %struct.TYPE_11__*
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i8* @min(i32 %273, i32 %283)
  %285 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %286 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %285, i32 0, i32 7
  store i8* %284, i8** %286, align 8
  br label %294

287:                                              ; preds = %262
  %288 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %289 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = call i8* @min(i32 %290, i32 512)
  %292 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %293 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %292, i32 0, i32 7
  store i8* %291, i8** %293, align 8
  br label %294

294:                                              ; preds = %287, %270
  br label %436

295:                                              ; preds = %2
  %296 = load %union.ccb*, %union.ccb** %4, align 8
  %297 = bitcast %union.ccb* %296 to %struct.TYPE_14__*
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %301 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %300, i32 0, i32 9
  store i32 %299, i32* %301, align 8
  %302 = load %union.ccb*, %union.ccb** %4, align 8
  %303 = bitcast %union.ccb* %302 to %struct.TYPE_14__*
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %307 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %306, i32 0, i32 6
  store i32 %305, i32* %307, align 8
  %308 = load %union.ccb*, %union.ccb** %4, align 8
  %309 = bitcast %union.ccb* %308 to %struct.TYPE_11__*
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @CAM_CDB_POINTER, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %295
  %316 = load %union.ccb*, %union.ccb** %4, align 8
  %317 = bitcast %union.ccb* %316 to %struct.TYPE_14__*
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  br label %327

321:                                              ; preds = %295
  %322 = load %union.ccb*, %union.ccb** %4, align 8
  %323 = bitcast %union.ccb* %322 to %struct.TYPE_14__*
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  br label %327

327:                                              ; preds = %321, %315
  %328 = phi i32 [ %320, %315 ], [ %326, %321 ]
  %329 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %330 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %329, i32 0, i32 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load %union.ccb*, %union.ccb** %4, align 8
  %335 = bitcast %union.ccb* %334 to %struct.TYPE_14__*
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @bcopy(i32 %328, i32 %333, i32 %337)
  %339 = load i32, i32* @ATA_R_ATAPI, align 4
  %340 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %341 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 4
  %344 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %345 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %344, i32 0, i32 4
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %345, align 8
  %347 = load %union.ccb*, %union.ccb** %4, align 8
  %348 = bitcast %union.ccb* %347 to %struct.TYPE_11__*
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %353, 16
  br i1 %354, label %355, label %361

355:                                              ; preds = %327
  %356 = load i32, i32* @ATA_R_ATAPI16, align 4
  %357 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %358 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 4
  br label %361

361:                                              ; preds = %355, %327
  %362 = load %union.ccb*, %union.ccb** %4, align 8
  %363 = bitcast %union.ccb* %362 to %struct.TYPE_11__*
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @CAM_DIR_MASK, align 4
  %367 = and i32 %365, %366
  %368 = load i32, i32* @CAM_DIR_NONE, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %389

370:                                              ; preds = %361
  %371 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %372 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %371, i32 0, i32 4
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %372, align 8
  %374 = load %union.ccb*, %union.ccb** %4, align 8
  %375 = bitcast %union.ccb* %374 to %struct.TYPE_11__*
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @ATA_DMA, align 8
  %382 = icmp sge i64 %380, %381
  br i1 %382, label %383, label %389

383:                                              ; preds = %370
  %384 = load i32, i32* @ATA_R_DMA, align 4
  %385 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %386 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %384
  store i32 %388, i32* %386, align 4
  br label %389

389:                                              ; preds = %383, %370, %361
  %390 = load %union.ccb*, %union.ccb** %4, align 8
  %391 = bitcast %union.ccb* %390 to %struct.TYPE_11__*
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @CAM_DIR_MASK, align 4
  %395 = and i32 %393, %394
  %396 = load i32, i32* @CAM_DIR_IN, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %404

398:                                              ; preds = %389
  %399 = load i32, i32* @ATA_R_READ, align 4
  %400 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %401 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %402, %399
  store i32 %403, i32* %401, align 4
  br label %404

404:                                              ; preds = %398, %389
  %405 = load %union.ccb*, %union.ccb** %4, align 8
  %406 = bitcast %union.ccb* %405 to %struct.TYPE_11__*
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @CAM_DIR_MASK, align 4
  %410 = and i32 %408, %409
  %411 = load i32, i32* @CAM_DIR_OUT, align 4
  %412 = icmp eq i32 %410, %411
  br i1 %412, label %413, label %419

413:                                              ; preds = %404
  %414 = load i32, i32* @ATA_R_WRITE, align 4
  %415 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %416 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = or i32 %417, %414
  store i32 %418, i32* %416, align 4
  br label %419

419:                                              ; preds = %413, %404
  %420 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %421 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %420, i32 0, i32 6
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %424 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %423, i32 0, i32 4
  %425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %424, align 8
  %426 = load %union.ccb*, %union.ccb** %4, align 8
  %427 = bitcast %union.ccb* %426 to %struct.TYPE_11__*
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = call i8* @min(i32 %422, i32 %432)
  %434 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %435 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %434, i32 0, i32 7
  store i8* %433, i8** %435, align 8
  br label %436

436:                                              ; preds = %419, %294
  %437 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %438 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %437, i32 0, i32 5
  store i64 0, i64* %438, align 8
  %439 = load %union.ccb*, %union.ccb** %4, align 8
  %440 = bitcast %union.ccb* %439 to %struct.TYPE_11__*
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %442, 999
  %444 = sdiv i32 %443, 1000
  %445 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %446 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %445, i32 0, i32 1
  store i32 %444, i32* %446, align 8
  %447 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %448 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %447, i32 0, i32 4
  %449 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %450 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %449, i32 0, i32 3
  %451 = load i32, i32* @CALLOUT_RETURNUNLOCKED, align 4
  %452 = call i32 @callout_init_mtx(i32* %448, i32* %450, i32 %451)
  %453 = load %union.ccb*, %union.ccb** %4, align 8
  %454 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %455 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %454, i32 0, i32 3
  store %union.ccb* %453, %union.ccb** %455, align 8
  %456 = load i32, i32* @ATA_R_DATA_IN_CCB, align 4
  %457 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %458 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 4
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 4
  %461 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %462 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %463 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %462, i32 0, i32 1
  store %struct.ata_request* %461, %struct.ata_request** %463, align 8
  %464 = load i32, i32* @ATA_ACTIVE, align 4
  %465 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %466 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %465, i32 0, i32 0
  store i32 %464, i32* %466, align 8
  %467 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %468 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 0
  %470 = load i64 (%struct.ata_request*)*, i64 (%struct.ata_request*)** %469, align 8
  %471 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %472 = call i64 %470(%struct.ata_request* %471)
  %473 = load i64, i64* @ATA_OP_FINISHED, align 8
  %474 = icmp eq i64 %472, %473
  br i1 %474, label %475, label %484

475:                                              ; preds = %436
  %476 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %477 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %476, i32 0, i32 1
  store %struct.ata_request* null, %struct.ata_request** %477, align 8
  %478 = load i32, i32* @ATA_IDLE, align 4
  %479 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %480 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %479, i32 0, i32 0
  store i32 %478, i32* %480, align 8
  %481 = load i32, i32* %3, align 4
  %482 = load %struct.ata_request*, %struct.ata_request** %6, align 8
  %483 = call i32 @ata_cam_end_transaction(i32 %481, %struct.ata_request* %482)
  br label %484

484:                                              ; preds = %475, %436
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ata_request*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @ata_cam_end_transaction(i32, %struct.ata_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
