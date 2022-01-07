; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_MR_PopulateDrvRaidMap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_MR_PopulateDrvRaidMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i64*, i64, i64, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32*, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_19__*, i64*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i64*, i32, i64 }

@MAX_LOGICAL_DRIVES_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"mrsas: LD count exposed in RAID map in not valid\0A\00", align 1
@MAX_API_ARRAYS_EXT = common dso_local global i32 0, align 4
@MAX_RAIDMAP_PHYSICAL_DEVICES = common dso_local global i32 0, align 4
@MAX_RAIDMAP_LOGICAL_DRIVES = common dso_local global i32 0, align 4
@MAX_RAIDMAP_VIEWS = common dso_local global i32 0, align 4
@MAX_RAIDMAP_ARRAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*)* @MR_PopulateDrvRaidMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MR_PopulateDrvRaidMap(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  %11 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %11, i32 0, i32 6
  %13 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %14 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %13, i64 %18
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %9, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %10, align 8
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %29 = call i32 @MR_PopulateDrvRaidMapVentura(%struct.mrsas_softc* %28)
  store i32 %29, i32* %2, align 4
  br label %239

30:                                               ; preds = %1
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %131

35:                                               ; preds = %30
  %36 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %5, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %239

59:                                               ; preds = %35
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @memset(%struct.TYPE_17__* %60, i32 0, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %92, %59
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %73

95:                                               ; preds = %73
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = mul i64 4, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memcpy(%struct.TYPE_19__* %98, %struct.TYPE_11__* %101, i32 %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32, i32* @MAX_API_ARRAYS_EXT, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memcpy(%struct.TYPE_19__* %109, %struct.TYPE_11__* %112, i32 %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load i32, i32* @MAX_RAIDMAP_PHYSICAL_DEVICES, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memcpy(%struct.TYPE_19__* %120, %struct.TYPE_11__* %123, i32 %127)
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  store i32 48, i32* %130, align 8
  br label %237

131:                                              ; preds = %30
  %132 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %133 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %132, i32 0, i32 3
  %134 = load i64*, i64** %133, align 8
  %135 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %136 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %134, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %4, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %6, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %146 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %147 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @memset(%struct.TYPE_17__* %145, i32 0, i32 %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %186, %131
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @MAX_RAIDMAP_LOGICAL_DRIVES, align 4
  %168 = load i32, i32* @MAX_RAIDMAP_VIEWS, align 4
  %169 = add i32 %167, %168
  %170 = icmp ult i32 %166, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %165
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 5
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  br label %186

186:                                              ; preds = %171
  %187 = load i32, i32* %7, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %165

189:                                              ; preds = %165
  store i32 0, i32* %7, align 4
  br label %190

190:                                              ; preds = %211, %189
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ult i32 %191, %194
  br i1 %195, label %196, label %214

196:                                              ; preds = %190
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i64 %201
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i64 %207
  %209 = bitcast %struct.TYPE_19__* %202 to i8*
  %210 = bitcast %struct.TYPE_19__* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* align 8 %210, i64 24, i1 false)
  br label %211

211:                                              ; preds = %196
  %212 = load i32, i32* %7, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %190

214:                                              ; preds = %190
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 4
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = load i32, i32* @MAX_RAIDMAP_ARRAYS, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 4, %222
  %224 = trunc i64 %223 to i32
  %225 = call i32 @memcpy(%struct.TYPE_19__* %217, %struct.TYPE_11__* %220, i32 %224)
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %227, align 8
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = load i32, i32* @MAX_RAIDMAP_PHYSICAL_DEVICES, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 4, %233
  %235 = trunc i64 %234 to i32
  %236 = call i32 @memcpy(%struct.TYPE_19__* %228, %struct.TYPE_11__* %231, i32 %235)
  br label %237

237:                                              ; preds = %214, %95
  br label %238

238:                                              ; preds = %237
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %54, %27
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @MR_PopulateDrvRaidMapVentura(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_11__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
