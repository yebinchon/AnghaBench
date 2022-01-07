; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_scsi_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_scsi_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32 }
%union.ccb = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i64, i64, i8*, i32 }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_41__, i32, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__, %struct.TYPE_39__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_46__, %struct.TYPE_45__*, i32, i32, %struct.TYPE_33__*, %struct.TYPE_35__*, %struct.TYPE_43__ }
%struct.TYPE_46__ = type { i32, i32, i32 }
%struct.TYPE_45__ = type { i32, i32, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_45__*, %union.ccb* }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32*, i32, i32, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32*, i32* }

@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"<8>hpt_scsi_io: ccb %x id %d lun %d cdb %x-%x-%x\00", align 1
@osm_max_targets = common dso_local global i64 0, align 8
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_TID_INVALID = common dso_local global i8* null, align 8
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"HPT     \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DISK 0_0        \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"4.00\00", align 1
@VD_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"set 4k setctor size in READ_CAPACITY\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"set 4k setctor size in SERVICE_ACTION_IN\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to allocate command!\00", align 1
@CAM_BUSY = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"<8>resize sector size from 4k to 512\00", align 1
@os_cmddone = common dso_local global i32 0, align 4
@os_buildsgl = common dso_local global i32 0, align 4
@CAM_SCATTER_VALID = common dso_local global i32 0, align 4
@CAM_SG_LIST_PHYS = common dso_local global i32 0, align 4
@hpt_timeout = common dso_local global i32 0, align 4
@HPT_OSM_TIMEOUT = common dso_local global i32 0, align 4
@hpt_io_dmamap_callback = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"<8>bus_dmamap_load return %d\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"bus_dmamap_load error %d\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*, %union.ccb*)* @hpt_scsi_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_scsi_io(%struct.TYPE_34__* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_32__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_31__*
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CAM_CDB_POINTER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_30__*
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %9, align 8
  br label %49

43:                                               ; preds = %2
  %44 = load %union.ccb*, %union.ccb** %4, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_30__*
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %9, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = load %union.ccb*, %union.ccb** %4, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_31__*
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %union.ccb*, %union.ccb** %4, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_31__*
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @KdPrint(i8* %69)
  %71 = load %union.ccb*, %union.ccb** %4, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_31__*
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %49
  %77 = load %union.ccb*, %union.ccb** %4, align 8
  %78 = bitcast %union.ccb* %77 to %struct.TYPE_31__*
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @osm_max_targets, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %76
  %84 = load %union.ccb*, %union.ccb** %4, align 8
  %85 = bitcast %union.ccb* %84 to %struct.TYPE_31__*
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CAM_CDB_PHYS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83, %76, %49
  %92 = load i8*, i8** @CAM_TID_INVALID, align 8
  %93 = load %union.ccb*, %union.ccb** %4, align 8
  %94 = bitcast %union.ccb* %93 to %struct.TYPE_31__*
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 3
  store i8* %92, i8** %95, align 8
  %96 = load %union.ccb*, %union.ccb** %4, align 8
  %97 = call i32 @xpt_done(%union.ccb* %96)
  br label %727

98:                                               ; preds = %83
  %99 = load i32, i32* %5, align 4
  %100 = load %union.ccb*, %union.ccb** %4, align 8
  %101 = bitcast %union.ccb* %100 to %struct.TYPE_31__*
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.TYPE_33__* @ldm_find_target(i32 %99, i64 %103)
  store %struct.TYPE_33__* %104, %struct.TYPE_33__** %6, align 8
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %106 = icmp ne %struct.TYPE_33__* %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %98
  %108 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %109 = load %union.ccb*, %union.ccb** %4, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_31__*
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 3
  store i8* %108, i8** %111, align 8
  %112 = load %union.ccb*, %union.ccb** %4, align 8
  %113 = call i32 @xpt_done(%union.ccb* %112)
  br label %727

114:                                              ; preds = %98
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %719 [
    i32 131, label %118
    i32 133, label %118
    i32 132, label %118
    i32 140, label %123
    i32 136, label %193
    i32 135, label %270
    i32 134, label %283
    i32 137, label %369
    i32 139, label %369
    i32 138, label %369
    i32 128, label %369
    i32 130, label %369
    i32 129, label %369
    i32 19, label %369
    i32 47, label %369
    i32 143, label %369
  ]

118:                                              ; preds = %114, %114, %114
  %119 = load i8*, i8** @CAM_REQ_CMP, align 8
  %120 = load %union.ccb*, %union.ccb** %4, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_31__*
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 3
  store i8* %119, i8** %122, align 8
  br label %724

123:                                              ; preds = %114
  %124 = load %union.ccb*, %union.ccb** %4, align 8
  %125 = bitcast %union.ccb* %124 to %struct.TYPE_30__*
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %union.ccb*, %union.ccb** %4, align 8
  %129 = bitcast %union.ccb* %128 to %struct.TYPE_30__*
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @memset(i32* %127, i32 0, i32 %131)
  %133 = load %union.ccb*, %union.ccb** %4, align 8
  %134 = bitcast %union.ccb* %133 to %struct.TYPE_30__*
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = bitcast i32* %136 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %137, %struct.TYPE_36__** %10, align 8
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %138, i32 0, i32 0
  store i32 31, i32* %139, align 8
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %142, i32 0, i32 2
  %144 = call i32 @memcpy(i32** %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %145, i32 0, i32 3
  %147 = call i32 @memcpy(i32** %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %150, 10
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %123
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %156, 100
  %158 = sdiv i32 %157, 10
  %159 = add nsw i32 %158, 48
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 7
  store i32 %159, i32* %163, align 4
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = srem i32 %166, 100
  %168 = srem i32 %167, 10
  %169 = add nsw i32 %168, 48
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 8
  store i32 %169, i32* %173, align 4
  br label %185

174:                                              ; preds = %123
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = srem i32 %177, 100
  %179 = srem i32 %178, 10
  %180 = add nsw i32 %179, 48
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 7
  store i32 %180, i32* %184, align 4
  br label %185

185:                                              ; preds = %174, %153
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 4
  %188 = call i32 @memcpy(i32** %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %189 = load i8*, i8** @CAM_REQ_CMP, align 8
  %190 = load %union.ccb*, %union.ccb** %4, align 8
  %191 = bitcast %union.ccb* %190 to %struct.TYPE_31__*
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 3
  store i8* %189, i8** %192, align 8
  br label %724

193:                                              ; preds = %114
  %194 = load %union.ccb*, %union.ccb** %4, align 8
  %195 = bitcast %union.ccb* %194 to %struct.TYPE_30__*
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @mIsArray(i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %193
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %13, align 4
  br label %227

209:                                              ; preds = %193
  %210 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @VD_RAW, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %215, %209
  %222 = load i32, i32* %15, align 4
  switch i32 %222, label %225 [
    i32 4096, label %223
  ]

223:                                              ; preds = %221
  %224 = call i32 @KdPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 3, i32* %13, align 4
  br label %226

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %225, %223
  br label %227

227:                                              ; preds = %226, %203
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %13, align 4
  %232 = ashr i32 %230, %231
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp ugt i64 %234, 4294967295
  br i1 %235, label %236, label %237

236:                                              ; preds = %227
  store i32 -1, i32* %12, align 4
  br label %240

237:                                              ; preds = %227
  %238 = load i32, i32* %14, align 4
  %239 = sub nsw i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %240

240:                                              ; preds = %237, %236
  %241 = load i32, i32* %12, align 4
  %242 = ashr i32 %241, 24
  %243 = load i32*, i32** %11, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %12, align 4
  %246 = ashr i32 %245, 16
  %247 = load i32*, i32** %11, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %12, align 4
  %250 = ashr i32 %249, 8
  %251 = load i32*, i32** %11, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %12, align 4
  %254 = load i32*, i32** %11, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  store i32 %253, i32* %255, align 4
  %256 = load i32*, i32** %11, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 4
  store i32 0, i32* %257, align 4
  %258 = load i32*, i32** %11, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 5
  store i32 0, i32* %259, align 4
  %260 = load i32, i32* %13, align 4
  %261 = shl i32 2, %260
  %262 = load i32*, i32** %11, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 6
  store i32 %261, i32* %263, align 4
  %264 = load i32*, i32** %11, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 7
  store i32 0, i32* %265, align 4
  %266 = load i8*, i8** @CAM_REQ_CMP, align 8
  %267 = load %union.ccb*, %union.ccb** %4, align 8
  %268 = bitcast %union.ccb* %267 to %struct.TYPE_31__*
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 3
  store i8* %266, i8** %269, align 8
  br label %724

270:                                              ; preds = %114
  %271 = load %union.ccb*, %union.ccb** %4, align 8
  %272 = bitcast %union.ccb* %271 to %struct.TYPE_30__*
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  store i32* %274, i32** %16, align 8
  %275 = load i32*, i32** %16, align 8
  %276 = call i32 @memset(i32* %275, i32 0, i32 16)
  %277 = load i32*, i32** %16, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 3
  store i32 8, i32* %278, align 4
  %279 = load i8*, i8** @CAM_REQ_CMP, align 8
  %280 = load %union.ccb*, %union.ccb** %4, align 8
  %281 = bitcast %union.ccb* %280 to %struct.TYPE_31__*
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 3
  store i8* %279, i8** %282, align 8
  br label %724

283:                                              ; preds = %114
  %284 = load %union.ccb*, %union.ccb** %4, align 8
  %285 = bitcast %union.ccb* %284 to %struct.TYPE_30__*
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  store i32* %287, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %288 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @mIsArray(i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %283
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %19, align 4
  br label %317

299:                                              ; preds = %283
  %300 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @VD_RAW, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %299
  %306 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %20, align 4
  br label %311

311:                                              ; preds = %305, %299
  %312 = load i32, i32* %20, align 4
  switch i32 %312, label %315 [
    i32 4096, label %313
  ]

313:                                              ; preds = %311
  %314 = call i32 @KdPrint(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 3, i32* %19, align 4
  br label %316

315:                                              ; preds = %311
  br label %316

316:                                              ; preds = %315, %313
  br label %317

317:                                              ; preds = %316, %293
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %19, align 4
  %322 = ashr i32 %320, %321
  %323 = sub nsw i32 %322, 1
  store i32 %323, i32* %18, align 4
  %324 = load i32, i32* %18, align 4
  %325 = ashr i32 %324, 56
  %326 = load i32*, i32** %17, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* %18, align 4
  %329 = ashr i32 %328, 48
  %330 = load i32*, i32** %17, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* %18, align 4
  %333 = ashr i32 %332, 40
  %334 = load i32*, i32** %17, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 2
  store i32 %333, i32* %335, align 4
  %336 = load i32, i32* %18, align 4
  %337 = ashr i32 %336, 32
  %338 = load i32*, i32** %17, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 3
  store i32 %337, i32* %339, align 4
  %340 = load i32, i32* %18, align 4
  %341 = ashr i32 %340, 24
  %342 = load i32*, i32** %17, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 4
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* %18, align 4
  %345 = ashr i32 %344, 16
  %346 = load i32*, i32** %17, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 5
  store i32 %345, i32* %347, align 4
  %348 = load i32, i32* %18, align 4
  %349 = ashr i32 %348, 8
  %350 = load i32*, i32** %17, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 6
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* %18, align 4
  %353 = load i32*, i32** %17, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 7
  store i32 %352, i32* %354, align 4
  %355 = load i32*, i32** %17, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 8
  store i32 0, i32* %356, align 4
  %357 = load i32*, i32** %17, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 9
  store i32 0, i32* %358, align 4
  %359 = load i32, i32* %19, align 4
  %360 = shl i32 2, %359
  %361 = load i32*, i32** %17, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 10
  store i32 %360, i32* %362, align 4
  %363 = load i32*, i32** %17, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 11
  store i32 0, i32* %364, align 4
  %365 = load i8*, i8** @CAM_REQ_CMP, align 8
  %366 = load %union.ccb*, %union.ccb** %4, align 8
  %367 = bitcast %union.ccb* %366 to %struct.TYPE_31__*
  %368 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %367, i32 0, i32 3
  store i8* %365, i8** %368, align 8
  br label %724

369:                                              ; preds = %114, %114, %114, %114, %114, %114, %114, %114, %114
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %370 = load i32, i32* %5, align 4
  %371 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 4
  %374 = call %struct.TYPE_37__* @ldm_alloc_cmds(i32 %370, i32 %373)
  store %struct.TYPE_37__* %374, %struct.TYPE_37__** %7, align 8
  %375 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %376 = icmp ne %struct.TYPE_37__* %375, null
  br i1 %376, label %383, label %377

377:                                              ; preds = %369
  %378 = call i32 @KdPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %379 = load i8*, i8** @CAM_BUSY, align 8
  %380 = load %union.ccb*, %union.ccb** %4, align 8
  %381 = bitcast %union.ccb* %380 to %struct.TYPE_31__*
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 3
  store i8* %379, i8** %382, align 8
  br label %724

383:                                              ; preds = %369
  %384 = load i32*, i32** %9, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 0
  %386 = load i32, i32* %385, align 4
  switch i32 %386, label %468 [
    i32 137, label %387
    i32 128, label %387
    i32 19, label %387
    i32 138, label %412
    i32 129, label %412
    i32 143, label %412
  ]

387:                                              ; preds = %383, %383, %383
  %388 = load i32*, i32** %9, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 1
  %390 = load i32, i32* %389, align 4
  %391 = shl i32 %390, 16
  %392 = load i32*, i32** %9, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 2
  %394 = load i32, i32* %393, align 4
  %395 = shl i32 %394, 8
  %396 = or i32 %391, %395
  %397 = load i32*, i32** %9, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 3
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %396, %399
  %401 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %401, i32 0, i32 6
  %403 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %403, i32 0, i32 0
  store i32 %400, i32* %404, align 8
  %405 = load i32*, i32** %9, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 4
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %408, i32 0, i32 6
  %410 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %410, i32 0, i32 1
  store i32 %407, i32* %411, align 4
  br label %503

412:                                              ; preds = %383, %383, %383
  %413 = load i32*, i32** %9, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 2
  %415 = load i32, i32* %414, align 4
  %416 = shl i32 %415, 56
  %417 = load i32*, i32** %9, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 3
  %419 = load i32, i32* %418, align 4
  %420 = shl i32 %419, 48
  %421 = or i32 %416, %420
  %422 = load i32*, i32** %9, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 4
  %424 = load i32, i32* %423, align 4
  %425 = shl i32 %424, 40
  %426 = or i32 %421, %425
  %427 = load i32*, i32** %9, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 5
  %429 = load i32, i32* %428, align 4
  %430 = shl i32 %429, 32
  %431 = or i32 %426, %430
  %432 = load i32*, i32** %9, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 6
  %434 = load i32, i32* %433, align 4
  %435 = shl i32 %434, 24
  %436 = or i32 %431, %435
  %437 = load i32*, i32** %9, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 7
  %439 = load i32, i32* %438, align 4
  %440 = shl i32 %439, 16
  %441 = or i32 %436, %440
  %442 = load i32*, i32** %9, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 8
  %444 = load i32, i32* %443, align 4
  %445 = shl i32 %444, 8
  %446 = or i32 %441, %445
  %447 = load i32*, i32** %9, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 9
  %449 = load i32, i32* %448, align 4
  %450 = or i32 %446, %449
  store i32 %450, i32* %23, align 4
  %451 = load i32, i32* %23, align 4
  %452 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %452, i32 0, i32 6
  %454 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %454, i32 0, i32 0
  store i32 %451, i32* %455, align 8
  %456 = load i32*, i32** %9, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 13
  %458 = load i32, i32* %457, align 4
  %459 = load i32*, i32** %9, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 12
  %461 = load i32, i32* %460, align 4
  %462 = shl i32 %461, 8
  %463 = or i32 %458, %462
  %464 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %464, i32 0, i32 6
  %466 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %466, i32 0, i32 1
  store i32 %463, i32* %467, align 4
  br label %503

468:                                              ; preds = %383
  %469 = load i32*, i32** %9, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 5
  %471 = load i32, i32* %470, align 4
  %472 = load i32*, i32** %9, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 4
  %474 = load i32, i32* %473, align 4
  %475 = shl i32 %474, 8
  %476 = or i32 %471, %475
  %477 = load i32*, i32** %9, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 3
  %479 = load i32, i32* %478, align 4
  %480 = shl i32 %479, 16
  %481 = or i32 %476, %480
  %482 = load i32*, i32** %9, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 2
  %484 = load i32, i32* %483, align 4
  %485 = shl i32 %484, 24
  %486 = or i32 %481, %485
  %487 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %488 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %487, i32 0, i32 6
  %489 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %489, i32 0, i32 0
  store i32 %486, i32* %490, align 8
  %491 = load i32*, i32** %9, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 8
  %493 = load i32, i32* %492, align 4
  %494 = load i32*, i32** %9, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 7
  %496 = load i32, i32* %495, align 4
  %497 = shl i32 %496, 8
  %498 = or i32 %493, %497
  %499 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %500 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %499, i32 0, i32 6
  %501 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %501, i32 0, i32 1
  store i32 %498, i32* %502, align 4
  br label %503

503:                                              ; preds = %468, %412, %387
  %504 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %505 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @mIsArray(i32 %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %515

509:                                              ; preds = %503
  %510 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  store i32 %514, i32* %21, align 4
  br label %533

515:                                              ; preds = %503
  %516 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %516, i32 0, i32 3
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* @VD_RAW, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %527

521:                                              ; preds = %515
  %522 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  store i32 %526, i32* %22, align 4
  br label %527

527:                                              ; preds = %521, %515
  %528 = load i32, i32* %22, align 4
  switch i32 %528, label %531 [
    i32 4096, label %529
  ]

529:                                              ; preds = %527
  %530 = call i32 @KdPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  store i32 3, i32* %21, align 4
  br label %532

531:                                              ; preds = %527
  br label %532

532:                                              ; preds = %531, %529
  br label %533

533:                                              ; preds = %532, %509
  %534 = load i32, i32* %21, align 4
  %535 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %536 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %535, i32 0, i32 6
  %537 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = shl i32 %539, %534
  store i32 %540, i32* %538, align 8
  %541 = load i32, i32* %21, align 4
  %542 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %543 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %542, i32 0, i32 6
  %544 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = shl i32 %546, %541
  store i32 %547, i32* %545, align 4
  %548 = load i32*, i32** %9, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 0
  %550 = load i32, i32* %549, align 4
  switch i32 %550, label %559 [
    i32 137, label %551
    i32 139, label %551
    i32 138, label %551
    i32 128, label %555
    i32 130, label %555
    i32 129, label %555
  ]

551:                                              ; preds = %533, %533, %533
  %552 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %553 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %553, i32 0, i32 0
  store i32 1, i32* %554, align 8
  br label %559

555:                                              ; preds = %533, %533, %533
  %556 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %557, i32 0, i32 1
  store i32 1, i32* %558, align 4
  br label %559

559:                                              ; preds = %533, %555, %551
  %560 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %561 = call %struct.TYPE_35__* @cmdext_get(%struct.TYPE_34__* %560)
  store %struct.TYPE_35__* %561, %struct.TYPE_35__** %8, align 8
  %562 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %563 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %562, i32 0, i32 5
  store %struct.TYPE_35__* %561, %struct.TYPE_35__** %563, align 8
  %564 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %565 = call i32 @HPT_ASSERT(%struct.TYPE_35__* %564)
  %566 = load %union.ccb*, %union.ccb** %4, align 8
  %567 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %568 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %567, i32 0, i32 2
  store %union.ccb* %566, %union.ccb** %568, align 8
  %569 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %570 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %571 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %570, i32 0, i32 4
  store %struct.TYPE_33__* %569, %struct.TYPE_33__** %571, align 8
  %572 = load i32, i32* @os_cmddone, align 4
  %573 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %573, i32 0, i32 3
  store i32 %572, i32* %574, align 4
  %575 = load i32, i32* @os_buildsgl, align 4
  %576 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %577 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %576, i32 0, i32 2
  store i32 %575, i32* %577, align 8
  %578 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %579 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %578, i32 0, i32 1
  %580 = load %struct.TYPE_45__*, %struct.TYPE_45__** %579, align 8
  %581 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %582 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %581, i32 0, i32 1
  store %struct.TYPE_45__* %580, %struct.TYPE_45__** %582, align 8
  %583 = load %union.ccb*, %union.ccb** %4, align 8
  %584 = bitcast %union.ccb* %583 to %struct.TYPE_31__*
  %585 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @CAM_SCATTER_VALID, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %672

590:                                              ; preds = %559
  %591 = load %union.ccb*, %union.ccb** %4, align 8
  %592 = bitcast %union.ccb* %591 to %struct.TYPE_30__*
  %593 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %592, i32 0, i32 0
  %594 = load i32*, i32** %593, align 8
  %595 = bitcast i32* %594 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %595, %struct.TYPE_32__** %25, align 8
  %596 = load %union.ccb*, %union.ccb** %4, align 8
  %597 = bitcast %union.ccb* %596 to %struct.TYPE_31__*
  %598 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = load i32, i32* @CAM_SG_LIST_PHYS, align 4
  %601 = and i32 %599, %600
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %607

603:                                              ; preds = %590
  %604 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %605 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %605, i32 0, i32 2
  store i32 1, i32* %606, align 8
  br label %607

607:                                              ; preds = %603, %590
  store i32 0, i32* %24, align 4
  br label %608

608:                                              ; preds = %659, %607
  %609 = load i32, i32* %24, align 4
  %610 = load %union.ccb*, %union.ccb** %4, align 8
  %611 = bitcast %union.ccb* %610 to %struct.TYPE_30__*
  %612 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %611, i32 0, i32 2
  %613 = load i32, i32* %612, align 4
  %614 = icmp slt i32 %609, %613
  br i1 %614, label %615, label %662

615:                                              ; preds = %608
  %616 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %617 = load i32, i32* %24, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %616, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %623 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %622, i32 0, i32 1
  %624 = load %struct.TYPE_45__*, %struct.TYPE_45__** %623, align 8
  %625 = load i32, i32* %24, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %624, i64 %626
  %628 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %627, i32 0, i32 2
  %629 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %628, i32 0, i32 0
  store i32 %621, i32* %629, align 4
  %630 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %631 = load i32, i32* %24, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %630, i64 %632
  %634 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 4
  %636 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %637 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %636, i32 0, i32 1
  %638 = load %struct.TYPE_45__*, %struct.TYPE_45__** %637, align 8
  %639 = load i32, i32* %24, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %638, i64 %640
  %642 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %641, i32 0, i32 1
  store i32 %635, i32* %642, align 4
  %643 = load i32, i32* %24, align 4
  %644 = load %union.ccb*, %union.ccb** %4, align 8
  %645 = bitcast %union.ccb* %644 to %struct.TYPE_30__*
  %646 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %645, i32 0, i32 2
  %647 = load i32, i32* %646, align 4
  %648 = sub nsw i32 %647, 1
  %649 = icmp eq i32 %643, %648
  %650 = zext i1 %649 to i64
  %651 = select i1 %649, i32 1, i32 0
  %652 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %653 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %652, i32 0, i32 1
  %654 = load %struct.TYPE_45__*, %struct.TYPE_45__** %653, align 8
  %655 = load i32, i32* %24, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %654, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %657, i32 0, i32 0
  store i32 %651, i32* %658, align 4
  br label %659

659:                                              ; preds = %615
  %660 = load i32, i32* %24, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %24, align 4
  br label %608

662:                                              ; preds = %608
  %663 = load i32, i32* @hpt_timeout, align 4
  %664 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %665 = load i32, i32* @HPT_OSM_TIMEOUT, align 4
  %666 = call i32 @timeout(i32 %663, %struct.TYPE_37__* %664, i32 %665)
  %667 = load %union.ccb*, %union.ccb** %4, align 8
  %668 = bitcast %union.ccb* %667 to %struct.TYPE_31__*
  %669 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %668, i32 0, i32 4
  store i32 %666, i32* %669, align 8
  %670 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %671 = call i32 @ldm_queue_cmd(%struct.TYPE_37__* %670)
  br label %718

672:                                              ; preds = %559
  %673 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %674 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %673, i32 0, i32 0
  %675 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %674, i32 0, i32 2
  store i32 1, i32* %675, align 8
  %676 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %677 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 4
  %679 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %680 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 8
  %682 = load %union.ccb*, %union.ccb** %4, align 8
  %683 = bitcast %union.ccb* %682 to %struct.TYPE_30__*
  %684 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %683, i32 0, i32 0
  %685 = load i32*, i32** %684, align 8
  %686 = load %union.ccb*, %union.ccb** %4, align 8
  %687 = bitcast %union.ccb* %686 to %struct.TYPE_30__*
  %688 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %687, i32 0, i32 1
  %689 = load i32, i32* %688, align 8
  %690 = load i32, i32* @hpt_io_dmamap_callback, align 4
  %691 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %692 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %693 = call i32 @bus_dmamap_load(i32 %678, i32 %681, i32* %685, i32 %689, i32 %690, %struct.TYPE_37__* %691, i32 %692)
  store i32 %693, i32* %26, align 4
  %694 = load i32, i32* %26, align 4
  %695 = sext i32 %694 to i64
  %696 = inttoptr i64 %695 to i8*
  %697 = call i32 @KdPrint(i8* %696)
  %698 = load i32, i32* %26, align 4
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %717

700:                                              ; preds = %672
  %701 = load i32, i32* %26, align 4
  %702 = load i32, i32* @EINPROGRESS, align 4
  %703 = icmp ne i32 %701, %702
  br i1 %703, label %704, label %717

704:                                              ; preds = %700
  %705 = load i32, i32* %26, align 4
  %706 = call i32 @os_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %705)
  %707 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %708 = call i32 @cmdext_put(%struct.TYPE_35__* %707)
  %709 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %710 = call i32 @ldm_free_cmds(%struct.TYPE_37__* %709)
  %711 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %712 = load %union.ccb*, %union.ccb** %4, align 8
  %713 = bitcast %union.ccb* %712 to %struct.TYPE_31__*
  %714 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %713, i32 0, i32 3
  store i8* %711, i8** %714, align 8
  %715 = load %union.ccb*, %union.ccb** %4, align 8
  %716 = call i32 @xpt_done(%union.ccb* %715)
  br label %717

717:                                              ; preds = %704, %700, %672
  br label %718

718:                                              ; preds = %717, %662
  br label %727

719:                                              ; preds = %114
  %720 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %721 = load %union.ccb*, %union.ccb** %4, align 8
  %722 = bitcast %union.ccb* %721 to %struct.TYPE_31__*
  %723 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %722, i32 0, i32 3
  store i8* %720, i8** %723, align 8
  br label %724

724:                                              ; preds = %719, %377, %317, %270, %240, %185, %118
  %725 = load %union.ccb*, %union.ccb** %4, align 8
  %726 = call i32 @xpt_done(%union.ccb* %725)
  br label %727

727:                                              ; preds = %724, %718, %107, %91
  ret void
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %struct.TYPE_33__* @ldm_find_target(i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32**, i8*, i32) #1

declare dso_local i32 @mIsArray(i32) #1

declare dso_local %struct.TYPE_37__* @ldm_alloc_cmds(i32, i32) #1

declare dso_local %struct.TYPE_35__* @cmdext_get(%struct.TYPE_34__*) #1

declare dso_local i32 @HPT_ASSERT(%struct.TYPE_35__*) #1

declare dso_local i32 @timeout(i32, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @ldm_queue_cmd(%struct.TYPE_37__*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @os_printk(i8*, i32) #1

declare dso_local i32 @cmdext_put(%struct.TYPE_35__*) #1

declare dso_local i32 @ldm_free_cmds(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
