; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_port_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AR8X16_PORT_CPU = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_LINK_AUTO = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN0_DEF_SVID_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN0_DEF_CVID_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_S = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_LEARN = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_STATE_FORWARD = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_STATE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arswitch_softc*, i32)* @ar8327_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_port_init(%struct.arswitch_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.arswitch_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 127, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AR8X16_PORT_CPU, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %12 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %20 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @AR8X16_PORT_STS_LINK_AUTO, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %10
  %27 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %28 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @AR8327_REG_PORT_STATUS(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @arswitch_writereg(i32 %29, i32 %31, i32 %32)
  %34 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %35 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @AR8327_REG_PORT_HEADER(i32 %37)
  %39 = call i32 @arswitch_writereg(i32 %36, i32 %38, i32 0)
  %40 = load i32, i32* @AR8327_PORT_VLAN0_DEF_SVID_S, align 4
  %41 = shl i32 1, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @AR8327_PORT_VLAN0_DEF_CVID_S, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %47 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @AR8327_REG_PORT_VLAN0(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @arswitch_writereg(i32 %48, i32 %50, i32 %51)
  %53 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH, align 4
  %54 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_S, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %57 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @AR8327_REG_PORT_VLAN1(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @arswitch_writereg(i32 %58, i32 %60, i32 %61)
  %63 = load i32, i32* @AR8327_PORT_LOOKUP_LEARN, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @AR8X16_PORT_CTRL_STATE_FORWARD, align 4
  %65 = load i32, i32* @AR8327_PORT_LOOKUP_STATE_S, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = shl i32 1, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %69, %72
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %77 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @AR8327_REG_PORT_LOOKUP(i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @arswitch_writereg(i32 %78, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @arswitch_writereg(i32, i32, i32) #1

declare dso_local i32 @AR8327_REG_PORT_STATUS(i32) #1

declare dso_local i32 @AR8327_REG_PORT_HEADER(i32) #1

declare dso_local i32 @AR8327_REG_PORT_VLAN0(i32) #1

declare dso_local i32 @AR8327_REG_PORT_VLAN1(i32) #1

declare dso_local i32 @AR8327_REG_PORT_LOOKUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
