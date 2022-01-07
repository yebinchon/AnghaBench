; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_portals_common.c_dpaa_portal_map_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_portals_common.c_dpaa_portal_map_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_portals_softc = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@cpuid = common dso_local global i32 0, align 4
@_TLB_ENTRY_MEM = common dso_local global i32 0, align 4
@_TLB_ENTRY_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpaa_portal_map_registers(%struct.dpaa_portals_softc* %0) #0 {
  %2 = alloca %struct.dpaa_portals_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dpaa_portals_softc* %0, %struct.dpaa_portals_softc** %2, align 8
  %4 = call i32 (...) @sched_pin()
  %5 = load i32, i32* @cpuid, align 4
  %6 = call i32 @PCPU_GET(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %2, align 8
  %8 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %73

17:                                               ; preds = %1
  %18 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %2, align 8
  %19 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rman_get_bushandle(i32 %22)
  %24 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %2, align 8
  %25 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %2, align 8
  %33 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @_TLB_ENTRY_MEM, align 4
  %41 = call i32 @tlb1_set_entry(i32 %23, i32 %31, i32 %39, i32 %40)
  %42 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %2, align 8
  %43 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rman_get_bushandle(i32 %46)
  %48 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %2, align 8
  %49 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %2, align 8
  %57 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @_TLB_ENTRY_IO, align 4
  %65 = call i32 @tlb1_set_entry(i32 %47, i32 %55, i32 %63, i32 %64)
  %66 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %2, align 8
  %67 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %17, %16
  %74 = call i32 (...) @sched_unpin()
  ret void
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @tlb1_set_entry(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @sched_unpin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
