; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_ds1553_bus_fdt.c_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_ds1553_bus_fdt.c_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.ds1553_softc = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"rtc_mtx\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot attach time of day clock\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"current time: %ld.%09ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.ds1553_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ds1553_softc* @device_get_softc(i32 %7)
  store %struct.ds1553_softc* %8, %struct.ds1553_softc** %5, align 8
  %9 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %10 = call i32 @bzero(%struct.ds1553_softc* %9, i32 32)
  %11 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %11, i32 0, i32 0
  %13 = load i32, i32* @MTX_SPIN, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %17, i32 0, i32 2
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32* @bus_alloc_resource_any(i32 %15, i32 %16, i32* %18, i32 %19)
  %21 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %22 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %30, i32 0, i32 0
  %32 = call i32 @mtx_destroy(i32* %31)
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %81

34:                                               ; preds = %1
  %35 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @rman_get_bustag(i32* %37)
  %39 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @rman_get_bushandle(i32* %43)
  %45 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @ds1553_attach(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SYS_RES_MEMORY, align 4
  %55 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bus_release_resource(i32 %53, i32 %54, i32 %57, i32* %60)
  %62 = load %struct.ds1553_softc*, %struct.ds1553_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %62, i32 0, i32 0
  %64 = call i32 @mtx_destroy(i32* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %81

66:                                               ; preds = %34
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @clock_register(i32 %67, i32 1000000)
  %69 = load i64, i64* @bootverbose, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @ds1553_gettime(i32 %72, %struct.timespec* %4)
  %74 = load i32, i32* %3, align 4
  %75 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %76, i32 %78)
  br label %80

80:                                               ; preds = %71, %66
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %50, %27
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.ds1553_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ds1553_softc*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @ds1553_attach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @clock_register(i32, i32) #1

declare dso_local i32 @ds1553_gettime(i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
