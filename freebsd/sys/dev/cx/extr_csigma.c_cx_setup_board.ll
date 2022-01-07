; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_setup_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_setup_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__, i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@DMA_MASK = common dso_local global i32 0, align 4
@DMA_MASK_CLEAR = common dso_local global i32 0, align 4
@B_SIGMA_800 = common dso_local global i64 0, align 8
@BCR2_TMS = common dso_local global i32 0, align 4
@BCR2_BUS0 = common dso_local global i32 0, align 4
@BCR2_BUS1 = common dso_local global i32 0, align 4
@NCHAN = common dso_local global i32 0, align 4
@T_NONE = common dso_local global i64 0, align 8
@DMA_MODE = common dso_local global i32 0, align 4
@DMA_MODE_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx_setup_board(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* @DMA_MASK, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 3
  %16 = load i32, i32* @DMA_MASK_CLEAR, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @outb(i32 %11, i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @BCR0(i64 %21)
  %23 = call i32 @outb(i32 %22, i32 0)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 12
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31, %4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 16
  %44 = call i32 @BCR0(i64 %43)
  %45 = call i32 @outb(i32 %44, i32 0)
  br label %46

46:                                               ; preds = %39, %31
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @B_SIGMA_800, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %150

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @BCR2(i64 %55)
  %57 = load i32, i32* @BCR2_TMS, align 4
  %58 = call i32 @outb(i32 %56, i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 12
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66, %52
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 16
  %79 = call i32 @BCR2(i64 %78)
  %80 = load i32, i32* @BCR2_TMS, align 4
  %81 = call i32 @outb(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %66
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @BCR2(i64 %85)
  %87 = call i32 @outb(i32 %86, i32 0)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %82
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 12
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %95, %82
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 16
  %108 = call i32 @BCR2(i64 %107)
  %109 = call i32 @outb(i32 %108, i32 0)
  br label %110

110:                                              ; preds = %103, %95
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %149

113:                                              ; preds = %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @cx_download(i64 %116, i8* %117, i64 %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %113
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %122
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 12
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %130, %122
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 16
  %143 = load i8*, i8** %7, align 8
  %144 = load i64, i64* %8, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @cx_download(i64 %142, i8* %143, i64 %144, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %138, %113
  store i32 0, i32* %5, align 4
  br label %309

149:                                              ; preds = %138, %130, %110
  br label %150

150:                                              ; preds = %149, %46
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @BCR0(i64 %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @outb(i32 %154, i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %150
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 12
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %166, %150
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 16
  %179 = call i32 @BCR0(i64 %178)
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @outb(i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %174, %166
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @BCR1(i64 %187)
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @outw(i32 %188, i32 %191)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %184
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 12
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %200, %184
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 16
  %213 = call i32 @BCR1(i64 %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @outw(i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %208, %200
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @B_SIGMA_800, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %218
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @BCR2(i64 %227)
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @BCR2_BUS0, align 4
  %234 = load i32, i32* @BCR2_BUS1, align 4
  %235 = or i32 %233, %234
  %236 = and i32 %232, %235
  %237 = call i32 @outb(i32 %228, i32 %236)
  br label %238

238:                                              ; preds = %224, %218
  store i32 0, i32* %10, align 4
  br label %239

239:                                              ; preds = %263, %238
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @NCHAN, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %266

243:                                              ; preds = %239
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @T_NONE, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %243
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i64 %259
  %261 = call i32 @cx_setup_chip(%struct.TYPE_8__* %260)
  br label %262

262:                                              ; preds = %254, %243
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 4
  store i32 %265, i32* %10, align 4
  br label %239

266:                                              ; preds = %239
  %267 = load i32, i32* @DMA_MODE, align 4
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = and i32 %270, 3
  %272 = load i32, i32* @DMA_MODE_MASTER, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @outb(i32 %267, i32 %273)
  %275 = load i32, i32* @DMA_MASK, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %278, 3
  %280 = call i32 @outb(i32 %275, i32 %279)
  store i32 0, i32* %10, align 4
  br label %281

281:                                              ; preds = %305, %266
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @NCHAN, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %308

285:                                              ; preds = %281
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 4
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = load i32, i32* %10, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @T_NONE, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %304

296:                                              ; preds = %285
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 4
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i64 %301
  %303 = call i32 @cx_setup_chan(%struct.TYPE_8__* %302)
  br label %304

304:                                              ; preds = %296, %285
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %10, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %10, align 4
  br label %281

308:                                              ; preds = %281
  store i32 1, i32* %5, align 4
  br label %309

309:                                              ; preds = %308, %148
  %310 = load i32, i32* %5, align 4
  ret i32 %310
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BCR0(i64) #1

declare dso_local i32 @BCR2(i64) #1

declare dso_local i32 @cx_download(i64, i8*, i64, i32*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @BCR1(i64) #1

declare dso_local i32 @cx_setup_chip(%struct.TYPE_8__*) #1

declare dso_local i32 @cx_setup_chan(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
