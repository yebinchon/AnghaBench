; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_mpt_fetch_disks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_mpt_fetch_disks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_standalone_disk = type { i32, i32, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.periph_match_result }
%struct.periph_match_result = type { i8*, i32, i32 }
%struct.TYPE_9__ = type { %struct.periph_match_pattern }
%struct.periph_match_pattern = type { i32, i32, i32 }
%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32, i64, i64, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@XPT_DEV_MATCH = common dso_local global i32 0, align 4
@DEV_MATCH_PERIPH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"da\00", align 1
@PERIPH_MATCH_PATH = common dso_local global i32 0, align 4
@PERIPH_MATCH_NAME = common dso_local global i32 0, align 4
@xptfd = common dso_local global i32 0, align 4
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_MORE = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_LAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"mpt_fetch_disks got wrong CAM matches\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_fetch_disks(i32 %0, i32* %1, %struct.mpt_standalone_disk** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mpt_standalone_disk**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.mpt_standalone_disk*, align 8
  %10 = alloca %struct.periph_match_pattern*, align 8
  %11 = alloca %struct.periph_match_result*, align 8
  %12 = alloca %struct.cam_device*, align 8
  %13 = alloca %union.ccb, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.mpt_standalone_disk** %2, %struct.mpt_standalone_disk*** %7, align 8
  %19 = call i64 (...) @xpt_open()
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %287

23:                                               ; preds = %3
  %24 = call i32 @fetch_path_id(i32* %14)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %4, align 4
  br label %287

29:                                               ; preds = %23
  store i32 100, i32* %16, align 4
  br label %30

30:                                               ; preds = %142, %29
  %31 = call i32 @bzero(%union.ccb* %13, i32 56)
  %32 = load i32, i32* @XPT_DEV_MATCH, align 4
  %33 = bitcast %union.ccb* %13 to %struct.TYPE_10__*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  store i64 %38, i64* %15, align 8
  %39 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %15, align 8
  %42 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %15, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i8* @calloc(i32 1, i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_13__*
  %48 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 5
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %49, align 8
  store i64 4, i64* %15, align 8
  %50 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load i64, i64* %15, align 8
  %53 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %15, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i8* @calloc(i32 1, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_13__*
  %59 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  %61 = load i64, i64* @DEV_MATCH_PERIPH, align 8
  %62 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i64 %61, i64* %66, align 8
  %67 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store %struct.periph_match_pattern* %72, %struct.periph_match_pattern** %10, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %75 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %77 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %78, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @PERIPH_MATCH_PATH, align 4
  %81 = load i32, i32* @PERIPH_MATCH_NAME, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %84 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @xptfd, align 4
  %86 = load i32, i32* @CAMIOCOMMAND, align 4
  %87 = call i64 @ioctl(i32 %85, i32 %86, %union.ccb* %13)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %30
  %90 = load i32, i32* @errno, align 4
  store i32 %90, i32* %17, align 4
  %91 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = call i32 @free(%struct.TYPE_13__* %93)
  %95 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = call i32 @free(%struct.TYPE_13__* %97)
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %4, align 4
  br label %287

100:                                              ; preds = %30
  %101 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 6
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = call i32 @free(%struct.TYPE_13__* %103)
  %105 = bitcast %union.ccb* %13 to %struct.TYPE_10__*
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CAM_STATUS_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @CAM_REQ_CMP, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %100
  %113 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 5
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = call i32 @free(%struct.TYPE_13__* %115)
  %117 = load i32, i32* @EIO, align 4
  store i32 %117, i32* %4, align 4
  br label %287

118:                                              ; preds = %100
  %119 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CAM_DEV_MATCH_MORE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = call i32 @free(%struct.TYPE_13__* %127)
  br label %142

129:                                              ; preds = %118
  %130 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @CAM_DEV_MATCH_LAST, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = call i32 @free(%struct.TYPE_13__* %138)
  %140 = load i32, i32* @EIO, align 4
  store i32 %140, i32* %4, align 4
  br label %287

141:                                              ; preds = %129
  br label %145

142:                                              ; preds = %124
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 100
  store i32 %144, i32* %16, align 4
  br label %30

145:                                              ; preds = %141
  %146 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = call i32 @free(%struct.TYPE_13__* %153)
  %155 = load i32*, i32** %6, align 8
  store i32 0, i32* %155, align 4
  %156 = load %struct.mpt_standalone_disk**, %struct.mpt_standalone_disk*** %7, align 8
  store %struct.mpt_standalone_disk* null, %struct.mpt_standalone_disk** %156, align 8
  store i32 0, i32* %4, align 4
  br label %287

157:                                              ; preds = %145
  store i64 0, i64* %18, align 8
  br label %158

158:                                              ; preds = %182, %157
  %159 = load i64, i64* %18, align 8
  %160 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %159, %162
  br i1 %163, label %164, label %185

164:                                              ; preds = %158
  %165 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load i64, i64* %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @DEV_MATCH_PERIPH, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %164
  %175 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %176 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = call i32 @free(%struct.TYPE_13__* %178)
  %180 = load i32, i32* @EIO, align 4
  store i32 %180, i32* %4, align 4
  br label %287

181:                                              ; preds = %164
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %18, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %18, align 8
  br label %158

185:                                              ; preds = %158
  %186 = load i32, i32* %5, align 4
  %187 = call %struct.TYPE_13__* @mpt_read_ioc_page(i32 %186, i32 2, i32* null)
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %8, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %189 = icmp eq %struct.TYPE_13__* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* @errno, align 4
  store i32 %191, i32* %4, align 4
  br label %287

192:                                              ; preds = %185
  %193 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i8* @calloc(i32 %196, i32 16)
  %198 = bitcast i8* %197 to %struct.mpt_standalone_disk*
  store %struct.mpt_standalone_disk* %198, %struct.mpt_standalone_disk** %9, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %18, align 8
  br label %199

199:                                              ; preds = %273, %192
  %200 = load i64, i64* %18, align 8
  %201 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ult i64 %200, %203
  br i1 %204, label %205, label %276

205:                                              ; preds = %199
  %206 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load i64, i64* %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  store %struct.periph_match_result* %212, %struct.periph_match_result** %11, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %214 = load %struct.periph_match_result*, %struct.periph_match_result** %11, align 8
  %215 = call i64 @periph_is_volume(%struct.TYPE_13__* %213, %struct.periph_match_result* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %205
  br label %273

218:                                              ; preds = %205
  %219 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %9, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %219, i64 %221
  %223 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %222, i32 0, i32 2
  store i64 0, i64* %223, align 8
  %224 = load %struct.periph_match_result*, %struct.periph_match_result** %11, align 8
  %225 = getelementptr inbounds %struct.periph_match_result, %struct.periph_match_result* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %9, align 8
  %228 = load i32, i32* %16, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %227, i64 %229
  %231 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %230, i32 0, i32 1
  store i32 %226, i32* %231, align 4
  %232 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %9, align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %232, i64 %234
  %236 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.periph_match_result*, %struct.periph_match_result** %11, align 8
  %239 = getelementptr inbounds %struct.periph_match_result, %struct.periph_match_result* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.periph_match_result*, %struct.periph_match_result** %11, align 8
  %242 = getelementptr inbounds %struct.periph_match_result, %struct.periph_match_result* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %237, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %240, i32 %243)
  %245 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %9, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %245, i64 %247
  %249 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @O_RDWR, align 4
  %252 = call %struct.cam_device* @cam_open_device(i32 %250, i32 %251)
  store %struct.cam_device* %252, %struct.cam_device** %12, align 8
  %253 = load %struct.cam_device*, %struct.cam_device** %12, align 8
  %254 = icmp ne %struct.cam_device* %253, null
  br i1 %254, label %255, label %270

255:                                              ; preds = %218
  %256 = load %struct.cam_device*, %struct.cam_device** %12, align 8
  %257 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %9, align 8
  %258 = load i32, i32* %16, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %257, i64 %259
  %261 = call i32 @fetch_scsi_capacity(%struct.cam_device* %256, %struct.mpt_standalone_disk* %260)
  %262 = load %struct.cam_device*, %struct.cam_device** %12, align 8
  %263 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %9, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %263, i64 %265
  %267 = call i32 @fetch_scsi_inquiry(%struct.cam_device* %262, %struct.mpt_standalone_disk* %266)
  %268 = load %struct.cam_device*, %struct.cam_device** %12, align 8
  %269 = call i32 @cam_close_device(%struct.cam_device* %268)
  br label %270

270:                                              ; preds = %255, %218
  %271 = load i32, i32* %16, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %16, align 4
  br label %273

273:                                              ; preds = %270, %217
  %274 = load i64, i64* %18, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* %18, align 8
  br label %199

276:                                              ; preds = %199
  %277 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 5
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %278, align 8
  %280 = call i32 @free(%struct.TYPE_13__* %279)
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %282 = call i32 @free(%struct.TYPE_13__* %281)
  %283 = load i32, i32* %16, align 4
  %284 = load i32*, i32** %6, align 8
  store i32 %283, i32* %284, align 4
  %285 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %9, align 8
  %286 = load %struct.mpt_standalone_disk**, %struct.mpt_standalone_disk*** %7, align 8
  store %struct.mpt_standalone_disk* %285, %struct.mpt_standalone_disk** %286, align 8
  store i32 0, i32* %4, align 4
  br label %287

287:                                              ; preds = %276, %190, %174, %150, %135, %112, %89, %27, %21
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i64 @xpt_open(...) #1

declare dso_local i32 @fetch_path_id(i32*) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local %struct.TYPE_13__* @mpt_read_ioc_page(i32, i32, i32*) #1

declare dso_local i64 @periph_is_volume(%struct.TYPE_13__*, %struct.periph_match_result*) #1

declare dso_local %struct.cam_device* @cam_open_device(i32, i32) #1

declare dso_local i32 @fetch_scsi_capacity(%struct.cam_device*, %struct.mpt_standalone_disk*) #1

declare dso_local i32 @fetch_scsi_inquiry(%struct.cam_device*, %struct.mpt_standalone_disk*) #1

declare dso_local i32 @cam_close_device(%struct.cam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
