; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feed_matrix_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feed_matrix_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feed_matrix_info = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.pcmchan_matrix = type { i64, i64, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@SND_CHN_MIN = common dso_local global i64 0, align 8
@SND_CHN_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SND_CHN_MATRIX_BEGIN = common dso_local global i64 0, align 8
@SND_CHN_MATRIX_END = common dso_local global i64 0, align 8
@SND_CHN_MATRIX_1_0 = common dso_local global i64 0, align 8
@SND_CHN_T_MASK_FL = common dso_local global i64 0, align 8
@SND_CHN_T_MASK_FC = common dso_local global i32 0, align 4
@SND_CHN_T_MASK_FR = common dso_local global i64 0, align 8
@SND_CHN_T_BEGIN = common dso_local global i64 0, align 8
@SND_CHN_T_END = common dso_local global i64 0, align 8
@SND_CHN_T_MAX = common dso_local global i64 0, align 8
@SND_CHN_T_NULL = common dso_local global i32 0, align 4
@SND_CHN_T_EOF = common dso_local global i32 0, align 4
@SND_CHN_T_STEP = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Total: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d: [\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"] attn: (x * %d) >> %d\0A\00", align 1
@FEEDMATRIX_ATTN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.feed_matrix_info*, %struct.pcmchan_matrix*, %struct.pcmchan_matrix*)* @feed_matrix_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_matrix_setup(%struct.feed_matrix_info* %0, %struct.pcmchan_matrix* %1, %struct.pcmchan_matrix* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.feed_matrix_info*, align 8
  %6 = alloca %struct.pcmchan_matrix*, align 8
  %7 = alloca %struct.pcmchan_matrix*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.feed_matrix_info* %0, %struct.feed_matrix_info** %5, align 8
  store %struct.pcmchan_matrix* %1, %struct.pcmchan_matrix** %6, align 8
  store %struct.pcmchan_matrix* %2, %struct.pcmchan_matrix** %7, align 8
  %15 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %16 = icmp eq %struct.feed_matrix_info* %15, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %3
  %18 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %19 = icmp eq %struct.pcmchan_matrix* %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %17
  %21 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %22 = icmp eq %struct.pcmchan_matrix* %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %20
  %24 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %25 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @AFMT_CHANNEL(i32 %26)
  %28 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %29 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %65, label %32

32:                                               ; preds = %23
  %33 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %34 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @AFMT_CHANNEL(i32 %35)
  %37 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %38 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %32
  %42 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %43 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SND_CHN_MIN, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %41
  %48 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %49 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SND_CHN_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %55 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SND_CHN_MIN, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %61 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SND_CHN_MAX, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %53, %47, %41, %32, %23, %20, %17, %3
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %4, align 4
  br label %375

67:                                               ; preds = %59
  %68 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %69 = call i32 @feed_matrix_reset(%struct.feed_matrix_info* %68)
  %70 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %71 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %74 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %79 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SND_CHN_MATRIX_BEGIN, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %77
  %84 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %85 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SND_CHN_MATRIX_END, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %375

90:                                               ; preds = %83, %77, %67
  %91 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %92 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SND_CHN_MATRIX_1_0, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %98 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SND_CHN_MATRIX_1_0, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i64, i64* @SND_CHN_T_MASK_FL, align 8
  store i64 %103, i64* %11, align 8
  br label %119

104:                                              ; preds = %96
  %105 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %106 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SND_CHN_T_MASK_FC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* @SND_CHN_T_MASK_FC, align 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %11, align 8
  br label %118

114:                                              ; preds = %104
  %115 = load i64, i64* @SND_CHN_T_MASK_FL, align 8
  %116 = load i64, i64* @SND_CHN_T_MASK_FR, align 8
  %117 = or i64 %115, %116
  store i64 %117, i64* %11, align 8
  br label %118

118:                                              ; preds = %114, %111
  br label %119

119:                                              ; preds = %118, %102
  br label %125

120:                                              ; preds = %90
  %121 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %122 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %120, %119
  %126 = load i64, i64* @SND_CHN_T_BEGIN, align 8
  store i64 %126, i64* %10, align 8
  br label %127

127:                                              ; preds = %275, %125
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* @SND_CHN_T_END, align 8
  %130 = icmp ule i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %133 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %132, i32 0, i32 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SND_CHN_T_MAX, align 8
  %140 = icmp ne i64 %138, %139
  br label %141

141:                                              ; preds = %131, %127
  %142 = phi i1 [ false, %127 ], [ %140, %131 ]
  br i1 %142, label %143, label %279

143:                                              ; preds = %141
  %144 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %145 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %144, i32 0, i32 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %11, align 8
  %152 = and i64 %150, %151
  store i64 %152, i64* %12, align 8
  %153 = load i64, i64* %12, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %143
  %156 = load i32, i32* @SND_CHN_T_NULL, align 4
  %157 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %158 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i64, i64* %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %156, i32* %164, align 4
  br label %275

165:                                              ; preds = %143
  store i64 0, i64* %9, align 8
  %166 = load i64, i64* @SND_CHN_T_BEGIN, align 8
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %234, %165
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @SND_CHN_T_END, align 8
  %170 = icmp ule i64 %168, %169
  br i1 %170, label %171, label %238

171:                                              ; preds = %167
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %8, align 8
  %174 = trunc i64 %173 to i32
  %175 = shl i32 1, %174
  %176 = sext i32 %175 to i64
  %177 = and i64 %172, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %233

179:                                              ; preds = %171
  %180 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %181 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %8, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %220

187:                                              ; preds = %179
  %188 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %189 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* %8, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %195 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = icmp slt i32 %193, %197
  br i1 %198, label %199, label %220

199:                                              ; preds = %187
  %200 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %201 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* %8, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %207 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %205, %208
  %210 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %211 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %210, i32 0, i32 1
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load i64, i64* %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* %9, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %9, align 8
  %219 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 %209, i32* %219, align 4
  br label %232

220:                                              ; preds = %187, %179
  %221 = load i32, i32* @SND_CHN_T_EOF, align 4
  %222 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %223 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %222, i32 0, i32 1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i64, i64* %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* %9, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %9, align 8
  %231 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32 %221, i32* %231, align 4
  br label %238

232:                                              ; preds = %199
  br label %233

233:                                              ; preds = %232, %171
  br label %234

234:                                              ; preds = %233
  %235 = load i64, i64* @SND_CHN_T_STEP, align 8
  %236 = load i64, i64* %8, align 8
  %237 = add i64 %236, %235
  store i64 %237, i64* %8, align 8
  br label %167

238:                                              ; preds = %220, %167
  %239 = load i64, i64* %9, align 8
  %240 = icmp ugt i64 %239, 1
  br i1 %240, label %241, label %274

241:                                              ; preds = %238
  %242 = load i64, i64* %9, align 8
  %243 = sub i64 32911, %242
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %13, align 4
  store i32 16, i32* %14, align 4
  br label %245

245:                                              ; preds = %254, %241
  %246 = load i32, i32* %13, align 4
  %247 = and i32 %246, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i32, i32* %14, align 4
  %251 = icmp sgt i32 %250, 0
  br label %252

252:                                              ; preds = %249, %245
  %253 = phi i1 [ false, %245 ], [ %251, %249 ]
  br i1 %253, label %254, label %259

254:                                              ; preds = %252
  %255 = load i32, i32* %13, align 4
  %256 = ashr i32 %255, 1
  store i32 %256, i32* %13, align 4
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %14, align 4
  br label %245

259:                                              ; preds = %252
  %260 = load i32, i32* %13, align 4
  %261 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %262 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %261, i32 0, i32 1
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = load i64, i64* %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  store i32 %260, i32* %266, align 8
  %267 = load i32, i32* %14, align 4
  %268 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %269 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %268, i32 0, i32 1
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = load i64, i64* %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 2
  store i32 %267, i32* %273, align 4
  br label %274

274:                                              ; preds = %259, %238
  br label %275

275:                                              ; preds = %274, %155
  %276 = load i64, i64* @SND_CHN_T_STEP, align 8
  %277 = load i64, i64* %10, align 8
  %278 = add i64 %277, %276
  store i64 %278, i64* %10, align 8
  br label %127

279:                                              ; preds = %141
  %280 = load i32, i32* @stderr, align 4
  %281 = load i64, i64* %10, align 8
  %282 = call i32 (i32, i8*, ...) @fprintf(i32 %280, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %281)
  store i64 0, i64* %8, align 8
  br label %283

283:                                              ; preds = %371, %279
  %284 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %285 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %284, i32 0, i32 1
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = load i64, i64* %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @SND_CHN_T_EOF, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %374

295:                                              ; preds = %283
  %296 = load i32, i32* @stderr, align 4
  %297 = load i64, i64* %8, align 8
  %298 = call i32 (i32, i8*, ...) @fprintf(i32 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %297)
  store i64 0, i64* %9, align 8
  br label %299

299:                                              ; preds = %351, %295
  %300 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %301 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %300, i32 0, i32 1
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = load i64, i64* %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* %9, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @SND_CHN_T_EOF, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %354

312:                                              ; preds = %299
  %313 = load i64, i64* %9, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load i32, i32* @stderr, align 4
  %317 = call i32 (i32, i8*, ...) @fprintf(i32 %316, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %318

318:                                              ; preds = %315, %312
  %319 = load i32, i32* @stderr, align 4
  %320 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %321 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %320, i32 0, i32 1
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = load i64, i64* %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = load i64, i64* %9, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @SND_CHN_T_NULL, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %318
  br label %348

333:                                              ; preds = %318
  %334 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %335 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %334, i32 0, i32 1
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %335, align 8
  %337 = load i64, i64* %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load i64, i64* %9, align 8
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %345 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = sdiv i32 %343, %346
  br label %348

348:                                              ; preds = %333, %332
  %349 = phi i32 [ -1, %332 ], [ %347, %333 ]
  %350 = call i32 (i32, i8*, ...) @fprintf(i32 %319, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %349)
  br label %351

351:                                              ; preds = %348
  %352 = load i64, i64* %9, align 8
  %353 = add i64 %352, 1
  store i64 %353, i64* %9, align 8
  br label %299

354:                                              ; preds = %299
  %355 = load i32, i32* @stderr, align 4
  %356 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %357 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %356, i32 0, i32 1
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %357, align 8
  %359 = load i64, i64* %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.feed_matrix_info*, %struct.feed_matrix_info** %5, align 8
  %364 = getelementptr inbounds %struct.feed_matrix_info, %struct.feed_matrix_info* %363, i32 0, i32 1
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %364, align 8
  %366 = load i64, i64* %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = call i32 (i32, i8*, ...) @fprintf(i32 %355, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %362, i32 %369)
  br label %371

371:                                              ; preds = %354
  %372 = load i64, i64* %8, align 8
  %373 = add i64 %372, 1
  store i64 %373, i64* %8, align 8
  br label %283

374:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %375

375:                                              ; preds = %374, %89, %65
  %376 = load i32, i32* %4, align 4
  ret i32 %376
}

declare dso_local i64 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @feed_matrix_reset(%struct.feed_matrix_info*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
