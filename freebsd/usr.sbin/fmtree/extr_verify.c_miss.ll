; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_verify.c_miss.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_verify.c_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_3__* }
%struct.stat = type { i32 }

@F_OPT = common dso_local global i32 0, align 4
@F_VISIT = common dso_local global i32 0, align 4
@F_DIR = common dso_local global i64 0, align 8
@dflag = common dso_local global i64 0, align 8
@qflag = common dso_local global i64 0, align 8
@path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s missing\00", align 1
@F_LINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@uflag = common dso_local global i64 0, align 8
@F_UID = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c" (%s not created: user not specified)\00", align 1
@F_GID = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c" (%s not created: group not specified)\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c" (symlink not created: %s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c" (created)\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"user & group\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%s: %s not modified: %s\0A\00", align 1
@F_MODE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c" (directory not created: mode not specified)\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c" (directory not created: %s)\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" (created)\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"%s: permissions not set: %s\0A\00", align 1
@F_FLAGS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"%s: file flags not set: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @miss(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %11

11:                                               ; preds = %314, %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %318

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @F_OPT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @F_VISIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %314

29:                                               ; preds = %21, %14
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @F_DIR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i64, i64* @dflag, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @F_VISIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %35
  br label %314

46:                                               ; preds = %38, %29
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcpy(i8* %47, i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @F_VISIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %46
  %59 = load i64, i64* @qflag, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i8*, i8** @path, align 8
  %63 = call i64 @stat(i8* %62, %struct.stat* %10)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @F_VISIT, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %74

71:                                               ; preds = %61, %58
  %72 = load i8*, i8** @path, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %46
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @F_DIR, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @F_LINK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 @putchar(i8 signext 10)
  br label %314

89:                                               ; preds = %81, %75
  store i32 0, i32* %5, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @F_LINK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %97

96:                                               ; preds = %89
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %97

97:                                               ; preds = %96, %95
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @F_VISIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %210, label %104

104:                                              ; preds = %97
  %105 = load i64, i64* @uflag, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %210

107:                                              ; preds = %104
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @F_UID, align 4
  %112 = load i32, i32* @F_UNAME, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %107
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %117)
  br label %209

119:                                              ; preds = %107
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @F_GID, align 4
  %124 = load i32, i32* @F_GNAME, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %119
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %129)
  br label %208

131:                                              ; preds = %119
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @F_LINK, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %185

137:                                              ; preds = %131
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** @path, align 8
  %142 = call i64 @symlink(i32 %140, i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32, i32* @errno, align 4
  %146 = call i8* @strerror(i32 %145)
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  br label %150

148:                                              ; preds = %137
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %144
  %151 = load i8*, i8** @path, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @lchown(i8* %151, i64 %154, i32 %157)
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %184

160:                                              ; preds = %150
  %161 = load i32, i32* @errno, align 4
  store i32 %161, i32* %9, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %178

167:                                              ; preds = %160
  %168 = load i8*, i8** @path, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @lchown(i8* %168, i64 -1, i32 %171)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %177

175:                                              ; preds = %167
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* @errno, align 4
  br label %177

177:                                              ; preds = %175, %174
  br label %178

178:                                              ; preds = %177, %166
  %179 = load i8*, i8** @path, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* @errno, align 4
  %182 = call i8* @strerror(i32 %181)
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %179, i8* %180, i8* %182)
  br label %184

184:                                              ; preds = %178, %150
  br label %314

185:                                              ; preds = %131
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @F_MODE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %185
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %206

194:                                              ; preds = %185
  %195 = load i8*, i8** @path, align 8
  %196 = load i32, i32* @S_IRWXU, align 4
  %197 = call i64 @mkdir(i8* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @errno, align 4
  %201 = call i8* @strerror(i32 %200)
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %201)
  br label %205

203:                                              ; preds = %194
  store i32 1, i32* %5, align 4
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %199
  br label %206

206:                                              ; preds = %205, %192
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207, %128
  br label %209

209:                                              ; preds = %208, %116
  br label %210

210:                                              ; preds = %209, %104, %97
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @F_VISIT, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %210
  %218 = call i32 @putchar(i8 signext 10)
  br label %219

219:                                              ; preds = %217, %210
  %220 = load i8*, i8** %4, align 8
  store i8* %220, i8** %6, align 8
  br label %221

221:                                              ; preds = %226, %219
  %222 = load i8*, i8** %6, align 8
  %223 = load i8, i8* %222, align 1
  %224 = icmp ne i8 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %225
  %227 = load i8*, i8** %6, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %6, align 8
  br label %221

229:                                              ; preds = %221
  %230 = load i8*, i8** %6, align 8
  store i8 47, i8* %230, align 1
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 6
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  call void @miss(%struct.TYPE_3__* %233, i8* %235)
  %236 = load i8*, i8** %6, align 8
  store i8 0, i8* %236, align 1
  %237 = load i32, i32* %5, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %229
  %240 = load i64, i64* @uflag, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %239
  br label %314

243:                                              ; preds = %239, %229
  %244 = load i8*, i8** @path, align 8
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @chown(i8* %244, i64 %247, i32 %250)
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %277

253:                                              ; preds = %243
  %254 = load i32, i32* @errno, align 4
  store i32 %254, i32* %9, align 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %257, -1
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %271

260:                                              ; preds = %253
  %261 = load i8*, i8** @path, align 8
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @chown(i8* %261, i64 -1, i32 %264)
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %270

268:                                              ; preds = %260
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  %269 = load i32, i32* %9, align 4
  store i32 %269, i32* @errno, align 4
  br label %270

270:                                              ; preds = %268, %267
  br label %271

271:                                              ; preds = %270, %259
  %272 = load i8*, i8** @path, align 8
  %273 = load i8*, i8** %8, align 8
  %274 = load i32, i32* @errno, align 4
  %275 = call i8* @strerror(i32 %274)
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %272, i8* %273, i8* %275)
  br label %277

277:                                              ; preds = %271, %243
  %278 = load i8*, i8** @path, align 8
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = call i64 @chmod(i8* %278, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %277
  %285 = load i8*, i8** @path, align 8
  %286 = load i32, i32* @errno, align 4
  %287 = call i8* @strerror(i32 %286)
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %285, i8* %287)
  br label %289

289:                                              ; preds = %284, %277
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @F_FLAGS, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %313

296:                                              ; preds = %289
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %296
  %302 = load i8*, i8** @path, align 8
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = call i64 @chflags(i8* %302, i64 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %301
  %309 = load i8*, i8** @path, align 8
  %310 = load i32, i32* @errno, align 4
  %311 = call i8* @strerror(i32 %310)
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %309, i8* %311)
  br label %313

313:                                              ; preds = %308, %301, %296, %289
  br label %314

314:                                              ; preds = %313, %242, %184, %87, %45, %28
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 9
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %316, align 8
  store %struct.TYPE_3__* %317, %struct.TYPE_3__** %3, align 8
  br label %11

318:                                              ; preds = %11
  ret void
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @symlink(i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @lchown(i8*, i64, i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @chown(i8*, i64, i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i64 @chflags(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
