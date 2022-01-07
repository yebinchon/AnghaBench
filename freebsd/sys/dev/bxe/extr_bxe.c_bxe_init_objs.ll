; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_objs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BXE_TX_SWITCHING = common dso_local global i32 0, align 4
@ECORE_OBJ_TYPE_RX_TX = common dso_local global i32 0, align 4
@ECORE_OBJ_TYPE_RX = common dso_local global i32 0, align 4
@mcast_rdata = common dso_local global i32 0, align 4
@ECORE_FILTER_MCAST_PENDING = common dso_local global i32 0, align 4
@rss_rdata = common dso_local global i32 0, align 4
@ECORE_FILTER_RSS_CONF_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_init_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_init_objs(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BXE_TX_SWITCHING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ECORE_OBJ_TYPE_RX_TX, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ECORE_OBJ_TYPE_RX, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %3, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 7
  %19 = call i32 @ecore_init_rx_mode_obj(%struct.bxe_softc* %16, i32* %18)
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %21, i32 0, i32 6
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %36 = call i32 @SC_FUNC(%struct.bxe_softc* %35)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = call i32 @SC_FUNC(%struct.bxe_softc* %37)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = load i32, i32* @mcast_rdata, align 4
  %41 = call i32 @BXE_SP(%struct.bxe_softc* %39, i32 %40)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = load i32, i32* @mcast_rdata, align 4
  %44 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %42, i32 %43)
  %45 = load i32, i32* @ECORE_FILTER_MCAST_PENDING, align 4
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ecore_init_mcast_obj(%struct.bxe_softc* %20, i32* %22, i32 %28, i32 %34, i32 %36, i32 %38, i32 %41, i32 %44, i32 %45, i32* %47, i32 %48)
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %52 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %51, i32 0, i32 5
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = call i32 @SC_FUNC(%struct.bxe_softc* %53)
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %56 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %14
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = call i32 @VNICS_PER_PORT(%struct.bxe_softc* %59)
  br label %64

61:                                               ; preds = %14
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %63 = call i32 @VNICS_PER_PATH(%struct.bxe_softc* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %60, %58 ], [ %63, %61 ]
  %66 = call i32 @ecore_init_mac_credit_pool(%struct.bxe_softc* %50, i32* %52, i32 %54, i32 %65)
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 4
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %71 = call i32 @SC_ABS_FUNC(%struct.bxe_softc* %70)
  %72 = ashr i32 %71, 1
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %74 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %78 = call i32 @VNICS_PER_PORT(%struct.bxe_softc* %77)
  br label %82

79:                                               ; preds = %64
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %81 = call i32 @VNICS_PER_PATH(%struct.bxe_softc* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %78, %76 ], [ %81, %79 ]
  %84 = call i32 @ecore_init_vlan_credit_pool(%struct.bxe_softc* %67, i32* %69, i32 %72, i32 %83)
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %86, i32 0, i32 3
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %89 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %95 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %101 = call i32 @SC_FUNC(%struct.bxe_softc* %100)
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %103 = call i32 @SC_FUNC(%struct.bxe_softc* %102)
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %105 = load i32, i32* @rss_rdata, align 4
  %106 = call i32 @BXE_SP(%struct.bxe_softc* %104, i32 %105)
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %108 = load i32, i32* @rss_rdata, align 4
  %109 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %107, i32 %108)
  %110 = load i32, i32* @ECORE_FILTER_RSS_CONF_PENDING, align 4
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %112 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %111, i32 0, i32 1
  %113 = load i32, i32* @ECORE_OBJ_TYPE_RX, align 4
  %114 = call i32 @ecore_init_rss_config_obj(%struct.bxe_softc* %85, i32* %87, i32 %93, i32 %99, i32 %101, i32 %103, i32 %106, i32 %109, i32 %110, i32* %112, i32 %113)
  ret void
}

declare dso_local i32 @ecore_init_rx_mode_obj(%struct.bxe_softc*, i32*) #1

declare dso_local i32 @ecore_init_mcast_obj(%struct.bxe_softc*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BXE_SP_MAPPING(%struct.bxe_softc*, i32) #1

declare dso_local i32 @ecore_init_mac_credit_pool(%struct.bxe_softc*, i32*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @VNICS_PER_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @VNICS_PER_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_init_vlan_credit_pool(%struct.bxe_softc*, i32*, i32, i32) #1

declare dso_local i32 @SC_ABS_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_init_rss_config_obj(%struct.bxe_softc*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
