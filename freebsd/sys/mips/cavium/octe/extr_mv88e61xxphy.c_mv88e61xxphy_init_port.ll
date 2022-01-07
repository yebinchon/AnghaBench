; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_init_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e61xxphy_port_softc = type { i32, i32, i32, i32, %struct.mv88e61xxphy_softc* }
%struct.mv88e61xxphy_softc = type { i32 }

@MV88E61XX_HOST_PORT = common dso_local global i32 0, align 4
@MV88E61XX_PORT_FORCE_MAC = common dso_local global i32 0, align 4
@MV88E61XX_PORT_PAUSE_CONTROL = common dso_local global i32 0, align 4
@MV88E61XX_PORT_CONTROL = common dso_local global i32 0, align 4
@MV88E61XX_PORT_CONTROL2 = common dso_local global i32 0, align 4
@MV88E61XX_PORTS = common dso_local global i32 0, align 4
@MV88E61XX_PORT_VLAN_MAP = common dso_local global i32 0, align 4
@MV88E61XX_PORT_VLAN = common dso_local global i32 0, align 4
@MV88E61XX_PORT_PROVIDER_PROTO = common dso_local global i32 0, align 4
@ETHERTYPE_VLAN = common dso_local global i32 0, align 4
@MV88E61XX_PORT_ETHER_PROTO = common dso_local global i32 0, align 4
@MV88E61XX_PORT_FILTER = common dso_local global i32 0, align 4
@MV88E61XX_PORT_FILTER_MAP_DEST = common dso_local global i32 0, align 4
@MV88E61XX_PORT_FILTER_8021Q_SECURE = common dso_local global i32 0, align 4
@MV88E61XX_PORT_FILTER_DISCARD_UNTAGGED = common dso_local global i32 0, align 4
@MV88E61XX_PORT_FILTER_DISCARD_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e61xxphy_port_softc*)* @mv88e61xxphy_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e61xxphy_init_port(%struct.mv88e61xxphy_port_softc* %0) #0 {
  %2 = alloca %struct.mv88e61xxphy_port_softc*, align 8
  %3 = alloca %struct.mv88e61xxphy_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mv88e61xxphy_port_softc* %0, %struct.mv88e61xxphy_port_softc** %2, align 8
  %5 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %5, i32 0, i32 4
  %7 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %6, align 8
  store %struct.mv88e61xxphy_softc* %7, %struct.mv88e61xxphy_softc** %3, align 8
  %8 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MV88E61XX_HOST_PORT, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %15 = load i32, i32* @MV88E61XX_PORT_FORCE_MAC, align 4
  %16 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %14, i32 %15, i32 3)
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %19 = load i32, i32* @MV88E61XX_PORT_FORCE_MAC, align 4
  %20 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %18, i32 %19, i32 62)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %23 = load i32, i32* @MV88E61XX_PORT_PAUSE_CONTROL, align 4
  %24 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %22, i32 %23, i32 0)
  %25 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MV88E61XX_HOST_PORT, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %32 = load i32, i32* @MV88E61XX_PORT_CONTROL, align 4
  %33 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %31, i32 %32, i32 1212)
  br label %38

34:                                               ; preds = %21
  %35 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %36 = load i32, i32* @MV88E61XX_PORT_CONTROL, align 4
  %37 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %35, i32 %36, i32 1599)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MV88E61XX_HOST_PORT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %46 = load i32, i32* @MV88E61XX_PORT_CONTROL2, align 4
  %47 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %45, i32 %46, i32 0)
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %50 = load i32, i32* @MV88E61XX_PORT_CONTROL2, align 4
  %51 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %49, i32 %50, i32 32768)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MV88E61XX_HOST_PORT, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @MV88E61XX_HOST_PORT, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %4, align 4
  br label %70

61:                                               ; preds = %52
  %62 = load i32, i32* @MV88E61XX_PORTS, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @MV88E61XX_HOST_PORT, align 4
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %61, %58
  %71 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %72 = load i32, i32* @MV88E61XX_PORT_VLAN_MAP, align 4
  %73 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %74 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 12
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %71, i32 %72, i32 %78)
  %80 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %81 = load i32, i32* @MV88E61XX_PORT_VLAN, align 4
  %82 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %83 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 14
  %86 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %85, %88
  %90 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %80, i32 %81, i32 %89)
  %91 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %92 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MV88E61XX_HOST_PORT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %70
  %97 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %98 = load i32, i32* @MV88E61XX_PORT_PROVIDER_PROTO, align 4
  %99 = load i32, i32* @ETHERTYPE_VLAN, align 4
  %100 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %102 = load i32, i32* @MV88E61XX_PORT_ETHER_PROTO, align 4
  %103 = load i32, i32* @ETHERTYPE_VLAN, align 4
  %104 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %106 = load i32, i32* @MV88E61XX_PORT_FILTER, align 4
  %107 = load i32, i32* @MV88E61XX_PORT_FILTER_MAP_DEST, align 4
  %108 = load i32, i32* @MV88E61XX_PORT_FILTER_8021Q_SECURE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @MV88E61XX_PORT_FILTER_DISCARD_UNTAGGED, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %105, i32 %106, i32 %111)
  br label %120

113:                                              ; preds = %70
  %114 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %2, align 8
  %115 = load i32, i32* @MV88E61XX_PORT_FILTER, align 4
  %116 = load i32, i32* @MV88E61XX_PORT_FILTER_MAP_DEST, align 4
  %117 = load i32, i32* @MV88E61XX_PORT_FILTER_DISCARD_TAGGED, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc* %114, i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %113, %96
  ret void
}

declare dso_local i32 @MV88E61XX_WRITE_PORT(%struct.mv88e61xxphy_port_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
