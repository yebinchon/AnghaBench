; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_micphy.c_micphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_micphy.c_micphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mii_softc = type { i64 }

@MIIF_NOMANPAUSE = common dso_local global i32 0, align 4
@micphy_funcs = common dso_local global i32 0, align 4
@MII_MODEL_MICREL_KSZ8081 = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@MII_MODEL_MICREL_KSZ9031 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @micphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.mii_softc* @device_get_softc(i32 %9)
  store %struct.mii_softc* %10, %struct.mii_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MIIF_NOMANPAUSE, align 4
  %13 = call i32 @mii_phy_dev_attach(i32 %11, i32 %12, i32* @micphy_funcs, i32 1)
  %14 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %15 = call i32 @mii_phy_setmedia(%struct.mii_softc* %14)
  %16 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %17 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MII_MODEL_MICREL_KSZ8081, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_parent(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @device_get_parent(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ofw_bus_get_node(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = call %struct.TYPE_3__* @mii_fdt_get_config(i32 %33)
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %4, align 8
  %35 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %36 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MII_MODEL_MICREL_KSZ9031, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ksz9031_load_values(%struct.mii_softc* %41, i32 %44)
  br label %52

46:                                               ; preds = %32
  %47 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ksz9021_load_values(%struct.mii_softc* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %30, %21
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.mii_softc* @device_get_softc(i32) #1

declare dso_local i32 @mii_phy_dev_attach(i32, i32, i32*, i32) #1

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.TYPE_3__* @mii_fdt_get_config(i32) #1

declare dso_local i32 @ksz9031_load_values(%struct.mii_softc*, i32) #1

declare dso_local i32 @ksz9021_load_values(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
