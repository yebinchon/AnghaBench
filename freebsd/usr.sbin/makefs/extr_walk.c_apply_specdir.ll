; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_walk.c_apply_specdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_walk.c_apply_specdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i8*, i32, i32*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i8*, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_APPLY_SPECFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"apply_specdir: %s %p %p\0A\00", align 1
@F_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Specfile node `%s/%s' is not a directory\00", align 1
@S_IFDIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Directory node `%s/%s' is not a directory\00", align 1
@DEBUG_APPLY_SPECONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"apply_specdir: trimming %s/%s %p\0A\00", align 1
@DEBUG_APPLY_SPECENTRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"apply_specdir:  spec %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Pathname too long.\00", align 1
@F_OPT = common dso_local global i32 0, align 4
@F_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"`%s': %s not provided\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@F_MODE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@F_GID = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@F_UID = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"apply_specdir: adding %s\0A\00", align 1
@start_time = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@S_IFLNK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"`%s' is not a directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @apply_specdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_specdir(i8* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.stat, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @debug, align 4
  %29 = load i32, i32* @DEBUG_APPLY_SPECFILE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %33, %struct.TYPE_10__* %34, %struct.TYPE_9__* %35)
  br label %37

37:                                               ; preds = %32, %4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @F_DIR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S_IFDIR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %56, i8* %59)
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = call i32 @apply_specentry(i8* %62, %struct.TYPE_10__* %63, %struct.TYPE_9__* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %141

68:                                               ; preds = %61
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 46
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br label %84

84:                                               ; preds = %76, %68
  %85 = phi i1 [ false, %68 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %12, align 8
  br label %91

91:                                               ; preds = %138, %84
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %93 = icmp ne %struct.TYPE_9__* %92, null
  br i1 %93, label %94, label %140

94:                                               ; preds = %91
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %13, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %11, align 8
  br label %101

101:                                              ; preds = %115, %94
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %103 = icmp ne %struct.TYPE_10__* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strcmp(i8* %107, i8* %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %119

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %11, align 8
  br label %101

119:                                              ; preds = %113, %101
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %121 = icmp eq %struct.TYPE_10__* %120, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load i32, i32* @debug, align 4
  %124 = load i32, i32* @DEBUG_APPLY_SPECONLY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i8*, i8** %5, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %133 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %128, i8* %131, %struct.TYPE_9__* %132)
  br label %134

134:                                              ; preds = %127, %122
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %136 = call i32 @free_fsnodes(%struct.TYPE_9__* %135)
  br label %137

137:                                              ; preds = %134, %119
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %12, align 8
  br label %91

140:                                              ; preds = %91
  br label %141

141:                                              ; preds = %140, %61
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 5
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  store %struct.TYPE_10__* %144, %struct.TYPE_10__** %11, align 8
  br label %145

145:                                              ; preds = %370, %141
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %147 = icmp ne %struct.TYPE_10__* %146, null
  br i1 %147, label %148, label %374

148:                                              ; preds = %145
  %149 = load i32, i32* @debug, align 4
  %150 = load i32, i32* @DEBUG_APPLY_SPECENTRY, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %12, align 8
  br label %162

162:                                              ; preds = %176, %158
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %164 = icmp ne %struct.TYPE_9__* %163, null
  br i1 %164, label %165, label %180

165:                                              ; preds = %162
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strcmp(i8* %168, i8* %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %180

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 6
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  store %struct.TYPE_9__* %179, %struct.TYPE_9__** %12, align 8
  br label %162

180:                                              ; preds = %174, %162
  %181 = trunc i64 %17 to i32
  %182 = load i8*, i8** %5, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @snprintf(i8* %19, i32 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %182, i8* %185)
  %187 = icmp uge i64 %186, %17
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %180
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %192 = icmp eq %struct.TYPE_9__* %191, null
  br i1 %192, label %193, label %339

193:                                              ; preds = %190
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @F_OPT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = call i32 @lstat(i8* %19, %struct.stat* %14)
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %370

204:                                              ; preds = %200, %193
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @F_TYPE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %204
  %212 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %204
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @F_MODE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %213
  %221 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %213
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @F_GID, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %222
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @F_GNAME, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %229
  %237 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %229, %222
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @F_UID, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %238
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @F_UNAME, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %245
  %253 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252, %245, %238
  %255 = load i32, i32* @debug, align 4
  %256 = load i32, i32* @DEBUG_APPLY_SPECFILE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %262)
  br label %264

264:                                              ; preds = %259, %254
  %265 = call i32 @memset(%struct.stat* %14, i32 0, i32 32)
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @nodetoino(i64 %268)
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 7
  store i32 %269, i32* %270, align 4
  %271 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  store i32 1, i32* %271, align 4
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @start_time, i32 0, i32 1), align 4
  %273 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 4
  store i32 %272, i32* %273, align 4
  %274 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 5
  store i32 %272, i32* %274, align 4
  %275 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 6
  store i32 %272, i32* %275, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = call i8* @create_fsnode(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* %278, %struct.stat* %14)
  %280 = bitcast i8* %279 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %280, %struct.TYPE_9__** %12, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 5
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %282, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 5
  store %struct.TYPE_9__* %283, %struct.TYPE_9__** %285, align 8
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 4
  store %struct.TYPE_9__* %286, %struct.TYPE_9__** %288, align 8
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 6
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %290, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 6
  store %struct.TYPE_9__* %291, %struct.TYPE_9__** %293, align 8
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 6
  store %struct.TYPE_9__* %294, %struct.TYPE_9__** %296, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @S_IFDIR, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %319

302:                                              ; preds = %264
  %303 = call i8* @create_fsnode(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %struct.stat* %14)
  %304 = bitcast i8* %303 to %struct.TYPE_9__*
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 2
  store %struct.TYPE_9__* %304, %struct.TYPE_9__** %306, align 8
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 2
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 5
  store %struct.TYPE_9__* %307, %struct.TYPE_9__** %311, align 8
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %313, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 4
  store %struct.TYPE_9__* %314, %struct.TYPE_9__** %318, align 8
  br label %319

319:                                              ; preds = %302, %264
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @S_IFLNK, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %338

325:                                              ; preds = %319
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 3
  %328 = load i32*, i32** %327, align 8
  %329 = icmp ne i32* %328, null
  %330 = zext i1 %329 to i32
  %331 = call i32 @assert(i32 %330)
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 3
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 @estrdup(i32* %334)
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 3
  store i32 %335, i32* %337, align 8
  br label %338

338:                                              ; preds = %325, %319
  br label %339

339:                                              ; preds = %338, %190
  %340 = load i8*, i8** %5, align 8
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %343 = call i32 @apply_specentry(i8* %340, %struct.TYPE_10__* %341, %struct.TYPE_9__* %342)
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @F_DIR, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %369

349:                                              ; preds = %339
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @S_IFDIR, align 8
  %354 = icmp ne i64 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %349
  %356 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %19)
  br label %357

357:                                              ; preds = %355, %349
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %359, align 8
  %361 = icmp ne %struct.TYPE_9__* %360, null
  %362 = zext i1 %361 to i32
  %363 = call i32 @assert(i32 %362)
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 2
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %366, align 8
  %368 = load i32, i32* %8, align 4
  call void @apply_specdir(i8* %19, %struct.TYPE_10__* %364, %struct.TYPE_9__* %367, i32 %368)
  br label %369

369:                                              ; preds = %357, %339
  br label %370

370:                                              ; preds = %369, %203
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 4
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %372, align 8
  store %struct.TYPE_10__* %373, %struct.TYPE_10__** %11, align 8
  br label %145

374:                                              ; preds = %145
  %375 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %375)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @apply_specentry(i8*, %struct.TYPE_10__*, %struct.TYPE_9__*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @free_fsnodes(%struct.TYPE_9__*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @memset(%struct.stat*, i32, i32) #2

declare dso_local i32 @nodetoino(i64) #2

declare dso_local i8* @create_fsnode(i8*, i8*, i8*, %struct.stat*) #2

declare dso_local i32 @estrdup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
