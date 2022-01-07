; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_stream_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.hdac_bdle = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"Start for not allocated stream (%d/%d)\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HDAC_SDCBL = common dso_local global i64 0, align 8
@HDAC_SDLVI = common dso_local global i64 0, align 8
@HDAC_SDBDPL = common dso_local global i64 0, align 8
@HDAC_SDBDPU = common dso_local global i64 0, align 8
@HDAC_SDCTL2 = common dso_local global i64 0, align 8
@HDAC_SDCTL2_DIR = common dso_local global i32 0, align 4
@HDAC_SDCTL2_STRM_MASK = common dso_local global i32 0, align 4
@HDAC_SDCTL2_STRM_SHIFT = common dso_local global i32 0, align 4
@HDAC_SDCTL2_STRIPE_MASK = common dso_local global i32 0, align 4
@HDAC_SDCTL2_STRIPE_SHIFT = common dso_local global i32 0, align 4
@HDAC_SDFMT = common dso_local global i64 0, align 8
@HDAC_INTCTL = common dso_local global i64 0, align 8
@HDAC_SDSTS = common dso_local global i64 0, align 8
@HDAC_SDSTS_DESE = common dso_local global i32 0, align 4
@HDAC_SDSTS_FIFOE = common dso_local global i32 0, align 4
@HDAC_SDSTS_BCIS = common dso_local global i32 0, align 4
@HDAC_SDCTL0 = common dso_local global i64 0, align 8
@HDAC_SDCTL_IOCE = common dso_local global i32 0, align 4
@HDAC_SDCTL_FEIE = common dso_local global i32 0, align 4
@HDAC_SDCTL_DEIE = common dso_local global i32 0, align 4
@HDAC_SDCTL_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i64, i32, i32)* @hdac_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_stream_start(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hdac_softc*, align 8
  %16 = alloca %struct.hdac_bdle*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.hdac_softc* @device_get_softc(i32 %22)
  store %struct.hdac_softc* %23, %struct.hdac_softc** %15, align 8
  %24 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @hdac_find_stream(%struct.hdac_softc* %24, i32 %25, i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = icmp sge i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %30, i8* %34)
  %36 = load i64, i64* %12, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %39 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %19, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.hdac_bdle*
  store %struct.hdac_bdle* %47, %struct.hdac_bdle** %16, align 8
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %72, %7
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load i32, i32* %17, align 4
  %54 = call i8* @htole32(i32 %53)
  %55 = load %struct.hdac_bdle*, %struct.hdac_bdle** %16, align 8
  %56 = getelementptr inbounds %struct.hdac_bdle, %struct.hdac_bdle* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %17, align 4
  %58 = ashr i32 %57, 32
  %59 = call i8* @htole32(i32 %58)
  %60 = load %struct.hdac_bdle*, %struct.hdac_bdle** %16, align 8
  %61 = getelementptr inbounds %struct.hdac_bdle, %struct.hdac_bdle* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i8* @htole32(i32 %62)
  %64 = load %struct.hdac_bdle*, %struct.hdac_bdle** %16, align 8
  %65 = getelementptr inbounds %struct.hdac_bdle, %struct.hdac_bdle* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = call i8* @htole32(i32 1)
  %67 = load %struct.hdac_bdle*, %struct.hdac_bdle** %16, align 8
  %68 = getelementptr inbounds %struct.hdac_bdle, %struct.hdac_bdle* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %18, align 4
  %75 = load %struct.hdac_bdle*, %struct.hdac_bdle** %16, align 8
  %76 = getelementptr inbounds %struct.hdac_bdle, %struct.hdac_bdle* %75, i32 1
  store %struct.hdac_bdle* %76, %struct.hdac_bdle** %16, align 8
  br label %48

77:                                               ; preds = %48
  %78 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %79 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %88 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %97 = call i32 @bus_dmamap_sync(i32 %86, i32 %95, i32 %96)
  %98 = load i32, i32* %19, align 4
  %99 = shl i32 %98, 5
  store i32 %99, i32* %20, align 4
  %100 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %101 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @HDAC_SDCBL, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i32 @HDAC_WRITE_4(i32* %101, i64 %105, i32 %108)
  %110 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %111 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @HDAC_SDLVI, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %116, 1
  %118 = call i32 @HDAC_WRITE_2(i32* %111, i64 %115, i32 %117)
  %119 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %120 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %17, align 4
  %128 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %129 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %128, i32 0, i32 1
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* @HDAC_SDBDPL, align 8
  %133 = add nsw i64 %131, %132
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @HDAC_WRITE_4(i32* %129, i64 %133, i32 %134)
  %136 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %137 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %136, i32 0, i32 1
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @HDAC_SDBDPU, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i32, i32* %17, align 4
  %143 = ashr i32 %142, 32
  %144 = call i32 @HDAC_WRITE_4(i32* %137, i64 %141, i32 %143)
  %145 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %146 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %145, i32 0, i32 1
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* @HDAC_SDCTL2, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @HDAC_READ_1(i32* %146, i64 %150)
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %77
  %155 = load i32, i32* @HDAC_SDCTL2_DIR, align 4
  %156 = load i32, i32* %21, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %21, align 4
  br label %163

158:                                              ; preds = %77
  %159 = load i32, i32* @HDAC_SDCTL2_DIR, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %21, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %21, align 4
  br label %163

163:                                              ; preds = %158, %154
  %164 = load i32, i32* @HDAC_SDCTL2_STRM_MASK, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %21, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %21, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @HDAC_SDCTL2_STRM_SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = load i32, i32* %21, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* @HDAC_SDCTL2_STRIPE_MASK, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %21, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %21, align 4
  %177 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %178 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @HDAC_SDCTL2_STRIPE_SHIFT, align 4
  %186 = shl i32 %184, %185
  %187 = load i32, i32* %21, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %21, align 4
  %189 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %190 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %189, i32 0, i32 1
  %191 = load i32, i32* %20, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* @HDAC_SDCTL2, align 8
  %194 = add nsw i64 %192, %193
  %195 = load i32, i32* %21, align 4
  %196 = call i32 @HDAC_WRITE_1(i32* %190, i64 %194, i32 %195)
  %197 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %198 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %197, i32 0, i32 1
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* @HDAC_SDFMT, align 8
  %202 = add nsw i64 %200, %201
  %203 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %204 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @HDAC_WRITE_2(i32* %198, i64 %202, i32 %210)
  %212 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %213 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %212, i32 0, i32 1
  %214 = load i64, i64* @HDAC_INTCTL, align 8
  %215 = call i32 @HDAC_READ_4(i32* %213, i64 %214)
  store i32 %215, i32* %21, align 4
  %216 = load i32, i32* %19, align 4
  %217 = shl i32 1, %216
  %218 = load i32, i32* %21, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %21, align 4
  %220 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %221 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %220, i32 0, i32 1
  %222 = load i64, i64* @HDAC_INTCTL, align 8
  %223 = load i32, i32* %21, align 4
  %224 = call i32 @HDAC_WRITE_4(i32* %221, i64 %222, i32 %223)
  %225 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %226 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %225, i32 0, i32 1
  %227 = load i32, i32* %20, align 4
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* @HDAC_SDSTS, align 8
  %230 = add nsw i64 %228, %229
  %231 = load i32, i32* @HDAC_SDSTS_DESE, align 4
  %232 = load i32, i32* @HDAC_SDSTS_FIFOE, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @HDAC_SDSTS_BCIS, align 4
  %235 = or i32 %233, %234
  %236 = call i32 @HDAC_WRITE_1(i32* %226, i64 %230, i32 %235)
  %237 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %238 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %237, i32 0, i32 1
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* @HDAC_SDCTL0, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @HDAC_READ_1(i32* %238, i64 %242)
  store i32 %243, i32* %21, align 4
  %244 = load i32, i32* @HDAC_SDCTL_IOCE, align 4
  %245 = load i32, i32* @HDAC_SDCTL_FEIE, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @HDAC_SDCTL_DEIE, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @HDAC_SDCTL_RUN, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* %21, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %21, align 4
  %253 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %254 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %253, i32 0, i32 1
  %255 = load i32, i32* %20, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* @HDAC_SDCTL0, align 8
  %258 = add nsw i64 %256, %257
  %259 = load i32, i32* %21, align 4
  %260 = call i32 @HDAC_WRITE_1(i32* %254, i64 %258, i32 %259)
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %263 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %262, i32 0, i32 0
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  store i32 %261, i32* %268, align 8
  %269 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %270 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %269, i32 0, i32 0
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = load i32, i32* %19, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 3
  store i32 1, i32* %275, align 4
  %276 = load %struct.hdac_softc*, %struct.hdac_softc** %15, align 8
  %277 = call i32 @hdac_poll_reinit(%struct.hdac_softc* %276)
  ret i32 0
}

declare dso_local %struct.hdac_softc* @device_get_softc(i32) #1

declare dso_local i32 @hdac_find_stream(%struct.hdac_softc*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @HDAC_WRITE_4(i32*, i64, i32) #1

declare dso_local i32 @HDAC_WRITE_2(i32*, i64, i32) #1

declare dso_local i32 @HDAC_READ_1(i32*, i64) #1

declare dso_local i32 @HDAC_WRITE_1(i32*, i64, i32) #1

declare dso_local i32 @HDAC_READ_4(i32*, i64) #1

declare dso_local i32 @hdac_poll_reinit(%struct.hdac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
