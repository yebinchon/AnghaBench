; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grdc/extr_grdc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grdc/extr_grdc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.timespec = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"number of seconds is out of range\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@sighndl = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@hascolor = common dso_local global i64 0, align 8
@COLOR_BLACK = common dso_local global i32 0, align 4
@COLOR_RED = common dso_local global i32 0, align 4
@COLOR_WHITE = common dso_local global i32 0, align 4
@YBASE = common dso_local global i32 0, align 4
@XBASE = common dso_local global i32 0, align 4
@ACS_ULCORNER = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@XLENGTH = common dso_local global i32 0, align 4
@ACS_URCORNER = common dso_local global i32 0, align 4
@YDEPTH = common dso_local global i32 0, align 4
@ACS_LLCORNER = common dso_local global i32 0, align 4
@ACS_LRCORNER = common dso_local global i32 0, align 4
@ACS_VLINE = common dso_local global i32 0, align 4
@CLOCK_REALTIME_FAST = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@mask = common dso_local global i64 0, align 8
@tm = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@new = common dso_local global i64* null, align 8
@next = common dso_local global i64* null, align 8
@old = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@sigtermed = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"terminated by signal %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %30, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %15, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* %15, align 4
  switch i32 %24, label %28 [
    i32 115, label %25
    i32 116, label %26
    i32 63, label %27
  ]

25:                                               ; preds = %23
  store i32 1, i32* %16, align 4
  br label %30

26:                                               ; preds = %23
  store i32 1, i32* %17, align 4
  br label %30

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %23, %27
  %29 = call i32 (...) @usage()
  br label %30

30:                                               ; preds = %28, %26, %25
  br label %18

31:                                               ; preds = %18
  %32 = load i64, i64* @optind, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i64, i64* @optind, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37
  store i8** %39, i8*** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %42, %31
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @atoi(i8* %49)
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %54, %47
  br label %59

58:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = call i32 (...) @initscr()
  %61 = load i32, i32* @SIGINT, align 4
  %62 = load i32, i32* @sighndl, align 4
  %63 = call i32 @signal(i32 %61, i32 %62)
  %64 = load i32, i32* @SIGTERM, align 4
  %65 = load i32, i32* @sighndl, align 4
  %66 = call i32 @signal(i32 %64, i32 %65)
  %67 = load i32, i32* @SIGHUP, align 4
  %68 = load i32, i32* @sighndl, align 4
  %69 = call i32 @signal(i32 %67, i32 %68)
  %70 = call i32 (...) @cbreak()
  %71 = call i32 (...) @noecho()
  %72 = call i32 @curs_set(i32 0)
  %73 = call i64 (...) @has_colors()
  store i64 %73, i64* @hascolor, align 8
  %74 = load i64, i64* @hascolor, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %59
  %77 = call i32 (...) @start_color()
  %78 = load i32, i32* @COLOR_BLACK, align 4
  %79 = load i32, i32* @COLOR_RED, align 4
  %80 = call i32 @init_pair(i32 1, i32 %78, i32 %79)
  %81 = load i32, i32* @COLOR_RED, align 4
  %82 = load i32, i32* @COLOR_BLACK, align 4
  %83 = call i32 @init_pair(i32 2, i32 %81, i32 %82)
  %84 = load i32, i32* @COLOR_WHITE, align 4
  %85 = load i32, i32* @COLOR_BLACK, align 4
  %86 = call i32 @init_pair(i32 3, i32 %84, i32 %85)
  %87 = call i32 @COLOR_PAIR(i32 2)
  %88 = call i32 @attrset(i32 %87)
  br label %89

89:                                               ; preds = %76, %59
  %90 = call i32 (...) @clear()
  %91 = call i32 (...) @refresh()
  %92 = load i64, i64* @hascolor, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %155

94:                                               ; preds = %89
  %95 = call i32 @COLOR_PAIR(i32 3)
  %96 = call i32 @attrset(i32 %95)
  %97 = load i32, i32* @YBASE, align 4
  %98 = sub nsw i32 %97, 2
  %99 = load i32, i32* @XBASE, align 4
  %100 = sub nsw i32 %99, 3
  %101 = load i32, i32* @ACS_ULCORNER, align 4
  %102 = call i32 @mvaddch(i32 %98, i32 %100, i32 %101)
  %103 = load i32, i32* @ACS_HLINE, align 4
  %104 = load i32, i32* @XLENGTH, align 4
  %105 = call i32 @hline(i32 %103, i32 %104)
  %106 = load i32, i32* @YBASE, align 4
  %107 = sub nsw i32 %106, 2
  %108 = load i32, i32* @XBASE, align 4
  %109 = sub nsw i32 %108, 2
  %110 = load i32, i32* @XLENGTH, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* @ACS_URCORNER, align 4
  %113 = call i32 @mvaddch(i32 %107, i32 %111, i32 %112)
  %114 = load i32, i32* @YBASE, align 4
  %115 = load i32, i32* @YDEPTH, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @XBASE, align 4
  %119 = sub nsw i32 %118, 3
  %120 = load i32, i32* @ACS_LLCORNER, align 4
  %121 = call i32 @mvaddch(i32 %117, i32 %119, i32 %120)
  %122 = load i32, i32* @ACS_HLINE, align 4
  %123 = load i32, i32* @XLENGTH, align 4
  %124 = call i32 @hline(i32 %122, i32 %123)
  %125 = load i32, i32* @YBASE, align 4
  %126 = load i32, i32* @YDEPTH, align 4
  %127 = add nsw i32 %125, %126
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* @XBASE, align 4
  %130 = sub nsw i32 %129, 2
  %131 = load i32, i32* @XLENGTH, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* @ACS_LRCORNER, align 4
  %134 = call i32 @mvaddch(i32 %128, i32 %132, i32 %133)
  %135 = load i32, i32* @YBASE, align 4
  %136 = sub nsw i32 %135, 1
  %137 = load i32, i32* @XBASE, align 4
  %138 = sub nsw i32 %137, 3
  %139 = call i32 @move(i32 %136, i32 %138)
  %140 = load i32, i32* @ACS_VLINE, align 4
  %141 = load i32, i32* @YDEPTH, align 4
  %142 = call i32 @vline(i32 %140, i32 %141)
  %143 = load i32, i32* @YBASE, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* @XBASE, align 4
  %146 = sub nsw i32 %145, 2
  %147 = load i32, i32* @XLENGTH, align 4
  %148 = add nsw i32 %146, %147
  %149 = call i32 @move(i32 %144, i32 %148)
  %150 = load i32, i32* @ACS_VLINE, align 4
  %151 = load i32, i32* @YDEPTH, align 4
  %152 = call i32 @vline(i32 %150, i32 %151)
  %153 = call i32 @COLOR_PAIR(i32 2)
  %154 = call i32 @attrset(i32 %153)
  br label %155

155:                                              ; preds = %94, %89
  %156 = load i32, i32* @CLOCK_REALTIME_FAST, align 4
  %157 = call i32 @clock_gettime(i32 %156, %struct.TYPE_6__* @now)
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @now, i32 0, i32 0), align 8
  store i64 %158, i64* %7, align 8
  br label %159

159:                                              ; preds = %452, %155
  store i64 0, i64* @mask, align 8
  %160 = call %struct.TYPE_5__* @localtime(i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @now, i32 0, i32 0))
  store %struct.TYPE_5__* %160, %struct.TYPE_5__** @tm, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = srem i32 %163, 10
  %165 = call i32 @set(i32 %164, i32 0)
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %168, 10
  %170 = call i32 @set(i32 %169, i32 4)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = srem i32 %173, 10
  %175 = call i32 @set(i32 %174, i32 10)
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %178, 10
  %180 = call i32 @set(i32 %179, i32 14)
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %219

183:                                              ; preds = %159
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %186, 12
  br i1 %187, label %188, label %202

188:                                              ; preds = %183
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  store i32 12, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %188
  %197 = load i32, i32* @YBASE, align 4
  %198 = add nsw i32 %197, 5
  %199 = load i32, i32* @XBASE, align 4
  %200 = add nsw i32 %199, 52
  %201 = call i32 @mvaddstr(i32 %198, i32 %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %218

202:                                              ; preds = %183
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = icmp sgt i32 %205, 12
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 12
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %207, %202
  %213 = load i32, i32* @YBASE, align 4
  %214 = add nsw i32 %213, 5
  %215 = load i32, i32* @XBASE, align 4
  %216 = add nsw i32 %215, 52
  %217 = call i32 @mvaddstr(i32 %214, i32 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %218

218:                                              ; preds = %212, %196
  br label %219

219:                                              ; preds = %218, %159
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = srem i32 %222, 10
  %224 = call i32 @set(i32 %223, i32 20)
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tm, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = sdiv i32 %227, 10
  %229 = call i32 @set(i32 %228, i32 24)
  %230 = call i32 @set(i32 10, i32 7)
  %231 = call i32 @set(i32 10, i32 17)
  store i32 0, i32* %13, align 4
  br label %232

232:                                              ; preds = %405, %219
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %233, 6
  br i1 %234, label %235, label %408

235:                                              ; preds = %232
  %236 = load i32, i32* %16, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %284

238:                                              ; preds = %235
  store i32 0, i32* %10, align 4
  br label %239

239:                                              ; preds = %264, %238
  %240 = load i32, i32* %10, align 4
  %241 = icmp slt i32 %240, 5
  br i1 %241, label %242, label %267

242:                                              ; preds = %239
  %243 = load i64*, i64** @new, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @mask, align 8
  %249 = xor i64 %248, -1
  %250 = and i64 %247, %249
  %251 = load i64*, i64** @new, align 8
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %251, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @mask, align 8
  %258 = and i64 %256, %257
  %259 = or i64 %250, %258
  %260 = load i64*, i64** @new, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  store i64 %259, i64* %263, align 8
  br label %264

264:                                              ; preds = %242
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %10, align 4
  br label %239

267:                                              ; preds = %239
  %268 = load i64*, i64** @new, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 5
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @mask, align 8
  %272 = xor i64 %271, -1
  %273 = and i64 %270, %272
  %274 = load i64*, i64** @next, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @mask, align 8
  %280 = and i64 %278, %279
  %281 = or i64 %273, %280
  %282 = load i64*, i64** @new, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 5
  store i64 %281, i64* %283, align 8
  br label %305

284:                                              ; preds = %235
  %285 = load i64*, i64** @new, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @mask, align 8
  %291 = xor i64 %290, -1
  %292 = and i64 %289, %291
  %293 = load i64*, i64** @next, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @mask, align 8
  %299 = and i64 %297, %298
  %300 = or i64 %292, %299
  %301 = load i64*, i64** @new, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  store i64 %300, i64* %304, align 8
  br label %305

305:                                              ; preds = %284, %267
  %306 = load i64*, i64** @next, align 8
  %307 = load i32, i32* %13, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  store i64 0, i64* %309, align 8
  store i32 1, i32* %12, align 4
  br label %310

310:                                              ; preds = %401, %305
  %311 = load i32, i32* %12, align 4
  %312 = icmp sge i32 %311, 0
  br i1 %312, label %313, label %404

313:                                              ; preds = %310
  %314 = load i32, i32* %12, align 4
  %315 = call i32 @standt(i32 %314)
  store i32 0, i32* %10, align 4
  br label %316

316:                                              ; preds = %392, %313
  %317 = load i32, i32* %10, align 4
  %318 = icmp slt i32 %317, 6
  br i1 %318, label %319, label %395

319:                                              ; preds = %316
  %320 = load i64*, i64** @new, align 8
  %321 = load i32, i32* %10, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = load i64*, i64** @old, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = xor i64 %324, %329
  %331 = load i32, i32* %12, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %319
  %334 = load i64*, i64** @new, align 8
  br label %337

335:                                              ; preds = %319
  %336 = load i64*, i64** @old, align 8
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi i64* [ %334, %333 ], [ %336, %335 ]
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = and i64 %330, %342
  store i64 %343, i64* %9, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %378

345:                                              ; preds = %337
  store i32 0, i32* %11, align 4
  store i64 67108864, i64* %8, align 8
  br label %346

346:                                              ; preds = %372, %345
  %347 = load i64, i64* %8, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %377

349:                                              ; preds = %346
  %350 = load i64, i64* %9, align 8
  %351 = load i64, i64* %8, align 8
  %352 = and i64 %350, %351
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %371

354:                                              ; preds = %349
  %355 = load i64, i64* %9, align 8
  %356 = load i64, i64* %8, align 8
  %357 = shl i64 %356, 1
  %358 = and i64 %355, %357
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %369, label %360

360:                                              ; preds = %354
  %361 = load i32, i32* @YBASE, align 4
  %362 = load i32, i32* %10, align 4
  %363 = add nsw i32 %361, %362
  %364 = load i32, i32* @XBASE, align 4
  %365 = load i32, i32* %11, align 4
  %366 = mul nsw i32 2, %365
  %367 = add nsw i32 %364, %366
  %368 = call i32 @movto(i32 %363, i32 %367)
  br label %369

369:                                              ; preds = %360, %354
  %370 = call i32 @addstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %371

371:                                              ; preds = %369, %349
  br label %372

372:                                              ; preds = %371
  %373 = load i64, i64* %8, align 8
  %374 = ashr i64 %373, 1
  store i64 %374, i64* %8, align 8
  %375 = load i32, i32* %11, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %11, align 4
  br label %346

377:                                              ; preds = %346
  br label %378

378:                                              ; preds = %377, %337
  %379 = load i32, i32* %12, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %391, label %381

381:                                              ; preds = %378
  %382 = load i64*, i64** @new, align 8
  %383 = load i32, i32* %10, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %382, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = load i64*, i64** @old, align 8
  %388 = load i32, i32* %10, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  store i64 %386, i64* %390, align 8
  br label %391

391:                                              ; preds = %381, %378
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %10, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %10, align 4
  br label %316

395:                                              ; preds = %316
  %396 = load i32, i32* %12, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %395
  %399 = call i32 (...) @refresh()
  br label %400

400:                                              ; preds = %398, %395
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %12, align 4
  %403 = add nsw i32 %402, -1
  store i32 %403, i32* %12, align 4
  br label %310

404:                                              ; preds = %310
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %13, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %13, align 4
  br label %232

408:                                              ; preds = %232
  %409 = call i32 @movto(i32 6, i32 0)
  %410 = call i32 (...) @refresh()
  %411 = load i32, i32* @CLOCK_REALTIME_FAST, align 4
  %412 = call i32 @clock_gettime(i32 %411, %struct.TYPE_6__* @now)
  %413 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @now, i32 0, i32 0), align 8
  %414 = load i64, i64* %7, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %432

416:                                              ; preds = %408
  %417 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = icmp sgt i64 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i32 0, i32* %421, align 8
  %422 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @now, i32 0, i32 1), align 8
  %423 = sub nsw i64 1000000000, %422
  %424 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i64 %423, i64* %424, align 8
  br label %428

425:                                              ; preds = %416
  %426 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i32 1, i32* %426, align 8
  %427 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i64 0, i64* %427, align 8
  br label %428

428:                                              ; preds = %425, %420
  %429 = call i32 @nanosleep(%struct.timespec* %6, i32* null)
  %430 = load i32, i32* @CLOCK_REALTIME_FAST, align 4
  %431 = call i32 @clock_gettime(i32 %430, %struct.TYPE_6__* @now)
  br label %432

432:                                              ; preds = %428, %408
  %433 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @now, i32 0, i32 0), align 8
  %434 = load i64, i64* %7, align 8
  %435 = sub nsw i64 %433, %434
  %436 = load i32, i32* %14, align 4
  %437 = sext i32 %436 to i64
  %438 = sub nsw i64 %437, %435
  %439 = trunc i64 %438 to i32
  store i32 %439, i32* %14, align 4
  %440 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @now, i32 0, i32 0), align 8
  store i64 %440, i64* %7, align 8
  %441 = load i64, i64* @sigtermed, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %451

443:                                              ; preds = %432
  %444 = call i32 (...) @standend()
  %445 = call i32 (...) @clear()
  %446 = call i32 (...) @refresh()
  %447 = call i32 (...) @endwin()
  %448 = load i64, i64* @sigtermed, align 8
  %449 = trunc i64 %448 to i32
  %450 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %449)
  br label %451

451:                                              ; preds = %443, %432
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %14, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %159, label %455

455:                                              ; preds = %452
  %456 = call i32 (...) @standend()
  %457 = call i32 (...) @clear()
  %458 = call i32 (...) @refresh()
  %459 = call i32 (...) @endwin()
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i64 @has_colors(...) #1

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @init_pair(i32, i32, i32) #1

declare dso_local i32 @attrset(i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @mvaddch(i32, i32, i32) #1

declare dso_local i32 @hline(i32, i32) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @vline(i32, i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @localtime(i64*) #1

declare dso_local i32 @set(i32, i32) #1

declare dso_local i32 @mvaddstr(i32, i32, i8*) #1

declare dso_local i32 @standt(i32) #1

declare dso_local i32 @movto(i32, i32) #1

declare dso_local i32 @addstr(i8*) #1

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #1

declare dso_local i32 @standend(...) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
