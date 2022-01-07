; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtk_attach_switch_rt3050.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtk_attach_switch_rt3050.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Ralink ESW\00", align 1
@mtkswitch_reset = common dso_local global i32 0, align 4
@mtkswitch_hw_setup = common dso_local global i32 0, align 4
@mtkswitch_hw_global_setup = common dso_local global i32 0, align 4
@mtkswitch_port_init = common dso_local global i32 0, align 4
@mtkswitch_get_port_status = common dso_local global i32 0, align 4
@mtkswitch_atu_flush = common dso_local global i32 0, align 4
@mtkswitch_port_vlan_setup = common dso_local global i32 0, align 4
@mtkswitch_port_vlan_get = common dso_local global i32 0, align 4
@mtkswitch_vlan_init_hw = common dso_local global i32 0, align 4
@mtkswitch_vlan_getvgroup = common dso_local global i32 0, align 4
@mtkswitch_vlan_setvgroup = common dso_local global i32 0, align 4
@mtkswitch_vlan_get_pvid = common dso_local global i32 0, align 4
@mtkswitch_vlan_set_pvid = common dso_local global i32 0, align 4
@mtkswitch_phy_read = common dso_local global i32 0, align 4
@mtkswitch_phy_write = common dso_local global i32 0, align 4
@mtkswitch_reg_read = common dso_local global i32 0, align 4
@mtkswitch_reg_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_attach_switch_rt3050(%struct.mtkswitch_softc* %0) #0 {
  %2 = alloca %struct.mtkswitch_softc*, align 8
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %2, align 8
  %3 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %3, i32 0, i32 0
  store i32 127, i32* %4, align 4
  %5 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %5, i32 0, i32 1
  store i32 31, i32* %6, align 4
  %7 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 7, i32* %9, align 4
  %10 = load i32, i32* @ETHERSWITCH_VLAN_DOT1Q, align 4
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 4
  %14 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 16, i32* %16, align 4
  %17 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %18 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @mtkswitch_reset, align 4
  %23 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 16
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @mtkswitch_hw_setup, align 4
  %27 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 15
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @mtkswitch_hw_global_setup, align 4
  %31 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 14
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @mtkswitch_port_init, align 4
  %35 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 13
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @mtkswitch_get_port_status, align 4
  %39 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 12
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @mtkswitch_atu_flush, align 4
  %43 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %44 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 11
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @mtkswitch_port_vlan_setup, align 4
  %47 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 10
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @mtkswitch_port_vlan_get, align 4
  %51 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %52 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 9
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @mtkswitch_vlan_init_hw, align 4
  %55 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %56 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 8
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @mtkswitch_vlan_getvgroup, align 4
  %59 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 7
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @mtkswitch_vlan_setvgroup, align 4
  %63 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %64 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @mtkswitch_vlan_get_pvid, align 4
  %67 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %68 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @mtkswitch_vlan_set_pvid, align 4
  %71 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %72 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @mtkswitch_phy_read, align 4
  %75 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %76 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @mtkswitch_phy_write, align 4
  %79 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %80 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @mtkswitch_reg_read, align 4
  %83 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %84 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @mtkswitch_reg_write, align 4
  %87 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %88 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  ret void
}

declare dso_local i32 @sprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
