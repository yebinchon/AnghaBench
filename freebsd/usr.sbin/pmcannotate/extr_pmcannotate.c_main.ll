; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }

@LNBUFF = common dso_local global i32 0, align 4
@FNBUFF = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ahl:k:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@R_OK = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: Impossible to locate the binary file\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: Impossible to locate the pmcstat file\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: Impossible to locate the kernel file\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@_PATH_TMP = common dso_local global i8* null, align 8
@TMPNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"%s: Cannot create tempfile templates\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%s: Impossible to create the tmp file\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"pmcstat -k %s -R %s -m %s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"pmcstat -R %s -m %s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"%s: Impossible to open the map file\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%p %s %p %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"%s: Invalid scan of function in the map file\0A\00", align 1
@totalsamples = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"%s: Impossible to create a new object\0A\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [38 x i8] c"%s: Impossible to close the filedesc\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"%s: Impossible to remove the tmpfile\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"%s: Impossible to generate an analysis\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"%s: Impossible to open the binary file\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"%s: Invalid format for the C file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.entry*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %29 = load i32, i32* @LNBUFF, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %6, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %7, align 8
  %33 = load i32, i32* @FNBUFF, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %8, align 8
  %36 = load i32, i32* @MAXPATHLEN, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %37, 50
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %12, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %15, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %28, align 4
  store float 5.000000e-01, float* %13, align 4
  br label %44

44:                                               ; preds = %62, %2
  %45 = load i32, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = call i32 @getopt(i32 %45, i8** %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %27, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i32, i32* %27, align 4
  switch i32 %50, label %59 [
    i32 97, label %51
    i32 107, label %52
    i32 108, label %54
    i32 104, label %58
    i32 63, label %58
  ]

51:                                               ; preds = %49
  store i32 1, i32* %28, align 4
  br label %62

52:                                               ; preds = %49
  %53 = load i8*, i8** @optarg, align 8
  store i8* %53, i8** %16, align 8
  br label %62

54:                                               ; preds = %49
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i64 @atof(i8* %55)
  %57 = sitofp i64 %56 to float
  store float %57, float* %13, align 4
  br label %62

58:                                               ; preds = %49, %49
  br label %59

59:                                               ; preds = %49, %58
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @usage(i8* %60)
  br label %62

62:                                               ; preds = %59, %54, %52, %51
  br label %44

63:                                               ; preds = %44
  %64 = load i64, i64* @optind, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  %69 = load i64, i64* @optind, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 %69
  store i8** %71, i8*** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @usage(i8* %75)
  br label %77

77:                                               ; preds = %74, %63
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %17, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %14, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i32, i32* @R_OK, align 4
  %86 = load i32, i32* @F_OK, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @access(i8* %84, i32 %87)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load i8*, i8** %15, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 @FATAL(i8* %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %77
  %95 = load i8*, i8** %17, align 8
  %96 = load i32, i32* @R_OK, align 4
  %97 = load i32, i32* @F_OK, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @access(i8* %95, i32 %98)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i8*, i8** %15, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @FATAL(i8* %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %101, %94
  %106 = load i8*, i8** %16, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* @R_OK, align 4
  %111 = load i32, i32* @F_OK, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @access(i8* %109, i32 %112)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i8*, i8** %15, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = call i32 @FATAL(i8* %116, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %115, %108, %105
  %120 = trunc i64 %39 to i32
  %121 = call i32 @bzero(i8* %40, i32 %120)
  %122 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %122, i8** %11, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i8*, i8** @_PATH_TMP, align 8
  %127 = load i32, i32* @TMPNAME, align 4
  %128 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %126, i32 %127)
  %129 = load i8*, i8** @_PATH_TMP, align 8
  %130 = load i32, i32* @TMPNAME, align 4
  %131 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %129, i32 %130)
  br label %139

132:                                              ; preds = %119
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* @TMPNAME, align 4
  %135 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %133, i32 %134)
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* @TMPNAME, align 4
  %138 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %136, i32 %137)
  br label %139

139:                                              ; preds = %132, %125
  %140 = load i8*, i8** %10, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %9, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142, %139
  %146 = load i8*, i8** %15, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 @FATAL(i8* %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @mkstemp(i8* %150)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i8*, i8** %15, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = call i32 @FATAL(i8* %154, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %153, %149
  %158 = load i8*, i8** %16, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = trunc i64 %39 to i32
  %162 = load i8*, i8** %16, align 8
  %163 = load i8*, i8** %17, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %40, i32 %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %162, i8* %163, i8* %164)
  br label %171

166:                                              ; preds = %157
  %167 = trunc i64 %39 to i32
  %168 = load i8*, i8** %17, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %40, i32 %167, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %168, i8* %169)
  br label %171

171:                                              ; preds = %166, %160
  %172 = call i64 @system(i8* %40)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i8*, i8** %15, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = call i32 @FATAL(i8* %175, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i8*, i8** %10, align 8
  %180 = call i32* @fopen(i8* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32* %180, i32** %19, align 8
  %181 = load i32*, i32** %19, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i8*, i8** %15, align 8
  %185 = load i8*, i8** %15, align 8
  %186 = call i32 @FATAL(i8* %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %183, %178
  br label %188

188:                                              ; preds = %232, %218, %198, %187
  %189 = load i32, i32* @LNBUFF, align 4
  %190 = load i32*, i32** %19, align 8
  %191 = call i32* @fgets(i8* %32, i32 %189, i32* %190)
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %235

193:                                              ; preds = %188
  %194 = getelementptr inbounds i8, i8* %32, i64 0
  %195 = load i8, i8* %194, align 16
  %196 = call i64 @isspace(i8 signext %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %188

199:                                              ; preds = %193
  %200 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %21, i8* %35, i8** %22, i8** %23)
  %201 = icmp ne i32 %200, 4
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i8*, i8** %15, align 8
  %204 = call i32 @FATAL(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i8* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i8*, i8** %22, align 8
  %207 = ptrtoint i8* %206 to i64
  store i64 %207, i64* %25, align 8
  %208 = load i8*, i8** %23, align 8
  %209 = ptrtoint i8* %208 to i64
  store i64 %209, i64* %26, align 8
  %210 = load i8*, i8** %21, align 8
  %211 = ptrtoint i8* %210 to i64
  store i64 %211, i64* %24, align 8
  %212 = load i32, i32* @totalsamples, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* @totalsamples, align 4
  %214 = load i64, i64* %24, align 8
  %215 = call %struct.entry* @general_findent(i64 %214)
  store %struct.entry* %215, %struct.entry** %18, align 8
  %216 = load %struct.entry*, %struct.entry** %18, align 8
  %217 = icmp ne %struct.entry* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %205
  %219 = load %struct.entry*, %struct.entry** %18, align 8
  %220 = call i32 @entry_acqref(%struct.entry* %219)
  br label %188

221:                                              ; preds = %205
  %222 = load i64, i64* %24, align 8
  %223 = load i64, i64* %25, align 8
  %224 = load i64, i64* %26, align 8
  %225 = call %struct.entry* @entry_create(i8* %35, i64 %222, i64 %223, i64 %224)
  store %struct.entry* %225, %struct.entry** %18, align 8
  %226 = load %struct.entry*, %struct.entry** %18, align 8
  %227 = icmp eq %struct.entry* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load i8*, i8** %15, align 8
  %230 = load i8*, i8** %15, align 8
  %231 = call i32 @FATAL(i8* %229, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %228, %221
  %233 = load %struct.entry*, %struct.entry** %18, align 8
  %234 = call i32 @general_insertent(%struct.entry* %233)
  br label %188

235:                                              ; preds = %188
  %236 = load i32*, i32** %19, align 8
  %237 = call i64 @fclose(i32* %236)
  %238 = load i64, i64* @EOF, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i8*, i8** %15, align 8
  %242 = load i8*, i8** %15, align 8
  %243 = call i32 @FATAL(i8* %241, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %242)
  br label %244

244:                                              ; preds = %240, %235
  %245 = load i8*, i8** %10, align 8
  %246 = call i32 @remove(i8* %245)
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = load i8*, i8** %15, align 8
  %250 = load i8*, i8** %15, align 8
  %251 = call i32 @FATAL(i8* %249, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %248, %244
  %253 = call i32 (...) @fqueue_insertgen()
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i8*, i8** %15, align 8
  %257 = load i8*, i8** %15, align 8
  %258 = call i32 @FATAL(i8* %256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %255, %252
  %260 = load float, float* %13, align 4
  %261 = call i32 @fqueue_compact(float %260)
  %262 = load i8*, i8** %14, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = load i32, i32* %28, align 4
  %265 = call i32 @fqueue_getall(i8* %262, i8* %263, i32 %264)
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %271

267:                                              ; preds = %259
  %268 = load i8*, i8** %15, align 8
  %269 = load i8*, i8** %15, align 8
  %270 = call i32 @FATAL(i8* %268, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %269)
  br label %271

271:                                              ; preds = %267, %259
  %272 = load i8*, i8** %9, align 8
  %273 = call i32* @fopen(i8* %272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32* %273, i32** %20, align 8
  %274 = load i32*, i32** %20, align 8
  %275 = icmp eq i32* %274, null
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load i8*, i8** %15, align 8
  %278 = load i8*, i8** %15, align 8
  %279 = call i32 @FATAL(i8* %277, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i8* %278)
  br label %280

280:                                              ; preds = %276, %271
  %281 = load i32, i32* %28, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32*, i32** %20, align 8
  %285 = call i32 @asmparse(i32* %284)
  br label %294

286:                                              ; preds = %280
  %287 = load i32*, i32** %20, align 8
  %288 = call i32 @cparse(i32* %287)
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i8*, i8** %15, align 8
  %292 = call i32 @FATAL(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %291)
  br label %293

293:                                              ; preds = %290, %286
  br label %294

294:                                              ; preds = %293, %283
  %295 = load i32*, i32** %20, align 8
  %296 = call i64 @fclose(i32* %295)
  %297 = load i64, i64* @EOF, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %294
  %300 = load i8*, i8** %15, align 8
  %301 = load i8*, i8** %15, align 8
  %302 = call i32 @FATAL(i8* %300, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %301)
  br label %303

303:                                              ; preds = %299, %294
  %304 = load i8*, i8** %9, align 8
  %305 = call i32 @remove(i8* %304)
  %306 = icmp eq i32 %305, -1
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = load i8*, i8** %15, align 8
  %309 = load i8*, i8** %15, align 8
  %310 = call i32 @FATAL(i8* %308, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8* %309)
  br label %311

311:                                              ; preds = %307, %303
  store i32 0, i32* %3, align 4
  %312 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %312)
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i64 @atof(i8*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @FATAL(i8*, i8*, i8*) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i64 @system(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8*, i8**, i8**) #2

declare dso_local %struct.entry* @general_findent(i64) #2

declare dso_local i32 @entry_acqref(%struct.entry*) #2

declare dso_local %struct.entry* @entry_create(i8*, i64, i64, i64) #2

declare dso_local i32 @general_insertent(%struct.entry*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i32 @remove(i8*) #2

declare dso_local i32 @fqueue_insertgen(...) #2

declare dso_local i32 @fqueue_compact(float) #2

declare dso_local i32 @fqueue_getall(i8*, i8*, i32) #2

declare dso_local i32 @asmparse(i32*) #2

declare dso_local i32 @cparse(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
