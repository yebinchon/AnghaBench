; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_tokenize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_tokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i8* }
%struct.TYPE_7__ = type { i8*, i32, i8* }

@cmatches = common dso_local global %struct.TYPE_8__* null, align 8
@TOK_NUMBER = common dso_local global i8* null, align 8
@TOK_NUMBER_LIST = common dso_local global i8* null, align 8
@TOKEN_LEN = common dso_local global i32 0, align 4
@TOK_NUMBER_VALUE = common dso_local global i8* null, align 8
@smatches = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_7__*)* @tokenize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tokenize(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = call i32 @memset(%struct.TYPE_7__* %10, i32 0, i32 24)
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @ocs_isspace(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %12

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %301

33:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %76, %33
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmatches, align 8
  %37 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmatches, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %39
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmatches, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmatches, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  %69 = load i8, i8* %67, align 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %69, i8* %73, align 1
  %74 = load i8*, i8** %4, align 8
  store i8* %74, i8** %3, align 8
  br label %301

75:                                               ; preds = %39
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %34

79:                                               ; preds = %34
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 48
  br i1 %84, label %85, label %155

85:                                               ; preds = %79
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 120
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 88
  br i1 %96, label %97, label %155

97:                                               ; preds = %91, %85
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %7, align 8
  %101 = load i8*, i8** @TOK_NUMBER, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %4, align 8
  %106 = load i8, i8* %104, align 1
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %7, align 8
  store i8 %106, i8* %107, align 1
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  %111 = load i8, i8* %109, align 1
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %7, align 8
  store i8 %111, i8* %112, align 1
  br label %114

114:                                              ; preds = %149, %97
  %115 = load i8*, i8** %4, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 46
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %4, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @ocs_isxdigit(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i1 [ true, %114 ], [ %123, %119 ]
  br i1 %125, label %126, label %152

126:                                              ; preds = %124
  %127 = load i8*, i8** %7, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = ptrtoint i8* %127 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = icmp slt i64 %133, 8
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load i8*, i8** %4, align 8
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %7, align 8
  store i8 %137, i8* %138, align 1
  br label %140

140:                                              ; preds = %135, %126
  %141 = load i8*, i8** %4, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 44
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i8*, i8** @TOK_NUMBER_LIST, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %4, align 8
  br label %114

152:                                              ; preds = %124
  %153 = load i8*, i8** %7, align 8
  store i8 0, i8* %153, align 1
  %154 = load i8*, i8** %4, align 8
  store i8* %154, i8** %3, align 8
  br label %301

155:                                              ; preds = %91, %79
  %156 = load i8*, i8** %4, align 8
  %157 = load i8, i8* %156, align 1
  %158 = call i64 @ocs_isdigit(i8 signext %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %208

160:                                              ; preds = %155
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** %8, align 8
  %164 = load i8*, i8** @TOK_NUMBER, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %202, %160
  %168 = load i8*, i8** %4, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 44
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load i8*, i8** %4, align 8
  %174 = load i8, i8* %173, align 1
  %175 = call i64 @ocs_isdigit(i8 signext %174)
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %172, %167
  %178 = phi i1 [ true, %167 ], [ %176, %172 ]
  br i1 %178, label %179, label %205

179:                                              ; preds = %177
  %180 = load i8*, i8** %8, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = ptrtoint i8* %180 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = icmp slt i64 %186, 8
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load i8*, i8** %4, align 8
  %190 = load i8, i8* %189, align 1
  %191 = load i8*, i8** %8, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %8, align 8
  store i8 %190, i8* %191, align 1
  br label %193

193:                                              ; preds = %188, %179
  %194 = load i8*, i8** %4, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 44
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i8*, i8** @TOK_NUMBER_LIST, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i8*, i8** %4, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %4, align 8
  br label %167

205:                                              ; preds = %177
  %206 = load i8*, i8** %8, align 8
  store i8 0, i8* %206, align 1
  %207 = load i8*, i8** %4, align 8
  store i8* %207, i8** %3, align 8
  br label %301

208:                                              ; preds = %155
  br label %209

209:                                              ; preds = %208
  %210 = load i8*, i8** %4, align 8
  %211 = load i8, i8* %210, align 1
  %212 = call i64 @idstart(i8 signext %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %299

214:                                              ; preds = %209
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %9, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %4, align 8
  %220 = load i8, i8* %218, align 1
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %9, align 8
  store i8 %220, i8* %221, align 1
  br label %223

223:                                              ; preds = %245, %214
  %224 = load i8*, i8** %4, align 8
  %225 = load i8, i8* %224, align 1
  %226 = call i64 @idchar(i8 signext %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %248

228:                                              ; preds = %223
  %229 = load i8*, i8** %9, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = ptrtoint i8* %229 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = load i32, i32* @TOKEN_LEN, align 4
  %237 = sext i32 %236 to i64
  %238 = icmp slt i64 %235, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %228
  %240 = load i8*, i8** %4, align 8
  %241 = load i8, i8* %240, align 1
  %242 = load i8*, i8** %9, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %9, align 8
  store i8 %241, i8* %242, align 1
  br label %244

244:                                              ; preds = %239, %228
  br label %245

245:                                              ; preds = %244
  %246 = load i8*, i8** %4, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %4, align 8
  br label %223

248:                                              ; preds = %223
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 36
  br i1 %255, label %256, label %260

256:                                              ; preds = %248
  %257 = load i8*, i8** @TOK_NUMBER_VALUE, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 2
  store i8* %257, i8** %259, align 8
  br label %298

260:                                              ; preds = %248
  store i64 0, i64* %6, align 8
  br label %261

261:                                              ; preds = %294, %260
  %262 = load i64, i64* %6, align 8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** @smatches, align 8
  %264 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %263)
  %265 = icmp ult i64 %262, %264
  br i1 %265, label %266, label %297

266:                                              ; preds = %261
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** @smatches, align 8
  %268 = load i64, i64* %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i64 @strcmp(i8* %271, i8* %274)
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %266
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** @smatches, align 8
  %279 = load i64, i64* %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 2
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** @smatches, align 8
  %286 = load i64, i64* %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 8
  %292 = load i8*, i8** %4, align 8
  store i8* %292, i8** %3, align 8
  br label %301

293:                                              ; preds = %266
  br label %294

294:                                              ; preds = %293
  %295 = load i64, i64* %6, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %6, align 8
  br label %261

297:                                              ; preds = %261
  br label %298

298:                                              ; preds = %297, %256
  br label %299

299:                                              ; preds = %298, %209
  %300 = load i8*, i8** %4, align 8
  store i8* %300, i8** %3, align 8
  br label %301

301:                                              ; preds = %299, %277, %205, %152, %52, %32
  %302 = load i8*, i8** %3, align 8
  ret i8* %302
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @ocs_isspace(i8 signext) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @ocs_isxdigit(i8 signext) #1

declare dso_local i64 @ocs_isdigit(i8 signext) #1

declare dso_local i64 @idstart(i8 signext) #1

declare dso_local i64 @idchar(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
