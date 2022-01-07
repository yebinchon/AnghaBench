; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"fsl-i2c\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2C_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"I2C bus controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ofw_bus_is_compatible(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %60

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.i2c_softc* @device_get_softc(i32 %11)
  store %struct.i2c_softc* %12, %struct.i2c_softc** %4, align 8
  %13 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %17, i32 0, i32 1
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32* @bus_alloc_resource_any(i32 %15, i32 %16, i64* %18, i32 %19)
  %21 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %10
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %60

31:                                               ; preds = %10
  %32 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rman_get_bustag(i32* %34)
  %36 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_bushandle(i32* %40)
  %42 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %45 = load i32, i32* @I2C_CONTROL_REG, align 4
  %46 = load i32, i32* @I2C_ENABLE, align 4
  %47 = call i32 @i2c_write_reg(%struct.i2c_softc* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_release_resource(i32 %48, i32 %49, i64 %52, i32* %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_set_desc(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %31, %27, %8
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
