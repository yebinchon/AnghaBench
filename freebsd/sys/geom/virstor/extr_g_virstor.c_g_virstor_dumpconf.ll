; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_g_virstor_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_g_virstor_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_virstor_softc* }
%struct.g_virstor_softc = type { i64, i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.g_consumer = type { %struct.g_virstor_component* }
%struct.g_virstor_component = type { i64, i64, i64, i64 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s<ComponentIndex>%u</ComponentIndex>\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s<ChunkCount>%u</ChunkCount>\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s<ChunksUsed>%u</ChunksUsed>\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s<ChunksReserved>%u</ChunksReserved>\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s<StorageFree>%u%%</StorageFree>\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s<Status>Components=%u, Online=%u</Status>\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%s<State>%u%% physical free</State>\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s<ChunkSize>%zu</ChunkSize>\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s<PhysicalFree>%u%%</PhysicalFree>\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"%s<ChunkPhysicalCount>%u</ChunkPhysicalCount>\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%s<ChunkVirtualCount>%zu</ChunkVirtualCount>\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"%s<PhysicalBacking>%zu%%</PhysicalBacking>\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"%s<PhysicalBackingSize>%jd</PhysicalBackingSize>\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s<VirtualSize>%jd</VirtualSize>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_virstor_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_virstor_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_virstor_softc*, align 8
  %12 = alloca %struct.g_virstor_component*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %17 = call i32 (...) @g_topology_assert()
  %18 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %19 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %18, i32 0, i32 0
  %20 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %19, align 8
  store %struct.g_virstor_softc* %20, %struct.g_virstor_softc** %11, align 8
  %21 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %22 = icmp eq %struct.g_virstor_softc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %25 = icmp ne %struct.g_provider* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %5
  br label %212

27:                                               ; preds = %23
  %28 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %29 = icmp ne %struct.g_consumer* %28, null
  br i1 %29, label %30, label %86

30:                                               ; preds = %27
  %31 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %32 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %31, i32 0, i32 0
  %33 = load %struct.g_virstor_component*, %struct.g_virstor_component** %32, align 8
  store %struct.g_virstor_component* %33, %struct.g_virstor_component** %12, align 8
  %34 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %35 = icmp eq %struct.g_virstor_component* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %212

37:                                               ; preds = %30
  %38 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %41 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %39, i64 %42)
  %44 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %47 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %45, i64 %48)
  %50 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %53 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %51, i64 %54)
  %56 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %59 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %57, i64 %60)
  %62 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %65 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %37
  %69 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %70 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %73 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %71, %74
  %76 = mul i64 %75, 100
  %77 = load %struct.g_virstor_component*, %struct.g_virstor_component** %12, align 8
  %78 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = udiv i64 %76, %79
  %81 = sub i64 100, %80
  br label %83

82:                                               ; preds = %37
  br label %83

83:                                               ; preds = %82, %68
  %84 = phi i64 [ %81, %68 ], [ 100, %82 ]
  %85 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %63, i64 %84)
  br label %212

86:                                               ; preds = %27
  store i64 0, i64* %16, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %87

87:                                               ; preds = %143, %86
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %90 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %146

93:                                               ; preds = %87
  %94 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %95 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i64, i64* %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = icmp ne %struct.TYPE_5__* %100, null
  br i1 %101, label %102, label %142

102:                                              ; preds = %93
  %103 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %104 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i64, i64* %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %13, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %13, align 8
  %112 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %113 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %112, i32 0, i32 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %120 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %119, i32 0, i32 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i64, i64* %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %118, %125
  %127 = load i64, i64* %14, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %14, align 8
  %129 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %130 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %129, i32 0, i32 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %16, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %16, align 8
  br label %142

142:                                              ; preds = %102, %93
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %15, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %15, align 8
  br label %87

146:                                              ; preds = %87
  %147 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %150 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %153 = call i32 @virstor_valid_components(%struct.g_virstor_softc* %152)
  %154 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %147, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %148, i64 %151, i32 %153)
  %155 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load i64, i64* %14, align 8
  %158 = mul i64 %157, 100
  %159 = load i64, i64* %13, align 8
  %160 = udiv i64 %158, %159
  %161 = sub i64 100, %160
  %162 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %156, i64 %161)
  %163 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %166 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %164, i64 %167)
  %169 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = load i64, i64* %14, align 8
  %172 = icmp ugt i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %146
  %174 = load i64, i64* %14, align 8
  %175 = mul i64 %174, 100
  %176 = load i64, i64* %13, align 8
  %177 = udiv i64 %175, %176
  %178 = sub i64 100, %177
  br label %180

179:                                              ; preds = %146
  br label %180

180:                                              ; preds = %179, %173
  %181 = phi i64 [ %178, %173 ], [ 100, %179 ]
  %182 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %170, i64 %181)
  %183 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = load i64, i64* %13, align 8
  %186 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %183, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %184, i64 %185)
  %187 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %190 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %187, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* %188, i64 %191)
  %193 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = load i64, i64* %13, align 8
  %196 = mul i64 %195, 100
  %197 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %198 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = udiv i64 %196, %199
  %201 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %193, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8* %194, i64 %200)
  %202 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = load i64, i64* %16, align 8
  %205 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %202, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i8* %203, i64 %204)
  %206 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %11, align 8
  %209 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = call i32 (%struct.sbuf*, i8*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %207, i64 %210)
  br label %212

212:                                              ; preds = %26, %36, %180, %83
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, i64, ...) #1

declare dso_local i32 @virstor_valid_components(%struct.g_virstor_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
