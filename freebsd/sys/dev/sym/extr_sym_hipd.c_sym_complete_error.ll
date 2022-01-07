; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_complete_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_complete_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, i32, i64, i32, i64 }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@DEBUG_RESULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CCB=%lx STAT=%x/%x/%x DEV=%d/%d\0A\00", align 1
@sym_verbose = common dso_local global i64 0, align 8
@HS_COMPLETE = common dso_local global i64 0, align 8
@HS_COMP_ERR = common dso_local global i64 0, align 8
@SYM_CONF_RESIDUAL_SUPPORT = common dso_local global i32 0, align 4
@HF_SENSE = common dso_local global i32 0, align 4
@S_GOOD = common dso_local global i64 0, align 8
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@SYM_SNS_BBUF_LEN = common dso_local global i32 0, align 4
@CAM_AUTOSENSE_FAIL = common dso_local global i32 0, align 4
@HS_SEL_TIMEOUT = common dso_local global i64 0, align 8
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@HS_UNEXPECTED = common dso_local global i64 0, align 8
@CAM_UNEXP_BUSFREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"COMMAND FAILED (%x %x %x).\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@nc_scratcha = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@SYM_DMA_READ = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*)* @sym_complete_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_complete_error(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @SYM_LOCK_ASSERT(i32 %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = icmp ne %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 13
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  br label %311

19:                                               ; preds = %13
  %20 = load i32, i32* @DEBUG_FLAGS, align 4
  %21 = load i32, i32* @DEBUG_TINY, align 4
  %22 = load i32, i32* @DEBUG_RESULT, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = ptrtoint %struct.TYPE_16__* %27 to i64
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, i64, i64, i64, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %31, i64 %34, i32 %37, i32 %40, i32 %43)
  %45 = call i32 @MDELAY(i32 100)
  br label %46

46:                                               ; preds = %26, %19
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 13
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store %struct.ccb_scsiio* %50, %struct.ccb_scsiio** %5, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %46
  %56 = load i64, i64* @sym_verbose, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sym_print_xerr(%struct.TYPE_16__* %59, i64 %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HS_COMPLETE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* @HS_COMP_ERR, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  br label %75

75:                                               ; preds = %74, %46
  %76 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %77 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = call i32 @sym_compute_residual(%struct.TYPE_15__* %78, %struct.TYPE_16__* %79)
  %81 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %82 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @SYM_CONF_RESIDUAL_SUPPORT, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %75
  %86 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %87 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %85, %75
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @HF_SENSE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %193

97:                                               ; preds = %90
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %102 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %104 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %107 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %112 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  store i32 0, i32* %114, align 8
  %115 = load i64, i64* @sym_verbose, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %97
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @sym_print_xerr(%struct.TYPE_16__* %123, i64 %126)
  br label %128

128:                                              ; preds = %122, %117, %97
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HS_COMPLETE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %190

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @S_GOOD, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %190

140:                                              ; preds = %134
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %190

145:                                              ; preds = %140
  %146 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @sym_xerr_cam_status(i32 %146, i64 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %155 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %154, i32 0, i32 4
  %156 = call i32 @bzero(i64* %155, i32 8)
  %157 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %158 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %159 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %157, %160
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %164 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %145
  %168 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %169 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %174 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %178

175:                                              ; preds = %145
  %176 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %177 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %176, i32 0, i32 0
  store i32 0, i32* %177, align 8
  br label %178

178:                                              ; preds = %175, %167
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %183 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %182, i32 0, i32 4
  %184 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %185 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @MIN(i32 %186, i32 %187)
  %189 = call i32 @bcopy(i32 %181, i64* %183, i32 %188)
  br label %192

190:                                              ; preds = %140, %134, %128
  %191 = load i32, i32* @CAM_AUTOSENSE_FAIL, align 4
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %190, %178
  br label %252

193:                                              ; preds = %90
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @HS_COMPLETE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %204 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  %205 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  store i32 %205, i32* %6, align 4
  br label %251

206:                                              ; preds = %193
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @HS_SEL_TIMEOUT, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  store i32 %213, i32* %6, align 4
  br label %250

214:                                              ; preds = %206
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @HS_UNEXPECTED, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i32, i32* @CAM_UNEXP_BUSFREE, align 4
  store i32 %221, i32* %6, align 4
  br label %249

222:                                              ; preds = %214
  %223 = load i64, i64* @sym_verbose, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %222
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = call i32 @PRINT_ADDR(%struct.TYPE_16__* %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = call i32 (i8*, i64, i64, i64, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %230, i64 %233, i64 %236)
  br label %238

238:                                              ; preds = %225, %222
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %243 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %242, i32 0, i32 2
  store i64 %241, i64* %243, align 8
  %244 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @sym_xerr_cam_status(i32 %244, i64 %247)
  store i32 %248, i32* %6, align 4
  br label %249

249:                                              ; preds = %238, %220
  br label %250

250:                                              ; preds = %249, %212
  br label %251

251:                                              ; preds = %250, %199
  br label %252

252:                                              ; preds = %251, %192
  %253 = load i32, i32* @nc_scratcha, align 4
  %254 = call i32 @INL(i32 %253)
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %254, %257
  %259 = sdiv i32 %258, 4
  store i32 %259, i32* %7, align 4
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %261 = load i32, i32* %7, align 4
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 11
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 10
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @sym_dequeue_from_squeue(%struct.TYPE_15__* %260, i32 %261, i32 %264, i32 %267, i32 -1)
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %270 = load i32, i32* @start, align 4
  %271 = call i32 @SCRIPTA_BA(%struct.TYPE_15__* %269, i32 %270)
  %272 = call i32 @OUTL_DSP(i32 %271)
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 7
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %296

277:                                              ; preds = %252
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 7
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @SYM_DMA_READ, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %277
  %290 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %293

291:                                              ; preds = %277
  %292 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %293

293:                                              ; preds = %291, %289
  %294 = phi i32 [ %290, %289 ], [ %292, %291 ]
  %295 = call i32 @bus_dmamap_sync(i32 %280, i32 %283, i32 %294)
  br label %296

296:                                              ; preds = %293, %252
  %297 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %298 = bitcast %struct.ccb_scsiio* %297 to %union.ccb*
  %299 = load i32, i32* %6, align 4
  %300 = call i32 @sym_set_cam_status(%union.ccb* %298, i32 %299)
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 8
  %303 = call i32 @sym_remque(i32* %302)
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 8
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  %308 = call i32 @sym_insque_head(i32* %305, i32* %307)
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %310 = call i32 @sym_flush_comp_queue(%struct.TYPE_15__* %309, i32 0)
  br label %311

311:                                              ; preds = %296, %18
  ret void
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @printf(i8*, i64, i64, i64, ...) #1

declare dso_local i32 @MDELAY(i32) #1

declare dso_local i32 @sym_print_xerr(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @sym_compute_residual(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @sym_xerr_cam_status(i32, i64) #1

declare dso_local i32 @bzero(i64*, i32) #1

declare dso_local i32 @bcopy(i32, i64*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @PRINT_ADDR(%struct.TYPE_16__*) #1

declare dso_local i32 @INL(i32) #1

declare dso_local i32 @sym_dequeue_from_squeue(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @sym_set_cam_status(%union.ccb*, i32) #1

declare dso_local i32 @sym_remque(i32*) #1

declare dso_local i32 @sym_insque_head(i32*, i32*) #1

declare dso_local i32 @sym_flush_comp_queue(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
