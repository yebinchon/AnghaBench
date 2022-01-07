; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_update_missing_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_update_missing_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct._map_topology_change = type { i64, %struct._map_phy_change* }
%struct._map_phy_change = type { i64, i32, i32 }

@MPI2_EVENT_SAS_TOPO_RC_TARG_NOT_RESPONDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpr_softc*, %struct._map_topology_change*)* @_mapping_update_missing_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mapping_update_missing_count(%struct.mpr_softc* %0, %struct._map_topology_change* %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct._map_topology_change*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._map_phy_change*, align 8
  %7 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store %struct._map_topology_change* %1, %struct._map_topology_change** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct._map_topology_change*, %struct._map_topology_change** %4, align 8
  %11 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load %struct._map_topology_change*, %struct._map_topology_change** %4, align 8
  %16 = getelementptr inbounds %struct._map_topology_change, %struct._map_topology_change* %15, i32 0, i32 1
  %17 = load %struct._map_phy_change*, %struct._map_phy_change** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct._map_phy_change, %struct._map_phy_change* %17, i64 %18
  store %struct._map_phy_change* %19, %struct._map_phy_change** %6, align 8
  %20 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %21 = getelementptr inbounds %struct._map_phy_change, %struct._map_phy_change* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %26 = getelementptr inbounds %struct._map_phy_change, %struct._map_phy_change* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MPI2_EVENT_SAS_TOPO_RC_TARG_NOT_RESPONDING, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %14
  br label %42

31:                                               ; preds = %24
  %32 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %33 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %34 = getelementptr inbounds %struct._map_phy_change, %struct._map_phy_change* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @_mapping_get_mt_idx_from_handle(%struct.mpr_softc* %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct._map_phy_change*, %struct._map_phy_change** %6, align 8
  %38 = getelementptr inbounds %struct._map_phy_change, %struct._map_phy_change* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @_mapping_inc_missing_count(%struct.mpr_softc* %39, i32 %40)
  br label %42

42:                                               ; preds = %31, %30
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %8

45:                                               ; preds = %8
  ret void
}

declare dso_local i32 @_mapping_get_mt_idx_from_handle(%struct.mpr_softc*, i32) #1

declare dso_local i32 @_mapping_inc_missing_count(%struct.mpr_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
