; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_ar8xxx_port_vlan_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_ar8xxx_port_vlan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.arswitch_softc.0*, i32, i32)* }
%struct.arswitch_softc.0 = type opaque
%struct.TYPE_5__ = type { i32, i32, i32 }

@ETHERSWITCH_PORT_ADDTAG = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_STRIPTAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_DOUBLE_TAG = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_DOUBLE_TAG = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_ADD = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_STRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*, %struct.TYPE_5__*)* @ar8xxx_port_vlan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_port_vlan_setup(%struct.arswitch_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arswitch_softc*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %9 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %16 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.arswitch_softc.0*, i32, i32)*, i32 (%struct.arswitch_softc.0*, i32, i32)** %17, align 8
  %19 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %20 = bitcast %struct.arswitch_softc* %19 to %struct.arswitch_softc.0*
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %18(%struct.arswitch_softc.0* %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %14, %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETHERSWITCH_PORT_STRIPTAG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %44 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %43)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %100

46:                                               ; preds = %35, %28
  store i32 0, i32* %6, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ETHERSWITCH_PORT_DOUBLE_TAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @AR8X16_PORT_CTRL_DOUBLE_TAG, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_ADD, align 4
  %66 = load i32, i32* @AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ETHERSWITCH_PORT_STRIPTAG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_STRIP, align 4
  %79 = load i32, i32* @AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %85 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @AR8X16_REG_PORT_CTRL(i32 %89)
  %91 = load i32, i32* @AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT, align 4
  %92 = shl i32 3, %91
  %93 = load i32, i32* @AR8X16_PORT_CTRL_DOUBLE_TAG, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @arswitch_modifyreg(i32 %86, i32 %90, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %98 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %83, %42
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @arswitch_modifyreg(i32, i32, i32, i32) #1

declare dso_local i32 @AR8X16_REG_PORT_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
