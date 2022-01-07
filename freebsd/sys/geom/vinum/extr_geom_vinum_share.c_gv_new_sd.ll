; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_new_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_new_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_sd = type { i32, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"drive\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"plex\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"driveoffset\00", align 1
@GV_DATA_START = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"plexoffset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gv_sd* @gv_new_sd(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.gv_sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.gv_sd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %2
  store %struct.gv_sd* null, %struct.gv_sd** %3, align 8
  br label %287

21:                                               ; preds = %13
  %22 = call %struct.gv_sd* (...) @gv_alloc_sd()
  store %struct.gv_sd* %22, %struct.gv_sd** %6, align 8
  %23 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %24 = icmp eq %struct.gv_sd* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.gv_sd* null, %struct.gv_sd** %3, align 8
  br label %287

26:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %267, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %270

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %270

48:                                               ; preds = %39
  %49 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %50 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strlcpy(i32 %51, i8* %56, i32 4)
  br label %266

58:                                               ; preds = %31
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %270

75:                                               ; preds = %66
  %76 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %77 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strlcpy(i32 %78, i8* %83, i32 4)
  br label %265

85:                                               ; preds = %58
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %270

102:                                              ; preds = %93
  %103 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %104 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strlcpy(i32 %105, i8* %110, i32 4)
  br label %264

112:                                              ; preds = %85
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %270

129:                                              ; preds = %120
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @gv_sdstatei(i8* %134)
  %136 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %137 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  br label %263

138:                                              ; preds = %112
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %138
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %181, label %154

154:                                              ; preds = %146, %138
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %270

163:                                              ; preds = %154
  %164 = load i8**, i8*** %5, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @gv_sizespec(i8* %168)
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %172 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %174 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sle i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %163
  %178 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %179 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %178, i32 0, i32 0
  store i32 -1, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %163
  br label %262

181:                                              ; preds = %146
  %182 = load i8**, i8*** %5, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %222, label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %270

198:                                              ; preds = %189
  %199 = load i8**, i8*** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i8* @gv_sizespec(i8* %203)
  %205 = ptrtoint i8* %204 to i64
  %206 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %207 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  %208 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %209 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %198
  %213 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %214 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @GV_DATA_START, align 8
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %270

221:                                              ; preds = %212, %198
  br label %261

222:                                              ; preds = %181
  %223 = load i8**, i8*** %5, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %257, label %230

230:                                              ; preds = %222
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %4, align 4
  %235 = icmp sge i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %270

239:                                              ; preds = %230
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = call i8* @gv_sizespec(i8* %244)
  %246 = ptrtoint i8* %245 to i64
  %247 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %248 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %247, i32 0, i32 2
  store i64 %246, i64* %248, align 8
  %249 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %250 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %239
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %270

256:                                              ; preds = %239
  br label %260

257:                                              ; preds = %222
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %8, align 4
  br label %270

260:                                              ; preds = %256
  br label %261

261:                                              ; preds = %260, %221
  br label %262

262:                                              ; preds = %261, %180
  br label %263

263:                                              ; preds = %262, %129
  br label %264

264:                                              ; preds = %263, %102
  br label %265

265:                                              ; preds = %264, %75
  br label %266

266:                                              ; preds = %265, %48
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %7, align 4
  br label %27

270:                                              ; preds = %257, %253, %236, %218, %195, %160, %126, %99, %72, %45, %27
  %271 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %272 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call i64 @strlen(i32 %273)
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %276, %270
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %284 = call i32 @g_free(%struct.gv_sd* %283)
  store %struct.gv_sd* null, %struct.gv_sd** %3, align 8
  br label %287

285:                                              ; preds = %279
  %286 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  store %struct.gv_sd* %286, %struct.gv_sd** %3, align 8
  br label %287

287:                                              ; preds = %285, %282, %25, %20
  %288 = load %struct.gv_sd*, %struct.gv_sd** %3, align 8
  ret %struct.gv_sd* %288
}

declare dso_local %struct.gv_sd* @gv_alloc_sd(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @gv_sdstatei(i8*) #1

declare dso_local i8* @gv_sizespec(i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @g_free(%struct.gv_sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
