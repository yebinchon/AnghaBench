; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtk_attach_switch_mt7620.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtk_attach_switch_mt7620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Mediatek GSW\00", align 1
@MTK_SWITCH_MT7621 = common dso_local global i64 0, align 8
@mtkswitch_reg_read32_mt7621 = common dso_local global i32 0, align 4
@mtkswitch_reg_write32_mt7621 = common dso_local global i32 0, align 4
@mtkswitch_reg_read32 = common dso_local global i32 0, align 4
@mtkswitch_reg_write32 = common dso_local global i32 0, align 4
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
define dso_local void @mtk_attach_switch_mt7620(%struct.mtkswitch_softc* %0) #0 {
  %2 = alloca %struct.mtkswitch_softc*, align 8
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %2, align 8
  %3 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %3, i32 0, i32 0
  store i32 127, i32* %4, align 8
  %5 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %5, i32 0, i32 1
  store i32 31, i32* %6, align 4
  %7 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 7, i32* %9, align 4
  %10 = load i32, i32* @ETHERSWITCH_VLAN_DOT1Q, align 4
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 4
  %14 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 16, i32* %16, align 4
  %17 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %18 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MTK_SWITCH_MT7621, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load i32, i32* @mtkswitch_reg_read32_mt7621, align 4
  %29 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 18
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @mtkswitch_reg_write32_mt7621, align 4
  %33 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 17
  store i32 %32, i32* %35, align 4
  %36 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 4096, i32* %38, align 4
  br label %48

39:                                               ; preds = %1
  %40 = load i32, i32* @mtkswitch_reg_read32, align 4
  %41 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %42 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 18
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @mtkswitch_reg_write32, align 4
  %45 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 17
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %27
  %49 = load i32, i32* @mtkswitch_reset, align 4
  %50 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %51 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 16
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @mtkswitch_hw_setup, align 4
  %54 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %55 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 15
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @mtkswitch_hw_global_setup, align 4
  %58 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 14
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @mtkswitch_port_init, align 4
  %62 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %63 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 13
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @mtkswitch_get_port_status, align 4
  %66 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 12
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @mtkswitch_atu_flush, align 4
  %70 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %71 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 11
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @mtkswitch_port_vlan_setup, align 4
  %74 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 10
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @mtkswitch_port_vlan_get, align 4
  %78 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %79 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 9
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @mtkswitch_vlan_init_hw, align 4
  %82 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %83 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 8
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @mtkswitch_vlan_getvgroup, align 4
  %86 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 7
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @mtkswitch_vlan_setvgroup, align 4
  %90 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %91 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @mtkswitch_vlan_get_pvid, align 4
  %94 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %95 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @mtkswitch_vlan_set_pvid, align 4
  %98 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %99 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 8
  %101 = load i32, i32* @mtkswitch_phy_read, align 4
  %102 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %103 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @mtkswitch_phy_write, align 4
  %106 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %107 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* @mtkswitch_reg_read, align 4
  %110 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %111 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @mtkswitch_reg_write, align 4
  %114 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %115 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  ret void
}

declare dso_local i32 @sprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
