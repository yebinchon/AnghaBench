; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c_mps_mapping_topology_change_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c_mps_mapping_topology_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct._map_topology_change = type { i32, %struct._map_phy_change*, i32, i32, i32, i8*, i8* }
%struct._map_phy_change = type { i32, i8* }

@M_MPT2 = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MPI2_EVENT_SAS_TOPO_RC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mps_mapping_topology_change_event(%struct.mps_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct._map_topology_change, align 8
  %6 = alloca %struct._map_phy_change*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @le16toh(i32 %12)
  %14 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 6
  store i8* %13, i8** %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le16toh(i32 %17)
  %19 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 5
  store i8* %18, i8** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 1
  store %struct._map_phy_change* null, %struct._map_phy_change** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  br label %94

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 16, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @M_MPT2, align 4
  %50 = load i32, i32* @M_NOWAIT, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call %struct._map_phy_change* @malloc(i32 %48, i32 %49, i32 %52)
  store %struct._map_phy_change* %53, %struct._map_phy_change** %6, align 8
  %54 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %55 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 1
  store %struct._map_phy_change* %54, %struct._map_phy_change** %55, align 8
  %56 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %57 = icmp ne %struct._map_phy_change* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  br label %94

59:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le16toh(i32 %67)
  %69 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %70 = getelementptr inbounds %struct._map_phy_change, %struct._map_phy_change* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MPI2_EVENT_SAS_TOPO_RC_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %77 = getelementptr inbounds %struct._map_phy_change, %struct._map_phy_change* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 1
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %7, align 8
  %83 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %84 = getelementptr inbounds %struct._map_phy_change, %struct._map_phy_change* %83, i32 1
  store %struct._map_phy_change* %84, %struct._map_phy_change** %6, align 8
  br label %60

85:                                               ; preds = %60
  %86 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %87 = call i32 @_mapping_update_missing_count(%struct.mps_softc* %86, %struct._map_topology_change* %5)
  %88 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %89 = call i32 @_mapping_get_dev_info(%struct.mps_softc* %88, %struct._map_topology_change* %5)
  %90 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %91 = call i32 @_mapping_clear_removed_entries(%struct.mps_softc* %90)
  %92 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %93 = call i32 @_mapping_add_new_device(%struct.mps_softc* %92, %struct._map_topology_change* %5)
  br label %94

94:                                               ; preds = %85, %58, %43
  %95 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %5, i32 0, i32 1
  %96 = load %struct._map_phy_change*, %struct._map_phy_change** %95, align 8
  %97 = load i32, i32* @M_MPT2, align 4
  %98 = call i32 @free(%struct._map_phy_change* %96, i32 %97)
  %99 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %100 = call i32 @_mapping_flush_dpm_pages(%struct.mps_softc* %99)
  %101 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %94
  %106 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %107 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %105, %94
  ret void
}

declare dso_local i8* @le16toh(i32) #1

declare dso_local %struct._map_phy_change* @malloc(i32, i32, i32) #1

declare dso_local i32 @_mapping_update_missing_count(%struct.mps_softc*, %struct._map_topology_change*) #1

declare dso_local i32 @_mapping_get_dev_info(%struct.mps_softc*, %struct._map_topology_change*) #1

declare dso_local i32 @_mapping_clear_removed_entries(%struct.mps_softc*) #1

declare dso_local i32 @_mapping_add_new_device(%struct.mps_softc*, %struct._map_topology_change*) #1

declare dso_local i32 @free(%struct._map_phy_change*, i32) #1

declare dso_local i32 @_mapping_flush_dpm_pages(%struct.mps_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
