; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.jz4780_clk_gen_sc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@DIV_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32, i32*, i32, i32*)* @jz4780_clk_gen_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_gen_set_freq(%struct.clknode* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.jz4780_clk_gen_sc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %22 = load %struct.clknode*, %struct.clknode** %7, align 8
  %23 = call %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode* %22)
  store %struct.jz4780_clk_gen_sc* %23, %struct.jz4780_clk_gen_sc** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @howmany(i32 %24, i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %28, %30
  store i32 %31, i32* %19, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %18, align 4
  %37 = sdiv i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %34, %38
  %40 = call i64 @abs(i64 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %19, align 4
  %46 = sdiv i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %43, %47
  %49 = call i64 @abs(i64 %48)
  %50 = icmp slt i64 %40, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %5
  %52 = load i32, i32* %18, align 4
  br label %55

53:                                               ; preds = %5
  %54 = load i32, i32* %19, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %59 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %57, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %67 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %65, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  store i32 1, i32* %14, align 4
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %15, align 4
  br label %106

92:                                               ; preds = %84, %76
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %102, %97, %92
  br label %106

106:                                              ; preds = %105, %89
  %107 = load i32, i32* %15, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 1, i32* %15, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %112 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 1, %116
  %118 = sub i32 %117, 1
  store i32 %118, i32* %16, align 4
  %119 = load i32*, i32** %11, align 8
  store i32 1, i32* %119, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %110
  %125 = load i32*, i32** %11, align 8
  store i32 0, i32* %125, align 4
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %124, %110
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %130 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %128, %134
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %167

142:                                              ; preds = %127
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %14, align 4
  %151 = sdiv i32 %149, %150
  %152 = icmp ne i32 %148, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %156 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* @ERANGE, align 4
  store i32 %161, i32* %6, align 4
  br label %297

162:                                              ; preds = %153, %146, %142
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %14, align 4
  %165 = sdiv i32 %163, %164
  %166 = load i32*, i32** %9, align 8
  store i32 %165, i32* %166, align 4
  store i32 0, i32* %6, align 4
  br label %297

167:                                              ; preds = %127
  %168 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %169 = call i32 @CLK_LOCK(%struct.jz4780_clk_gen_sc* %168)
  %170 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %171 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %172 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc* %170, i32 %176)
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %180 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %178, %184
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %17, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %191 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %190, i32 0, i32 0
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %189, %195
  %197 = load i32, i32* %17, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %17, align 4
  %199 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %200 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = icmp uge i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %167
  %207 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %208 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 1, %212
  %214 = load i32, i32* %17, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %17, align 4
  br label %216

216:                                              ; preds = %206, %167
  %217 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %218 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = icmp uge i32 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %216
  %225 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %226 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = shl i32 1, %230
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %17, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %17, align 4
  br label %235

235:                                              ; preds = %224, %216
  %236 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %237 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %238 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %237, i32 0, i32 0
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %17, align 4
  %244 = call i32 @CLK_WR_4(%struct.jz4780_clk_gen_sc* %236, i32 %242, i32 %243)
  store i32 0, i32* %20, align 4
  %245 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %246 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %245, i32 0, i32 0
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = icmp uge i32 %250, 0
  br i1 %251, label %252, label %289

252:                                              ; preds = %235
  store i32 0, i32* %21, align 4
  br label %253

253:                                              ; preds = %279, %252
  %254 = load i32, i32* %21, align 4
  %255 = load i32, i32* @DIV_TIMEOUT, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %282

257:                                              ; preds = %253
  %258 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %259 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %260 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %259, i32 0, i32 0
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc* %258, i32 %264)
  store i32 %265, i32* %17, align 4
  %266 = load i32, i32* %17, align 4
  %267 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %268 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %267, i32 0, i32 0
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = shl i32 1, %272
  %274 = and i32 %266, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %257
  br label %282

277:                                              ; preds = %257
  %278 = call i32 @DELAY(i32 1000)
  br label %279

279:                                              ; preds = %277
  %280 = load i32, i32* %21, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %21, align 4
  br label %253

282:                                              ; preds = %276, %253
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* @DIV_TIMEOUT, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %287, i32* %20, align 4
  br label %288

288:                                              ; preds = %286, %282
  br label %289

289:                                              ; preds = %288, %235
  %290 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %12, align 8
  %291 = call i32 @CLK_UNLOCK(%struct.jz4780_clk_gen_sc* %290)
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* %14, align 4
  %294 = sdiv i32 %292, %293
  %295 = load i32*, i32** %9, align 8
  store i32 %294, i32* %295, align 4
  %296 = load i32, i32* %20, align 4
  store i32 %296, i32* %6, align 4
  br label %297

297:                                              ; preds = %289, %162, %160
  %298 = load i32, i32* %6, align 4
  ret i32 %298
}

declare dso_local %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @CLK_LOCK(%struct.jz4780_clk_gen_sc*) #1

declare dso_local i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc*, i32) #1

declare dso_local i32 @CLK_WR_4(%struct.jz4780_clk_gen_sc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CLK_UNLOCK(%struct.jz4780_clk_gen_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
