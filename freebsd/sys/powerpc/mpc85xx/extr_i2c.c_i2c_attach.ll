; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_i2c.c_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32, i32*, i32*, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"I2C\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not allocate resources\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not add iicbus child\00", align 1
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.i2c_softc* @device_get_softc(i32 %5)
  store %struct.i2c_softc* %6, %struct.i2c_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 8
  %10 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_nameunit(i32 %14)
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %13, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %20, i32 0, i32 5
  %22 = load i32, i32* @RF_ACTIVE, align 4
  %23 = call i32* @bus_alloc_resource_any(i32 %18, i32 %19, i64* %21, i32 %22)
  %24 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_destroy(i32* %34)
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %1
  %38 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_bustag(i32* %40)
  %42 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @rman_get_bushandle(i32* %46)
  %48 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32* @device_add_child(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %52 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %37
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %61, i32 0, i32 0
  %63 = call i32 @mtx_destroy(i32* %62)
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %37
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @bus_generic_attach(i32 %66)
  %68 = load i32, i32* @IIC_NOERR, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %58, %30
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
