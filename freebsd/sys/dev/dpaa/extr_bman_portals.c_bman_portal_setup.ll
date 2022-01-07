; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_portals.c_bman_portal_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman_portals.c_bman_portal_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_portals_softc = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.bman_softc = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i8*, i8* }

@bp_sc = common dso_local global %struct.dpaa_portals_softc* null, align 8
@cpuid = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@SW_VOL = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bman_portal_setup(%struct.bman_softc* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bman_softc*, align 8
  %4 = alloca %struct.dpaa_portals_softc*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bman_softc* %0, %struct.bman_softc** %3, align 8
  %9 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** @bp_sc, align 8
  %10 = icmp eq %struct.dpaa_portals_softc* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %127

12:                                               ; preds = %1
  %13 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** @bp_sc, align 8
  store %struct.dpaa_portals_softc* %13, %struct.dpaa_portals_softc** %4, align 8
  %14 = call i32 (...) @sched_pin()
  store i32* null, i32** %6, align 8
  %15 = load i32, i32* @cpuid, align 4
  %16 = call i32 @PCPU_GET(i32 %15)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %12
  %18 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %19 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to i64*
  %26 = call i64 @atomic_cmpset_acq_ptr(i64* %25, i32 0, i32 -1)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %17
  %29 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %30 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to i64*
  %37 = call i64 @atomic_load_acq_ptr(i64* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 (...) @sched_unpin()
  %45 = load i64, i64* %8, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %2, align 8
  br label %127

47:                                               ; preds = %40, %28
  %48 = load i32, i32* @curthread, align 4
  %49 = call i32 @thread_lock(i32 %48)
  %50 = load i32, i32* @SW_VOL, align 4
  %51 = call i32 @mi_switch(i32 %50, i32* null)
  %52 = load i32, i32* @curthread, align 4
  %53 = call i32 @thread_unlock(i32 %52)
  br label %17

54:                                               ; preds = %17
  %55 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %56 = call i32 @dpaa_portal_map_registers(%struct.dpaa_portals_softc* %55)
  %57 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %58 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @rman_get_bushandle(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  store i8* %62, i8** %63, align 8
  %64 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %65 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @rman_get_bushandle(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  %71 = load %struct.bman_softc*, %struct.bman_softc** %3, align 8
  %72 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %78 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = call i32* @BM_PORTAL_Config(%struct.TYPE_5__* %5)
  store i32* %86, i32** %6, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %54
  br label %110

90:                                               ; preds = %54
  %91 = load i32*, i32** %6, align 8
  %92 = call i64 @BM_PORTAL_Init(i32* %91)
  %93 = load i64, i64* @E_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %110

96:                                               ; preds = %90
  %97 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %98 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = bitcast i32* %103 to i64*
  %105 = load i32*, i32** %6, align 8
  %106 = ptrtoint i32* %105 to i64
  %107 = call i32 @atomic_store_rel_ptr(i64* %104, i64 %106)
  %108 = call i32 (...) @sched_unpin()
  %109 = load i32*, i32** %6, align 8
  store i32* %109, i32** %2, align 8
  br label %127

110:                                              ; preds = %95, %89
  %111 = load i32*, i32** %6, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @BM_PORTAL_Free(i32* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %118 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = bitcast i32* %123 to i64*
  %125 = call i32 @atomic_store_rel_ptr(i64* %124, i64 0)
  %126 = call i32 (...) @sched_unpin()
  store i32* null, i32** %2, align 8
  br label %127

127:                                              ; preds = %116, %96, %43, %11
  %128 = load i32*, i32** %2, align 8
  ret i32* %128
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i64 @atomic_cmpset_acq_ptr(i64*, i32, i32) #1

declare dso_local i64 @atomic_load_acq_ptr(i64*) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @mi_switch(i32, i32*) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @dpaa_portal_map_registers(%struct.dpaa_portals_softc*) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i32* @BM_PORTAL_Config(%struct.TYPE_5__*) #1

declare dso_local i64 @BM_PORTAL_Init(i32*) #1

declare dso_local i32 @atomic_store_rel_ptr(i64*, i64) #1

declare dso_local i32 @BM_PORTAL_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
