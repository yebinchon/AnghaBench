; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_LoadDNS.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_LoadDNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.stat = type { i32 }

@INADDR_NONE = common dso_local global i64 0, align 8
@_PATH_RESCONF = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to malloc %lu for %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed(2) to malloc %lu for %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to read %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to read %s, got %lu not %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nameserver\00", align 1
@INADDR_ANY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to stat opened %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipcp_LoadDNS(%struct.ipcp* %0) #0 {
  %2 = alloca %struct.ipcp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.ipcp* %0, %struct.ipcp** %2, align 8
  %11 = load i64, i64* @INADDR_NONE, align 8
  %12 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %13 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i64 %11, i64* %17, align 8
  %18 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %19 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 %11, i64* %23, align 8
  %24 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %25 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %31 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %36 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %40 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %46 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %51 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* null, i8** %52, align 8
  br label %53

53:                                               ; preds = %44, %38
  %54 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %55 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* @_PATH_RESCONF, align 4
  %58 = load i32, i32* @O_RDONLY, align 4
  %59 = call i32 @open(i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %369

61:                                               ; preds = %53
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @fstat(i32 %62, %struct.stat* %4)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %358

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i64 @malloc(i32 %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %72 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = icmp eq i8* %70, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load i32, i32* @LogERROR, align 4
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* @_PATH_RESCONF, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @strerror(i32 %82)
  %84 = call i32 (i32, i8*, i64, i64, ...) @log_Printf(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %79, i64 %81, i32 %83)
  br label %357

85:                                               ; preds = %65
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i64 @malloc(i32 %88)
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %92 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = icmp eq i8* %90, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %85
  %96 = load i32, i32* @LogERROR, align 4
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* @_PATH_RESCONF, align 4
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 @strerror(i32 %102)
  %104 = call i32 (i32, i8*, i64, i64, ...) @log_Printf(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %99, i64 %101, i32 %103)
  %105 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %106 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %111 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i8* null, i8** %112, align 8
  br label %356

113:                                              ; preds = %85
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %116 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @read(i32 %114, i8* %118, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %163

125:                                              ; preds = %113
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i32, i32* @LogERROR, align 4
  %130 = load i32, i32* @_PATH_RESCONF, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* @errno, align 4
  %133 = call i32 @strerror(i32 %132)
  %134 = sext i32 %133 to i64
  %135 = call i32 (i32, i8*, i64, i64, ...) @log_Printf(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %131, i64 %134)
  br label %146

136:                                              ; preds = %125
  %137 = load i32, i32* @LogERROR, align 4
  %138 = load i32, i32* @_PATH_RESCONF, align 4
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = call i32 (i32, i8*, i64, i64, ...) @log_Printf(i32 %137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %139, i64 %141, i64 %144)
  br label %146

146:                                              ; preds = %136, %128
  %147 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %148 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %153 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i8* null, i8** %154, align 8
  %155 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %156 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %161 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i8* null, i8** %162, align 8
  br label %355

163:                                              ; preds = %113
  %164 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %165 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  store i8 0, i8* %171, align 1
  %172 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %173 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  store i32 1, i32* %174, align 8
  %175 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %176 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %7, align 8
  %179 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %180 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %287, %224, %163
  %184 = load i8*, i8** %6, align 8
  %185 = call i8* @strstr(i8* %184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %185, i8** %8, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %288

187:                                              ; preds = %183
  %188 = load i8*, i8** %8, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = icmp ne i8* %188, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %187
  %192 = load i8*, i8** %7, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = load i8*, i8** %6, align 8
  %196 = ptrtoint i8* %194 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @memcpy(i8* %192, i8* %193, i32 %199)
  %201 = load i8*, i8** %8, align 8
  %202 = load i8*, i8** %6, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = load i8*, i8** %7, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 %205
  store i8* %207, i8** %7, align 8
  br label %208

208:                                              ; preds = %191, %187
  %209 = load i8*, i8** %8, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = icmp ne i8* %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load i8*, i8** %8, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 -1
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp ne i32 %216, 10
  br i1 %217, label %224, label %218

218:                                              ; preds = %212, %208
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 10
  %221 = load i8, i8* %220, align 1
  %222 = call i64 @issep(i8 signext %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %218, %212
  %225 = load i8*, i8** %7, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = call i32 @memcpy(i8* %225, i8* %226, i32 9)
  %228 = load i8*, i8** %7, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 9
  store i8* %229, i8** %7, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 9
  store i8* %231, i8** %6, align 8
  br label %183

232:                                              ; preds = %218
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 11
  store i8* %234, i8** %6, align 8
  br label %235

235:                                              ; preds = %241, %232
  %236 = load i8*, i8** %6, align 8
  %237 = load i8, i8* %236, align 1
  %238 = call i64 @issep(i8 signext %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  br label %241

241:                                              ; preds = %240
  %242 = load i8*, i8** %6, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %6, align 8
  br label %235

244:                                              ; preds = %235
  %245 = load i8*, i8** %6, align 8
  store i8* %245, i8** %8, align 8
  br label %246

246:                                              ; preds = %252, %244
  %247 = load i8*, i8** %8, align 8
  %248 = load i8, i8* %247, align 1
  %249 = call i64 @isip(i8 signext %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  br label %252

252:                                              ; preds = %251
  %253 = load i8*, i8** %8, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %8, align 8
  br label %246

255:                                              ; preds = %246
  %256 = load i8*, i8** %8, align 8
  %257 = load i8, i8* %256, align 1
  store i8 %257, i8* %9, align 1
  %258 = load i8*, i8** %8, align 8
  store i8 0, i8* %258, align 1
  %259 = load i32, i32* %10, align 4
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %261, label %272

261:                                              ; preds = %255
  %262 = load i8*, i8** %6, align 8
  %263 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %264 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = call i64 @inet_aton(i8* %262, %struct.TYPE_6__* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %261
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %10, align 4
  br label %272

272:                                              ; preds = %269, %261, %255
  %273 = load i8, i8* %9, align 1
  %274 = load i8*, i8** %8, align 8
  store i8 %273, i8* %274, align 1
  %275 = load i8*, i8** %8, align 8
  %276 = call i8* @strchr(i8* %275, i8 signext 10)
  store i8* %276, i8** %6, align 8
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %284

278:                                              ; preds = %272
  %279 = load i8*, i8** %8, align 8
  %280 = load i8*, i8** %8, align 8
  %281 = call i32 @strlen(i8* %280)
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  store i8* %283, i8** %6, align 8
  br label %287

284:                                              ; preds = %272
  %285 = load i8*, i8** %6, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %6, align 8
  br label %287

287:                                              ; preds = %284, %278
  br label %183

288:                                              ; preds = %183
  %289 = load i8*, i8** %7, align 8
  %290 = load i8*, i8** %6, align 8
  %291 = call i32 @strcpy(i8* %289, i8* %290)
  %292 = load i8*, i8** %7, align 8
  %293 = call i32 @strlen(i8* %292)
  %294 = sub nsw i32 %293, 1
  %295 = load i8*, i8** %7, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  store i8* %297, i8** %7, align 8
  br label %298

298:                                              ; preds = %312, %288
  %299 = load i8*, i8** %7, align 8
  %300 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %301 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = icmp uge i8* %299, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %298
  %306 = load i8*, i8** %7, align 8
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 10
  br label %310

310:                                              ; preds = %305, %298
  %311 = phi i1 [ false, %298 ], [ %309, %305 ]
  br i1 %311, label %312, label %315

312:                                              ; preds = %310
  %313 = load i8*, i8** %7, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 -1
  store i8* %314, i8** %7, align 8
  store i8 0, i8* %313, align 1
  br label %298

315:                                              ; preds = %310
  %316 = load i32, i32* %10, align 4
  %317 = icmp eq i32 %316, 2
  br i1 %317, label %318, label %349

318:                                              ; preds = %315
  %319 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %320 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 3
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i64 0
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @INADDR_ANY, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %349

328:                                              ; preds = %318
  %329 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %330 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 3
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i64 1
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %337 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i64 0
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  store i64 %335, i64* %341, align 8
  %342 = load i64, i64* @INADDR_ANY, align 8
  %343 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %344 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 3
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i64 1
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  store i64 %342, i64* %348, align 8
  br label %349

349:                                              ; preds = %328, %318, %315
  %350 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %351 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @bundle_AdjustDNS(i32 %353)
  br label %355

355:                                              ; preds = %349, %146
  br label %356

356:                                              ; preds = %355, %95
  br label %357

357:                                              ; preds = %356, %75
  br label %366

358:                                              ; preds = %61
  %359 = load i32, i32* @LogERROR, align 4
  %360 = load i32, i32* @_PATH_RESCONF, align 4
  %361 = sext i32 %360 to i64
  %362 = load i32, i32* @errno, align 4
  %363 = call i32 @strerror(i32 %362)
  %364 = sext i32 %363 to i64
  %365 = call i32 (i32, i8*, i64, i64, ...) @log_Printf(i32 %359, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %361, i64 %364)
  br label %366

366:                                              ; preds = %358, %357
  %367 = load i32, i32* %3, align 4
  %368 = call i32 @close(i32 %367)
  br label %369

369:                                              ; preds = %366, %53
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @issep(i8 signext) #1

declare dso_local i64 @isip(i8 signext) #1

declare dso_local i64 @inet_aton(i8*, %struct.TYPE_6__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @bundle_AdjustDNS(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
