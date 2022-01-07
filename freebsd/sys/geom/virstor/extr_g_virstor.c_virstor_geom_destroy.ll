; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_virstor_geom_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_virstor_geom_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_virstor_softc = type { i64, %struct.g_virstor_softc*, %struct.g_virstor_softc*, i32, i32, %struct.TYPE_2__*, %struct.g_provider*, %struct.g_geom*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.g_provider = type { i64, i64, i64, i32 }
%struct.g_geom = type { i32, i32, i32* }
%struct.g_virstor_bio_q = type { i64, %struct.g_virstor_bio_q*, %struct.g_virstor_bio_q*, i32, i32, %struct.TYPE_2__*, %struct.g_provider*, %struct.g_geom*, i32* }

@ENXIO = common dso_local global i32 0, align 4
@LVL_WARNING = common dso_local global i32 0, align 4
@LVL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Device %s is still open.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Provider still exists for %s\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@linkage = common dso_local global i32 0, align 4
@M_GVIRSTOR = common dso_local global i32 0, align 4
@LVL_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Device %s destroyed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_virstor_softc*, i64, i64)* @virstor_geom_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virstor_geom_destroy(%struct.g_virstor_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_virstor_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca %struct.g_geom*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.g_virstor_bio_q*, align 8
  store %struct.g_virstor_softc* %0, %struct.g_virstor_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i32 (...) @g_topology_assert()
  %13 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %14 = icmp eq %struct.g_virstor_softc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %4, align 4
  br label %186

17:                                               ; preds = %3
  %18 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %19 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %18, i32 0, i32 6
  %20 = load %struct.g_provider*, %struct.g_provider** %19, align 8
  store %struct.g_provider* %20, %struct.g_provider** %8, align 8
  %21 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %22 = icmp ne %struct.g_provider* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %30 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33, %28, %23
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @LVL_WARNING, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @LVL_ERROR, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %48 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @LOG_MSG(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @EBUSY, align 4
  store i32 %54, i32* %4, align 4
  br label %186

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %33, %17
  store i64 0, i64* %10, align 8
  br label %57

57:                                               ; preds = %82, %56
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %60 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %65 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %64, i32 0, i32 1
  %66 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %66, i64 %67
  %69 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %74 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %75 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %74, i32 0, i32 1
  %76 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %76, i64 %77
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @remove_component(%struct.g_virstor_softc* %73, %struct.g_virstor_softc* %78, i64 %79)
  br label %81

81:                                               ; preds = %72, %63
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  br label %57

85:                                               ; preds = %57
  %86 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %87 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %86, i32 0, i32 7
  %88 = load %struct.g_geom*, %struct.g_geom** %87, align 8
  store %struct.g_geom* %88, %struct.g_geom** %9, align 8
  %89 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %90 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  %91 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %92 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %91, i32 0, i32 6
  %93 = load %struct.g_provider*, %struct.g_provider** %92, align 8
  %94 = icmp eq %struct.g_provider* %93, null
  %95 = zext i1 %94 to i32
  %96 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %97 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @KASSERT(i32 %95, i8* %100)
  %102 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %103 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %102, i32 0, i32 3
  %104 = call i32 @mtx_lock(i32* %103)
  br label %105

105:                                              ; preds = %111, %85
  %106 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %107 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %106, i32 0, i32 4
  %108 = call i32 @STAILQ_EMPTY(i32* %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %113 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %112, i32 0, i32 4
  %114 = call %struct.g_virstor_softc* @STAILQ_FIRST(i32* %113)
  %115 = bitcast %struct.g_virstor_softc* %114 to %struct.g_virstor_bio_q*
  store %struct.g_virstor_bio_q* %115, %struct.g_virstor_bio_q** %11, align 8
  %116 = load i32, i32* @ENOSPC, align 4
  %117 = load %struct.g_virstor_bio_q*, %struct.g_virstor_bio_q** %11, align 8
  %118 = getelementptr inbounds %struct.g_virstor_bio_q, %struct.g_virstor_bio_q* %117, i32 0, i32 5
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  %121 = load %struct.g_virstor_bio_q*, %struct.g_virstor_bio_q** %11, align 8
  %122 = getelementptr inbounds %struct.g_virstor_bio_q, %struct.g_virstor_bio_q* %121, i32 0, i32 5
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* @EIO, align 4
  %125 = call i32 @g_io_deliver(%struct.TYPE_2__* %123, i32 %124)
  %126 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %127 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %126, i32 0, i32 4
  %128 = load i32, i32* @linkage, align 4
  %129 = call i32 @STAILQ_REMOVE_HEAD(i32* %127, i32 %128)
  %130 = load %struct.g_virstor_bio_q*, %struct.g_virstor_bio_q** %11, align 8
  %131 = bitcast %struct.g_virstor_bio_q* %130 to %struct.g_virstor_softc*
  %132 = load i32, i32* @M_GVIRSTOR, align 4
  %133 = call i32 @free(%struct.g_virstor_softc* %131, i32 %132)
  br label %105

134:                                              ; preds = %105
  %135 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %136 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %135, i32 0, i32 3
  %137 = call i32 @mtx_unlock(i32* %136)
  %138 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %139 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %138, i32 0, i32 3
  %140 = call i32 @mtx_destroy(i32* %139)
  %141 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %142 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %141, i32 0, i32 2
  %143 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %142, align 8
  %144 = load i32, i32* @M_GVIRSTOR, align 4
  %145 = call i32 @free(%struct.g_virstor_softc* %143, i32 %144)
  %146 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %147 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %146, i32 0, i32 1
  %148 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %147, align 8
  %149 = load i32, i32* @M_GVIRSTOR, align 4
  %150 = call i32 @free(%struct.g_virstor_softc* %148, i32 %149)
  %151 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %152 = call i32 @bzero(%struct.g_virstor_softc* %151, i32 64)
  %153 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %154 = load i32, i32* @M_GVIRSTOR, align 4
  %155 = call i32 @free(%struct.g_virstor_softc* %153, i32 %154)
  %156 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %157 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %156, i32 0, i32 1
  %158 = call %struct.g_provider* @LIST_FIRST(i32* %157)
  store %struct.g_provider* %158, %struct.g_provider** %8, align 8
  %159 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %160 = icmp eq %struct.g_provider* %159, null
  br i1 %160, label %176, label %161

161:                                              ; preds = %134
  %162 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %163 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %168 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %166
  %172 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %173 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171, %134
  %177 = load i32, i32* @LVL_DEBUG, align 4
  %178 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %179 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @LOG_MSG(i32 %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %176, %171, %166, %161
  %183 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %184 = load i32, i32* @ENXIO, align 4
  %185 = call i32 @g_wither_geom(%struct.g_geom* %183, i32 %184)
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %182, %53, %15
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @LOG_MSG(i32, i8*, i32) #1

declare dso_local i32 @remove_component(%struct.g_virstor_softc*, %struct.g_virstor_softc*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.g_virstor_softc* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @g_io_deliver(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.g_virstor_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bzero(%struct.g_virstor_softc*, i32) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
