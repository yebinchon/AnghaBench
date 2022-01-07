; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i16, %struct.TYPE_2__, %struct.mbuf* }
%struct.TYPE_2__ = type { i32, i32 }

@M_VLANTAG = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to prepend VLAN header\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i16 0, align 2
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, %struct.ifnet*, %struct.mbuf*)* @bridge_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_enqueue(%struct.bridge_softc* %0, %struct.ifnet* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.mbuf*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %108, %3
  %12 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %13 = icmp ne %struct.mbuf* %12, null
  br i1 %13, label %14, label %110

14:                                               ; preds = %11
  %15 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 2
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %17, %struct.mbuf** %10, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %19, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  store i16 %26, i16* %9, align 2
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 8
  %30 = sext i16 %29 to i32
  %31 = load i32, i32* @M_VLANTAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %14
  %35 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.mbuf* @ether_vlanencap(%struct.mbuf* %42, i32 %46)
  store %struct.mbuf* %47, %struct.mbuf** %6, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %52 = call i32 @if_printf(%struct.ifnet* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %54 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %55 = call i32 @if_inc_counter(%struct.ifnet* %53, i32 %54, i32 1)
  br label %108

56:                                               ; preds = %41
  %57 = load i32, i32* @M_VLANTAG, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  %61 = load i16, i16* %60, align 8
  %62 = sext i16 %61 to i32
  %63 = and i32 %62, %58
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %60, align 8
  br label %65

65:                                               ; preds = %56, %34, %14
  %66 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %67 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %66)
  %68 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 1
  %70 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %69, align 8
  %71 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %73 = call i32 %70(%struct.ifnet* %71, %struct.mbuf* %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %77 = call i32 @m_freem(%struct.mbuf* %76)
  %78 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %79 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %78, i32 0, i32 0
  %80 = load %struct.ifnet*, %struct.ifnet** %79, align 8
  %81 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %82 = call i32 @if_inc_counter(%struct.ifnet* %80, i32 %81, i32 1)
  br label %110

83:                                               ; preds = %65
  %84 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %85 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %84, i32 0, i32 0
  %86 = load %struct.ifnet*, %struct.ifnet** %85, align 8
  %87 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %88 = call i32 @if_inc_counter(%struct.ifnet* %86, i32 %87, i32 1)
  %89 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %90 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %89, i32 0, i32 0
  %91 = load %struct.ifnet*, %struct.ifnet** %90, align 8
  %92 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @if_inc_counter(%struct.ifnet* %91, i32 %92, i32 %93)
  %95 = load i16, i16* %9, align 2
  %96 = sext i16 %95 to i32
  %97 = load i16, i16* @M_MCAST, align 2
  %98 = sext i16 %97 to i32
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %83
  %102 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %103 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %102, i32 0, i32 0
  %104 = load %struct.ifnet*, %struct.ifnet** %103, align 8
  %105 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %106 = call i32 @if_inc_counter(%struct.ifnet* %104, i32 %105, i32 1)
  br label %107

107:                                              ; preds = %101, %83
  br label %108

108:                                              ; preds = %107, %50
  %109 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %109, %struct.mbuf** %6, align 8
  br label %11

110:                                              ; preds = %75, %11
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local %struct.mbuf* @ether_vlanencap(%struct.mbuf*, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
