; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_gethandles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_gethandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32 }

@MBOX_GET_ID_LIST = common dso_local global i32 0, align 4
@MBLOGALL = common dso_local global i32 0, align 4
@ISP_FC_SCRLEN = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@sacq = common dso_local global i32 0, align 4
@SYNC_SFORDEV = common dso_local global i32 0, align 4
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SYNC_SFORCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @isp_gethandles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_gethandles(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_16__, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_16__, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_17__* @FCPARAM(i32* %24, i32 %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %12, align 8
  %27 = load i32, i32* @MBOX_GET_ID_LIST, align 4
  %28 = load i32, i32* @MBLOGALL, align 4
  %29 = call i32 @MBSINIT(%struct.TYPE_15__* %13, i32 %27, i32 %28, i32 250000)
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @IS_24XX(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %5
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @DMA_WD1(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @DMA_WD0(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @DMA_WD3(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32 %54, i32* %57, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @DMA_WD2(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @ISP_FC_SCRLEN, align 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 9
  store i32 %70, i32* %73, align 4
  br label %108

74:                                               ; preds = %5
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 78, i32* %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @DMA_WD1(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @DMA_WD0(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 %88, i32* %91, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @DMA_WD3(i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %96, i32* %99, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @DMA_WD2(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %74, %33
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i64 @FC_SCRATCH_ACQUIRE(i32* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* @ISP_LOGERR, align 4
  %116 = load i32, i32* @sacq, align 4
  %117 = call i32 @isp_prt(i32* %114, i32 %115, i32 %116)
  store i32 -1, i32* %6, align 4
  br label %259

118:                                              ; preds = %108
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @SYNC_SFORDEV, align 4
  %121 = load i32, i32* @ISP_FC_SCRLEN, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @MEMORYBARRIER(i32* %119, i32 %120, i32 0, i32 %121, i32 %122)
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @isp_mboxcmd(i32* %124, %struct.TYPE_15__* %13)
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %118
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @FC_SCRATCH_RELEASE(i32* %133, i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 16
  %145 = or i32 %139, %144
  store i32 %145, i32* %6, align 4
  br label %259

146:                                              ; preds = %118
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* @SYNC_SFORCPU, align 4
  %149 = load i32, i32* @ISP_FC_SCRLEN, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @MEMORYBARRIER(i32* %147, i32 %148, i32 0, i32 %149, i32 %150)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  store %struct.TYPE_16__* %154, %struct.TYPE_16__** %15, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %17, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  store %struct.TYPE_16__* %160, %struct.TYPE_16__** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %161

161:                                              ; preds = %250, %146
  %162 = load i32, i32* %20, align 4
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %162, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load i32, i32* %21, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %169, %171
  br label %173

173:                                              ; preds = %168, %161
  %174 = phi i1 [ false, %161 ], [ %172, %168 ]
  br i1 %174, label %175, label %253

175:                                              ; preds = %173
  %176 = load i32*, i32** %7, align 8
  %177 = call i64 @IS_24XX(i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %175
  %180 = load i32*, i32** %7, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i64 %183
  %185 = call i32 @isp_get_pnhle_24xx(i32* %180, %struct.TYPE_16__* %184, %struct.TYPE_16__* %18)
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 16
  %191 = or i32 %187, %190
  store i32 %191, i32* %22, align 4
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %23, align 4
  br label %231

194:                                              ; preds = %175
  %195 = load i32*, i32** %7, align 8
  %196 = call i64 @IS_23XX(i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %194
  %199 = load i32*, i32** %7, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i64 %202
  %204 = call i32 @isp_get_pnhle_23xx(i32* %199, %struct.TYPE_16__* %203, %struct.TYPE_16__* %16)
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 16
  %210 = or i32 %206, %209
  store i32 %210, i32* %22, align 4
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %23, align 4
  br label %230

213:                                              ; preds = %194
  %214 = load i32*, i32** %7, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %216 = load i32, i32* %20, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i64 %217
  %219 = call i32 @isp_get_pnhle_21xx(i32* %214, %struct.TYPE_16__* %218, %struct.TYPE_16__* %14)
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 255
  %225 = shl i32 %224, 16
  %226 = or i32 %221, %225
  store i32 %226, i32* %22, align 4
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 8
  store i32 %229, i32* %23, align 4
  br label %230

230:                                              ; preds = %213, %198
  br label %231

231:                                              ; preds = %230, %179
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  %235 = load i32, i32* %22, align 4
  %236 = ashr i32 %235, 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = ashr i32 %239, 8
  %241 = icmp ne i32 %236, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %250

243:                                              ; preds = %234, %231
  %244 = load i32, i32* %23, align 4
  %245 = load i32*, i32** %9, align 8
  %246 = load i32, i32* %21, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %21, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %244, i32* %249, align 4
  br label %250

250:                                              ; preds = %243, %242
  %251 = load i32, i32* %20, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %20, align 4
  br label %161

253:                                              ; preds = %173
  %254 = load i32, i32* %21, align 4
  %255 = load i32*, i32** %10, align 8
  store i32 %254, i32* %255, align 4
  %256 = load i32*, i32** %7, align 8
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @FC_SCRATCH_RELEASE(i32* %256, i32 %257)
  store i32 0, i32* %6, align 4
  br label %259

259:                                              ; preds = %253, %132, %113
  %260 = load i32, i32* %6, align 4
  ret i32 %260
}

declare dso_local %struct.TYPE_17__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @MBSINIT(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @IS_24XX(i32*) #1

declare dso_local i8* @DMA_WD1(i32) #1

declare dso_local i8* @DMA_WD0(i32) #1

declare dso_local i8* @DMA_WD3(i32) #1

declare dso_local i8* @DMA_WD2(i32) #1

declare dso_local i64 @FC_SCRATCH_ACQUIRE(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i32) #1

declare dso_local i32 @MEMORYBARRIER(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @isp_mboxcmd(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @FC_SCRATCH_RELEASE(i32*, i32) #1

declare dso_local i32 @isp_get_pnhle_24xx(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i64 @IS_23XX(i32*) #1

declare dso_local i32 @isp_get_pnhle_23xx(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @isp_get_pnhle_21xx(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
