; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_reader_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_reader_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bwstring = type { i32 }
%struct.file_reader = type { i8*, i32, i8*, i64, i64, i64, i8*, i64, i32, i32 }

@stdin = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"File read software error 1\00", align 1
@READ_CHUNK = common dso_local global i32 0, align 4
@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @file_reader_readline(%struct.file_reader* %0) #0 {
  %2 = alloca %struct.bwstring*, align 8
  %3 = alloca %struct.file_reader*, align 8
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.file_reader* %0, %struct.file_reader** %3, align 8
  store %struct.bwstring* null, %struct.bwstring** %4, align 8
  %13 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %14 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %79

17:                                               ; preds = %1
  %18 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %19 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %22 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %5, align 8
  %26 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %27 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp uge i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store %struct.bwstring* null, %struct.bwstring** %2, align 8
  br label %343

32:                                               ; preds = %17
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %35 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %33 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %41 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %44 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i8* @memchr(i8* %42, i32 %45, i64 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %32
  %51 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %52 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  %56 = call %struct.bwstring* @bwscsbdup(i8* %53, i32 %55)
  store %struct.bwstring* %56, %struct.bwstring** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %59 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %77

60:                                               ; preds = %32
  %61 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %62 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %66 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %64 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call %struct.bwstring* @bwscsbdup(i8* %63, i32 %71)
  store %struct.bwstring* %72, %struct.bwstring** %4, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %76 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %60, %50
  br label %78

78:                                               ; preds = %77
  br label %341

79:                                               ; preds = %1
  %80 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %81 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @stdin, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %332

85:                                               ; preds = %79
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i8* null, i8** %8, align 8
  %86 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %87 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %90 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %95 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %98 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %96, %99
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %93, %85
  br label %102

102:                                              ; preds = %267, %101
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %108 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %107, i32 0, i32 6
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %111 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %117 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %11, align 8
  %121 = sub i64 %119, %120
  %122 = call i8* @memchr(i8* %115, i32 %118, i64 %121)
  store i8* %122, i8** %8, align 8
  br label %124

123:                                              ; preds = %102
  store i8* null, i8** %8, align 8
  br label %124

124:                                              ; preds = %123, %106
  %125 = load i8*, i8** %8, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %268

128:                                              ; preds = %124
  %129 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %130 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @feof(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %268

135:                                              ; preds = %128
  %136 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %137 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %140 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = call i32 @err(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %135
  %146 = load i64, i64* %10, align 8
  %147 = load i32, i32* @READ_CHUNK, align 4
  %148 = ashr i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = icmp ugt i64 %146, %149
  br i1 %150, label %151, label %208

151:                                              ; preds = %145
  %152 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %153 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %156 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %154, %157
  store i64 %158, i64* %11, align 8
  %159 = load i32, i32* @READ_CHUNK, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %162 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %166 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %165, i32 0, i32 6
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %169 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i8* @sort_realloc(i8* %167, i32 %171)
  %173 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %174 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %173, i32 0, i32 6
  store i8* %172, i8** %174, align 8
  %175 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %176 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %175, i32 0, i32 6
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %179 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = load i32, i32* @READ_CHUNK, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %185 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @fread(i8* %181, i32 1, i64 %183, i64 %186)
  store i64 %187, i64* %9, align 8
  %188 = load i64, i64* %9, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %151
  %191 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %192 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @ferror(i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = call i32 @err(i32 2, i8* null)
  br label %198

198:                                              ; preds = %196, %190
  br label %268

199:                                              ; preds = %151
  %200 = load i64, i64* %9, align 8
  %201 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %202 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %203, %200
  store i64 %204, i64* %202, align 8
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* %10, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %10, align 8
  br label %267

208:                                              ; preds = %145
  %209 = load i64, i64* %10, align 8
  %210 = icmp ugt i64 %209, 0
  br i1 %210, label %211, label %229

211:                                              ; preds = %208
  %212 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %213 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ugt i64 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %211
  %217 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %218 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %217, i32 0, i32 6
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %221 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %225 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %224, i32 0, i32 6
  %226 = load i8*, i8** %225, align 8
  %227 = load i64, i64* %10, align 8
  %228 = call i32 @bcopy(i8* %223, i8* %226, i64 %227)
  br label %229

229:                                              ; preds = %216, %211, %208
  %230 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %231 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %230, i32 0, i32 5
  store i64 0, i64* %231, align 8
  %232 = load i64, i64* %10, align 8
  store i64 %232, i64* %11, align 8
  %233 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %234 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %233, i32 0, i32 6
  %235 = load i8*, i8** %234, align 8
  %236 = load i64, i64* %10, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %239 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %238, i32 0, i32 7
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %10, align 8
  %242 = sub i64 %240, %241
  %243 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %244 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @fread(i8* %237, i32 1, i64 %242, i64 %245)
  store i64 %246, i64* %9, align 8
  %247 = load i64, i64* %9, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %229
  %250 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %251 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @ferror(i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = call i32 @err(i32 2, i8* null)
  br label %257

257:                                              ; preds = %255, %249
  br label %268

258:                                              ; preds = %229
  %259 = load i64, i64* %10, align 8
  %260 = load i64, i64* %9, align 8
  %261 = add i64 %259, %260
  %262 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %263 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %262, i32 0, i32 4
  store i64 %261, i64* %263, align 8
  %264 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %265 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %10, align 8
  br label %267

267:                                              ; preds = %258, %199
  br label %102

268:                                              ; preds = %257, %198, %134, %127
  %269 = load i8*, i8** %8, align 8
  %270 = icmp eq i8* %269, null
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %273 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %272, i32 0, i32 6
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %276 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i8, i8* %274, i64 %277
  store i8* %278, i8** %8, align 8
  br label %279

279:                                              ; preds = %271, %268
  %280 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %281 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %280, i32 0, i32 6
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %284 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  %287 = load i8*, i8** %8, align 8
  %288 = icmp ule i8* %286, %287
  br i1 %288, label %289, label %321

289:                                              ; preds = %279
  %290 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %291 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %294 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = icmp ult i64 %292, %295
  br i1 %296, label %297, label %321

297:                                              ; preds = %289
  %298 = load i64, i64* %10, align 8
  %299 = icmp ugt i64 %298, 0
  br i1 %299, label %300, label %321

300:                                              ; preds = %297
  %301 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %302 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %301, i32 0, i32 6
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %305 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %304, i32 0, i32 5
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i8, i8* %303, i64 %306
  %308 = load i8*, i8** %8, align 8
  %309 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %310 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %309, i32 0, i32 6
  %311 = load i8*, i8** %310, align 8
  %312 = ptrtoint i8* %308 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %316 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = sub i64 %314, %317
  %319 = trunc i64 %318 to i32
  %320 = call %struct.bwstring* @bwscsbdup(i8* %307, i32 %319)
  store %struct.bwstring* %320, %struct.bwstring** %4, align 8
  br label %321

321:                                              ; preds = %300, %297, %289, %279
  %322 = load i8*, i8** %8, align 8
  %323 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %324 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %323, i32 0, i32 6
  %325 = load i8*, i8** %324, align 8
  %326 = ptrtoint i8* %322 to i64
  %327 = ptrtoint i8* %325 to i64
  %328 = sub i64 %326, %327
  %329 = add nsw i64 %328, 1
  %330 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %331 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %330, i32 0, i32 5
  store i64 %329, i64* %331, align 8
  br label %340

332:                                              ; preds = %79
  store i64 0, i64* %12, align 8
  %333 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %334 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 4
  %337 = load %struct.file_reader*, %struct.file_reader** %3, align 8
  %338 = getelementptr inbounds %struct.file_reader, %struct.file_reader* %337, i32 0, i32 8
  %339 = call %struct.bwstring* @bwsfgetln(i64 %335, i64* %12, i32 %336, i32* %338)
  store %struct.bwstring* %339, %struct.bwstring** %4, align 8
  br label %340

340:                                              ; preds = %332, %321
  br label %341

341:                                              ; preds = %340, %78
  %342 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  store %struct.bwstring* %342, %struct.bwstring** %2, align 8
  br label %343

343:                                              ; preds = %341, %31
  %344 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  ret %struct.bwstring* %344
}

declare dso_local i8* @memchr(i8*, i32, i64) #1

declare dso_local %struct.bwstring* @bwscsbdup(i8*, i32) #1

declare dso_local i64 @feof(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @sort_realloc(i8*, i32) #1

declare dso_local i64 @fread(i8*, i32, i64, i64) #1

declare dso_local i64 @ferror(i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local %struct.bwstring* @bwsfgetln(i64, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
