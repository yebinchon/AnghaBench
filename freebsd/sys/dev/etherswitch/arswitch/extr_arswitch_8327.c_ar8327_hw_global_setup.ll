; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_hw_global_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_hw_global_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AR8327_FWD_CTRL0_CPU_PORT_EN = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL0_MIRROR_PORT = common dso_local global i32 0, align 4
@AR8327_REG_FWD_CTRL0 = common dso_local global i32 0, align 4
@AR8327_PORTS_ALL = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL1_UC_FLOOD_S = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL1_MC_FLOOD_S = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL1_BC_FLOOD_S = common dso_local global i32 0, align 4
@AR8327_REG_FWD_CTRL1 = common dso_local global i32 0, align 4
@AR8327_REG_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@AR8327_MAX_FRAME_SIZE_MTU = common dso_local global i32 0, align 4
@AR8327_REG_MODULE_EN = common dso_local global i32 0, align 4
@AR8327_MODULE_EN_MIB = common dso_local global i32 0, align 4
@AR8327_REG_EEE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*)* @ar8327_hw_global_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_hw_global_setup(%struct.arswitch_softc* %0) #0 {
  %2 = alloca %struct.arswitch_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %2, align 8
  %4 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %5 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %4)
  %6 = load i32, i32* @AR8327_FWD_CTRL0_CPU_PORT_EN, align 4
  %7 = load i32, i32* @AR8327_FWD_CTRL0_MIRROR_PORT, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %10 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AR8327_REG_FWD_CTRL0, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @arswitch_writereg(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @AR8327_PORTS_ALL, align 4
  %16 = load i32, i32* @AR8327_FWD_CTRL1_UC_FLOOD_S, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* @AR8327_PORTS_ALL, align 4
  %19 = load i32, i32* @AR8327_FWD_CTRL1_MC_FLOOD_S, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32, i32* @AR8327_PORTS_ALL, align 4
  %23 = load i32, i32* @AR8327_FWD_CTRL1_BC_FLOOD_S, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  store i32 %25, i32* %3, align 4
  %26 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %27 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AR8327_REG_FWD_CTRL1, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @arswitch_writereg(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %33 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AR8327_REG_MAX_FRAME_SIZE, align 4
  %36 = load i32, i32* @AR8327_MAX_FRAME_SIZE_MTU, align 4
  %37 = call i32 @arswitch_modifyreg(i32 %34, i32 %35, i32 %36, i32 9028)
  %38 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %39 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AR8327_REG_MODULE_EN, align 4
  %42 = load i32, i32* @AR8327_MODULE_EN_MIB, align 4
  %43 = load i32, i32* @AR8327_MODULE_EN_MIB, align 4
  %44 = call i32 @arswitch_modifyreg(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %46 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AR8327_REG_EEE_CTRL, align 4
  %49 = call i32 @arswitch_readreg(i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = call i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32 0)
  %51 = call i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32 1)
  %52 = or i32 %50, %51
  %53 = call i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32 2)
  %54 = or i32 %52, %53
  %55 = call i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32 3)
  %56 = or i32 %54, %55
  %57 = call i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32 4)
  %58 = or i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %62 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR8327_REG_EEE_CTRL, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @arswitch_writereg(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %68 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 7, i32* %69, align 4
  %70 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %71 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %70)
  ret i32 0
}

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @arswitch_writereg(i32, i32, i32) #1

declare dso_local i32 @arswitch_modifyreg(i32, i32, i32, i32) #1

declare dso_local i32 @arswitch_readreg(i32, i32) #1

declare dso_local i32 @AR8327_EEE_CTRL_DISABLE_PHY(i32) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
