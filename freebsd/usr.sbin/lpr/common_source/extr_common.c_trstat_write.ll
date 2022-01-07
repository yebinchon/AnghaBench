; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_trstat_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_trstat_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"prnt\00", align 1
@_PATH_DEFDEVLP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c".na.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s %s %s %s %03ld %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" user=%s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" secs=%#.2f bytes=%lu\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" bps=%#.2e\00", align 1
@from_ip = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c" sip=%s\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" shost=%s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" rhost=%s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" rdev=%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@STATLINE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trstat_write(%struct.printer* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.printer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.printer* %0, %struct.printer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %27 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %31 = load %struct.printer*, %struct.printer** %7, align 8
  %32 = getelementptr inbounds %struct.printer, %struct.printer* %31, i32 0, i32 8
  %33 = call i32 @lpd_gettime(i32* %32, i32* null, i64 0)
  %34 = load %struct.printer*, %struct.printer** %7, align 8
  %35 = getelementptr inbounds %struct.printer, %struct.printer* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.printer*, %struct.printer** %7, align 8
  %38 = getelementptr inbounds %struct.printer, %struct.printer* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call double @DIFFTIME_TS(i32 %36, i32 %39)
  store double %40, double* %13, align 8
  %41 = trunc i64 %28 to i32
  %42 = call i32 @gethostname(i8* %30, i32 %41)
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %20, align 8
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %68 [
    i32 128, label %44
    i32 129, label %49
    i32 130, label %54
  ]

44:                                               ; preds = %6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %45 = load %struct.printer*, %struct.printer** %7, align 8
  %46 = getelementptr inbounds %struct.printer, %struct.printer* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %25, align 8
  store i8* %30, i8** %24, align 8
  %48 = load i8*, i8** %11, align 8
  store i8* %48, i8** %22, align 8
  br label %69

49:                                               ; preds = %6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %50 = load %struct.printer*, %struct.printer** %7, align 8
  %51 = getelementptr inbounds %struct.printer, %struct.printer* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %25, align 8
  %53 = load i8*, i8** %11, align 8
  store i8* %53, i8** %24, align 8
  store i8* %30, i8** %22, align 8
  br label %69

54:                                               ; preds = %6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %55 = load %struct.printer*, %struct.printer** %7, align 8
  %56 = getelementptr inbounds %struct.printer, %struct.printer* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %25, align 8
  store i8* %30, i8** %24, align 8
  %58 = load i8*, i8** @_PATH_DEFDEVLP, align 8
  store i8* %58, i8** %21, align 8
  %59 = load %struct.printer*, %struct.printer** %7, align 8
  %60 = getelementptr inbounds %struct.printer, %struct.printer* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.printer*, %struct.printer** %7, align 8
  %65 = getelementptr inbounds %struct.printer, %struct.printer* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %21, align 8
  br label %67

67:                                               ; preds = %63, %54
  br label %69

68:                                               ; preds = %6
  store i32 1, i32* %26, align 4
  br label %307

69:                                               ; preds = %67, %49, %44
  %70 = load i8*, i8** %25, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %26, align 4
  br label %307

73:                                               ; preds = %69
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i8*, i8** %12, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %12, align 8
  store i8* %82, i8** %20, align 8
  br label %84

83:                                               ; preds = %76, %73
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  br label %84

84:                                               ; preds = %83, %81
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i8* null, i8** %10, align 8
  br label %90

90:                                               ; preds = %89, %84
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %92 = load %struct.printer*, %struct.printer** %7, align 8
  %93 = getelementptr inbounds %struct.printer, %struct.printer* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.printer*, %struct.printer** %7, align 8
  %96 = getelementptr inbounds %struct.printer, %struct.printer* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = load %struct.printer*, %struct.printer** %7, align 8
  %100 = getelementptr inbounds %struct.printer, %struct.printer* %99, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.printer*, %struct.printer** %7, align 8
  %103 = getelementptr inbounds %struct.printer, %struct.printer* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %23, align 8
  %106 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %91, i64 1024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %94, i8* %97, i8* %98, i8* %101, i32 %104, i8* %105)
  br label %107

107:                                              ; preds = %90
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %109 = call i8* @strchr(i8* %108, i32 0)
  store i8* %109, i8** %19, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  store i64 %114, i64* %14, align 8
  br label %115

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  %117 = load i8*, i8** %10, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i8*, i8** %19, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %120, i64 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %126 = call i8* @strchr(i8* %125, i32 0)
  store i8* %126, i8** %19, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  store i64 %131, i64* %14, align 8
  br label %132

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %116
  %135 = load i8*, i8** %19, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load double, double* %13, align 8
  %138 = load i64, i64* %9, align 8
  %139 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %135, i64 %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), double %137, i64 %138)
  br label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %142 = call i8* @strchr(i8* %141, i32 0)
  store i8* %142, i8** %19, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  store i64 %147, i64* %14, align 8
  br label %148

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %9, align 8
  %151 = icmp ugt i64 %150, 25000
  br i1 %151, label %152, label %173

152:                                              ; preds = %149
  %153 = load double, double* %13, align 8
  %154 = fcmp ogt double %153, 1.100000e+00
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = load i8*, i8** %19, align 8
  %157 = load i64, i64* %14, align 8
  %158 = load i64, i64* %9, align 8
  %159 = uitofp i64 %158 to double
  %160 = load double, double* %13, align 8
  %161 = fdiv double %159, %160
  %162 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %156, i64 %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), double %161)
  br label %163

163:                                              ; preds = %155
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %165 = call i8* @strchr(i8* %164, i32 0)
  store i8* %165, i8** %19, align 8
  %166 = load i8*, i8** %19, align 8
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  store i64 %170, i64* %14, align 8
  br label %171

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172, %152, %149
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 129
  br i1 %175, label %176, label %199

176:                                              ; preds = %173
  %177 = load i64, i64* %14, align 8
  %178 = load i8*, i8** @from_ip, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = add nsw i32 5, %179
  %181 = sext i32 %180 to i64
  %182 = icmp ugt i64 %177, %181
  br i1 %182, label %183, label %198

183:                                              ; preds = %176
  %184 = load i8*, i8** %19, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i8*, i8** @from_ip, align 8
  %187 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %184, i64 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %186)
  br label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %190 = call i8* @strchr(i8* %189, i32 0)
  store i8* %190, i8** %19, align 8
  %191 = load i8*, i8** %19, align 8
  %192 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  store i64 %195, i64* %14, align 8
  br label %196

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197, %176
  br label %199

199:                                              ; preds = %198, %173
  %200 = load i8*, i8** %20, align 8
  %201 = load i8*, i8** %24, align 8
  %202 = call i64 @strcmp(i8* %200, i8* %201)
  %203 = icmp ne i64 0, %202
  br i1 %203, label %204, label %227

204:                                              ; preds = %199
  %205 = load i64, i64* %14, align 8
  %206 = load i8*, i8** %24, align 8
  %207 = call i32 @strlen(i8* %206)
  %208 = add nsw i32 7, %207
  %209 = sext i32 %208 to i64
  %210 = icmp ugt i64 %205, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %204
  %212 = load i8*, i8** %19, align 8
  %213 = load i64, i64* %14, align 8
  %214 = load i8*, i8** %24, align 8
  %215 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %212, i64 %213, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %218 = call i8* @strchr(i8* %217, i32 0)
  store i8* %218, i8** %19, align 8
  %219 = load i8*, i8** %19, align 8
  %220 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %221 = ptrtoint i8* %219 to i64
  %222 = ptrtoint i8* %220 to i64
  %223 = sub i64 %221, %222
  store i64 %223, i64* %14, align 8
  br label %224

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225, %204
  br label %227

227:                                              ; preds = %226, %199
  %228 = load i8*, i8** %22, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %253

230:                                              ; preds = %227
  %231 = load i64, i64* %14, align 8
  %232 = load i8*, i8** %22, align 8
  %233 = call i32 @strlen(i8* %232)
  %234 = add nsw i32 7, %233
  %235 = sext i32 %234 to i64
  %236 = icmp ugt i64 %231, %235
  br i1 %236, label %237, label %252

237:                                              ; preds = %230
  %238 = load i8*, i8** %19, align 8
  %239 = load i64, i64* %14, align 8
  %240 = load i8*, i8** %22, align 8
  %241 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %238, i64 %239, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %240)
  br label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %244 = call i8* @strchr(i8* %243, i32 0)
  store i8* %244, i8** %19, align 8
  %245 = load i8*, i8** %19, align 8
  %246 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  store i64 %249, i64* %14, align 8
  br label %250

250:                                              ; preds = %242
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251, %230
  br label %253

253:                                              ; preds = %252, %227
  %254 = load i8*, i8** %21, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %279

256:                                              ; preds = %253
  %257 = load i64, i64* %14, align 8
  %258 = load i8*, i8** %21, align 8
  %259 = call i32 @strlen(i8* %258)
  %260 = add nsw i32 6, %259
  %261 = sext i32 %260 to i64
  %262 = icmp ugt i64 %257, %261
  br i1 %262, label %263, label %278

263:                                              ; preds = %256
  %264 = load i8*, i8** %19, align 8
  %265 = load i64, i64* %14, align 8
  %266 = load i8*, i8** %21, align 8
  %267 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %264, i64 %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %270 = call i8* @strchr(i8* %269, i32 0)
  store i8* %270, i8** %19, align 8
  %271 = load i8*, i8** %19, align 8
  %272 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %273 = ptrtoint i8* %271 to i64
  %274 = ptrtoint i8* %272 to i64
  %275 = sub i64 %273, %274
  store i64 %275, i64* %14, align 8
  br label %276

276:                                              ; preds = %268
  br label %277

277:                                              ; preds = %276
  br label %278

278:                                              ; preds = %277, %256
  br label %279

279:                                              ; preds = %278, %253
  %280 = load i64, i64* %14, align 8
  %281 = icmp ugt i64 %280, 1
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i8*, i8** %19, align 8
  %284 = call i32 @strcpy(i8* %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %290

285:                                              ; preds = %279
  %286 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %287 = getelementptr inbounds i8, i8* %286, i64 1024
  %288 = getelementptr inbounds i8, i8* %287, i64 -2
  %289 = call i32 @strcpy(i8* %288, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %290

290:                                              ; preds = %285, %282
  %291 = load i8*, i8** %25, align 8
  %292 = load i32, i32* @O_WRONLY, align 4
  %293 = load i32, i32* @O_APPEND, align 4
  %294 = or i32 %292, %293
  %295 = call i32 @open(i8* %291, i32 %294, i32 436)
  store i32 %295, i32* %15, align 4
  %296 = load i32, i32* %15, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  store i32 1, i32* %26, align 4
  br label %307

299:                                              ; preds = %290
  %300 = load i32, i32* %15, align 4
  %301 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %302 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %303 = call i32 @strlen(i8* %302)
  %304 = call i32 @write(i32 %300, i8* %301, i32 %303)
  %305 = load i32, i32* %15, align 4
  %306 = call i32 @close(i32 %305)
  store i32 1, i32* %26, align 4
  br label %307

307:                                              ; preds = %299, %298, %72, %68
  %308 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %308)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lpd_gettime(i32*, i32*, i64) #2

declare dso_local double @DIFFTIME_TS(i32, i32) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
