; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64*, i64, i64 }

@SPROM_OPCODE_EOF = common dso_local global i64 0, align 8
@SPROM_OP_BIND_SKIP_IN_MASK = common dso_local global i64 0, align 8
@SPROM_OP_BIND_SKIP_IN_SHIFT = common dso_local global i64 0, align 8
@SPROM_OP_BIND_SKIP_IN_SIGN = common dso_local global i64 0, align 8
@SPROM_OP_BIND_SKIP_OUT_MASK = common dso_local global i64 0, align 8
@SPROM_OP_BIND_SKIP_OUT_SHIFT = common dso_local global i64 0, align 8
@SPROM_OP_REV_START_MASK = common dso_local global i64 0, align 8
@SPROM_OP_REV_START_SHIFT = common dso_local global i64 0, align 8
@SPROM_OP_REV_END_MASK = common dso_local global i64 0, align 8
@SPROM_OP_REV_END_SHIFT = common dso_local global i64 0, align 8
@SPROM_OP_DATA_I8 = common dso_local global i64 0, align 8
@SPROM_OP_DATA_U8 = common dso_local global i64 0, align 8
@INT8_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid shift value: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unsupported shift data type: %#hhx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"offset out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unrecognized type %#hhx\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unrecognized opcode %#hhx\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64*)* @bhnd_sprom_opcode_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_sprom_opcode_step(%struct.TYPE_17__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64* %1, i64** %5, align 8
  br label %23

23:                                               ; preds = %377, %66, %2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SPROM_OPCODE_EOF, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %378

30:                                               ; preds = %23
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @SPROM_OPCODE_OP(i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @SPROM_OPCODE_IMM(i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = call i32 @bhnd_sprom_opcode_flush_bind(%struct.TYPE_17__* %42)
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %380

47:                                               ; preds = %30
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = call i32 @bhnd_sprom_opcode_rewrite_opcode(%struct.TYPE_17__* %50, i64* %9)
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %380

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = load i64*, i64** %5, align 8
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = call i64 @bhnd_sprom_opcode_matches_layout_rev(%struct.TYPE_17__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %23

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %380

68:                                               ; preds = %55
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %70, align 8
  %73 = load i64, i64* %8, align 8
  switch i64 %73, label %367 [
    i64 129, label %74
    i64 128, label %82
    i64 131, label %95
    i64 130, label %111
    i64 140, label %118
    i64 145, label %134
    i64 144, label %134
    i64 143, label %174
    i64 137, label %187
    i64 136, label %197
    i64 141, label %225
    i64 142, label %233
    i64 134, label %249
    i64 135, label %259
    i64 138, label %304
    i64 139, label %329
    i64 133, label %341
    i64 132, label %350
  ]

74:                                               ; preds = %68
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @bhnd_sprom_opcode_set_var(%struct.TYPE_17__* %75, i64 %76)
  store i32 %77, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %380

81:                                               ; preds = %74
  br label %372

82:                                               ; preds = %68
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @bhnd_sprom_opcode_set_var(%struct.TYPE_17__* %83, i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %380

94:                                               ; preds = %82
  br label %372

95:                                               ; preds = %68
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @bhnd_sprom_opcode_read_opval32(%struct.TYPE_17__* %96, i64 %97, i64* %7)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %380

103:                                              ; preds = %95
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @bhnd_sprom_opcode_set_var(%struct.TYPE_17__* %104, i64 %105)
  store i32 %106, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %380

110:                                              ; preds = %103
  br label %372

111:                                              ; preds = %68
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = call i32 @bhnd_sprom_opcode_end_var(%struct.TYPE_17__* %112)
  store i32 %113, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %380

117:                                              ; preds = %111
  br label %372

118:                                              ; preds = %68
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %10, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @bhnd_sprom_opcode_set_nelem(%struct.TYPE_17__* %123, i64 %124)
  store i32 %125, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %380

129:                                              ; preds = %118
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i32 1
  store i64* %133, i64** %131, align 8
  br label %372

134:                                              ; preds = %68, %68
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* @SPROM_OP_BIND_SKIP_IN_MASK, align 8
  %137 = and i64 %135, %136
  %138 = load i64, i64* @SPROM_OP_BIND_SKIP_IN_SHIFT, align 8
  %139 = ashr i64 %137, %138
  store i64 %139, i64* %12, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* @SPROM_OP_BIND_SKIP_IN_SIGN, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %14, align 4
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* @SPROM_OP_BIND_SKIP_OUT_MASK, align 8
  %147 = and i64 %145, %146
  %148 = load i64, i64* @SPROM_OP_BIND_SKIP_OUT_SHIFT, align 8
  %149 = ashr i64 %147, %148
  store i64 %149, i64* %13, align 8
  %150 = load i64, i64* %8, align 8
  %151 = icmp eq i64 %150, 144
  br i1 %151, label %152, label %161

152:                                              ; preds = %134
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %11, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i32 1
  store i64* %160, i64** %158, align 8
  br label %162

161:                                              ; preds = %134
  store i64 1, i64* %11, align 8
  br label %162

162:                                              ; preds = %161, %152
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load i64, i64* %13, align 8
  %168 = call i32 @bhnd_sprom_opcode_set_bind(%struct.TYPE_17__* %163, i64 %164, i64 %165, i32 %166, i64 %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %162
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %380

173:                                              ; preds = %162
  br label %372

174:                                              ; preds = %68
  %175 = load i64, i64* %10, align 8
  store i64 %175, i64* %15, align 8
  store i64 1, i64* %16, align 8
  store i64 1, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %16, align 8
  %179 = load i32, i32* %18, align 4
  %180 = load i64, i64* %17, align 8
  %181 = call i32 @bhnd_sprom_opcode_set_bind(%struct.TYPE_17__* %176, i64 %177, i64 %178, i32 %179, i64 %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %174
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %3, align 4
  br label %380

186:                                              ; preds = %174
  br label %372

187:                                              ; preds = %68
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %189 = load i64, i64* %10, align 8
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @bhnd_sprom_opcode_set_revs(%struct.TYPE_17__* %188, i64 %189, i64 %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %380

196:                                              ; preds = %187
  br label %372

197:                                              ; preds = %68
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i64*, i64** %199, align 8
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %19, align 8
  %202 = load i64, i64* %19, align 8
  %203 = load i64, i64* @SPROM_OP_REV_START_MASK, align 8
  %204 = and i64 %202, %203
  %205 = load i64, i64* @SPROM_OP_REV_START_SHIFT, align 8
  %206 = ashr i64 %204, %205
  store i64 %206, i64* %20, align 8
  %207 = load i64, i64* %19, align 8
  %208 = load i64, i64* @SPROM_OP_REV_END_MASK, align 8
  %209 = and i64 %207, %208
  %210 = load i64, i64* @SPROM_OP_REV_END_SHIFT, align 8
  %211 = ashr i64 %209, %210
  store i64 %211, i64* %21, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %213 = load i64, i64* %20, align 8
  %214 = load i64, i64* %21, align 8
  %215 = call i32 @bhnd_sprom_opcode_set_revs(%struct.TYPE_17__* %212, i64 %213, i64 %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %197
  %219 = load i32, i32* %6, align 4
  store i32 %219, i32* %3, align 4
  br label %380

220:                                              ; preds = %197
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i32 1
  store i64* %224, i64** %222, align 8
  br label %372

225:                                              ; preds = %68
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %227 = load i64, i64* %10, align 8
  %228 = call i32 @bhnd_sprom_opcode_set_mask(%struct.TYPE_17__* %226, i64 %227)
  store i32 %228, i32* %6, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* %6, align 4
  store i32 %231, i32* %3, align 4
  br label %380

232:                                              ; preds = %225
  br label %372

233:                                              ; preds = %68
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %235 = load i64, i64* %10, align 8
  %236 = call i32 @bhnd_sprom_opcode_read_opval32(%struct.TYPE_17__* %234, i64 %235, i64* %7)
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = load i32, i32* %6, align 4
  store i32 %240, i32* %3, align 4
  br label %380

241:                                              ; preds = %233
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %243 = load i64, i64* %7, align 8
  %244 = call i32 @bhnd_sprom_opcode_set_mask(%struct.TYPE_17__* %242, i64 %243)
  store i32 %244, i32* %6, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = load i32, i32* %6, align 4
  store i32 %247, i32* %3, align 4
  br label %380

248:                                              ; preds = %241
  br label %372

249:                                              ; preds = %68
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %251 = load i64, i64* %10, align 8
  %252 = mul nsw i64 %251, 2
  %253 = call i32 @bhnd_sprom_opcode_set_shift(%struct.TYPE_17__* %250, i64 %252)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i32, i32* %6, align 4
  store i32 %257, i32* %3, align 4
  br label %380

258:                                              ; preds = %249
  br label %372

259:                                              ; preds = %68
  %260 = load i64, i64* %10, align 8
  %261 = load i64, i64* @SPROM_OP_DATA_I8, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  %266 = load i64*, i64** %265, align 8
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %22, align 8
  br label %292

268:                                              ; preds = %259
  %269 = load i64, i64* %10, align 8
  %270 = load i64, i64* @SPROM_OP_DATA_U8, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %286

272:                                              ; preds = %268
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i64*, i64** %274, align 8
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %7, align 8
  %277 = load i64, i64* %7, align 8
  %278 = load i64, i64* @INT8_MAX, align 8
  %279 = icmp sgt i64 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %272
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %282 = load i64, i64* %7, align 8
  %283 = call i32 @SPROM_OP_BAD(%struct.TYPE_17__* %281, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %282)
  br label %284

284:                                              ; preds = %280, %272
  %285 = load i64, i64* %7, align 8
  store i64 %285, i64* %22, align 8
  br label %291

286:                                              ; preds = %268
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %288 = load i64, i64* %10, align 8
  %289 = call i32 @SPROM_OP_BAD(%struct.TYPE_17__* %287, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %288)
  %290 = load i32, i32* @EINVAL, align 4
  store i32 %290, i32* %3, align 4
  br label %380

291:                                              ; preds = %284
  br label %292

292:                                              ; preds = %291, %263
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %294 = load i64, i64* %22, align 8
  %295 = call i32 @bhnd_sprom_opcode_set_shift(%struct.TYPE_17__* %293, i64 %294)
  store i32 %295, i32* %6, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = load i32, i32* %6, align 4
  store i32 %298, i32* %3, align 4
  br label %380

299:                                              ; preds = %292
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 0
  %302 = load i64*, i64** %301, align 8
  %303 = getelementptr inbounds i64, i64* %302, i32 1
  store i64* %303, i64** %301, align 8
  br label %372

304:                                              ; preds = %68
  %305 = load i64, i64* %10, align 8
  store i64 %305, i64* %7, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %307 = call i32 @bhnd_sprom_opcode_apply_scale(%struct.TYPE_17__* %306, i64* %7)
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = load i32, i32* %6, align 4
  store i32 %311, i32* %3, align 4
  br label %380

312:                                              ; preds = %304
  %313 = load i64, i64* @UINT32_MAX, align 8
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = sub nsw i64 %313, %316
  %318 = load i64, i64* %7, align 8
  %319 = icmp slt i64 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %312
  %321 = call i32 (i8*, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %322 = load i32, i32* @EINVAL, align 4
  store i32 %322, i32* %3, align 4
  br label %380

323:                                              ; preds = %312
  %324 = load i64, i64* %7, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = add nsw i64 %327, %324
  store i64 %328, i64* %326, align 8
  br label %372

329:                                              ; preds = %68
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %331 = load i64, i64* %10, align 8
  %332 = call i32 @bhnd_sprom_opcode_read_opval32(%struct.TYPE_17__* %330, i64 %331, i64* %7)
  store i32 %332, i32* %6, align 4
  %333 = load i32, i32* %6, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %329
  %336 = load i32, i32* %6, align 4
  store i32 %336, i32* %3, align 4
  br label %380

337:                                              ; preds = %329
  %338 = load i64, i64* %7, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 2
  store i64 %338, i64* %340, align 8
  br label %372

341:                                              ; preds = %68
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 0
  %344 = load i64*, i64** %343, align 8
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %10, align 8
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 0
  %348 = load i64*, i64** %347, align 8
  %349 = getelementptr inbounds i64, i64* %348, i32 1
  store i64* %349, i64** %347, align 8
  br label %350

350:                                              ; preds = %68, %341
  %351 = load i64, i64* %10, align 8
  switch i64 %351, label %362 [
    i64 146, label %352
    i64 149, label %352
    i64 148, label %352
    i64 147, label %352
    i64 151, label %352
    i64 154, label %352
    i64 153, label %352
    i64 152, label %352
    i64 155, label %352
    i64 150, label %352
  ]

352:                                              ; preds = %350, %350, %350, %350, %350, %350, %350, %350, %350, %350
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %354 = load i64, i64* %10, align 8
  %355 = trunc i64 %354 to i32
  %356 = call i32 @bhnd_sprom_opcode_set_type(%struct.TYPE_17__* %353, i32 %355)
  store i32 %356, i32* %6, align 4
  %357 = load i32, i32* %6, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = load i32, i32* %6, align 4
  store i32 %360, i32* %3, align 4
  br label %380

361:                                              ; preds = %352
  br label %366

362:                                              ; preds = %350
  %363 = load i64, i64* %10, align 8
  %364 = call i32 (i8*, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %363)
  %365 = load i32, i32* @EINVAL, align 4
  store i32 %365, i32* %3, align 4
  br label %380

366:                                              ; preds = %361
  br label %372

367:                                              ; preds = %68
  %368 = load i64*, i64** %5, align 8
  %369 = load i64, i64* %368, align 8
  %370 = call i32 (i8*, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %369)
  %371 = load i32, i32* @EINVAL, align 4
  store i32 %371, i32* %3, align 4
  br label %380

372:                                              ; preds = %366, %337, %323, %299, %258, %248, %232, %220, %196, %186, %173, %129, %117, %110, %94, %81
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %374 = call i64 @bhnd_sprom_opcode_matches_layout_rev(%struct.TYPE_17__* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %372
  store i32 0, i32* %3, align 4
  br label %380

377:                                              ; preds = %372
  br label %23

378:                                              ; preds = %23
  %379 = load i32, i32* @ENOENT, align 4
  store i32 %379, i32* %3, align 4
  br label %380

380:                                              ; preds = %378, %376, %367, %362, %359, %335, %320, %310, %297, %286, %256, %246, %239, %230, %218, %194, %184, %171, %127, %115, %108, %101, %92, %79, %67, %53, %45
  %381 = load i32, i32* %3, align 4
  ret i32 %381
}

declare dso_local i64 @SPROM_OPCODE_OP(i64) #1

declare dso_local i64 @SPROM_OPCODE_IMM(i64) #1

declare dso_local i32 @bhnd_sprom_opcode_flush_bind(%struct.TYPE_17__*) #1

declare dso_local i32 @bhnd_sprom_opcode_rewrite_opcode(%struct.TYPE_17__*, i64*) #1

declare dso_local i64 @bhnd_sprom_opcode_matches_layout_rev(%struct.TYPE_17__*) #1

declare dso_local i32 @bhnd_sprom_opcode_set_var(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @bhnd_sprom_opcode_read_opval32(%struct.TYPE_17__*, i64, i64*) #1

declare dso_local i32 @bhnd_sprom_opcode_end_var(%struct.TYPE_17__*) #1

declare dso_local i32 @bhnd_sprom_opcode_set_nelem(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @bhnd_sprom_opcode_set_bind(%struct.TYPE_17__*, i64, i64, i32, i64) #1

declare dso_local i32 @bhnd_sprom_opcode_set_revs(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @bhnd_sprom_opcode_set_mask(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @bhnd_sprom_opcode_set_shift(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @SPROM_OP_BAD(%struct.TYPE_17__*, i8*, i64) #1

declare dso_local i32 @bhnd_sprom_opcode_apply_scale(%struct.TYPE_17__*, i64*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, ...) #1

declare dso_local i32 @bhnd_sprom_opcode_set_type(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
