; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ar8327_hw_setup = common dso_local global i32 0, align 4
@ar8327_hw_global_setup = common dso_local global i32 0, align 4
@ar8327_port_init = common dso_local global i32 0, align 4
@ar8327_vlan_getvgroup = common dso_local global i32 0, align 4
@ar8327_vlan_setvgroup = common dso_local global i32 0, align 4
@ar8327_port_vlan_setup = common dso_local global i32 0, align 4
@ar8327_port_vlan_get = common dso_local global i32 0, align 4
@ar8327_flush_dot1q_vlan = common dso_local global i32 0, align 4
@ar8327_purge_dot1q_vlan = common dso_local global i32 0, align 4
@ar8327_set_dot1q_vlan = common dso_local global i32 0, align 4
@ar8327_get_dot1q_vlan = common dso_local global i32 0, align 4
@ar8327_reset_vlans = common dso_local global i32 0, align 4
@ar8327_get_pvid = common dso_local global i32 0, align 4
@ar8327_set_pvid = common dso_local global i32 0, align 4
@ar8327_vlan_get_port = common dso_local global i32 0, align 4
@ar8327_vlan_set_port = common dso_local global i32 0, align 4
@ar8327_atu_learn_default = common dso_local global i32 0, align 4
@ar8327_atu_flush = common dso_local global i32 0, align 4
@ar8327_atu_flush_port = common dso_local global i32 0, align 4
@ar8327_atu_fetch_table = common dso_local global i32 0, align 4
@arswitch_readphy_external = common dso_local global i32 0, align 4
@arswitch_writephy_external = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOUBLE_TAG = common dso_local global i32 0, align 4
@AR8X16_MAX_VLANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8327_attach(%struct.arswitch_softc* %0) #0 {
  %2 = alloca %struct.arswitch_softc*, align 8
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %2, align 8
  %3 = load i32, i32* @ar8327_hw_setup, align 4
  %4 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %5 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 21
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @ar8327_hw_global_setup, align 4
  %8 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %9 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 20
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @ar8327_port_init, align 4
  %12 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %13 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 19
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @ar8327_vlan_getvgroup, align 4
  %16 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %17 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 18
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @ar8327_vlan_setvgroup, align 4
  %20 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %21 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 17
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @ar8327_port_vlan_setup, align 4
  %24 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %25 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 16
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @ar8327_port_vlan_get, align 4
  %28 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %29 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 15
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @ar8327_flush_dot1q_vlan, align 4
  %32 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %33 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 14
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ar8327_purge_dot1q_vlan, align 4
  %36 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %37 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 13
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @ar8327_set_dot1q_vlan, align 4
  %40 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %41 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 12
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @ar8327_get_dot1q_vlan, align 4
  %44 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %45 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 11
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @ar8327_reset_vlans, align 4
  %48 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %49 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 10
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @ar8327_get_pvid, align 4
  %52 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %53 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 9
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @ar8327_set_pvid, align 4
  %56 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %57 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 8
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @ar8327_vlan_get_port, align 4
  %60 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %61 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 7
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @ar8327_vlan_set_port, align 4
  %64 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %65 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @ar8327_atu_learn_default, align 4
  %68 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %69 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @ar8327_atu_flush, align 4
  %72 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %73 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @ar8327_atu_flush_port, align 4
  %76 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %77 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @ar8327_atu_fetch_table, align 4
  %80 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %81 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @arswitch_readphy_external, align 4
  %84 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %85 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @arswitch_writephy_external, align 4
  %88 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %89 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @ETHERSWITCH_VLAN_DOT1Q, align 4
  %92 = load i32, i32* @ETHERSWITCH_VLAN_PORT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @ETHERSWITCH_VLAN_DOUBLE_TAG, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %97 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @AR8X16_MAX_VLANS, align 4
  %100 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %101 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
