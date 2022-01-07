; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_compresslist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_compresslist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_11__** }

@archead = common dso_local global %struct.TYPE_11__* null, align 8
@ONLIST = common dso_local global i32 0, align 4
@HASCYCLEXIT = common dso_local global i32 0, align 4
@DEADARC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\09%s to %s with %ld calls\0A\00", align 1
@cyclehead = common dso_local global %struct.TYPE_10__* null, align 8
@cyclecnt = common dso_local global i32 0, align 4
@BREAKCYCLE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compresslist() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__**, align 8
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.TYPE_11__** @archead, %struct.TYPE_11__*** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @archead, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  br label %14

14:                                               ; preds = %132, %22, %0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %138

17:                                               ; preds = %14
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* @ONLIST, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %34, align 8
  %35 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %5, align 8
  br label %14

37:                                               ; preds = %17
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HASCYCLEXIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %37
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58, %46
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %10, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %7, align 8
  br label %71

71:                                               ; preds = %66, %58, %52
  br label %132

72:                                               ; preds = %37
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %105

79:                                               ; preds = %72
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %91, %79
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %8, align 8
  br label %104

104:                                              ; preds = %99, %91, %85
  br label %131

105:                                              ; preds = %72
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %125, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %117, %105
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %9, align 8
  br label %130

130:                                              ; preds = %125, %117, %111
  br label %131

131:                                              ; preds = %130, %104
  br label %132

132:                                              ; preds = %131, %71
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  store %struct.TYPE_11__** %134, %struct.TYPE_11__*** %4, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %5, align 8
  br label %14

138:                                              ; preds = %14
  %139 = load i32, i32* %10, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %6, align 8
  br label %151

143:                                              ; preds = %138
  %144 = load i32, i32* %11, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %6, align 8
  br label %150

148:                                              ; preds = %143
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %149, %struct.TYPE_11__** %6, align 8
  br label %150

150:                                              ; preds = %148, %146
  br label %151

151:                                              ; preds = %150, %141
  %152 = load i32, i32* @DEADARC, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, %165
  store i32 %171, i32* %169, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %176, i8* %181, i32 %184)
  store %struct.TYPE_10__** @cyclehead, %struct.TYPE_10__*** %2, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cyclehead, align 8
  store %struct.TYPE_10__* %186, %struct.TYPE_10__** %1, align 8
  br label %187

187:                                              ; preds = %245, %222, %151
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %189 = icmp ne %struct.TYPE_10__* %188, null
  br i1 %189, label %190, label %257

190:                                              ; preds = %187
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %192, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %193, i64 %196
  store %struct.TYPE_11__** %197, %struct.TYPE_11__*** %4, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %199, align 8
  store %struct.TYPE_11__** %200, %struct.TYPE_11__*** %3, align 8
  br label %201

201:                                              ; preds = %215, %190
  %202 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %203 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %204 = icmp ult %struct.TYPE_11__** %202, %203
  br i1 %204, label %205, label %218

205:                                              ; preds = %201
  %206 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @DEADARC, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %218

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %216, i32 1
  store %struct.TYPE_11__** %217, %struct.TYPE_11__*** %3, align 8
  br label %201

218:                                              ; preds = %213, %201
  %219 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %220 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %221 = icmp eq %struct.TYPE_11__** %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  store %struct.TYPE_10__** %224, %struct.TYPE_10__*** %2, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  store %struct.TYPE_10__* %227, %struct.TYPE_10__** %1, align 8
  br label %187

228:                                              ; preds = %218
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %230, align 8
  store %struct.TYPE_11__** %231, %struct.TYPE_11__*** %3, align 8
  br label %232

232:                                              ; preds = %242, %228
  %233 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %234 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %235 = icmp ult %struct.TYPE_11__** %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %236
  %243 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %243, i32 1
  store %struct.TYPE_11__** %244, %struct.TYPE_11__*** %3, align 8
  br label %232

245:                                              ; preds = %232
  %246 = load i32, i32* @cyclecnt, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* @cyclecnt, align 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  store %struct.TYPE_10__* %250, %struct.TYPE_10__** %251, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  store %struct.TYPE_10__* %254, %struct.TYPE_10__** %1, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %256 = call i32 @free(%struct.TYPE_10__* %255)
  br label %187

257:                                              ; preds = %187
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
