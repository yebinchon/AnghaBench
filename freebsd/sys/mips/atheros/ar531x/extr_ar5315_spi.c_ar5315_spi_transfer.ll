; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_spi.c_ar5315_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_spi.c_ar5315_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i64, i64, i32, i32 }
%struct.ar5315_spi_softc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ar5315_spi_transfer: CMD \00", align 1
@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@ARSPI_REG_CTL = common dso_local global i32 0, align 4
@ARSPI_CTL_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"tx_cmd_sz=%d rx_cmd_sz=%d \00", align 1
@ARSPI_REG_OPCODE = common dso_local global i32 0, align 4
@ARSPI_CTL_TXCNT_MASK = common dso_local global i32 0, align 4
@ARSPI_CTL_RXCNT_MASK = common dso_local global i32 0, align 4
@ARSPI_CTL_TXCNT_SHIFT = common dso_local global i32 0, align 4
@ARSPI_CTL_RXCNT_SHIFT = common dso_local global i32 0, align 4
@ARSPI_CTL_START = common dso_local global i32 0, align 4
@ARSPI_REG_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"\0ADATA \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"t%d r%d \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"I%08x \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @ar5315_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5315_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.ar5315_spi_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.ar5315_spi_softc* @device_get_softc(i32 %21)
  store %struct.ar5315_spi_softc* %22, %struct.ar5315_spi_softc** %8, align 8
  %23 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %24 = getelementptr inbounds %struct.ar5315_spi_softc, %struct.ar5315_spi_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %3
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @spibus_get_cs(i32 %31, i32* %17)
  %33 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %17, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %17, align 4
  %37 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @ar5315_spi_chip_activate(%struct.ar5315_spi_softc* %37, i32 %38)
  br label %40

40:                                               ; preds = %44, %30
  %41 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %42 = load i32, i32* @ARSPI_REG_CTL, align 4
  %43 = call i32 @SPI_READ(%struct.ar5315_spi_softc* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @ARSPI_CTL_BUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %40, label %49

49:                                               ; preds = %44
  %50 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %51 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp eq i32 %57, 11
  br i1 %58, label %59, label %81

59:                                               ; preds = %49
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 16
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %63, %67
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %68, %71
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %75 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %78 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ar5315_spi_get_block(i32 %73, i32 %76, i32 %79)
  store i32 0, i32* %4, align 4
  br label %269

81:                                               ; preds = %49
  br label %82

82:                                               ; preds = %86, %81
  %83 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %84 = load i32, i32* @ARSPI_REG_CTL, align 4
  %85 = call i32 @SPI_READ(%struct.ar5315_spi_softc* %83, i32 %84)
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @ARSPI_CTL_BUSY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %82, label %91

91:                                               ; preds = %86
  %92 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %93 = getelementptr inbounds %struct.ar5315_spi_softc, %struct.ar5315_spi_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 32768
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %91
  %98 = load i32, i32* %15, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %101 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %104 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %108 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %125

111:                                              ; preds = %97
  %112 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %113 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %119 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %111, %97
  br label %126

126:                                              ; preds = %125, %91
  %127 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %128 = load i32, i32* @ARSPI_REG_OPCODE, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @SPI_WRITE(%struct.ar5315_spi_softc* %127, i32 %128, i32 %129)
  %131 = load i32, i32* @ARSPI_CTL_TXCNT_MASK, align 4
  %132 = load i32, i32* @ARSPI_CTL_RXCNT_MASK, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %13, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @ARSPI_CTL_TXCNT_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %13, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %13, align 4
  store i32 24, i32* %14, align 4
  %142 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %143 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %144, 24
  br i1 %145, label %146, label %150

146:                                              ; preds = %126
  %147 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %148 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %146, %126
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @ARSPI_CTL_RXCNT_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %13, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* @ARSPI_CTL_START, align 4
  %157 = load i32, i32* %13, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %13, align 4
  %159 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %160 = load i32, i32* @ARSPI_REG_CTL, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @SPI_WRITE(%struct.ar5315_spi_softc* %159, i32 %160, i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %163, 11
  br i1 %164, label %165, label %169

165:                                              ; preds = %150
  %166 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %167 = load i32, i32* @ARSPI_REG_DATA, align 4
  %168 = call i32 @SPI_WRITE(%struct.ar5315_spi_softc* %166, i32 %167, i32 0)
  br label %169

169:                                              ; preds = %165, %150
  %170 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %171 = getelementptr inbounds %struct.ar5315_spi_softc, %struct.ar5315_spi_softc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 32768
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %169
  %178 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %179 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to i32*
  store i32* %181, i32** %9, align 8
  %182 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %183 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %11, align 4
  %185 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %186 = getelementptr inbounds %struct.ar5315_spi_softc, %struct.ar5315_spi_softc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 32768
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %177
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %177
  store i32 0, i32* %18, align 4
  br label %195

195:                                              ; preds = %254, %194
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %14, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sdiv i32 %198, 4
  %200 = icmp sle i32 %196, %199
  br i1 %200, label %201, label %257

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %206, %201
  %203 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %204 = load i32, i32* @ARSPI_REG_CTL, align 4
  %205 = call i32 @SPI_READ(%struct.ar5315_spi_softc* %203, i32 %204)
  store i32 %205, i32* %13, align 4
  br label %206

206:                                              ; preds = %202
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* @ARSPI_CTL_BUSY, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %202, label %211

211:                                              ; preds = %206
  %212 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %213 = load i32, i32* @ARSPI_REG_DATA, align 4
  %214 = call i32 @SPI_READ(%struct.ar5315_spi_softc* %212, i32 %213)
  store i32 %214, i32* %16, align 4
  %215 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %216 = getelementptr inbounds %struct.ar5315_spi_softc, %struct.ar5315_spi_softc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 32768
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %211
  %221 = load i32, i32* %16, align 4
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %220, %211
  store i32 0, i32* %19, align 4
  br label %224

224:                                              ; preds = %250, %223
  %225 = load i32, i32* %19, align 4
  %226 = icmp slt i32 %225, 4
  br i1 %226, label %227, label %253

227:                                              ; preds = %224
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* %19, align 4
  %230 = mul nsw i32 8, %229
  %231 = ashr i32 %228, %230
  %232 = and i32 255, %231
  %233 = load i32*, i32** %9, align 8
  %234 = load i32, i32* %18, align 4
  %235 = mul nsw i32 %234, 4
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %235, %236
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %233, i64 %239
  store i32 %232, i32* %240, align 4
  %241 = load i32, i32* %18, align 4
  %242 = mul nsw i32 %241, 4
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 %242, %243
  %245 = add nsw i32 %244, 2
  %246 = load i32, i32* %14, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %227
  br label %253

249:                                              ; preds = %227
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %19, align 4
  br label %224

253:                                              ; preds = %248, %224
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %18, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %18, align 4
  br label %195

257:                                              ; preds = %195
  %258 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %259 = load i32, i32* %17, align 4
  %260 = call i32 @ar5315_spi_chip_deactivate(%struct.ar5315_spi_softc* %258, i32 %259)
  %261 = load %struct.ar5315_spi_softc*, %struct.ar5315_spi_softc** %8, align 8
  %262 = getelementptr inbounds %struct.ar5315_spi_softc, %struct.ar5315_spi_softc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, 32768
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %257
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %257
  store i32 0, i32* %4, align 4
  br label %269

269:                                              ; preds = %268, %59
  %270 = load i32, i32* %4, align 4
  ret i32 %270
}

declare dso_local %struct.ar5315_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @ar5315_spi_chip_activate(%struct.ar5315_spi_softc*, i32) #1

declare dso_local i32 @SPI_READ(%struct.ar5315_spi_softc*, i32) #1

declare dso_local i32 @ar5315_spi_get_block(i32, i32, i32) #1

declare dso_local i32 @SPI_WRITE(%struct.ar5315_spi_softc*, i32, i32) #1

declare dso_local i32 @ar5315_spi_chip_deactivate(%struct.ar5315_spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
