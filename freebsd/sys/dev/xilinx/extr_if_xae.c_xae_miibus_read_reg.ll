; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_miibus_read_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_miibus_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32 }

@MDIO_CTRL_TX_OP_READ = common dso_local global i32 0, align 4
@MDIO_CTRL_INITIATE = common dso_local global i32 0, align 4
@MDIO_TX_REGAD_S = common dso_local global i32 0, align 4
@MDIO_TX_PHYAD_S = common dso_local global i32 0, align 4
@XAE_MDIO_CTRL = common dso_local global i32 0, align 4
@XAE_MDIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @xae_miibus_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xae_miibus_read_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xae_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.xae_softc* @device_get_softc(i32 %11)
  store %struct.xae_softc* %12, %struct.xae_softc** %8, align 8
  %13 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  %14 = call i64 @mdio_wait(%struct.xae_softc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load i32, i32* @MDIO_CTRL_TX_OP_READ, align 4
  %19 = load i32, i32* @MDIO_CTRL_INITIATE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MDIO_TX_REGAD_S, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MDIO_TX_PHYAD_S, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  %32 = load i32, i32* @XAE_MDIO_CTRL, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @WRITE4(%struct.xae_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  %36 = call i64 @mdio_wait(%struct.xae_softc* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %44

39:                                               ; preds = %17
  %40 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  %41 = load i32, i32* @XAE_MDIO_READ, align 4
  %42 = call i32 @READ4(%struct.xae_softc* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %38, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.xae_softc* @device_get_softc(i32) #1

declare dso_local i64 @mdio_wait(%struct.xae_softc*) #1

declare dso_local i32 @WRITE4(%struct.xae_softc*, i32, i32) #1

declare dso_local i32 @READ4(%struct.xae_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
