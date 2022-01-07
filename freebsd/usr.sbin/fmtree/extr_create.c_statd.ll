; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_create.c_statd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_create.c_statd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.group = type { i8* }
%struct.passwd = type { i8* }

@MAXGID = common dso_local global i32 0, align 4
@MAXUID = common dso_local global i32 0, align 4
@MAXMODE = common dso_local global i32 0, align 4
@MAXFLAGS = common dso_local global i32 0, align 4
@statd.first = internal global i32 1, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dflag = common dso_local global i64 0, align 8
@MBITS = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@F_UID = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@F_GID = common dso_local global i32 0, align 4
@F_MODE = common dso_local global i32 0, align 4
@F_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/set type=dir\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/set type=file\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" uname=%s\00", align 1
@wflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not get uname for uid=%u\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" uid=%lu\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" gname=%s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Could not get gname for gid=%u\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" gid=%lu\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" mode=%#o\00", align 1
@F_NLINK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c" nlink=1\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" flags=%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*, i32*, i32*, i64*)* @statd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statd(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.group*, align 8
  %20 = alloca %struct.passwd*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %21, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %22, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %23, align 4
  %42 = load i64*, i64** %13, align 8
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %24, align 8
  %44 = load i32, i32* @MAXGID, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %29, align 8
  %47 = alloca i64, i64 %45, align 16
  store i64 %45, i64* %30, align 8
  %48 = load i32, i32* @MAXUID, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i64, i64 %49, align 16
  store i64 %49, i64* %31, align 8
  %51 = load i32, i32* @MAXMODE, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i64, i64 %52, align 16
  store i64 %52, i64* %32, align 8
  %54 = load i32, i32* @MAXFLAGS, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i64, i64 %55, align 16
  store i64 %55, i64* %33, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call %struct.TYPE_7__* @fts_children(i32* %57, i32 0)
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %14, align 8
  %59 = icmp eq %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %6
  %61 = load i64, i64* @errno, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = call i32 @RP(%struct.TYPE_7__* %64)
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  store i32 1, i32* %7, align 4
  store i32 1, i32* %35, align 4
  br label %378

68:                                               ; preds = %6
  %69 = mul nuw i64 8, %45
  %70 = trunc i64 %69 to i32
  %71 = call i32 @bzero(i64* %47, i32 %70)
  %72 = mul nuw i64 8, %49
  %73 = trunc i64 %72 to i32
  %74 = call i32 @bzero(i64* %50, i32 %73)
  %75 = mul nuw i64 8, %52
  %76 = trunc i64 %75 to i32
  %77 = call i32 @bzero(i64* %53, i32 %76)
  %78 = mul nuw i64 8, %55
  %79 = trunc i64 %78 to i32
  %80 = call i32 @bzero(i64* %56, i32 %79)
  store i64 0, i64* %28, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  br label %81

81:                                               ; preds = %208, %68
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %212

84:                                               ; preds = %81
  %85 = load i64, i64* @dflag, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i64, i64* @dflag, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %207

90:                                               ; preds = %87
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @S_ISDIR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %207

98:                                               ; preds = %90, %84
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MBITS, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @MAXMODE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %98
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %53, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load i64, i64* %27, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %53, i64 %120
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %27, align 8
  br label %123

123:                                              ; preds = %117, %109, %98
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @MAXGID, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %123
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %47, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %25, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %21, align 4
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %47, i64 %143
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %25, align 8
  br label %146

146:                                              ; preds = %140, %132, %123
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* @MAXUID, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %146
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %50, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load i64, i64* %26, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load i32, i32* %16, align 4
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %50, i64 %166
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %26, align 8
  br label %169

169:                                              ; preds = %163, %155, %146
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %18, align 8
  %175 = load i64, i64* %18, align 8
  %176 = and i64 %175, 15
  %177 = load i64, i64* %18, align 8
  %178 = ashr i64 %177, 12
  %179 = and i64 %178, 240
  %180 = or i64 %176, %179
  %181 = load i32, i32* @MAXFLAGS, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %180, %182
  br i1 %183, label %184, label %206

184:                                              ; preds = %169
  %185 = load i64, i64* %18, align 8
  %186 = and i64 %185, 15
  %187 = load i64, i64* %18, align 8
  %188 = ashr i64 %187, 12
  %189 = and i64 %188, 240
  %190 = or i64 %186, %189
  %191 = getelementptr inbounds i64, i64* %56, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %191, align 8
  %194 = load i64, i64* %28, align 8
  %195 = icmp sgt i64 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %184
  %197 = load i64, i64* %18, align 8
  store i64 %197, i64* %24, align 8
  %198 = load i64, i64* %18, align 8
  %199 = and i64 %198, 15
  %200 = load i64, i64* %18, align 8
  %201 = ashr i64 %200, 12
  %202 = and i64 %201, 240
  %203 = or i64 %199, %202
  %204 = getelementptr inbounds i64, i64* %56, i64 %203
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %28, align 8
  br label %206

206:                                              ; preds = %196, %184, %169
  br label %207

207:                                              ; preds = %206, %90, %87
  br label %208

208:                                              ; preds = %207
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  store %struct.TYPE_7__* %211, %struct.TYPE_7__** %14, align 8
  br label %81

212:                                              ; preds = %81
  %213 = load i32, i32* @keys, align 4
  %214 = load i32, i32* @F_UNAME, align 4
  %215 = and i32 %213, %214
  %216 = load i32, i32* @keys, align 4
  %217 = load i32, i32* @F_UID, align 4
  %218 = and i32 %216, %217
  %219 = or i32 %215, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %212
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %22, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %263, label %226

226:                                              ; preds = %221, %212
  %227 = load i32, i32* @keys, align 4
  %228 = load i32, i32* @F_GNAME, align 4
  %229 = and i32 %227, %228
  %230 = load i32, i32* @keys, align 4
  %231 = load i32, i32* @F_GID, align 4
  %232 = and i32 %230, %231
  %233 = or i32 %229, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %226
  %236 = load i32*, i32** %11, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %21, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %263, label %240

240:                                              ; preds = %235, %226
  %241 = load i32, i32* @keys, align 4
  %242 = load i32, i32* @F_MODE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load i32*, i32** %12, align 8
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %23, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %263, label %250

250:                                              ; preds = %245, %240
  %251 = load i32, i32* @keys, align 4
  %252 = load i32, i32* @F_FLAGS, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i64*, i64** %13, align 8
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %24, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %263, label %260

260:                                              ; preds = %255, %250
  %261 = load i32, i32* @statd.first, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %377

263:                                              ; preds = %260, %255, %245, %235, %221
  store i32 0, i32* @statd.first, align 4
  %264 = load i64, i64* @dflag, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %270

268:                                              ; preds = %263
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %270

270:                                              ; preds = %268, %266
  %271 = load i32, i32* @keys, align 4
  %272 = load i32, i32* @F_UNAME, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %296

275:                                              ; preds = %270
  %276 = load i32, i32* %22, align 4
  %277 = call %struct.passwd* @getpwuid(i32 %276)
  store %struct.passwd* %277, %struct.passwd** %20, align 8
  %278 = load %struct.passwd*, %struct.passwd** %20, align 8
  %279 = icmp ne %struct.passwd* %278, null
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load %struct.passwd*, %struct.passwd** %20, align 8
  %282 = getelementptr inbounds %struct.passwd, %struct.passwd* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %283)
  br label %295

285:                                              ; preds = %275
  %286 = load i64, i64* @wflag, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* %22, align 4
  %290 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %289)
  br label %294

291:                                              ; preds = %285
  %292 = load i32, i32* %22, align 4
  %293 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %291, %288
  br label %295

295:                                              ; preds = %294, %280
  br label %296

296:                                              ; preds = %295, %270
  %297 = load i32, i32* @keys, align 4
  %298 = load i32, i32* @F_UID, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load i32, i32* %22, align 4
  %303 = sext i32 %302 to i64
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %303)
  br label %305

305:                                              ; preds = %301, %296
  %306 = load i32, i32* @keys, align 4
  %307 = load i32, i32* @F_GNAME, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %331

310:                                              ; preds = %305
  %311 = load i32, i32* %21, align 4
  %312 = call %struct.group* @getgrgid(i32 %311)
  store %struct.group* %312, %struct.group** %19, align 8
  %313 = load %struct.group*, %struct.group** %19, align 8
  %314 = icmp ne %struct.group* %313, null
  br i1 %314, label %315, label %320

315:                                              ; preds = %310
  %316 = load %struct.group*, %struct.group** %19, align 8
  %317 = getelementptr inbounds %struct.group, %struct.group* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %318)
  br label %330

320:                                              ; preds = %310
  %321 = load i64, i64* @wflag, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i32, i32* %21, align 4
  %325 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %324)
  br label %329

326:                                              ; preds = %320
  %327 = load i32, i32* %21, align 4
  %328 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %327)
  br label %329

329:                                              ; preds = %326, %323
  br label %330

330:                                              ; preds = %329, %315
  br label %331

331:                                              ; preds = %330, %305
  %332 = load i32, i32* @keys, align 4
  %333 = load i32, i32* @F_GID, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %331
  %337 = load i32, i32* %21, align 4
  %338 = sext i32 %337 to i64
  %339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 %338)
  br label %340

340:                                              ; preds = %336, %331
  %341 = load i32, i32* @keys, align 4
  %342 = load i32, i32* @F_MODE, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = load i32, i32* %23, align 4
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %346)
  br label %348

348:                                              ; preds = %345, %340
  %349 = load i32, i32* @keys, align 4
  %350 = load i32, i32* @F_NLINK, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %355

355:                                              ; preds = %353, %348
  %356 = load i32, i32* @keys, align 4
  %357 = load i32, i32* @F_FLAGS, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %355
  %361 = load i64, i64* %24, align 8
  %362 = call i8* @flags_to_string(i64 %361)
  store i8* %362, i8** %34, align 8
  %363 = load i8*, i8** %34, align 8
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %363)
  %365 = load i8*, i8** %34, align 8
  %366 = call i32 @free(i8* %365)
  br label %367

367:                                              ; preds = %360, %355
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %369 = load i32, i32* %22, align 4
  %370 = load i32*, i32** %10, align 8
  store i32 %369, i32* %370, align 4
  %371 = load i32, i32* %21, align 4
  %372 = load i32*, i32** %11, align 8
  store i32 %371, i32* %372, align 4
  %373 = load i32, i32* %23, align 4
  %374 = load i32*, i32** %12, align 8
  store i32 %373, i32* %374, align 4
  %375 = load i64, i64* %24, align 8
  %376 = load i64*, i64** %13, align 8
  store i64 %375, i64* %376, align 8
  br label %377

377:                                              ; preds = %367, %260
  store i32 0, i32* %7, align 4
  store i32 1, i32* %35, align 4
  br label %378

378:                                              ; preds = %377, %67
  %379 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %379)
  %380 = load i32, i32* %7, align 4
  ret i32 %380
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @fts_children(i32*, i32) #2

declare dso_local i32 @err(i32, i8*, i32) #2

declare dso_local i32 @RP(%struct.TYPE_7__*) #2

declare dso_local i32 @bzero(i64*, i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i32 @warnx(i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local %struct.group* @getgrgid(i32) #2

declare dso_local i8* @flags_to_string(i64) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
