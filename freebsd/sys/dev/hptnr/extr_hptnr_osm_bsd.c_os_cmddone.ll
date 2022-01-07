; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_os_cmddone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_os_cmddone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__, %struct.TYPE_14__, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, i32, %union.ccb* }
%struct.TYPE_18__ = type { i32 }
%union.ccb = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_16__ = type { i32, i8* }

@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"os_cmddone(%p, %d)\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"sts 0x%x err 0x%x low 0x%x mid 0x%x hig 0x%x dh 0x%x sc 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"result:0x%x,bFeaturesReg:0x%04x,bSectorCountReg:0x%04x,LBA:0x%04x%04x%04x \00", align 1
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CAM_DEV_NOT_THERE = common dso_local global i8* null, align 8
@CAM_BUSY = common dso_local global i8* null, align 8
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@CAM_SCSI_STATUS_ERROR = common dso_local global i8* null, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @os_cmddone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @os_cmddone(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %3, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 3
  %15 = load %union.ccb*, %union.ccb** %14, align 8
  store %union.ccb* %15, %union.ccb** %4, align 8
  %16 = load %union.ccb*, %union.ccb** %4, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_16__*
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CAM_CDB_POINTER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_15__*
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %5, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_15__*
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %5, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @KdPrint(i8* %41)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = call i32 @callout_stop(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %186 [
    i32 133, label %49
    i32 161, label %49
  ]

49:                                               ; preds = %35, %35
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %6, align 8
  %53 = load %union.ccb*, %union.ccb** %4, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_15__*
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i32* %55, i32** %7, align 8
  %56 = load %union.ccb*, %union.ccb** %4, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_15__*
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = call i32 @memset(i32* %58, i32 0, i32 4)
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 114, i32* %61, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  store i32 14, i32* %63, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  store i32 9, i32* %65, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 9
  store i32 12, i32* %67, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 11
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 13
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 15
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 17
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 19
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 133
  br i1 %96, label %97, label %130

97:                                               ; preds = %49
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %97
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 10
  store i32 1, i32* %105, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 8
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 12
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 8
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 14
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 8
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 16
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 8
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 18
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %103, %97, %49
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 20
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 21
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = call i32 @KdPrint(i8* %163)
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = call i32 @KdPrint(i8* %184)
  br label %186

186:                                              ; preds = %35, %130
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  switch i32 %190, label %221 [
    i32 128, label %191
    i32 133, label %196
    i32 132, label %201
    i32 131, label %206
    i32 129, label %211
    i32 130, label %216
  ]

191:                                              ; preds = %187
  %192 = load i8*, i8** @CAM_REQ_CMP, align 8
  %193 = load %union.ccb*, %union.ccb** %4, align 8
  %194 = bitcast %union.ccb* %193 to %struct.TYPE_16__*
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  store i8* %192, i8** %195, align 8
  br label %226

196:                                              ; preds = %187
  %197 = load i8*, i8** @CAM_DEV_NOT_THERE, align 8
  %198 = load %union.ccb*, %union.ccb** %4, align 8
  %199 = bitcast %union.ccb* %198 to %struct.TYPE_16__*
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  store i8* %197, i8** %200, align 8
  br label %226

201:                                              ; preds = %187
  %202 = load i8*, i8** @CAM_BUSY, align 8
  %203 = load %union.ccb*, %union.ccb** %4, align 8
  %204 = bitcast %union.ccb* %203 to %struct.TYPE_16__*
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  store i8* %202, i8** %205, align 8
  br label %226

206:                                              ; preds = %187
  %207 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %208 = load %union.ccb*, %union.ccb** %4, align 8
  %209 = bitcast %union.ccb* %208 to %struct.TYPE_16__*
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  store i8* %207, i8** %210, align 8
  br label %226

211:                                              ; preds = %187
  %212 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %213 = load %union.ccb*, %union.ccb** %4, align 8
  %214 = bitcast %union.ccb* %213 to %struct.TYPE_16__*
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  store i8* %212, i8** %215, align 8
  br label %226

216:                                              ; preds = %187
  %217 = load i8*, i8** @CAM_BUSY, align 8
  %218 = load %union.ccb*, %union.ccb** %4, align 8
  %219 = bitcast %union.ccb* %218 to %struct.TYPE_16__*
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  store i8* %217, i8** %220, align 8
  br label %226

221:                                              ; preds = %187
  %222 = load i8*, i8** @CAM_SCSI_STATUS_ERROR, align 8
  %223 = load %union.ccb*, %union.ccb** %4, align 8
  %224 = bitcast %union.ccb* %223 to %struct.TYPE_16__*
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  store i8* %222, i8** %225, align 8
  br label %226

226:                                              ; preds = %221, %216, %211, %206, %201, %196, %191
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %226
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %242 = call i32 @bus_dmamap_sync(i32 %237, i32 %240, i32 %241)
  br label %261

243:                                              ; preds = %226
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %243
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %259 = call i32 @bus_dmamap_sync(i32 %254, i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %249, %243
  br label %261

261:                                              ; preds = %260, %232
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @bus_dmamap_unload(i32 %266, i32 %269)
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %272 = call i32 @cmdext_put(%struct.TYPE_20__* %271)
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %274 = call i32 @ldm_free_cmds(%struct.TYPE_21__* %273)
  %275 = load %union.ccb*, %union.ccb** %4, align 8
  %276 = call i32 @xpt_done(%union.ccb* %275)
  ret void
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @cmdext_put(%struct.TYPE_20__*) #1

declare dso_local i32 @ldm_free_cmds(%struct.TYPE_21__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
