; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_hpt_scsi_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c_hpt_scsi_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32 }
%union.ccb = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i64, i64, i8* }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_25__, i32, i32, i32, %struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, %union.ccb* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_27__ = type { i32*, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32*, i32* }

@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"hpt_scsi_io: ccb %x id %d lun %d cdb %x-%x-%x\00", align 1
@osm_max_targets = common dso_local global i64 0, align 8
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_TID_INVALID = common dso_local global i8* null, align 8
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"HPT     \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DISK 0_0        \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"4.00\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to allocate command!\00", align 1
@CAM_BUSY = common dso_local global i8* null, align 8
@os_cmddone = common dso_local global i32 0, align 4
@os_buildsgl = common dso_local global i32 0, align 4
@hpt_io_dmamap_callback = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"bus_dmamap_load return %d\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"bus_dmamap_load error %d\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %union.ccb*)* @hpt_scsi_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_scsi_io(%struct.TYPE_30__* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_28__*
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CAM_CDB_POINTER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_27__*
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  br label %39

33:                                               ; preds = %2
  %34 = load %union.ccb*, %union.ccb** %4, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_27__*
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %union.ccb*, %union.ccb** %4, align 8
  %41 = load %union.ccb*, %union.ccb** %4, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_28__*
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %union.ccb*, %union.ccb** %4, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_28__*
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @KdPrint(i8* %59)
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_28__*
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %39
  %67 = load %union.ccb*, %union.ccb** %4, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_28__*
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @osm_max_targets, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %66
  %74 = load %union.ccb*, %union.ccb** %4, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_28__*
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CAM_CDB_PHYS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73, %66, %39
  %82 = load i8*, i8** @CAM_TID_INVALID, align 8
  %83 = load %union.ccb*, %union.ccb** %4, align 8
  %84 = bitcast %union.ccb* %83 to %struct.TYPE_28__*
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  %86 = load %union.ccb*, %union.ccb** %4, align 8
  %87 = call i32 @xpt_done(%union.ccb* %86)
  br label %495

88:                                               ; preds = %73
  %89 = load i32, i32* %5, align 4
  %90 = load %union.ccb*, %union.ccb** %4, align 8
  %91 = bitcast %union.ccb* %90 to %struct.TYPE_28__*
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call %struct.TYPE_29__* @ldm_find_target(i32 %89, i64 %93)
  store %struct.TYPE_29__* %94, %struct.TYPE_29__** %6, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %96 = icmp ne %struct.TYPE_29__* %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %88
  %98 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %99 = load %union.ccb*, %union.ccb** %4, align 8
  %100 = bitcast %union.ccb* %99 to %struct.TYPE_28__*
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 3
  store i8* %98, i8** %101, align 8
  %102 = load %union.ccb*, %union.ccb** %4, align 8
  %103 = call i32 @xpt_done(%union.ccb* %102)
  br label %495

104:                                              ; preds = %88
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %487 [
    i32 131, label %108
    i32 133, label %108
    i32 132, label %108
    i32 139, label %113
    i32 135, label %183
    i32 134, label %227
    i32 136, label %279
    i32 138, label %279
    i32 137, label %279
    i32 128, label %279
    i32 130, label %279
    i32 129, label %279
    i32 19, label %279
    i32 47, label %279
  ]

108:                                              ; preds = %104, %104, %104
  %109 = load i8*, i8** @CAM_REQ_CMP, align 8
  %110 = load %union.ccb*, %union.ccb** %4, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_28__*
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  br label %492

113:                                              ; preds = %104
  %114 = load %union.ccb*, %union.ccb** %4, align 8
  %115 = bitcast %union.ccb* %114 to %struct.TYPE_27__*
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %union.ccb*, %union.ccb** %4, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_27__*
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @memset(i32* %117, i32 0, i32 %121)
  %123 = load %union.ccb*, %union.ccb** %4, align 8
  %124 = bitcast %union.ccb* %123 to %struct.TYPE_27__*
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = bitcast i32* %126 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %10, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  store i32 31, i32* %129, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = call i32 @memcpy(i32** %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 3
  %137 = call i32 @memcpy(i32** %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %140, 10
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %113
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = srem i32 %146, 100
  %148 = sdiv i32 %147, 10
  %149 = add nsw i32 %148, 48
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 7
  store i32 %149, i32* %153, align 4
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %156, 100
  %158 = srem i32 %157, 10
  %159 = add nsw i32 %158, 48
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 8
  store i32 %159, i32* %163, align 4
  br label %175

164:                                              ; preds = %113
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = srem i32 %167, 100
  %169 = srem i32 %168, 10
  %170 = add nsw i32 %169, 48
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 7
  store i32 %170, i32* %174, align 4
  br label %175

175:                                              ; preds = %164, %143
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 4
  %178 = call i32 @memcpy(i32** %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %179 = load i8*, i8** @CAM_REQ_CMP, align 8
  %180 = load %union.ccb*, %union.ccb** %4, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_28__*
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 3
  store i8* %179, i8** %182, align 8
  br label %492

183:                                              ; preds = %104
  %184 = load %union.ccb*, %union.ccb** %4, align 8
  %185 = bitcast %union.ccb* %184 to %struct.TYPE_27__*
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  store i32* %187, i32** %11, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp ugt i64 %191, 4294967295
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  store i32 -1, i32* %12, align 4
  br label %199

194:                                              ; preds = %183
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %194, %193
  %200 = load i32, i32* %12, align 4
  %201 = ashr i32 %200, 24
  %202 = load i32*, i32** %11, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %12, align 4
  %205 = ashr i32 %204, 16
  %206 = load i32*, i32** %11, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %12, align 4
  %209 = ashr i32 %208, 8
  %210 = load i32*, i32** %11, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load i32*, i32** %11, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  store i32 %212, i32* %214, align 4
  %215 = load i32*, i32** %11, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 4
  store i32 0, i32* %216, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 5
  store i32 0, i32* %218, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 6
  store i32 2, i32* %220, align 4
  %221 = load i32*, i32** %11, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 7
  store i32 0, i32* %222, align 4
  %223 = load i8*, i8** @CAM_REQ_CMP, align 8
  %224 = load %union.ccb*, %union.ccb** %4, align 8
  %225 = bitcast %union.ccb* %224 to %struct.TYPE_28__*
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 3
  store i8* %223, i8** %226, align 8
  br label %492

227:                                              ; preds = %104
  %228 = load %union.ccb*, %union.ccb** %4, align 8
  %229 = bitcast %union.ccb* %228 to %struct.TYPE_27__*
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  store i32* %231, i32** %13, align 8
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %234, 1
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %14, align 4
  %237 = ashr i32 %236, 56
  %238 = load i32*, i32** %13, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %14, align 4
  %241 = ashr i32 %240, 48
  %242 = load i32*, i32** %13, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %14, align 4
  %245 = ashr i32 %244, 40
  %246 = load i32*, i32** %13, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %14, align 4
  %249 = ashr i32 %248, 32
  %250 = load i32*, i32** %13, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 3
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %14, align 4
  %253 = ashr i32 %252, 24
  %254 = load i32*, i32** %13, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 4
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %14, align 4
  %257 = ashr i32 %256, 16
  %258 = load i32*, i32** %13, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 5
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %14, align 4
  %261 = ashr i32 %260, 8
  %262 = load i32*, i32** %13, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 6
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %14, align 4
  %265 = load i32*, i32** %13, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 7
  store i32 %264, i32* %266, align 4
  %267 = load i32*, i32** %13, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 8
  store i32 0, i32* %268, align 4
  %269 = load i32*, i32** %13, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 9
  store i32 0, i32* %270, align 4
  %271 = load i32*, i32** %13, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 10
  store i32 2, i32* %272, align 4
  %273 = load i32*, i32** %13, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 11
  store i32 0, i32* %274, align 4
  %275 = load i8*, i8** @CAM_REQ_CMP, align 8
  %276 = load %union.ccb*, %union.ccb** %4, align 8
  %277 = bitcast %union.ccb* %276 to %struct.TYPE_28__*
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 3
  store i8* %275, i8** %278, align 8
  br label %492

279:                                              ; preds = %104, %104, %104, %104, %104, %104, %104, %104
  %280 = load i32, i32* %5, align 4
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call %struct.TYPE_22__* @ldm_alloc_cmds(i32 %280, i32 %283)
  store %struct.TYPE_22__* %284, %struct.TYPE_22__** %7, align 8
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %286 = icmp ne %struct.TYPE_22__* %285, null
  br i1 %286, label %293, label %287

287:                                              ; preds = %279
  %288 = call i32 @KdPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %289 = load i8*, i8** @CAM_BUSY, align 8
  %290 = load %union.ccb*, %union.ccb** %4, align 8
  %291 = bitcast %union.ccb* %290 to %struct.TYPE_28__*
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 3
  store i8* %289, i8** %292, align 8
  br label %492

293:                                              ; preds = %279
  %294 = load i32*, i32** %9, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  switch i32 %296, label %378 [
    i32 136, label %297
    i32 128, label %297
    i32 19, label %297
    i32 137, label %322
    i32 129, label %322
  ]

297:                                              ; preds = %293, %293, %293
  %298 = load i32*, i32** %9, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = shl i32 %300, 16
  %302 = load i32*, i32** %9, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  %304 = load i32, i32* %303, align 4
  %305 = shl i32 %304, 8
  %306 = or i32 %301, %305
  %307 = load i32*, i32** %9, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 3
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %306, %309
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 6
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 0
  store i32 %310, i32* %314, align 8
  %315 = load i32*, i32** %9, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 4
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 6
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 1
  store i32 %317, i32* %321, align 4
  br label %413

322:                                              ; preds = %293, %293
  %323 = load i32*, i32** %9, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 2
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %325, 56
  %327 = load i32*, i32** %9, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 3
  %329 = load i32, i32* %328, align 4
  %330 = shl i32 %329, 48
  %331 = or i32 %326, %330
  %332 = load i32*, i32** %9, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 4
  %334 = load i32, i32* %333, align 4
  %335 = shl i32 %334, 40
  %336 = or i32 %331, %335
  %337 = load i32*, i32** %9, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 5
  %339 = load i32, i32* %338, align 4
  %340 = shl i32 %339, 32
  %341 = or i32 %336, %340
  %342 = load i32*, i32** %9, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 6
  %344 = load i32, i32* %343, align 4
  %345 = shl i32 %344, 24
  %346 = or i32 %341, %345
  %347 = load i32*, i32** %9, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 7
  %349 = load i32, i32* %348, align 4
  %350 = shl i32 %349, 16
  %351 = or i32 %346, %350
  %352 = load i32*, i32** %9, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 8
  %354 = load i32, i32* %353, align 4
  %355 = shl i32 %354, 8
  %356 = or i32 %351, %355
  %357 = load i32*, i32** %9, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 9
  %359 = load i32, i32* %358, align 4
  %360 = or i32 %356, %359
  store i32 %360, i32* %16, align 4
  %361 = load i32, i32* %16, align 4
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 6
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %364, i32 0, i32 0
  store i32 %361, i32* %365, align 8
  %366 = load i32*, i32** %9, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 13
  %368 = load i32, i32* %367, align 4
  %369 = load i32*, i32** %9, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 12
  %371 = load i32, i32* %370, align 4
  %372 = shl i32 %371, 8
  %373 = or i32 %368, %372
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 6
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 1
  store i32 %373, i32* %377, align 4
  br label %413

378:                                              ; preds = %293
  %379 = load i32*, i32** %9, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 5
  %381 = load i32, i32* %380, align 4
  %382 = load i32*, i32** %9, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 4
  %384 = load i32, i32* %383, align 4
  %385 = shl i32 %384, 8
  %386 = or i32 %381, %385
  %387 = load i32*, i32** %9, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 3
  %389 = load i32, i32* %388, align 4
  %390 = shl i32 %389, 16
  %391 = or i32 %386, %390
  %392 = load i32*, i32** %9, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 2
  %394 = load i32, i32* %393, align 4
  %395 = shl i32 %394, 24
  %396 = or i32 %391, %395
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 6
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 0
  store i32 %396, i32* %400, align 8
  %401 = load i32*, i32** %9, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 8
  %403 = load i32, i32* %402, align 4
  %404 = load i32*, i32** %9, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 7
  %406 = load i32, i32* %405, align 4
  %407 = shl i32 %406, 8
  %408 = or i32 %403, %407
  %409 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %409, i32 0, i32 6
  %411 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 1
  store i32 %408, i32* %412, align 4
  br label %413

413:                                              ; preds = %378, %322, %297
  %414 = load i32*, i32** %9, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 0
  %416 = load i32, i32* %415, align 4
  switch i32 %416, label %425 [
    i32 136, label %417
    i32 138, label %417
    i32 137, label %417
    i32 128, label %421
    i32 130, label %421
    i32 129, label %421
  ]

417:                                              ; preds = %413, %413, %413
  %418 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %419, i32 0, i32 0
  store i32 1, i32* %420, align 8
  br label %425

421:                                              ; preds = %413, %413, %413
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %423, i32 0, i32 1
  store i32 1, i32* %424, align 4
  br label %425

425:                                              ; preds = %413, %421, %417
  %426 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %427 = call %struct.TYPE_31__* @cmdext_get(%struct.TYPE_30__* %426)
  store %struct.TYPE_31__* %427, %struct.TYPE_31__** %8, align 8
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 5
  store %struct.TYPE_31__* %427, %struct.TYPE_31__** %429, align 8
  %430 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %431 = call i32 @HPT_ASSERT(%struct.TYPE_31__* %430)
  %432 = load %union.ccb*, %union.ccb** %4, align 8
  %433 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %433, i32 0, i32 2
  store %union.ccb* %432, %union.ccb** %434, align 8
  %435 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %436 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 4
  store %struct.TYPE_29__* %435, %struct.TYPE_29__** %437, align 8
  %438 = load i32, i32* @os_cmddone, align 4
  %439 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %439, i32 0, i32 3
  store i32 %438, i32* %440, align 4
  %441 = load i32, i32* @os_buildsgl, align 4
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 2
  store i32 %441, i32* %443, align 8
  %444 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 1
  store i32 %446, i32* %448, align 4
  %449 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %450, i32 0, i32 2
  store i32 1, i32* %451, align 8
  %452 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load %union.ccb*, %union.ccb** %4, align 8
  %459 = load i32, i32* @hpt_io_dmamap_callback, align 4
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %461 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %462 = call i32 @bus_dmamap_load_ccb(i32 %454, i32 %457, %union.ccb* %458, i32 %459, %struct.TYPE_22__* %460, i32 %461)
  store i32 %462, i32* %15, align 4
  %463 = load i32, i32* %15, align 4
  %464 = sext i32 %463 to i64
  %465 = inttoptr i64 %464 to i8*
  %466 = call i32 @KdPrint(i8* %465)
  %467 = load i32, i32* %15, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %486

469:                                              ; preds = %425
  %470 = load i32, i32* %15, align 4
  %471 = load i32, i32* @EINPROGRESS, align 4
  %472 = icmp ne i32 %470, %471
  br i1 %472, label %473, label %486

473:                                              ; preds = %469
  %474 = load i32, i32* %15, align 4
  %475 = call i32 @os_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %474)
  %476 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %477 = call i32 @cmdext_put(%struct.TYPE_31__* %476)
  %478 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %479 = call i32 @ldm_free_cmds(%struct.TYPE_22__* %478)
  %480 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %481 = load %union.ccb*, %union.ccb** %4, align 8
  %482 = bitcast %union.ccb* %481 to %struct.TYPE_28__*
  %483 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %482, i32 0, i32 3
  store i8* %480, i8** %483, align 8
  %484 = load %union.ccb*, %union.ccb** %4, align 8
  %485 = call i32 @xpt_done(%union.ccb* %484)
  br label %486

486:                                              ; preds = %473, %469, %425
  br label %495

487:                                              ; preds = %104
  %488 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %489 = load %union.ccb*, %union.ccb** %4, align 8
  %490 = bitcast %union.ccb* %489 to %struct.TYPE_28__*
  %491 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %490, i32 0, i32 3
  store i8* %488, i8** %491, align 8
  br label %492

492:                                              ; preds = %487, %287, %227, %199, %175, %108
  %493 = load %union.ccb*, %union.ccb** %4, align 8
  %494 = call i32 @xpt_done(%union.ccb* %493)
  br label %495

495:                                              ; preds = %492, %486, %97, %81
  ret void
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %struct.TYPE_29__* @ldm_find_target(i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32**, i8*, i32) #1

declare dso_local %struct.TYPE_22__* @ldm_alloc_cmds(i32, i32) #1

declare dso_local %struct.TYPE_31__* @cmdext_get(%struct.TYPE_30__*) #1

declare dso_local i32 @HPT_ASSERT(%struct.TYPE_31__*) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @os_printk(i8*, i32) #1

declare dso_local i32 @cmdext_put(%struct.TYPE_31__*) #1

declare dso_local i32 @ldm_free_cmds(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
