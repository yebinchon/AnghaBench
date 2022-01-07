; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_display.c_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_display.c_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@my_win = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@his_win = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@curscr = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %223

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %79

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %131

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %260 [
    i32 10, label %37
    i32 13, label %37
    i32 4, label %57
    i32 8, label %78
    i32 127, label %78
    i32 23, label %130
    i32 21, label %222
    i32 12, label %249
    i32 7, label %256
  ]

37:                                               ; preds = %34, %34
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @makecchar(i32 10)
  %42 = call i32 @wadd_wch(i32 %40, i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @getyx(i32 %45, i32 %48, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wrefresh(i32 %55)
  br label %294

57:                                               ; preds = %34
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = icmp eq %struct.TYPE_5__* %58, @my_win
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @my_win, i32 0, i32 4), align 4
  %62 = call i32 @werase(i32 %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @my_win, i32 0, i32 4), align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @my_win, i32 0, i32 5), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @my_win, i32 0, i32 3), align 4
  %66 = call i32 @getyx(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @my_win, i32 0, i32 4), align 4
  %68 = call i32 @wrefresh(i32 %67)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @his_win, i32 0, i32 1), align 4
  %70 = call i32 @werase(i32 %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @his_win, i32 0, i32 1), align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @his_win, i32 0, i32 2), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @his_win, i32 0, i32 0), align 4
  %74 = call i32 @getyx(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @his_win, i32 0, i32 1), align 4
  %76 = call i32 @wrefresh(i32 %75)
  br label %77

77:                                               ; preds = %60, %57
  br label %294

78:                                               ; preds = %34, %34
  br label %79

79:                                               ; preds = %78, %23
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  %90 = call i32 @max(i32 %89, i32 0)
  %91 = call i32 @wmove(i32 %82, i32 %85, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @getyx(i32 %94, i32 %97, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @waddch(i32 %104, i8 signext 32)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @wmove(i32 %108, i32 %111, i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @getyx(i32 %118, i32 %121, i32 %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @wrefresh(i32 %128)
  br label %294

130:                                              ; preds = %34
  br label %131

131:                                              ; preds = %130, %31
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %152, %131
  %138 = load i32, i32* %6, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @readwin(i32 %143, i32 %146, i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 32
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %155

152:                                              ; preds = %140
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %6, align 4
  br label %137

155:                                              ; preds = %151, %137
  br label %156

156:                                              ; preds = %171, %155
  %157 = load i32, i32* %6, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @readwin(i32 %162, i32 %165, i32 %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp eq i32 %168, 32
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  br label %174

171:                                              ; preds = %159
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %6, align 4
  br label %156

174:                                              ; preds = %170, %156
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  %183 = call i32 @wmove(i32 %177, i32 %180, i32 %182)
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %195, %174
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %186
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @waddch(i32 %193, i8 signext 32)
  br label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %186

198:                                              ; preds = %186
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  %207 = call i32 @wmove(i32 %201, i32 %204, i32 %206)
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @getyx(i32 %210, i32 %213, i32 %216)
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @wrefresh(i32 %220)
  br label %294

222:                                              ; preds = %34
  br label %223

223:                                              ; preds = %222, %15
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @wmove(i32 %226, i32 %229, i32 0)
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @wclrtoeol(i32 %233)
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @getyx(i32 %237, i32 %240, i32 %243)
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @wrefresh(i32 %247)
  br label %294

249:                                              ; preds = %34
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %251 = icmp eq %struct.TYPE_5__* %250, @my_win
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* @curscr, align 4
  %254 = call i32 @wrefresh(i32 %253)
  br label %255

255:                                              ; preds = %252, %249
  br label %294

256:                                              ; preds = %34
  %257 = load i32, i32* @STDOUT_FILENO, align 4
  %258 = load i32*, i32** %4, align 8
  %259 = call i32 @write(i32 %257, i32* %258, i32 4)
  br label %294

260:                                              ; preds = %34
  %261 = load i32*, i32** %4, align 8
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @iswprint(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %260
  %266 = load i32*, i32** %4, align 8
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 9
  br i1 %268, label %269, label %277

269:                                              ; preds = %265, %260
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %4, align 8
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @makecchar(i32 %274)
  %276 = call i32 @wadd_wch(i32 %272, i32 %275)
  br label %279

277:                                              ; preds = %265
  %278 = call i32 (...) @beep()
  br label %279

279:                                              ; preds = %277, %269
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @getyx(i32 %282, i32 %285, i32 %288)
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @wrefresh(i32 %292)
  br label %294

294:                                              ; preds = %279, %256, %255, %223, %198, %79, %77, %37
  ret void
}

declare dso_local i32 @wadd_wch(i32, i32) #1

declare dso_local i32 @makecchar(i32) #1

declare dso_local i32 @getyx(i32, i32, i32) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @waddch(i32, i8 signext) #1

declare dso_local i32 @readwin(i32, i32, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i64 @iswprint(i32) #1

declare dso_local i32 @beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
