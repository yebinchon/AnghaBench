; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_receive_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_receive_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i8*, i64, i8*, i32, i8*, i32, i32, %struct.TYPE_14__, i32, i32, i32, i32 (%struct.TYPE_15__*, i32)*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@M_ASYNC = common dso_local global i64 0, align 8
@RISA_TIMEOUT = common dso_local global i16 0, align 2
@DMABUFSZ = common dso_local global i64 0, align 8
@BSTS_OWN24 = common dso_local global i32 0, align 4
@REOI_TERMBUFF = common dso_local global i32 0, align 4
@RIS_OVERRUN = common dso_local global i16 0, align 2
@CX_OVERRUN = common dso_local global i32 0, align 4
@RISH_CRCERR = common dso_local global i16 0, align 2
@CX_CRC = common dso_local global i32 0, align 4
@RISH_RXABORT = common dso_local global i16 0, align 2
@RISH_RESIND = common dso_local global i16 0, align 2
@CX_FRAME = common dso_local global i32 0, align 4
@RISA_PARERR = common dso_local global i16 0, align 2
@RISA_FRERR = common dso_local global i16 0, align 2
@RISA_BREAK = common dso_local global i16 0, align 2
@CX_BREAK = common dso_local global i32 0, align 4
@RIS_EOBUF = common dso_local global i16 0, align 2
@RIS_BB = common dso_local global i16 0, align 2
@RIS_EOFR = common dso_local global i16 0, align 2
@CX_OVERFLOW = common dso_local global i32 0, align 4
@RISA_SCMASK = common dso_local global i16 0, align 2
@REOI_DISCEXC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @cx_receive_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_receive_interrupt(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @RISR(i32 %17)
  %19 = call i8* @inw(i32 %18)
  %20 = ptrtoint i8* %19 to i16
  store i16 %20, i16* %4, align 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = call i32 @cx_compute_buf_len(%struct.TYPE_15__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @M_ASYNC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %138

28:                                               ; preds = %1
  %29 = load i16, i16* %4, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @RISA_TIMEOUT, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %138

35:                                               ; preds = %28
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @RCBADRL(i32 %38)
  %40 = call i8* @inw(i32 %39)
  %41 = ptrtoint i8* %40 to i16
  %42 = zext i16 %41 to i64
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @RCBADRU(i32 %45)
  %47 = call i8* @inw(i32 %46)
  %48 = ptrtoint i8* %47 to i64
  %49 = shl i64 %48, 16
  %50 = or i64 %42, %49
  store i64 %50, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp uge i64 %51, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %35
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DMABUFSZ, align 8
  %62 = add i64 %60, %61
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %56
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %8, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %68, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @BRBCNT(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @BRBSTS(i32 %80)
  store i32 %81, i32* %10, align 4
  br label %115

82:                                               ; preds = %56, %35
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp uge i64 %83, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %82
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DMABUFSZ, align 8
  %94 = add i64 %92, %93
  %95 = icmp ult i64 %89, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %88
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %100, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %5, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ARBCNT(i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ARBSTS(i32 %112)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %96, %88, %82
  br label %115

115:                                              ; preds = %114, %64
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @outw(i32 %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @BSTS_OWN24, align 4
  %135 = call i32 @outb(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %118, %115
  %137 = load i32, i32* @REOI_TERMBUFF, align 4
  store i32 %137, i32* %2, align 4
  br label %510

138:                                              ; preds = %28, %1
  %139 = load i16, i16* %4, align 2
  %140 = zext i16 %139 to i32
  %141 = load i16, i16* @RIS_OVERRUN, align 2
  %142 = zext i16 %141 to i32
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %138
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 13
  %152 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %151, align 8
  %153 = icmp ne i32 (%struct.TYPE_15__*, i32)* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 13
  %157 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %156, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %159 = load i32, i32* @CX_OVERRUN, align 4
  %160 = call i32 %157(%struct.TYPE_15__* %158, i32 %159)
  br label %161

161:                                              ; preds = %154, %145
  br label %449

162:                                              ; preds = %138
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @M_ASYNC, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %192

168:                                              ; preds = %162
  %169 = load i16, i16* %4, align 2
  %170 = zext i16 %169 to i32
  %171 = load i16, i16* @RISH_CRCERR, align 2
  %172 = zext i16 %171 to i32
  %173 = and i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %168
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 12
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 13
  %182 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %181, align 8
  %183 = icmp ne i32 (%struct.TYPE_15__*, i32)* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %175
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 13
  %187 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %186, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %189 = load i32, i32* @CX_CRC, align 4
  %190 = call i32 %187(%struct.TYPE_15__* %188, i32 %189)
  br label %191

191:                                              ; preds = %184, %175
  br label %448

192:                                              ; preds = %168, %162
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @M_ASYNC, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %225

198:                                              ; preds = %192
  %199 = load i16, i16* %4, align 2
  %200 = zext i16 %199 to i32
  %201 = load i16, i16* @RISH_RXABORT, align 2
  %202 = zext i16 %201 to i32
  %203 = load i16, i16* @RISH_RESIND, align 2
  %204 = zext i16 %203 to i32
  %205 = or i32 %202, %204
  %206 = and i32 %200, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %198
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 13
  %215 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %214, align 8
  %216 = icmp ne i32 (%struct.TYPE_15__*, i32)* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %208
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 13
  %220 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %219, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %222 = load i32, i32* @CX_FRAME, align 4
  %223 = call i32 %220(%struct.TYPE_15__* %221, i32 %222)
  br label %224

224:                                              ; preds = %217, %208
  br label %447

225:                                              ; preds = %198, %192
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @M_ASYNC, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %255

231:                                              ; preds = %225
  %232 = load i16, i16* %4, align 2
  %233 = zext i16 %232 to i32
  %234 = load i16, i16* @RISA_PARERR, align 2
  %235 = zext i16 %234 to i32
  %236 = and i32 %233, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %231
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 12
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 13
  %245 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %244, align 8
  %246 = icmp ne i32 (%struct.TYPE_15__*, i32)* %245, null
  br i1 %246, label %247, label %254

247:                                              ; preds = %238
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 13
  %250 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %249, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %252 = load i32, i32* @CX_CRC, align 4
  %253 = call i32 %250(%struct.TYPE_15__* %251, i32 %252)
  br label %254

254:                                              ; preds = %247, %238
  br label %446

255:                                              ; preds = %231, %225
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @M_ASYNC, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %285

261:                                              ; preds = %255
  %262 = load i16, i16* %4, align 2
  %263 = zext i16 %262 to i32
  %264 = load i16, i16* @RISA_FRERR, align 2
  %265 = zext i16 %264 to i32
  %266 = and i32 %263, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %285

268:                                              ; preds = %261
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 12
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 13
  %275 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %274, align 8
  %276 = icmp ne i32 (%struct.TYPE_15__*, i32)* %275, null
  br i1 %276, label %277, label %284

277:                                              ; preds = %268
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 13
  %280 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %279, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %282 = load i32, i32* @CX_FRAME, align 4
  %283 = call i32 %280(%struct.TYPE_15__* %281, i32 %282)
  br label %284

284:                                              ; preds = %277, %268
  br label %445

285:                                              ; preds = %261, %255
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @M_ASYNC, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %311

291:                                              ; preds = %285
  %292 = load i16, i16* %4, align 2
  %293 = zext i16 %292 to i32
  %294 = load i16, i16* @RISA_BREAK, align 2
  %295 = zext i16 %294 to i32
  %296 = and i32 %293, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %311

298:                                              ; preds = %291
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 13
  %301 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %300, align 8
  %302 = icmp ne i32 (%struct.TYPE_15__*, i32)* %301, null
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 13
  %306 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %305, align 8
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %308 = load i32, i32* @CX_BREAK, align 4
  %309 = call i32 %306(%struct.TYPE_15__* %307, i32 %308)
  br label %310

310:                                              ; preds = %303, %298
  br label %444

311:                                              ; preds = %291, %285
  %312 = load i16, i16* %4, align 2
  %313 = zext i16 %312 to i32
  %314 = load i16, i16* @RIS_EOBUF, align 2
  %315 = zext i16 %314 to i32
  %316 = and i32 %313, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %323, label %318

318:                                              ; preds = %311
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 12
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 8
  br label %443

323:                                              ; preds = %311
  %324 = load i16, i16* %4, align 2
  %325 = zext i16 %324 to i32
  %326 = load i16, i16* @RIS_BB, align 2
  %327 = zext i16 %326 to i32
  %328 = and i32 %325, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %323
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 10
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @BRBCNT(i32 %333)
  %335 = call i8* @inw(i32 %334)
  br label %342

336:                                              ; preds = %323
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 10
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @ARBCNT(i32 %339)
  %341 = call i8* @inw(i32 %340)
  br label %342

342:                                              ; preds = %336, %330
  %343 = phi i8* [ %335, %330 ], [ %341, %336 ]
  %344 = ptrtoint i8* %343 to i32
  store i32 %344, i32* %5, align 4
  %345 = load i32, i32* %5, align 4
  %346 = sext i32 %345 to i64
  %347 = load i64, i64* @DMABUFSZ, align 8
  %348 = icmp ugt i64 %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load i64, i64* @DMABUFSZ, align 8
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %5, align 4
  br label %442

352:                                              ; preds = %342
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @M_ASYNC, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %390

358:                                              ; preds = %352
  %359 = load i16, i16* %4, align 2
  %360 = zext i16 %359 to i32
  %361 = load i16, i16* @RIS_EOFR, align 2
  %362 = zext i16 %361 to i32
  %363 = and i32 %360, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %390, label %365

365:                                              ; preds = %358
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 8
  %368 = load i32, i32* %367, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %389, label %370

370:                                              ; preds = %365
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 13
  %373 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %372, align 8
  %374 = icmp ne i32 (%struct.TYPE_15__*, i32)* %373, null
  br i1 %374, label %375, label %382

375:                                              ; preds = %370
  %376 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 13
  %378 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %377, align 8
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %380 = load i32, i32* @CX_OVERFLOW, align 4
  %381 = call i32 %378(%struct.TYPE_15__* %379, i32 %380)
  br label %382

382:                                              ; preds = %375, %370
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 8
  store i32 1, i32* %384, align 4
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 12
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %386, align 8
  br label %389

389:                                              ; preds = %382, %365
  br label %441

390:                                              ; preds = %358, %352
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 8
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %437, label %395

395:                                              ; preds = %390
  %396 = load i16, i16* %4, align 2
  %397 = zext i16 %396 to i32
  %398 = load i16, i16* @RIS_BB, align 2
  %399 = zext i16 %398 to i32
  %400 = and i32 %397, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %395
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 2
  %405 = load i8*, i8** %404, align 8
  %406 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 6
  store i8* %405, i8** %407, align 8
  %408 = load i32, i32* %5, align 4
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 7
  store i32 %408, i32* %410, align 8
  br label %420

411:                                              ; preds = %395
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %412, i32 0, i32 4
  %414 = load i8*, i8** %413, align 8
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 6
  store i8* %414, i8** %416, align 8
  %417 = load i32, i32* %5, align 4
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 7
  store i32 %417, i32* %419, align 8
  br label %420

420:                                              ; preds = %411, %402
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @M_ASYNC, align 8
  %425 = icmp ne i64 %423, %424
  br i1 %425, label %426, label %431

426:                                              ; preds = %420
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 11
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %428, align 4
  br label %431

431:                                              ; preds = %426, %420
  %432 = load i32, i32* %5, align 4
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 8
  %436 = add nsw i32 %435, %432
  store i32 %436, i32* %434, align 8
  br label %440

437:                                              ; preds = %390
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 8
  store i32 0, i32* %439, align 4
  br label %440

440:                                              ; preds = %437, %431
  br label %441

441:                                              ; preds = %440, %389
  br label %442

442:                                              ; preds = %441, %349
  br label %443

443:                                              ; preds = %442, %318
  br label %444

444:                                              ; preds = %443, %310
  br label %445

445:                                              ; preds = %444, %284
  br label %446

446:                                              ; preds = %445, %254
  br label %447

447:                                              ; preds = %446, %224
  br label %448

448:                                              ; preds = %447, %191
  br label %449

449:                                              ; preds = %448, %161
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 10
  %452 = load i32, i32* %451, align 8
  %453 = call i32 @ARBSTS(i32 %452)
  %454 = call i32 @inb(i32 %453)
  %455 = load i32, i32* @BSTS_OWN24, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %471, label %458

458:                                              ; preds = %449
  %459 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %459, i32 0, i32 10
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @ARBCNT(i32 %461)
  %463 = load i32, i32* %6, align 4
  %464 = call i32 @outw(i32 %462, i32 %463)
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 10
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @ARBSTS(i32 %467)
  %469 = load i32, i32* @BSTS_OWN24, align 4
  %470 = call i32 @outb(i32 %468, i32 %469)
  br label %471

471:                                              ; preds = %458, %449
  %472 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 10
  %474 = load i32, i32* %473, align 8
  %475 = call i32 @BRBSTS(i32 %474)
  %476 = call i32 @inb(i32 %475)
  %477 = load i32, i32* @BSTS_OWN24, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %493, label %480

480:                                              ; preds = %471
  %481 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %482 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i32 0, i32 10
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @BRBCNT(i32 %483)
  %485 = load i32, i32* %6, align 4
  %486 = call i32 @outw(i32 %484, i32 %485)
  %487 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %487, i32 0, i32 10
  %489 = load i32, i32* %488, align 8
  %490 = call i32 @BRBSTS(i32 %489)
  %491 = load i32, i32* @BSTS_OWN24, align 4
  %492 = call i32 @outb(i32 %490, i32 %491)
  br label %493

493:                                              ; preds = %480, %471
  %494 = load i16, i16* %4, align 2
  %495 = zext i16 %494 to i32
  %496 = load i16, i16* @RISA_SCMASK, align 2
  %497 = zext i16 %496 to i32
  %498 = and i32 %495, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %509

500:                                              ; preds = %493
  %501 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 9
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %500
  %508 = load i32, i32* @REOI_DISCEXC, align 4
  store i32 %508, i32* %2, align 4
  br label %510

509:                                              ; preds = %500, %493
  store i32 0, i32* %2, align 4
  br label %510

510:                                              ; preds = %509, %507, %136
  %511 = load i32, i32* %2, align 4
  ret i32 %511
}

declare dso_local i8* @inw(i32) #1

declare dso_local i32 @RISR(i32) #1

declare dso_local i32 @cx_compute_buf_len(%struct.TYPE_15__*) #1

declare dso_local i32 @RCBADRL(i32) #1

declare dso_local i32 @RCBADRU(i32) #1

declare dso_local i32 @BRBCNT(i32) #1

declare dso_local i32 @BRBSTS(i32) #1

declare dso_local i32 @ARBCNT(i32) #1

declare dso_local i32 @ARBSTS(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
