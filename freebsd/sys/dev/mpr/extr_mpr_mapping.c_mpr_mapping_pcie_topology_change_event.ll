; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c_mpr_mapping_pcie_topology_change_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c_mpr_mapping_pcie_topology_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct._map_pcie_topology_change = type { i32, %struct._map_port_change*, i32, i32, i32, i8*, i8* }
%struct._map_port_change = type { i32, i8* }

@M_MPR = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpr_mapping_pcie_topology_change_event(%struct.mpr_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct._map_pcie_topology_change, align 8
  %6 = alloca %struct._map_port_change*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @le16toh(i32 %12)
  %14 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 6
  store i8* %13, i8** %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le16toh(i32 %17)
  %19 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 5
  store i8* %18, i8** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 1
  store %struct._map_port_change* null, %struct._map_port_change** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  br label %92

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 16, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @M_MPR, align 4
  %50 = load i32, i32* @M_NOWAIT, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call %struct._map_port_change* @malloc(i32 %48, i32 %49, i32 %52)
  store %struct._map_port_change* %53, %struct._map_port_change** %6, align 8
  %54 = load %struct._map_port_change*, %struct._map_port_change** %6, align 8
  %55 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 1
  store %struct._map_port_change* %54, %struct._map_port_change** %55, align 8
  %56 = load %struct._map_port_change*, %struct._map_port_change** %6, align 8
  %57 = icmp ne %struct._map_port_change* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  br label %92

59:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le16toh(i32 %67)
  %69 = load %struct._map_port_change*, %struct._map_port_change** %6, align 8
  %70 = getelementptr inbounds %struct._map_port_change, %struct._map_port_change* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct._map_port_change*, %struct._map_port_change** %6, align 8
  %75 = getelementptr inbounds %struct._map_port_change, %struct._map_port_change* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 1
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %7, align 8
  %81 = load %struct._map_port_change*, %struct._map_port_change** %6, align 8
  %82 = getelementptr inbounds %struct._map_port_change, %struct._map_port_change* %81, i32 1
  store %struct._map_port_change* %82, %struct._map_port_change** %6, align 8
  br label %60

83:                                               ; preds = %60
  %84 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %85 = call i32 @_mapping_update_pcie_missing_count(%struct.mpr_softc* %84, %struct._map_pcie_topology_change* %5)
  %86 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %87 = call i32 @_mapping_get_pcie_dev_info(%struct.mpr_softc* %86, %struct._map_pcie_topology_change* %5)
  %88 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %89 = call i32 @_mapping_clear_removed_entries(%struct.mpr_softc* %88)
  %90 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %91 = call i32 @_mapping_add_new_pcie_device(%struct.mpr_softc* %90, %struct._map_pcie_topology_change* %5)
  br label %92

92:                                               ; preds = %83, %58, %43
  %93 = getelementptr inbounds %struct._map_pcie_topology_change, %struct._map_pcie_topology_change* %5, i32 0, i32 1
  %94 = load %struct._map_port_change*, %struct._map_port_change** %93, align 8
  %95 = load i32, i32* @M_MPR, align 4
  %96 = call i32 @free(%struct._map_port_change* %94, i32 %95)
  %97 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %98 = call i32 @_mapping_flush_dpm_pages(%struct.mpr_softc* %97)
  %99 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %105 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %103, %92
  ret void
}

declare dso_local i8* @le16toh(i32) #1

declare dso_local %struct._map_port_change* @malloc(i32, i32, i32) #1

declare dso_local i32 @_mapping_update_pcie_missing_count(%struct.mpr_softc*, %struct._map_pcie_topology_change*) #1

declare dso_local i32 @_mapping_get_pcie_dev_info(%struct.mpr_softc*, %struct._map_pcie_topology_change*) #1

declare dso_local i32 @_mapping_clear_removed_entries(%struct.mpr_softc*) #1

declare dso_local i32 @_mapping_add_new_pcie_device(%struct.mpr_softc*, %struct._map_pcie_topology_change*) #1

declare dso_local i32 @free(%struct._map_port_change*, i32) #1

declare dso_local i32 @_mapping_flush_dpm_pages(%struct.mpr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
