; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/tmpfs/extr_h_tools.c_kqueue_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/tmpfs/extr_h_tools.c_kqueue_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i64, i32 }
%struct.timespec = type { i32, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@EVFILT_VNODE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_ATTRIB = common dso_local global i32 0, align 4
@NOTE_DELETE = common dso_local global i32 0, align 4
@NOTE_EXTEND = common dso_local global i32 0, align 4
@NOTE_LINK = common dso_local global i32 0, align 4
@NOTE_RENAME = common dso_local global i32 0, align 4
@NOTE_REVOKE = common dso_local global i32 0, align 4
@NOTE_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@stdin = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s returned %d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s - NOTE_ATTRIB\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s - NOTE_DELETE\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s - NOTE_EXTEND\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s - NOTE_LINK\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%s - NOTE_RENAME\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%s - NOTE_REVOKE\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%s - NOTE_WRITE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kqueue_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.kevent*, align 8
  %11 = alloca %struct.kevent, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %19, i32* %3, align 4
  br label %286

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 16, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.kevent* @malloc(i32 %29)
  store %struct.kevent* %30, %struct.kevent** %10, align 8
  %31 = load %struct.kevent*, %struct.kevent** %10, align 8
  %32 = icmp eq %struct.kevent* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 (i32, i8*, ...) @errx(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %20
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %85, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call i32 @open(i8* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, ...) @err(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %51, %41
  %60 = load %struct.kevent*, %struct.kevent** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.kevent, %struct.kevent* %60, i64 %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @EVFILT_VNODE, align 4
  %66 = load i32, i32* @EV_ADD, align 4
  %67 = load i32, i32* @EV_ENABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @EV_ONESHOT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NOTE_ATTRIB, align 4
  %72 = load i32, i32* @NOTE_DELETE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @NOTE_EXTEND, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @NOTE_LINK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @NOTE_RENAME, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NOTE_REVOKE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @NOTE_WRITE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @EV_SET(%struct.kevent* %63, i32 %64, i32 %65, i32 %70, i32 %83, i32 0, i32 0)
  br label %85

85:                                               ; preds = %59
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %37

88:                                               ; preds = %37
  %89 = call i32 (...) @kqueue()
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @EXIT_FAILURE, align 4
  %94 = call i32 (i32, i8*, ...) @err(i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %88
  br label %96

96:                                               ; preds = %265, %95
  %97 = load i32, i32* @stdin, align 4
  %98 = call i8* @fgetln(i32 %97, i64* %9)
  store i8* %98, i8** %6, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %266

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 100000, i32* %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.kevent*, %struct.kevent** %10, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @kevent(i32 %103, %struct.kevent* %104, i32 %105, %struct.kevent* %11, i32 1, %struct.timespec* %15)
  %107 = load i64, i64* %9, align 8
  %108 = icmp ugt i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %9, align 8
  %113 = sub i64 %112, 1
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 10
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i8*, i8** %6, align 8
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %121, 1
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @system(i8* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @EXIT_SUCCESS, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %100
  %130 = load i32, i32* %13, align 4
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 (i32, i8*, ...) @errx(i32 %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %100
  br label %135

135:                                              ; preds = %262, %134
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.kevent*, %struct.kevent** %10, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @kevent(i32 %136, %struct.kevent* %137, i32 %138, %struct.kevent* %11, i32 1, %struct.timespec* %15)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* @EXIT_FAILURE, align 4
  %144 = call i32 (i32, i8*, ...) @err(i32 %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %261

145:                                              ; preds = %135
  %146 = load i32, i32* %14, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %260

148:                                              ; preds = %145
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %165, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.kevent*, %struct.kevent** %10, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.kevent, %struct.kevent* %156, i64 %158
  %160 = getelementptr inbounds %struct.kevent, %struct.kevent* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %155, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  br label %168

164:                                              ; preds = %153
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %149

168:                                              ; preds = %163, %149
  %169 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @NOTE_ATTRIB, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %174, %168
  %182 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @NOTE_DELETE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %181
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %192)
  br label %194

194:                                              ; preds = %187, %181
  %195 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @NOTE_EXTEND, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load i8**, i8*** %5, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %205)
  br label %207

207:                                              ; preds = %200, %194
  %208 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @NOTE_LINK, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %207
  %214 = load i8**, i8*** %5, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %213, %207
  %221 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @NOTE_RENAME, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %220
  %227 = load i8**, i8*** %5, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %231)
  br label %233

233:                                              ; preds = %226, %220
  %234 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @NOTE_REVOKE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %233
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %244)
  br label %246

246:                                              ; preds = %239, %233
  %247 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @NOTE_WRITE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = load i8**, i8*** %5, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %252, %246
  br label %260

260:                                              ; preds = %259, %145
  br label %261

261:                                              ; preds = %260, %142
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %14, align 4
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %135, label %265

265:                                              ; preds = %262
  br label %96

266:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %267

267:                                              ; preds = %279, %266
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %4, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %282

271:                                              ; preds = %267
  %272 = load %struct.kevent*, %struct.kevent** %10, align 8
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.kevent, %struct.kevent* %272, i64 %274
  %276 = getelementptr inbounds %struct.kevent, %struct.kevent* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @close(i64 %277)
  br label %279

279:                                              ; preds = %271
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %7, align 4
  br label %267

282:                                              ; preds = %267
  %283 = load %struct.kevent*, %struct.kevent** %10, align 8
  %284 = call i32 @free(%struct.kevent* %283)
  %285 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %282, %18
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local %struct.kevent* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i8* @fgetln(i32, i64*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(%struct.kevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
