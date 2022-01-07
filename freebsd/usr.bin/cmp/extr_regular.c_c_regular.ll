; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cmp/extr_regular.c_c_regular.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cmp/extr_regular.c_c_regular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@sflag = common dso_local global i64 0, align 8
@DIFF_EXIT = common dso_local global i32 0, align 4
@MMAP_CHUNK = common dso_local global i32 0, align 4
@CAP_MMAP_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to limit rights for %s\00", align 1
@ERR_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@SA_NODEFER = common dso_local global i32 0, align 4
@segv_handler = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sigaction()\00", align 1
@xflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"%08llx %02x %02x\0A\00", align 1
@lflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"%6lld %3o %3o\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"remmap %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_regular(i32 %0, i8* %1, i64 %2, i64 %3, i32 %4, i8* %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sigaction, align 4
  %18 = alloca %struct.sigaction, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @eofmsg(i8* %39)
  br label %41

41:                                               ; preds = %38, %8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @eofmsg(i8* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* @sflag, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %16, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @DIFF_EXIT, align 4
  %63 = call i32 @exit(i32 %62) #3
  unreachable

64:                                               ; preds = %57, %51
  %65 = call i64 (...) @getpagesize()
  store i64 %65, i64* %33, align 8
  %66 = load i64, i64* %33, align 8
  %67 = sub nsw i64 %66, 1
  store i64 %67, i64* %30, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @ROUNDPAGE(i64 %68)
  store i64 %69, i64* %31, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i64 @ROUNDPAGE(i64 %70)
  store i64 %71, i64* %32, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %16, align 8
  %74 = call i64 @MIN(i64 %72, i64 %73)
  store i64 %74, i64* %28, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i64, i64* %31, align 8
  %77 = call i8* @remmap(i8* null, i32 %75, i64 %76)
  store i8* %77, i8** %23, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %64
  %80 = load i32, i32* %9, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @c_special(i32 %80, i8* %81, i64 %82, i32 %83, i8* %84, i64 %85)
  br label %297

87:                                               ; preds = %64
  %88 = load i32, i32* %13, align 4
  %89 = load i64, i64* %32, align 8
  %90 = call i8* @remmap(i8* null, i32 %88, i64 %89)
  store i8* %90, i8** %24, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load i8*, i8** %23, align 8
  %94 = load i32, i32* @MMAP_CHUNK, align 4
  %95 = call i32 @munmap(i8* %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @c_special(i32 %96, i8* %97, i64 %98, i32 %99, i8* %100, i64 %101)
  br label %297

103:                                              ; preds = %87
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @CAP_MMAP_R, align 4
  %106 = call i32 @cap_rights_init(i32* %19, i32 %105)
  %107 = call i64 @caph_rights_limit(i32 %104, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %109, %103
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @CAP_MMAP_R, align 4
  %115 = call i32 @cap_rights_init(i32* %19, i32 %114)
  %116 = call i64 @caph_rights_limit(i32 %113, i32 %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %112
  %122 = call i64 (...) @caph_enter()
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @ERR_EXIT, align 4
  %126 = call i32 (i32, i8*, ...) @err(i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %121
  %128 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %17, i32 0, i32 2
  %129 = call i32 @sigemptyset(i32* %128)
  %130 = load i32, i32* @SA_NODEFER, align 4
  %131 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %17, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* @segv_handler, align 4
  %133 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %17, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @SIGSEGV, align 4
  %135 = call i64 @sigaction(i32 %134, %struct.sigaction* %17, %struct.sigaction* %18)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* @ERR_EXIT, align 4
  %139 = call i32 (i32, i8*, ...) @err(i32 %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %127
  store i32 0, i32* %34, align 4
  %141 = load i8*, i8** %23, align 8
  %142 = load i32, i32* @MMAP_CHUNK, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8* %144, i8** %25, align 8
  %145 = load i8*, i8** %24, align 8
  %146 = load i32, i32* @MMAP_CHUNK, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  store i8* %148, i8** %26, align 8
  %149 = load i8*, i8** %23, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %31, align 8
  %152 = sub nsw i64 %150, %151
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8* %153, i8** %21, align 8
  %154 = load i8*, i8** %24, align 8
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* %32, align 8
  %157 = sub nsw i64 %155, %156
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8* %158, i8** %22, align 8
  store i64 1, i64* %29, align 8
  store i64 1, i64* %27, align 8
  br label %159

159:                                              ; preds = %260, %140
  %160 = load i64, i64* %28, align 8
  %161 = add nsw i64 %160, -1
  store i64 %161, i64* %28, align 8
  %162 = icmp ne i64 %160, 0
  br i1 %162, label %163, label %263

163:                                              ; preds = %159
  %164 = load i8*, i8** %21, align 8
  %165 = load i8, i8* %164, align 1
  store i8 %165, i8* %20, align 1
  %166 = sext i8 %165 to i32
  %167 = load i8*, i8** %22, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %166, %169
  br i1 %170, label %171, label %198

171:                                              ; preds = %163
  %172 = load i64, i64* @xflag, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  store i32 1, i32* %34, align 4
  %175 = load i64, i64* %27, align 8
  %176 = sub nsw i64 %175, 1
  %177 = load i8, i8* %20, align 1
  %178 = load i8*, i8** %22, align 8
  %179 = load i8, i8* %178, align 1
  %180 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %176, i8 signext %177, i8 signext %179)
  br label %197

181:                                              ; preds = %171
  %182 = load i64, i64* @lflag, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  store i32 1, i32* %34, align 4
  %185 = load i64, i64* %27, align 8
  %186 = load i8, i8* %20, align 1
  %187 = load i8*, i8** %22, align 8
  %188 = load i8, i8* %187, align 1
  %189 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %185, i8 signext %186, i8 signext %188)
  br label %196

190:                                              ; preds = %181
  %191 = load i8*, i8** %10, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = load i64, i64* %27, align 8
  %194 = load i64, i64* %29, align 8
  %195 = call i32 @diffmsg(i8* %191, i8* %192, i64 %193, i64 %194)
  br label %196

196:                                              ; preds = %190, %184
  br label %197

197:                                              ; preds = %196, %174
  br label %198

198:                                              ; preds = %197, %163
  %199 = load i8, i8* %20, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 10
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i64, i64* %29, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %29, align 8
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i8*, i8** %21, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %21, align 8
  %208 = load i8*, i8** %25, align 8
  %209 = icmp eq i8* %207, %208
  br i1 %209, label %210, label %232

210:                                              ; preds = %205
  %211 = load i32, i32* @MMAP_CHUNK, align 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %31, align 8
  %214 = add nsw i64 %213, %212
  store i64 %214, i64* %31, align 8
  %215 = load i8*, i8** %23, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i64, i64* %31, align 8
  %218 = call i8* @remmap(i8* %215, i32 %216, i64 %217)
  store i8* %218, i8** %23, align 8
  store i8* %218, i8** %21, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %227

220:                                              ; preds = %210
  %221 = load i8*, i8** %24, align 8
  %222 = load i32, i32* @MMAP_CHUNK, align 4
  %223 = call i32 @munmap(i8* %221, i32 %222)
  %224 = load i32, i32* @ERR_EXIT, align 4
  %225 = load i8*, i8** %10, align 8
  %226 = call i32 (i32, i8*, ...) @err(i32 %224, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %220, %210
  %228 = load i8*, i8** %23, align 8
  %229 = load i32, i32* @MMAP_CHUNK, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  store i8* %231, i8** %25, align 8
  br label %232

232:                                              ; preds = %227, %205
  %233 = load i8*, i8** %22, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %22, align 8
  %235 = load i8*, i8** %26, align 8
  %236 = icmp eq i8* %234, %235
  br i1 %236, label %237, label %259

237:                                              ; preds = %232
  %238 = load i32, i32* @MMAP_CHUNK, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* %32, align 8
  %241 = add nsw i64 %240, %239
  store i64 %241, i64* %32, align 8
  %242 = load i8*, i8** %24, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load i64, i64* %32, align 8
  %245 = call i8* @remmap(i8* %242, i32 %243, i64 %244)
  store i8* %245, i8** %24, align 8
  store i8* %245, i8** %22, align 8
  %246 = icmp eq i8* %245, null
  br i1 %246, label %247, label %254

247:                                              ; preds = %237
  %248 = load i8*, i8** %23, align 8
  %249 = load i32, i32* @MMAP_CHUNK, align 4
  %250 = call i32 @munmap(i8* %248, i32 %249)
  %251 = load i32, i32* @ERR_EXIT, align 4
  %252 = load i8*, i8** %14, align 8
  %253 = call i32 (i32, i8*, ...) @err(i32 %251, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %252)
  br label %254

254:                                              ; preds = %247, %237
  %255 = load i8*, i8** %24, align 8
  %256 = load i32, i32* @MMAP_CHUNK, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  store i8* %258, i8** %26, align 8
  br label %259

259:                                              ; preds = %254, %232
  br label %260

260:                                              ; preds = %259
  %261 = load i64, i64* %27, align 8
  %262 = add nsw i64 %261, 1
  store i64 %262, i64* %27, align 8
  br label %159

263:                                              ; preds = %159
  %264 = load i8*, i8** %23, align 8
  %265 = load i32, i32* @MMAP_CHUNK, align 4
  %266 = call i32 @munmap(i8* %264, i32 %265)
  %267 = load i8*, i8** %24, align 8
  %268 = load i32, i32* @MMAP_CHUNK, align 4
  %269 = call i32 @munmap(i8* %267, i32 %268)
  %270 = load i32, i32* @SIGSEGV, align 4
  %271 = call i64 @sigaction(i32 %270, %struct.sigaction* %18, %struct.sigaction* null)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %263
  %274 = load i32, i32* @ERR_EXIT, align 4
  %275 = call i32 (i32, i8*, ...) @err(i32 %274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %276

276:                                              ; preds = %273, %263
  %277 = load i64, i64* %12, align 8
  %278 = load i64, i64* %16, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %291

280:                                              ; preds = %276
  %281 = load i64, i64* %12, align 8
  %282 = load i64, i64* %16, align 8
  %283 = icmp sgt i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i8*, i8** %14, align 8
  br label %288

286:                                              ; preds = %280
  %287 = load i8*, i8** %10, align 8
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi i8* [ %285, %284 ], [ %287, %286 ]
  %290 = call i32 @eofmsg(i8* %289)
  br label %291

291:                                              ; preds = %288, %276
  %292 = load i32, i32* %34, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* @DIFF_EXIT, align 4
  %296 = call i32 @exit(i32 %295) #3
  unreachable

297:                                              ; preds = %79, %92, %291
  ret void
}

declare dso_local i32 @eofmsg(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @getpagesize(...) #1

declare dso_local i64 @ROUNDPAGE(i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i8* @remmap(i8*, i32, i64) #1

declare dso_local i32 @c_special(i32, i8*, i64, i32, i8*, i64) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @printf(i8*, i64, i8 signext, i8 signext) #1

declare dso_local i32 @diffmsg(i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
