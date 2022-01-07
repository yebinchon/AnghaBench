; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_do_rotate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_do_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_entry = type { i32, i8*, i32, i64, i32, i32* }
%struct.sigwork_entry = type { i32 }
%struct.stat = type { i32 }
%struct.tm = type { i32 }
%struct.zipwork_entry = type { i32, i32, %struct.conf_entry* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@FREE_ENT = common dso_local global i32 0, align 4
@archtodir = common dso_local global i64 0, align 8
@archdirname = common dso_local global i8* null, align 8
@timefnamefmt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@noaction = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"\09mv %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09cp %s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\09ln %s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\09touch %s\09\09# Update mtime for 'when'-interval processing\0A\00", align 1
@CE_BINARY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Start new log...\0A\00", align 1
@COMPRESS_NONE = common dso_local global i64 0, align 8
@CE_PLAIN0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@KEEP_ENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.conf_entry*)* @do_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rotate(%struct.conf_entry* %0) #0 {
  %2 = alloca %struct.conf_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [30 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sigwork_entry*, align 8
  %16 = alloca %struct.stat, align 4
  %17 = alloca %struct.tm, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.zipwork_entry, align 8
  store %struct.conf_entry* %0, %struct.conf_entry** %2, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %3, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %4, align 8
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %5, align 8
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %6, align 8
  %31 = load i32, i32* @MAXPATHLEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %7, align 8
  %34 = load i32, i32* @MAXPATHLEN, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %8, align 8
  %37 = load i32, i32* @MAXPATHLEN, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %9, align 8
  %40 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %41 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @FREE_ENT, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i64, i64* @archtodir, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %96

46:                                               ; preds = %1
  %47 = load i8*, i8** @archdirname, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8*, i8** @archdirname, align 8
  %53 = trunc i64 %22 to i32
  %54 = call i32 @strlcpy(i8* %24, i8* %52, i32 %53)
  br label %72

55:                                               ; preds = %46
  %56 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %57 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = trunc i64 %22 to i32
  %60 = call i32 @strlcpy(i8* %24, i8* %58, i32 %59)
  %61 = call i8* @strrchr(i8* %24, i8 signext 47)
  store i8* %61, i8** %19, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %64, align 16
  br label %68

65:                                               ; preds = %55
  %66 = load i8*, i8** %19, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %65, %63
  %69 = load i8*, i8** @archdirname, align 8
  %70 = trunc i64 %22 to i32
  %71 = call i32 @strlcat(i8* %24, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %51
  %73 = call i64 @lstat(i8* %24, %struct.stat* %16)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %77 = call i32 @createdir(%struct.conf_entry* %76, i8* %24)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %80 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strrchr(i8* %81, i8 signext 47)
  store i8* %82, i8** %19, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %86 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = trunc i64 %26 to i32
  %89 = call i32 @strlcpy(i8* %27, i8* %87, i32 %88)
  br label %95

90:                                               ; preds = %78
  %91 = load i8*, i8** %19, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = trunc i64 %26 to i32
  %94 = call i32 @strlcpy(i8* %27, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %84
  br label %103

96:                                               ; preds = %1
  %97 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %97, align 16
  %98 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %99 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = trunc i64 %26 to i32
  %102 = call i32 @strlcpy(i8* %27, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %95
  %104 = load i32*, i32** @timefnamefmt, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %108 = call i32 @delete_oldest_timelog(%struct.conf_entry* %107, i8* %24)
  br label %125

109:                                              ; preds = %103
  %110 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %111 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @delete_classiclog(i8* %24, i8* %27, i32 %112)
  %114 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %115 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %120 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @delete_classiclog(i8* %24, i8* %27, i32 %122)
  br label %124

124:                                              ; preds = %118, %109
  br label %125

125:                                              ; preds = %124, %106
  %126 = load i32*, i32** @timefnamefmt, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = call i64 @time(i64* %18)
  %130 = icmp eq i64 %129, -1
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = call i32* @localtime_r(i64* %18, %struct.tm* %17)
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131, %128
  %135 = call i32 @bzero(%struct.tm* %17, i32 4)
  br label %136

136:                                              ; preds = %134, %131
  %137 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %138 = load i32*, i32** @timefnamefmt, align 8
  %139 = call i32 @strftime(i8* %137, i32 30, i32* %138, %struct.tm* %17)
  %140 = load i64, i64* @archtodir, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = trunc i64 %29 to i32
  %144 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %145 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %30, i32 %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %27, i8* %144)
  br label %153

146:                                              ; preds = %136
  %147 = trunc i64 %29 to i32
  %148 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %149 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %152 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %30, i32 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %150, i8* %151)
  br label %153

153:                                              ; preds = %146, %142
  store i32 -1, i32* %13, align 4
  br label %165

154:                                              ; preds = %125
  %155 = trunc i64 %29 to i32
  %156 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %157 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %158, 1
  %160 = call i32 @gen_classiclog_fname(i8* %30, i32 %155, i8* %24, i8* %27, i32 %159)
  %161 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %162 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 2
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %154, %153
  br label %166

166:                                              ; preds = %218, %165
  %167 = load i32, i32* %13, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %221

169:                                              ; preds = %166
  %170 = trunc i64 %32 to i32
  %171 = call i32 @strlcpy(i8* %33, i8* %30, i32 %170)
  %172 = trunc i64 %29 to i32
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @gen_classiclog_fname(i8* %30, i32 %172, i8* %24, i8* %27, i32 %173)
  %175 = call i8* @get_logfile_suffix(i8* %30)
  store i8* %175, i8** %10, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %218

179:                                              ; preds = %169
  %180 = load i32, i32* @MAXPATHLEN, align 4
  %181 = call i32 @strlcpy(i8* %36, i8* %30, i32 %180)
  %182 = load i32, i32* @MAXPATHLEN, align 4
  %183 = call i32 @strlcpy(i8* %39, i8* %33, i32 %182)
  %184 = load i8*, i8** %10, align 8
  %185 = load i32, i32* @MAXPATHLEN, align 4
  %186 = call i32 @strlcat(i8* %36, i8* %184, i32 %185)
  %187 = load i8*, i8** %10, align 8
  %188 = load i32, i32* @MAXPATHLEN, align 4
  %189 = call i32 @strlcat(i8* %39, i8* %187, i32 %188)
  %190 = load i64, i64* @noaction, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %179
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %39)
  br label %217

194:                                              ; preds = %179
  %195 = call i32 @rename(i8* %36, i8* %39)
  %196 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %197 = call i32 @change_attrs(i8* %39, %struct.conf_entry* %196)
  %198 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %199 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %194
  %203 = load i8*, i8** %10, align 8
  %204 = call i32 @strlen(i8* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %202
  %207 = call i32 @memset(%struct.zipwork_entry* %20, i32 0, i32 16)
  %208 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %209 = getelementptr inbounds %struct.zipwork_entry, %struct.zipwork_entry* %20, i32 0, i32 2
  store %struct.conf_entry* %208, %struct.conf_entry** %209, align 8
  %210 = call i32 @sizefile(i8* %39)
  %211 = getelementptr inbounds %struct.zipwork_entry, %struct.zipwork_entry* %20, i32 0, i32 1
  store i32 %210, i32* %211, align 4
  %212 = getelementptr inbounds %struct.zipwork_entry, %struct.zipwork_entry* %20, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @strcpy(i32 %213, i8* %39)
  %215 = call i32 @do_zipwork(%struct.zipwork_entry* %20)
  br label %216

216:                                              ; preds = %206, %202, %194
  br label %217

217:                                              ; preds = %216, %192
  br label %218

218:                                              ; preds = %217, %178
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %13, align 4
  br label %166

221:                                              ; preds = %166
  %222 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %223 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %264

226:                                              ; preds = %221
  %227 = load i64, i64* @noaction, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %226
  %230 = load i64, i64* @archtodir, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %234 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %235, i8* %30)
  br label %242

237:                                              ; preds = %229
  %238 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %239 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %240, i8* %30)
  br label %242

242:                                              ; preds = %237, %232
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %30)
  br label %261

244:                                              ; preds = %226
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @CE_BINARY, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %244
  %250 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %251 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %254 = call i32 @log_trim(i8* %252, %struct.conf_entry* %253)
  br label %255

255:                                              ; preds = %249, %244
  %256 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %257 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @savelog(i8* %258, i8* %30)
  %260 = call i32 @utimes(i8* %30, i32* null)
  br label %261

261:                                              ; preds = %255, %242
  %262 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %263 = call i32 @change_attrs(i8* %30, %struct.conf_entry* %262)
  br label %264

264:                                              ; preds = %261, %221
  %265 = load i64, i64* @noaction, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %264
  %270 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %271 = call i32 @createlog(%struct.conf_entry* %270)
  store %struct.sigwork_entry* null, %struct.sigwork_entry** %15, align 8
  %272 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %273 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %272, i32 0, i32 5
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %278 = call %struct.sigwork_entry* @save_sigwork(%struct.conf_entry* %277)
  store %struct.sigwork_entry* %278, %struct.sigwork_entry** %15, align 8
  br label %279

279:                                              ; preds = %276, %269
  %280 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %281 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %313

284:                                              ; preds = %279
  %285 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %286 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @COMPRESS_NONE, align 8
  %289 = icmp sgt i64 %287, %288
  br i1 %289, label %290, label %313

290:                                              ; preds = %284
  %291 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %292 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @CE_PLAIN0, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %290
  %298 = call i32 @strlen(i8* %30)
  %299 = sub nsw i32 %298, 2
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %30, i64 %300
  %302 = call i64 @strcmp(i8* %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %297, %290
  %305 = load i32, i32* @KEEP_ENT, align 4
  store i32 %305, i32* %14, align 4
  %306 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %307 = load %struct.sigwork_entry*, %struct.sigwork_entry** %15, align 8
  %308 = load %struct.conf_entry*, %struct.conf_entry** %2, align 8
  %309 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @save_zipwork(%struct.conf_entry* %306, %struct.sigwork_entry* %307, i32 %310, i8* %30)
  br label %312

312:                                              ; preds = %304, %297
  br label %313

313:                                              ; preds = %312, %284, %279
  %314 = load i32, i32* %14, align 4
  %315 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %315)
  ret i32 %314
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @createdir(%struct.conf_entry*, i8*) #2

declare dso_local i32 @delete_oldest_timelog(%struct.conf_entry*, i8*) #2

declare dso_local i32 @delete_classiclog(i8*, i8*, i32) #2

declare dso_local i64 @time(i64*) #2

declare dso_local i32* @localtime_r(i64*, %struct.tm*) #2

declare dso_local i32 @bzero(%struct.tm*, i32) #2

declare dso_local i32 @strftime(i8*, i32, i32*, %struct.tm*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @gen_classiclog_fname(i8*, i32, i8*, i8*, i32) #2

declare dso_local i8* @get_logfile_suffix(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @rename(i8*, i8*) #2

declare dso_local i32 @change_attrs(i8*, %struct.conf_entry*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memset(%struct.zipwork_entry*, i32, i32) #2

declare dso_local i32 @sizefile(i8*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @do_zipwork(%struct.zipwork_entry*) #2

declare dso_local i32 @log_trim(i8*, %struct.conf_entry*) #2

declare dso_local i32 @savelog(i8*, i8*) #2

declare dso_local i32 @utimes(i8*, i32*) #2

declare dso_local i32 @createlog(%struct.conf_entry*) #2

declare dso_local %struct.sigwork_entry* @save_sigwork(%struct.conf_entry*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @save_zipwork(%struct.conf_entry*, %struct.sigwork_entry*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
