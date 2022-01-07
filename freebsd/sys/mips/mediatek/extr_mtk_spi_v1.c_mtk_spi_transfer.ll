; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.mtk_spi_softc = type { i64 }

@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MSBFIRST = common dso_local global i32 0, align 4
@SPICLKPOL = common dso_local global i32 0, align 4
@TX_ON_CLK_FALL = common dso_local global i32 0, align 4
@CAPT_ON_CLK_FALL = common dso_local global i32 0, align 4
@MTK_SPICFG = common dso_local global i32 0, align 4
@MTK_SPI_WRITE = common dso_local global i32 0, align 4
@MTK_SPI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @mtk_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.mtk_spi_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.mtk_spi_softc* @device_get_softc(i32 %22)
  store %struct.mtk_spi_softc* %23, %struct.mtk_spi_softc** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @spibus_get_cs(i32 %24, i32* %12)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @spibus_get_clock(i32 %26, i32* %13)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @spibus_get_mode(i32 %28, i32* %14)
  %30 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %4, align 4
  br label %279

38:                                               ; preds = %3
  %39 = load i32, i32* @MSBFIRST, align 4
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %14, align 4
  switch i32 %40, label %55 [
    i32 0, label %41
    i32 3, label %41
    i32 1, label %47
    i32 2, label %51
  ]

41:                                               ; preds = %38, %38
  %42 = load i32, i32* @SPICLKPOL, align 4
  %43 = load i32, i32* @TX_ON_CLK_FALL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %21, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %21, align 4
  br label %55

47:                                               ; preds = %38
  %48 = load i32, i32* @TX_ON_CLK_FALL, align 4
  %49 = load i32, i32* %21, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %21, align 4
  br label %55

51:                                               ; preds = %38
  %52 = load i32, i32* @CAPT_ON_CLK_FALL, align 4
  %53 = load i32, i32* %21, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %21, align 4
  br label %55

55:                                               ; preds = %38, %51, %47, %41
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = call i32 (...) @mtk_soc_get_cpuclk()
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %60, 1
  %62 = add nsw i32 %59, %61
  %63 = load i32, i32* %13, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @fls(i32 %65)
  %67 = sub nsw i32 %66, 2
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i32 0, i32* %20, align 4
  br label %76

71:                                               ; preds = %58
  %72 = load i32, i32* %20, align 4
  %73 = icmp sgt i32 %72, 6
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 6, i32* %20, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %70
  br label %78

77:                                               ; preds = %55
  store i32 6, i32* %20, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %80 = load i32, i32* @MTK_SPICFG, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %20, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @SPI_WRITE(%struct.mtk_spi_softc* %79, i32 %80, i32 %83)
  %85 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %86 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %78
  %90 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %91 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %125 [
    i32 132, label %97
    i32 137, label %102
    i32 136, label %102
    i32 128, label %102
    i32 129, label %102
    i32 131, label %107
    i32 133, label %112
    i32 135, label %112
    i32 130, label %117
    i32 134, label %120
  ]

97:                                               ; preds = %89
  %98 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %99 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %101 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %100, i32 0, i32 1
  store i32 3, i32* %101, align 4
  br label %125

102:                                              ; preds = %89, %89, %89, %89
  %103 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %104 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %106 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  br label %125

107:                                              ; preds = %89
  %108 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %109 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %111 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %125

112:                                              ; preds = %89, %89
  %113 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %114 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %113, i32 0, i32 2
  store i32 0, i32* %114, align 8
  %115 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %116 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  br label %125

117:                                              ; preds = %89
  %118 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %119 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  br label %125

120:                                              ; preds = %89
  %121 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %122 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %121, i32 0, i32 3
  store i32 0, i32* %122, align 4
  %123 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %124 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %89, %120, %117, %112, %107, %102, %97
  br label %126

126:                                              ; preds = %125, %78
  %127 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %128 = call i32 @mtk_spi_chip_activate(%struct.mtk_spi_softc* %127)
  %129 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %130 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %133 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %200

137:                                              ; preds = %126
  %138 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %139 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  store i32* %141, i32** %9, align 8
  %142 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %143 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i32*
  store i32* %145, i32** %11, align 8
  %146 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %147 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %16, align 4
  %149 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %150 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %137
  %154 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %155 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %16, align 4
  br label %159

159:                                              ; preds = %153, %137
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %196, %159
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %199

164:                                              ; preds = %160
  %165 = load i32, i32* %15, align 4
  %166 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %167 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %164
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %10, align 4
  %176 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %177 = load i32, i32* @MTK_SPI_WRITE, align 4
  %178 = call i32 @mtk_spi_txrx(%struct.mtk_spi_softc* %176, i32* %10, i32 %177)
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  br label %275

182:                                              ; preds = %170
  br label %196

183:                                              ; preds = %164
  %184 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %185 = load i32, i32* @MTK_SPI_READ, align 4
  %186 = call i32 @mtk_spi_txrx(%struct.mtk_spi_softc* %184, i32* %10, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %275

190:                                              ; preds = %183
  %191 = load i32, i32* %10, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %191, i32* %195, align 4
  br label %196

196:                                              ; preds = %190, %182
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  br label %160

199:                                              ; preds = %160
  br label %200

200:                                              ; preds = %199, %126
  %201 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %202 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %205 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %274

209:                                              ; preds = %200
  %210 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %211 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp sgt i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 1, i32 0
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %18, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %209
  %219 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %220 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  br label %226

222:                                              ; preds = %209
  %223 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %224 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  br label %226

226:                                              ; preds = %222, %218
  %227 = phi i64 [ %221, %218 ], [ %225, %222 ]
  %228 = inttoptr i64 %227 to i32*
  store i32* %228, i32** %9, align 8
  %229 = load i32, i32* %18, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %233 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  br label %239

235:                                              ; preds = %226
  %236 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %237 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  br label %239

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %234, %231 ], [ %238, %235 ]
  store i32 %240, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %241

241:                                              ; preds = %270, %239
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* %16, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %273

245:                                              ; preds = %241
  %246 = load i32*, i32** %9, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %10, align 4
  %251 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %252 = load i32, i32* %18, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %245
  %255 = load i32, i32* @MTK_SPI_WRITE, align 4
  br label %258

256:                                              ; preds = %245
  %257 = load i32, i32* @MTK_SPI_READ, align 4
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ]
  %260 = call i32 @mtk_spi_txrx(%struct.mtk_spi_softc* %251, i32* %10, i32 %259)
  store i32 %260, i32* %17, align 4
  %261 = load i32, i32* %17, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %275

264:                                              ; preds = %258
  %265 = load i32, i32* %10, align 4
  %266 = load i32*, i32** %9, align 8
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %265, i32* %269, align 4
  br label %270

270:                                              ; preds = %264
  %271 = load i32, i32* %15, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %15, align 4
  br label %241

273:                                              ; preds = %241
  br label %274

274:                                              ; preds = %273, %200
  br label %275

275:                                              ; preds = %274, %263, %189, %181
  %276 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %277 = call i32 @mtk_spi_chip_deactivate(%struct.mtk_spi_softc* %276)
  %278 = load i32, i32* %17, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %275, %36
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local %struct.mtk_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @spibus_get_clock(i32, i32*) #1

declare dso_local i32 @spibus_get_mode(i32, i32*) #1

declare dso_local i32 @mtk_soc_get_cpuclk(...) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @SPI_WRITE(%struct.mtk_spi_softc*, i32, i32) #1

declare dso_local i32 @mtk_spi_chip_activate(%struct.mtk_spi_softc*) #1

declare dso_local i32 @mtk_spi_txrx(%struct.mtk_spi_softc*, i32*, i32) #1

declare dso_local i32 @mtk_spi_chip_deactivate(%struct.mtk_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
