; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_player.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_player.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@J_START = common dso_local global i32 0, align 4
@pf = common dso_local global i32 0, align 4
@DEF_PF = common dso_local global i32 0, align 4
@DIV_REG = common dso_local global i32 0, align 4
@J_DOWN = common dso_local global i32 0, align 4
@pl = common dso_local global i32 0, align 4
@J_UP = common dso_local global i32 0, align 4
@J_LEFT = common dso_local global i32 0, align 4
@pw = common dso_local global i32 0, align 4
@ps = common dso_local global i32 0, align 4
@J_RIGHT = common dso_local global i32 0, align 4
@J_SELECT = common dso_local global i32 0, align 4
@k_right = common dso_local global i32 0, align 4
@k_left = common dso_local global i32 0, align 4
@DEF_PC0 = common dso_local global i32 0, align 4
@foreCGB = common dso_local global i32* null, align 8
@DEF_PC1 = common dso_local global i32 0, align 4
@DEF_SP = common dso_local global i32 0, align 4
@px = common dso_local global i64 0, align 8
@MIN_PX = common dso_local global i64 0, align 8
@DEF_PY = common dso_local global i32 0, align 4
@MAX_PX = common dso_local global i64 0, align 8
@MAX_TT = common dso_local global i32 0, align 4
@tf = common dso_local global i32* null, align 8
@tx = common dso_local global i64* null, align 8
@ty = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @player() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @joypad()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @J_START, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %138

9:                                                ; preds = %0
  %10 = load i32, i32* @pf, align 4
  %11 = load i32, i32* @DEF_PF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i32, i32* @DIV_REG, align 4
  store i32 %14, i32* %3, align 4
  %15 = call i32 (...) @waitpadup()
  %16 = load i32, i32* @DIV_REG, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @initarand(i32 %20)
  %22 = call i32 (...) @hide_msg()
  %23 = call i32 (...) @init_score()
  %24 = call i32 (...) @init_player()
  %25 = call i32 (...) @init_tama()
  %26 = call i32 (...) @init_enemy()
  %27 = call i32 (...) @init_kirai()
  %28 = call i32 @delay(i32 500)
  br label %137

29:                                               ; preds = %9
  %30 = call i32 (...) @show_pause()
  %31 = call i32 (...) @waitpadup()
  %32 = call i32 (...) @joypad()
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %132, %29
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @J_START, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %133

39:                                               ; preds = %33
  %40 = call i32 (...) @joypad()
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @J_DOWN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* @pl, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @pl, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @pl, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @pl, align 4
  %53 = call i32 @show_level(i32 %52)
  %54 = call i32 (...) @waitpadup()
  br label %132

55:                                               ; preds = %39
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @J_UP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32, i32* @pl, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @pl, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @pl, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @pl, align 4
  %68 = call i32 @show_level(i32 %67)
  %69 = call i32 (...) @waitpadup()
  br label %131

70:                                               ; preds = %55
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* @J_LEFT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %87, %75
  %77 = call i32 (...) @joypad()
  %78 = load i32, i32* @J_LEFT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, i32* @pw, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @pw, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* @pw, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* @pw, align 4
  %89 = call i32 @show_score(i32 %88)
  %90 = call i32 @delay(i32 250)
  br label %76

91:                                               ; preds = %76
  %92 = load i32, i32* @ps, align 4
  %93 = call i32 @show_score(i32 %92)
  br label %130

94:                                               ; preds = %70
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @J_RIGHT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %111, %99
  %101 = call i32 (...) @joypad()
  %102 = load i32, i32* @J_RIGHT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, i32* @pw, align 4
  %107 = icmp slt i32 %106, 99
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @pw, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @pw, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* @pw, align 4
  %113 = call i32 @show_score(i32 %112)
  %114 = call i32 @delay(i32 250)
  br label %100

115:                                              ; preds = %100
  %116 = load i32, i32* @ps, align 4
  %117 = call i32 @show_score(i32 %116)
  br label %129

118:                                              ; preds = %94
  %119 = load i32, i32* %1, align 4
  %120 = load i32, i32* @J_SELECT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @k_right, align 4
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* @k_left, align 4
  store i32 %125, i32* @k_right, align 4
  %126 = load i32, i32* %2, align 4
  store i32 %126, i32* @k_left, align 4
  %127 = call i32 (...) @waitpadup()
  br label %128

128:                                              ; preds = %123, %118
  br label %129

129:                                              ; preds = %128, %115
  br label %130

130:                                              ; preds = %129, %91
  br label %131

131:                                              ; preds = %130, %66
  br label %132

132:                                              ; preds = %131, %51
  br label %33

133:                                              ; preds = %33
  %134 = call i32 (...) @waitpadup()
  %135 = call i32 (...) @hide_msg()
  %136 = call i32 @delay(i32 500)
  br label %137

137:                                              ; preds = %133, %13
  br label %312

138:                                              ; preds = %0
  %139 = load i32, i32* @pf, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %183

141:                                              ; preds = %138
  %142 = load i32, i32* @pf, align 4
  %143 = load i32, i32* @DEF_PF, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %176

145:                                              ; preds = %141
  %146 = load i32, i32* @pf, align 4
  %147 = mul nsw i32 %146, 2
  %148 = load i32, i32* @DEF_PC0, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @set_sprite_tile(i32 0, i32 %149)
  %151 = load i32*, i32** @foreCGB, align 8
  %152 = load i32, i32* @pf, align 4
  %153 = mul nsw i32 %152, 2
  %154 = load i32, i32* @DEF_PC0, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @set_sprite_attrb(i32 0, i32 %158)
  %160 = load i32, i32* @pf, align 4
  %161 = mul nsw i32 %160, 2
  %162 = load i32, i32* @DEF_PC1, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @set_sprite_tile(i32 1, i32 %163)
  %165 = load i32*, i32** @foreCGB, align 8
  %166 = load i32, i32* @pf, align 4
  %167 = mul nsw i32 %166, 2
  %168 = load i32, i32* @DEF_PC1, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @set_sprite_attrb(i32 1, i32 %172)
  %174 = load i32, i32* @pf, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @pf, align 4
  br label %182

176:                                              ; preds = %141
  %177 = load i32, i32* @DEF_SP, align 4
  %178 = call i32 @set_sprite_tile(i32 0, i32 %177)
  %179 = load i32, i32* @DEF_SP, align 4
  %180 = call i32 @set_sprite_tile(i32 1, i32 %179)
  %181 = call i32 (...) @show_gover()
  br label %182

182:                                              ; preds = %176, %145
  br label %312

183:                                              ; preds = %138
  %184 = load i32, i32* %1, align 4
  %185 = load i32, i32* @J_LEFT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %183
  %189 = load i64, i64* @px, align 8
  %190 = load i64, i64* @MIN_PX, align 8
  %191 = icmp sgt i64 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %188
  %193 = load i64, i64* @px, align 8
  %194 = add nsw i64 %193, -1
  store i64 %194, i64* @px, align 8
  %195 = load i64, i64* @px, align 8
  %196 = load i32, i32* @DEF_PY, align 4
  %197 = call i32 @move_sprite(i32 0, i64 %195, i32 %196)
  %198 = load i64, i64* @px, align 8
  %199 = add nsw i64 %198, 8
  %200 = load i32, i32* @DEF_PY, align 4
  %201 = call i32 @move_sprite(i32 1, i64 %199, i32 %200)
  br label %222

202:                                              ; preds = %188, %183
  %203 = load i32, i32* %1, align 4
  %204 = load i32, i32* @J_RIGHT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %202
  %208 = load i64, i64* @px, align 8
  %209 = load i64, i64* @MAX_PX, align 8
  %210 = icmp slt i64 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %207
  %212 = load i64, i64* @px, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* @px, align 8
  %214 = load i64, i64* @px, align 8
  %215 = load i32, i32* @DEF_PY, align 4
  %216 = call i32 @move_sprite(i32 0, i64 %214, i32 %215)
  %217 = load i64, i64* @px, align 8
  %218 = add nsw i64 %217, 8
  %219 = load i32, i32* @DEF_PY, align 4
  %220 = call i32 @move_sprite(i32 1, i64 %218, i32 %219)
  br label %221

221:                                              ; preds = %211, %207, %202
  br label %222

222:                                              ; preds = %221, %192
  %223 = load i32, i32* %1, align 4
  %224 = load i32, i32* @k_left, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %264

227:                                              ; preds = %222
  %228 = load i32, i32* @pf, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %263

230:                                              ; preds = %227
  store i32 1, i32* @pf, align 4
  store i32 0, i32* %2, align 4
  br label %231

231:                                              ; preds = %259, %230
  %232 = load i32, i32* %2, align 4
  %233 = load i32, i32* @MAX_TT, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %262

235:                                              ; preds = %231
  %236 = load i32*, i32** @tf, align 8
  %237 = load i32, i32* %2, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %235
  %243 = load i32*, i32** @tf, align 8
  %244 = load i32, i32* %2, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 1, i32* %246, align 4
  %247 = load i64, i64* @px, align 8
  %248 = sub nsw i64 %247, 4
  %249 = load i64*, i64** @tx, align 8
  %250 = load i32, i32* %2, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  store i64 %248, i64* %252, align 8
  %253 = load i32, i32* @DEF_PY, align 4
  %254 = load i32*, i32** @ty, align 8
  %255 = load i32, i32* %2, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %253, i32* %257, align 4
  br label %262

258:                                              ; preds = %235
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %2, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %2, align 4
  br label %231

262:                                              ; preds = %242, %231
  br label %263

263:                                              ; preds = %262, %227
  br label %312

264:                                              ; preds = %222
  %265 = load i32, i32* %1, align 4
  %266 = load i32, i32* @k_right, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %306

269:                                              ; preds = %264
  %270 = load i32, i32* @pf, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %305

272:                                              ; preds = %269
  store i32 1, i32* @pf, align 4
  store i32 0, i32* %2, align 4
  br label %273

273:                                              ; preds = %301, %272
  %274 = load i32, i32* %2, align 4
  %275 = load i32, i32* @MAX_TT, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %304

277:                                              ; preds = %273
  %278 = load i32*, i32** @tf, align 8
  %279 = load i32, i32* %2, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %300

284:                                              ; preds = %277
  %285 = load i32*, i32** @tf, align 8
  %286 = load i32, i32* %2, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 1, i32* %288, align 4
  %289 = load i64, i64* @px, align 8
  %290 = add nsw i64 %289, 12
  %291 = load i64*, i64** @tx, align 8
  %292 = load i32, i32* %2, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %291, i64 %293
  store i64 %290, i64* %294, align 8
  %295 = load i32, i32* @DEF_PY, align 4
  %296 = load i32*, i32** @ty, align 8
  %297 = load i32, i32* %2, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  store i32 %295, i32* %299, align 4
  br label %304

300:                                              ; preds = %277
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %2, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %2, align 4
  br label %273

304:                                              ; preds = %284, %273
  br label %305

305:                                              ; preds = %304, %269
  br label %311

306:                                              ; preds = %264
  %307 = load i32, i32* @pf, align 4
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  store i32 0, i32* @pf, align 4
  br label %310

310:                                              ; preds = %309, %306
  br label %311

311:                                              ; preds = %310, %305
  br label %312

312:                                              ; preds = %137, %182, %311, %263
  ret void
}

declare dso_local i32 @joypad(...) #1

declare dso_local i32 @waitpadup(...) #1

declare dso_local i32 @initarand(i32) #1

declare dso_local i32 @hide_msg(...) #1

declare dso_local i32 @init_score(...) #1

declare dso_local i32 @init_player(...) #1

declare dso_local i32 @init_tama(...) #1

declare dso_local i32 @init_enemy(...) #1

declare dso_local i32 @init_kirai(...) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @show_pause(...) #1

declare dso_local i32 @show_level(i32) #1

declare dso_local i32 @show_score(i32) #1

declare dso_local i32 @set_sprite_tile(i32, i32) #1

declare dso_local i32 @set_sprite_attrb(i32, i32) #1

declare dso_local i32 @show_gover(...) #1

declare dso_local i32 @move_sprite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
