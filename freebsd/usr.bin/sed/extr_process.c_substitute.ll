; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_substitute.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_substitute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.s_command = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i64, i64, i32, i32, i32* }

@ps = common dso_local global i8* null, align 8
@defpreg = common dso_local global %struct.TYPE_14__* null, align 8
@linenum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%lu: %s: \\%u not defined in the RE\00", align 1
@fname = common dso_local global i32 0, align 4
@psl = common dso_local global i32 0, align 4
@SS = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@match = common dso_local global %struct.TYPE_13__* null, align 8
@APPEND = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@PS = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@psanl = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_command*)* @substitute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @substitute(%struct.s_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s_command*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.s_command* %0, %struct.s_command** %3, align 8
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** @ps, align 8
  store i8* %11, i8** %10, align 8
  %12 = load %struct.s_command*, %struct.s_command** %3, align 8
  %13 = getelementptr inbounds %struct.s_command, %struct.s_command* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @defpreg, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.s_command*, %struct.s_command** %3, align 8
  %25 = getelementptr inbounds %struct.s_command, %struct.s_command* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @defpreg, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %23
  %35 = load %struct.s_command*, %struct.s_command** %3, align 8
  %36 = getelementptr inbounds %struct.s_command, %struct.s_command* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @linenum, align 4
  %41 = load i32, i32* @linenum, align 4
  %42 = load i32, i32* @fname, align 4
  %43 = load %struct.s_command*, %struct.s_command** %3, align 8
  %44 = getelementptr inbounds %struct.s_command, %struct.s_command* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i64 %48)
  br label %50

50:                                               ; preds = %34, %23, %20
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32*, i32** %5, align 8
  %53 = load i8*, i8** @ps, align 8
  %54 = load i32, i32* @psl, align 4
  %55 = call i64 @regexec_e(i32* %52, i8* %53, i32 0, i32 0, i64 0, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %325

58:                                               ; preds = %51
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @SS, i32 0, i32 3), align 8
  %59 = load i32, i32* @psl, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load %struct.s_command*, %struct.s_command** %3, align 8
  %62 = getelementptr inbounds %struct.s_command, %struct.s_command* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %216, %58
  %68 = load i32, i32* %8, align 4
  %69 = icmp sle i32 %68, 1
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load i32, i32* @APPEND, align 4
  %86 = call i32 @cspace(%struct.TYPE_12__* @SS, i8* %78, i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %77, %70, %67
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub nsw i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %90
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %102, %106
  br i1 %107, label %108, label %146

108:                                              ; preds = %98, %90, %87
  %109 = load i32, i32* %8, align 4
  %110 = icmp sle i32 %109, 1
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load i8*, i8** @ps, align 8
  %113 = load %struct.s_command*, %struct.s_command** %3, align 8
  %114 = getelementptr inbounds %struct.s_command, %struct.s_command* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @regsub(%struct.TYPE_12__* @SS, i8* %112, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 -1, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %111
  br label %145

124:                                              ; preds = %108
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = sub nsw i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %124
  %133 = load i8*, i8** %10, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = sub nsw i64 %137, %138
  %140 = load i32, i32* @APPEND, align 4
  %141 = call i32 @cspace(%struct.TYPE_12__* @SS, i8* %133, i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %132, %124
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %123
  br label %146

146:                                              ; preds = %145, %98
  %147 = load i8*, i8** @ps, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i8, i8* %147, i64 %151
  store i8* %152, i8** %10, align 8
  %153 = load i32, i32* @psl, align 4
  %154 = sext i32 %153 to i64
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %154, %158
  store i64 %159, i64* %6, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %9, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** @match, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %167, %171
  br i1 %172, label %173, label %200

173:                                              ; preds = %146
  %174 = load i8*, i8** %10, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load i8*, i8** %10, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 10
  br i1 %182, label %183, label %184

183:                                              ; preds = %178, %173
  store i64 -1, i64* %6, align 8
  br label %187

184:                                              ; preds = %178
  %185 = load i64, i64* %6, align 8
  %186 = add nsw i64 %185, -1
  store i64 %186, i64* %6, align 8
  br label %187

187:                                              ; preds = %184, %183
  %188 = load i8*, i8** %10, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load i8*, i8** %10, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %10, align 8
  %195 = load i32, i32* @APPEND, align 4
  %196 = call i32 @cspace(%struct.TYPE_12__* @SS, i8* %193, i64 1, i32 %195)
  %197 = load i64, i64* %9, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %9, align 8
  br label %199

199:                                              ; preds = %192, %187
  store i32 1, i32* %7, align 4
  br label %201

200:                                              ; preds = %146
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %200, %199
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %8, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = load i64, i64* %6, align 8
  %207 = icmp sge i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load i32*, i32** %5, align 8
  %210 = load i8*, i8** @ps, align 8
  %211 = load i32, i32* @REG_NOTBOL, align 4
  %212 = load i64, i64* %9, align 8
  %213 = load i32, i32* @psl, align 4
  %214 = call i64 @regexec_e(i32* %209, i8* %210, i32 %211, i32 0, i64 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br label %216

216:                                              ; preds = %208, %205, %202
  %217 = phi i1 [ false, %205 ], [ false, %202 ], [ %215, %208 ]
  br i1 %217, label %67, label %218

218:                                              ; preds = %216
  %219 = load i32, i32* %8, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 0, i32* %2, align 4
  br label %325

222:                                              ; preds = %218
  %223 = load i64, i64* %6, align 8
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load i8*, i8** %10, align 8
  %227 = load i64, i64* %6, align 8
  %228 = load i32, i32* @APPEND, align 4
  %229 = call i32 @cspace(%struct.TYPE_12__* @SS, i8* %226, i64 %227, i32 %228)
  br label %230

230:                                              ; preds = %225, %222
  %231 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 bitcast (%struct.TYPE_12__* @PS to i8*), i64 24, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_12__* @PS to i8*), i8* align 8 bitcast (%struct.TYPE_12__* @SS to i8*), i64 24, i1 false)
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* @psanl, align 4
  %234 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_12__* @SS to i8*), i8* align 8 %234, i64 24, i1 false)
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @SS, i32 0, i32 0), align 8
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @SS, i32 0, i32 1), align 4
  %236 = load %struct.s_command*, %struct.s_command** %3, align 8
  %237 = getelementptr inbounds %struct.s_command, %struct.s_command* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %230
  %244 = call i32 (...) @OUT()
  br label %245

245:                                              ; preds = %243, %230
  %246 = load %struct.s_command*, %struct.s_command** %3, align 8
  %247 = getelementptr inbounds %struct.s_command, %struct.s_command* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %324

253:                                              ; preds = %245
  %254 = load i32, i32* @pd, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %324, label %256

256:                                              ; preds = %253
  %257 = load %struct.s_command*, %struct.s_command** %3, align 8
  %258 = getelementptr inbounds %struct.s_command, %struct.s_command* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %294

264:                                              ; preds = %256
  %265 = load %struct.s_command*, %struct.s_command** %3, align 8
  %266 = getelementptr inbounds %struct.s_command, %struct.s_command* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = load i32, i32* @O_WRONLY, align 4
  %272 = load i32, i32* @O_APPEND, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @O_CREAT, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @O_TRUNC, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @DEFFILEMODE, align 4
  %279 = call i32 @open(i64 %270, i32 %277, i32 %278)
  %280 = load %struct.s_command*, %struct.s_command** %3, align 8
  %281 = getelementptr inbounds %struct.s_command, %struct.s_command* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 2
  store i32 %279, i32* %284, align 4
  %285 = icmp eq i32 %279, -1
  br i1 %285, label %286, label %294

286:                                              ; preds = %264
  %287 = load %struct.s_command*, %struct.s_command** %3, align 8
  %288 = getelementptr inbounds %struct.s_command, %struct.s_command* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %292)
  br label %294

294:                                              ; preds = %286, %264, %256
  %295 = load %struct.s_command*, %struct.s_command** %3, align 8
  %296 = getelementptr inbounds %struct.s_command, %struct.s_command* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i8*, i8** @ps, align 8
  %302 = load i32, i32* @psl, align 4
  %303 = call i32 @write(i32 %300, i8* %301, i32 %302)
  %304 = load i32, i32* @psl, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %315, label %306

306:                                              ; preds = %294
  %307 = load %struct.s_command*, %struct.s_command** %3, align 8
  %308 = getelementptr inbounds %struct.s_command, %struct.s_command* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @write(i32 %312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %314 = icmp ne i32 %313, 1
  br i1 %314, label %315, label %323

315:                                              ; preds = %306, %294
  %316 = load %struct.s_command*, %struct.s_command** %3, align 8
  %317 = getelementptr inbounds %struct.s_command, %struct.s_command* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %321)
  br label %323

323:                                              ; preds = %315, %306
  br label %324

324:                                              ; preds = %323, %253, %245
  store i32 1, i32* %2, align 4
  br label %325

325:                                              ; preds = %324, %221, %57
  %326 = load i32, i32* %2, align 4
  ret i32 %326
}

declare dso_local i32 @errx(i32, i8*, i32, i32, i64) #1

declare dso_local i64 @regexec_e(i32*, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @cspace(%struct.TYPE_12__*, i8*, i64, i32) #1

declare dso_local i32 @regsub(%struct.TYPE_12__*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @OUT(...) #1

declare dso_local i32 @open(i64, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
