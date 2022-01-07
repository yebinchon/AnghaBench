; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman_portals.c_qman_portal_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman_portals.c_qman_portal_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_portals_softc = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.qman_softc = type { i32 }
%struct.TYPE_5__ = type { i32, i64, %struct.qman_softc*, i32, i32, i64, i32, i8*, i8* }

@qp_sc = common dso_local global %struct.dpaa_portals_softc* null, align 8
@cpuid = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@SW_VOL = common dso_local global i32 0, align 4
@qman_received_frame_callback = common dso_local global i32 0, align 4
@qman_rejected_frame_callback = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@QMAN_COMMON_POOL_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @qman_portal_setup(%struct.qman_softc* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.qman_softc*, align 8
  %4 = alloca %struct.dpaa_portals_softc*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.qman_softc* %0, %struct.qman_softc** %3, align 8
  %9 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** @qp_sc, align 8
  %10 = icmp eq %struct.dpaa_portals_softc* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %140

12:                                               ; preds = %1
  %13 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** @qp_sc, align 8
  store %struct.dpaa_portals_softc* %13, %struct.dpaa_portals_softc** %4, align 8
  %14 = call i32 (...) @sched_pin()
  store i32* null, i32** %8, align 8
  %15 = load i32, i32* @cpuid, align 4
  %16 = call i32 @PCPU_GET(i32 %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %47, %12
  %18 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %19 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %6, align 4
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
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to i64*
  %37 = call i64 @atomic_load_acq_ptr(i64* %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 (...) @sched_unpin()
  %45 = load i64, i64* %7, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %2, align 8
  br label %140

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
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 8
  store i8* %62, i8** %63, align 8
  %64 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %65 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @rman_get_bushandle(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 7
  store i8* %69, i8** %70, align 8
  %71 = load %struct.qman_softc*, %struct.qman_softc** %3, align 8
  %72 = getelementptr inbounds %struct.qman_softc, %struct.qman_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 6
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %78 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @qman_received_frame_callback, align 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @qman_rejected_frame_callback, align 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i32 %89, i32* %90, align 8
  %91 = load %struct.qman_softc*, %struct.qman_softc** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store %struct.qman_softc* %91, %struct.qman_softc** %92, align 8
  %93 = call i32* @QM_PORTAL_Config(%struct.TYPE_5__* %5)
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %54
  br label %124

97:                                               ; preds = %54
  %98 = load i32*, i32** %8, align 8
  %99 = call i64 @QM_PORTAL_Init(i32* %98)
  %100 = load i64, i64* @E_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %124

103:                                              ; preds = %97
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* @QMAN_COMMON_POOL_CHANNEL, align 4
  %106 = call i64 @QM_PORTAL_AddPoolChannel(i32* %104, i32 %105)
  %107 = load i64, i64* @E_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %124

110:                                              ; preds = %103
  %111 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %112 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = bitcast i32* %117 to i64*
  %119 = load i32*, i32** %8, align 8
  %120 = ptrtoint i32* %119 to i64
  %121 = call i32 @atomic_store_rel_ptr(i64* %118, i64 %120)
  %122 = call i32 (...) @sched_unpin()
  %123 = load i32*, i32** %8, align 8
  store i32* %123, i32** %2, align 8
  br label %140

124:                                              ; preds = %109, %102, %96
  %125 = load i32*, i32** %8, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @QM_PORTAL_Free(i32* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %132 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = call i32 @atomic_store_rel_32(i32* %137, i32 0)
  %139 = call i32 (...) @sched_unpin()
  store i32* null, i32** %2, align 8
  br label %140

140:                                              ; preds = %130, %110, %43, %11
  %141 = load i32*, i32** %2, align 8
  ret i32* %141
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

declare dso_local i32* @QM_PORTAL_Config(%struct.TYPE_5__*) #1

declare dso_local i64 @QM_PORTAL_Init(i32*) #1

declare dso_local i64 @QM_PORTAL_AddPoolChannel(i32*, i32) #1

declare dso_local i32 @atomic_store_rel_ptr(i64*, i64) #1

declare dso_local i32 @QM_PORTAL_Free(i32*) #1

declare dso_local i32 @atomic_store_rel_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
