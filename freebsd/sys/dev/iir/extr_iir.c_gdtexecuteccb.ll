; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdtexecuteccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdtexecuteccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.gdt_ccb = type { i64, i32, i32, i8*, i64, %union.ccb* }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.gdt_softc = type { i32 (%struct.gdt_softc*, %struct.gdt_ccb.0*)*, i32, i32 }
%struct.gdt_ccb.0 = type opaque
%struct.cam_sim = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@GDT_D_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"gdtexecuteccb(%p, %p, %p, %d, %d)\0A\00", align 1
@gdt_stat = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GDT_CACHESERVICE = common dso_local global i64 0, align 8
@GDT_CMD_UNION = common dso_local global i64 0, align 8
@GDT_CACHE_SG_LST = common dso_local global i64 0, align 8
@GDT_SG_SZ = common dso_local global i32 0, align 4
@GDT_SG_PTR = common dso_local global i64 0, align 8
@GDT_SG_LEN = common dso_local global i64 0, align 8
@GDT_CACHE_SG_CANZ = common dso_local global i64 0, align 8
@GDT_CACHE_DESTADDR = common dso_local global i64 0, align 8
@GDT_RAW_SG_LST = common dso_local global i64 0, align 8
@GDT_RAW_SG_RANZ = common dso_local global i64 0, align 8
@GDT_RAW_SDATA = common dso_local global i64 0, align 8
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@iir_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, i32, i32)* @gdtexecuteccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdtexecuteccb(i8* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gdt_ccb*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.gdt_softc*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.gdt_ccb*
  store %struct.gdt_ccb* %14, %struct.gdt_ccb** %9, align 8
  %15 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %16 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %15, i32 0, i32 5
  %17 = load %union.ccb*, %union.ccb** %16, align 8
  store %union.ccb* %17, %union.ccb** %10, align 8
  %18 = load %union.ccb*, %union.ccb** %10, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.cam_sim*
  %23 = call %struct.gdt_softc* @cam_sim_softc(%struct.cam_sim* %22)
  store %struct.gdt_softc* %23, %struct.gdt_softc** %11, align 8
  %24 = load %struct.gdt_softc*, %struct.gdt_softc** %11, align 8
  %25 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %24, i32 0, i32 2
  %26 = load i32, i32* @MA_OWNED, align 4
  %27 = call i32 @mtx_assert(i32* %25, i32 %26)
  %28 = load i32, i32* @GDT_D_CMD, align 4
  %29 = load %struct.gdt_softc*, %struct.gdt_softc** %11, align 8
  %30 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @GDT_DPRINTF(i32 %28, i8* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gdt_stat, i32 0, i32 0), align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gdt_stat, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gdt_stat, i32 0, i32 1), align 4
  br label %43

43:                                               ; preds = %41, %4
  %44 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %45 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @GDT_CACHESERVICE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %125

49:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %93, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %56 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GDT_CMD_UNION, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @GDT_CACHE_SG_LST, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @GDT_SG_SZ, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %61, %65
  %67 = load i64, i64* @GDT_SG_PTR, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gdt_enc32(i64 %68, i32 %71)
  %73 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %74 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GDT_CMD_UNION, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i64, i64* @GDT_CACHE_SG_LST, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @GDT_SG_SZ, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = load i64, i64* @GDT_SG_LEN, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gdt_enc32(i64 %86, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 1
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %6, align 8
  br label %93

93:                                               ; preds = %54
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %50

96:                                               ; preds = %50
  %97 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %98 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @GDT_CMD_UNION, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i64, i64* @GDT_CACHE_SG_CANZ, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @gdt_enc32(i64 %103, i32 %104)
  %106 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %107 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @GDT_CMD_UNION, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* @GDT_CACHE_DESTADDR, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @gdt_enc32(i64 %112, i32 -1)
  %114 = load i64, i64* @GDT_CMD_UNION, align 8
  %115 = load i64, i64* @GDT_CACHE_SG_LST, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @GDT_SG_SZ, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = call i8* @roundup(i64 %121, i32 4)
  %123 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %124 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  br label %201

125:                                              ; preds = %43
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %169, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %172

130:                                              ; preds = %126
  %131 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %132 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @GDT_CMD_UNION, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i64, i64* @GDT_RAW_SG_LST, align 8
  %137 = add nsw i64 %135, %136
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @GDT_SG_SZ, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %137, %141
  %143 = load i64, i64* @GDT_SG_PTR, align 8
  %144 = add nsw i64 %142, %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @gdt_enc32(i64 %144, i32 %147)
  %149 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %150 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @GDT_CMD_UNION, align 8
  %153 = add nsw i64 %151, %152
  %154 = load i64, i64* @GDT_RAW_SG_LST, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @GDT_SG_SZ, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %155, %159
  %161 = load i64, i64* @GDT_SG_LEN, align 8
  %162 = add nsw i64 %160, %161
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @gdt_enc32(i64 %162, i32 %165)
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 1
  store %struct.TYPE_6__* %168, %struct.TYPE_6__** %6, align 8
  br label %169

169:                                              ; preds = %130
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %126

172:                                              ; preds = %126
  %173 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %174 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @GDT_CMD_UNION, align 8
  %177 = add nsw i64 %175, %176
  %178 = load i64, i64* @GDT_RAW_SG_RANZ, align 8
  %179 = add nsw i64 %177, %178
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @gdt_enc32(i64 %179, i32 %180)
  %182 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %183 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @GDT_CMD_UNION, align 8
  %186 = add nsw i64 %184, %185
  %187 = load i64, i64* @GDT_RAW_SDATA, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @gdt_enc32(i64 %188, i32 -1)
  %190 = load i64, i64* @GDT_CMD_UNION, align 8
  %191 = load i64, i64* @GDT_RAW_SG_LST, align 8
  %192 = add nsw i64 %190, %191
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @GDT_SG_SZ, align 4
  %195 = mul nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %192, %196
  %198 = call i8* @roundup(i64 %197, i32 4)
  %199 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %200 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %172, %96
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %201
  %205 = load %struct.gdt_softc*, %struct.gdt_softc** %11, align 8
  %206 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %209 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %union.ccb*, %union.ccb** %10, align 8
  %212 = bitcast %union.ccb* %211 to %struct.TYPE_5__*
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CAM_DIR_MASK, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @CAM_DIR_IN, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %204
  %220 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %223

221:                                              ; preds = %204
  %222 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i32 [ %220, %219 ], [ %222, %221 ]
  %225 = call i32 @bus_dmamap_sync(i32 %207, i32 %210, i32 %224)
  br label %226

226:                                              ; preds = %223, %201
  %227 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %228 = load %union.ccb*, %union.ccb** %10, align 8
  %229 = bitcast %union.ccb* %228 to %struct.TYPE_5__*
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %227
  store i32 %232, i32* %230, align 8
  %233 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %234 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %233, i32 0, i32 1
  %235 = load i32, i32* @SBT_1MS, align 4
  %236 = load %union.ccb*, %union.ccb** %10, align 8
  %237 = bitcast %union.ccb* %236 to %struct.TYPE_5__*
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %235, %239
  %241 = load i32, i32* @iir_timeout, align 4
  %242 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %243 = ptrtoint %struct.gdt_ccb* %242 to i32
  %244 = call i32 @callout_reset_sbt(i32* %234, i32 %240, i32 0, i32 %241, i32 %243, i32 0)
  %245 = load %struct.gdt_softc*, %struct.gdt_softc** %11, align 8
  %246 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %245, i32 0, i32 0
  %247 = load i32 (%struct.gdt_softc*, %struct.gdt_ccb.0*)*, i32 (%struct.gdt_softc*, %struct.gdt_ccb.0*)** %246, align 8
  %248 = load %struct.gdt_softc*, %struct.gdt_softc** %11, align 8
  %249 = load %struct.gdt_ccb*, %struct.gdt_ccb** %9, align 8
  %250 = bitcast %struct.gdt_ccb* %249 to %struct.gdt_ccb.0*
  %251 = call i32 %247(%struct.gdt_softc* %248, %struct.gdt_ccb.0* %250)
  ret void
}

declare dso_local %struct.gdt_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @gdt_enc32(i64, i32) #1

declare dso_local i8* @roundup(i64, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
