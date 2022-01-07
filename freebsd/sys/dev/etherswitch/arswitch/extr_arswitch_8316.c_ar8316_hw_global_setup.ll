; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8316.c_ar8316_hw_global_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8316.c_ar8316_hw_global_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }

@AR8X16_MAGIC = common dso_local global i32 0, align 4
@AR8X16_REG_CPU_PORT = common dso_local global i32 0, align 4
@AR8X16_CPU_PORT_EN = common dso_local global i32 0, align 4
@AR8X16_CPU_MIRROR_DIS = common dso_local global i32 0, align 4
@AR8X16_REG_TAG_PRIO = common dso_local global i32 0, align 4
@AR8X16_REG_FLOOD_MASK = common dso_local global i32 0, align 4
@AR8X16_FLOOD_MASK_BCAST_TO_CPU = common dso_local global i32 0, align 4
@AR8X16_REG_GLOBAL_CTRL = common dso_local global i32 0, align 4
@AR8316_GLOBAL_CTRL_MTU_MASK = common dso_local global i32 0, align 4
@AR8X16_REG_SERVICE_TAG = common dso_local global i32 0, align 4
@AR8X16_SERVICE_TAG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*)* @ar8316_hw_global_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8316_hw_global_setup(%struct.arswitch_softc* %0) #0 {
  %2 = alloca %struct.arswitch_softc*, align 8
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %2, align 8
  %3 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %4 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %3)
  %5 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %6 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AR8X16_MAGIC, align 4
  %9 = call i32 @arswitch_writereg(i32 %7, i32 56, i32 %8)
  %10 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %11 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AR8X16_REG_CPU_PORT, align 4
  %14 = load i32, i32* @AR8X16_CPU_PORT_EN, align 4
  %15 = load i32, i32* @AR8X16_CPU_MIRROR_DIS, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @arswitch_writereg(i32 %12, i32 %13, i32 %16)
  %18 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %19 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AR8X16_REG_TAG_PRIO, align 4
  %22 = call i32 @arswitch_writereg(i32 %20, i32 %21, i32 64080)
  %23 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %24 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AR8X16_REG_FLOOD_MASK, align 4
  %27 = load i32, i32* @AR8X16_FLOOD_MASK_BCAST_TO_CPU, align 4
  %28 = or i32 %27, 4128831
  %29 = call i32 @arswitch_writereg(i32 %25, i32 %26, i32 %28)
  %30 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %31 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AR8X16_REG_GLOBAL_CTRL, align 4
  %34 = load i32, i32* @AR8316_GLOBAL_CTRL_MTU_MASK, align 4
  %35 = call i32 @arswitch_modifyreg(i32 %32, i32 %33, i32 %34, i32 9028)
  %36 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %37 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AR8X16_REG_SERVICE_TAG, align 4
  %40 = load i32, i32* @AR8X16_SERVICE_TAG_MASK, align 4
  %41 = call i32 @arswitch_modifyreg(i32 %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %43 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %42)
  ret i32 0
}

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @arswitch_writereg(i32, i32, i32) #1

declare dso_local i32 @arswitch_modifyreg(i32, i32, i32, i32) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
