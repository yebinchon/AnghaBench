; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_softc = type { i32, i64, i64, %struct.g_provider*, %struct.g_consumer*, i32, i32, %struct.bio_queue_head, %struct.bio_queue_head, i32 }
%struct.g_provider = type { i64, i64, i64, %struct.g_geom* }
%struct.g_geom = type { i32*, i32 }
%struct.g_consumer = type { i32 }
%struct.bio_queue_head = type { i32 }
%struct.bio = type { i32 }

@g_gate_units_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@G_GATE_FLAG_DESTROY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Request canceled.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gg:destroy\00", align 1
@g_gate_units = common dso_local global i32** null, align 8
@g_gate_nunits = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"negative g_gate_nunits?\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Device %s destroyed.\00", align 1
@M_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_gate_softc*, i32)* @g_gate_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_gate_destroy(%struct.g_gate_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_gate_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio_queue_head, align 4
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca %struct.g_geom*, align 8
  %10 = alloca %struct.bio*, align 8
  store %struct.g_gate_softc* %0, %struct.g_gate_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 (...) @g_topology_assert()
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* @g_gate_units_lock, i32 %12)
  %14 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %15 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %14, i32 0, i32 3
  %16 = load %struct.g_provider*, %struct.g_provider** %15, align 8
  store %struct.g_provider* %16, %struct.g_provider** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %2
  %20 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %21 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24, %19
  %35 = call i32 @mtx_unlock(i32* @g_gate_units_lock)
  %36 = load i32, i32* @EBUSY, align 4
  store i32 %36, i32* %3, align 4
  br label %172

37:                                               ; preds = %29, %2
  %38 = call i32 @mtx_unlock(i32* @g_gate_units_lock)
  %39 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %40 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %39, i32 0, i32 5
  %41 = call i32 @mtx_lock(i32* %40)
  %42 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %43 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @G_GATE_FLAG_DESTROY, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32, i32* @G_GATE_FLAG_DESTROY, align 4
  %50 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %51 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %37
  %55 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %56 = call i32 @wakeup(%struct.g_gate_softc* %55)
  %57 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %58 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %57, i32 0, i32 5
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %61 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %60, i32 0, i32 3
  %62 = load %struct.g_geom*, %struct.g_geom** %61, align 8
  store %struct.g_geom* %62, %struct.g_geom** %9, align 8
  %63 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %64 = load i32, i32* @ENXIO, align 4
  %65 = call i32 @g_wither_provider(%struct.g_provider* %63, i32 %64)
  %66 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %67 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %66, i32 0, i32 9
  %68 = call i32 @callout_drain(i32* %67)
  %69 = call i32 @bioq_init(%struct.bio_queue_head* %6)
  %70 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %71 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %70, i32 0, i32 5
  %72 = call i32 @mtx_lock(i32* %71)
  br label %73

73:                                               ; preds = %78, %54
  %74 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %75 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %74, i32 0, i32 8
  %76 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %75)
  store %struct.bio* %76, %struct.bio** %10, align 8
  %77 = icmp ne %struct.bio* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %80 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.bio*, %struct.bio** %10, align 8
  %84 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %6, %struct.bio* %83)
  br label %73

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %91, %85
  %87 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %88 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %87, i32 0, i32 7
  %89 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %88)
  store %struct.bio* %89, %struct.bio** %10, align 8
  %90 = icmp ne %struct.bio* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %93 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.bio*, %struct.bio** %10, align 8
  %97 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %6, %struct.bio* %96)
  br label %86

98:                                               ; preds = %86
  %99 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %100 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %99, i32 0, i32 5
  %101 = call i32 @mtx_unlock(i32* %100)
  %102 = call i32 (...) @g_topology_unlock()
  br label %103

103:                                              ; preds = %106, %98
  %104 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %6)
  store %struct.bio* %104, %struct.bio** %10, align 8
  %105 = icmp ne %struct.bio* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.bio*, %struct.bio** %10, align 8
  %108 = call i32 @G_GATE_LOGREQ(i32 1, %struct.bio* %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.bio*, %struct.bio** %10, align 8
  %110 = load i32, i32* @ENXIO, align 4
  %111 = call i32 @g_io_deliver(%struct.bio* %109, i32 %110)
  br label %103

112:                                              ; preds = %103
  %113 = call i32 @mtx_lock(i32* @g_gate_units_lock)
  %114 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %115 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %123, %112
  %119 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %120 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %125 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %124, i32 0, i32 1
  %126 = call i32 @msleep(i64* %125, i32* @g_gate_units_lock, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %118

127:                                              ; preds = %118
  %128 = load i32**, i32*** @g_gate_units, align 8
  %129 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %130 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32*, i32** %128, i64 %131
  store i32* null, i32** %132, align 8
  %133 = load i64, i64* @g_gate_nunits, align 8
  %134 = icmp sgt i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @KASSERT(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i64, i64* @g_gate_nunits, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* @g_gate_nunits, align 8
  %139 = call i32 @mtx_unlock(i32* @g_gate_units_lock)
  %140 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %141 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %140, i32 0, i32 5
  %142 = call i32 @mtx_destroy(i32* %141)
  %143 = call i32 (...) @g_topology_lock()
  %144 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %145 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %144, i32 0, i32 4
  %146 = load %struct.g_consumer*, %struct.g_consumer** %145, align 8
  store %struct.g_consumer* %146, %struct.g_consumer** %8, align 8
  %147 = icmp ne %struct.g_consumer* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %127
  %149 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %150 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %149, i32 0, i32 4
  store %struct.g_consumer* null, %struct.g_consumer** %150, align 8
  %151 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %152 = call i32 @g_access(%struct.g_consumer* %151, i32 -1, i32 0, i32 0)
  %153 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %154 = call i32 @g_detach(%struct.g_consumer* %153)
  %155 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %156 = call i32 @g_destroy_consumer(%struct.g_consumer* %155)
  br label %157

157:                                              ; preds = %148, %127
  %158 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %159 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %163 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %162, i32 0, i32 0
  store i32* null, i32** %163, align 8
  %164 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %165 = load i32, i32* @ENXIO, align 4
  %166 = call i32 @g_wither_geom(%struct.g_geom* %164, i32 %165)
  %167 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %168 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %167, i32 0, i32 3
  store %struct.g_provider* null, %struct.g_provider** %168, align 8
  %169 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %170 = load i32, i32* @M_GATE, align 4
  %171 = call i32 @free(%struct.g_gate_softc* %169, i32 %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %157, %34
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_gate_softc*) #1

declare dso_local i32 @g_wither_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @G_GATE_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @G_GATE_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

declare dso_local i32 @free(%struct.g_gate_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
