; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_read_mtree_spec1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_read_mtree_spec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.TYPE_10__* }

@mtree_current = common dso_local global %struct.TYPE_10__* null, align 8
@mtree_root = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"ignoring .. in root directory\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@dupsok = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"duplicate definition of %s\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s is not a directory\00", align 1
@mtree_global = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @read_mtree_spec1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mtree_spec1(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @IS_DOTDOT(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %82

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_root, align 8
  %26 = icmp eq %struct.TYPE_10__* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @mtree_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %280

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %9, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @IS_DOT(i8* %37)
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = icmp eq %struct.TYPE_10__* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %9, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = icmp ne %struct.TYPE_10__* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @IS_DOT(i8* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %9, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @IS_DOT(i8* %71)
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = icmp eq %struct.TYPE_10__* %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** @mtree_current, align 8
  store i32 0, i32* %4, align 4
  br label %280

82:                                               ; preds = %3
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @IS_DOT(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  %88 = icmp eq %struct.TYPE_10__* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @read_mtree_spec1(i32* %90, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %280

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %86, %82
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %9, align 8
  br label %99

99:                                               ; preds = %158, %97
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = icmp ne %struct.TYPE_10__* %100, null
  br i1 %101, label %102, label %163

102:                                              ; preds = %99
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  %107 = icmp eq %struct.TYPE_10__* %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* %110, i8* %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %158

116:                                              ; preds = %102
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* @dupsok, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @mtree_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %123)
  br label %128

125:                                              ; preds = %119
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 (i8*, ...) @mtree_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %125, %122
  store i32 0, i32* %4, align 4
  br label %280

129:                                              ; preds = %116
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @S_IFDIR, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @mtree_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %136)
  store i32 0, i32* %4, align 4
  br label %280

138:                                              ; preds = %129
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @IS_DOT(i8* %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %9, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = icmp ne %struct.TYPE_10__* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @IS_DOT(i8* %154)
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %157, %struct.TYPE_10__** @mtree_current, align 8
  store i32 0, i32* %4, align 4
  br label %280

158:                                              ; preds = %102
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %8, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  store %struct.TYPE_10__* %162, %struct.TYPE_10__** %9, align 8
  br label %99

163:                                              ; preds = %99
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  %165 = icmp ne %struct.TYPE_10__* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  br label %171

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi %struct.TYPE_10__* [ %169, %166 ], [ null, %170 ]
  store %struct.TYPE_10__* %172, %struct.TYPE_10__** %10, align 8
  %173 = load i32, i32* %6, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %7, align 8
  %177 = call i32 @IS_DOT(i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175, %171
  %180 = load i32, i32* @S_IFDIR, align 4
  br label %182

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  store i32 %183, i32* %11, align 4
  %184 = load i8*, i8** %7, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %187 = call %struct.TYPE_10__* @create_node(i8* %184, i32 %185, %struct.TYPE_10__* %186, %struct.TYPE_10__* @mtree_global)
  store %struct.TYPE_10__* %187, %struct.TYPE_10__** %9, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %189 = icmp eq %struct.TYPE_10__* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  %191 = load i32, i32* @ENOMEM, align 4
  store i32 %191, i32* %4, align 4
  br label %280

192:                                              ; preds = %182
  %193 = load i32, i32* %6, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load i32*, i32** %5, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %198 = call i32 @read_mtree_keywords(i32* %196, %struct.TYPE_10__* %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %203 = call i32 @destroy_node(%struct.TYPE_10__* %202)
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %4, align 4
  br label %280

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %192
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  %208 = icmp ne %struct.TYPE_10__* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_current, align 8
  br label %213

211:                                              ; preds = %206
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi %struct.TYPE_10__* [ %210, %209 ], [ %212, %211 ]
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  store %struct.TYPE_10__* %214, %struct.TYPE_10__** %216, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %218 = icmp ne %struct.TYPE_10__* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 3
  store %struct.TYPE_10__* %220, %struct.TYPE_10__** %222, align 8
  br label %223

223:                                              ; preds = %219, %213
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @S_IFDIR, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 0, i32* %4, align 4
  br label %280

230:                                              ; preds = %223
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @IS_DOT(i8* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %257, label %236

236:                                              ; preds = %230
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %237, %struct.TYPE_10__** %10, align 8
  %238 = load i32, i32* @S_IFDIR, align 4
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %241 = call %struct.TYPE_10__* @create_node(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %238, %struct.TYPE_10__* %239, %struct.TYPE_10__* %240)
  store %struct.TYPE_10__* %241, %struct.TYPE_10__** %9, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %243 = icmp eq %struct.TYPE_10__* %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %236
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %246, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %248 = call i32 @destroy_node(%struct.TYPE_10__* %247)
  %249 = load i32, i32* @ENOMEM, align 4
  store i32 %249, i32* %4, align 4
  br label %280

250:                                              ; preds = %236
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  store %struct.TYPE_10__* %251, %struct.TYPE_10__** %253, align 8
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  store %struct.TYPE_10__* %254, %struct.TYPE_10__** %256, align 8
  br label %257

257:                                              ; preds = %250, %230
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %259 = icmp ne %struct.TYPE_10__* %258, null
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @IS_DOT(i8* %264)
  %266 = call i32 @assert(i32 %265)
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %271 = icmp eq %struct.TYPE_10__* %269, %270
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %274, %struct.TYPE_10__** @mtree_current, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mtree_root, align 8
  %276 = icmp eq %struct.TYPE_10__* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %257
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %278, %struct.TYPE_10__** @mtree_root, align 8
  br label %279

279:                                              ; preds = %277, %257
  store i32 0, i32* %4, align 4
  br label %280

280:                                              ; preds = %279, %244, %229, %201, %190, %138, %135, %128, %94, %29, %27
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IS_DOTDOT(i8*) #1

declare dso_local i32 @mtree_warning(i8*, ...) #1

declare dso_local i32 @IS_DOT(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mtree_error(i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @create_node(i8*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @read_mtree_keywords(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @destroy_node(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
