; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/avgen/extr_altera_avgen_nexus.c_altera_avgen_nexus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/avgen/extr_altera_avgen_nexus.c_altera_avgen_nexus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_avgen_softc = type { i32, i32*, i64, i32, i32 }

@ALTERA_AVALON_STR_WIDTH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"invalid %s\0A\00", align 1
@ALTERA_AVALON_STR_FILEIO = common dso_local global i32 0, align 4
@ALTERA_AVALON_STR_GEOMIO = common dso_local global i32 0, align 4
@ALTERA_AVALON_STR_MMAPIO = common dso_local global i32 0, align 4
@ALTERA_AVALON_STR_DEVNAME = common dso_local global i32 0, align 4
@ALTERA_AVALON_STR_DEVUNIT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @altera_avgen_nexus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_avgen_nexus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.altera_avgen_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.altera_avgen_softc* @device_get_softc(i32 %11)
  store %struct.altera_avgen_softc* %12, %struct.altera_avgen_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %15 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_unit(i32 %16)
  %18 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %19 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  %20 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %21 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_name(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_get_unit(i32 %24)
  %26 = load i32, i32* @ALTERA_AVALON_STR_WIDTH, align 4
  %27 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %28 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %27, i32 0, i32 0
  %29 = call i32 @resource_int_value(i32 %23, i32 %25, i32 %26, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ALTERA_AVALON_STR_WIDTH, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %2, align 4
  br label %112

41:                                               ; preds = %32, %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_get_name(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_get_unit(i32 %44)
  %46 = load i32, i32* @ALTERA_AVALON_STR_FILEIO, align 4
  %47 = call i32 @resource_string_value(i32 %43, i32 %45, i32 %46, i8** %5)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_get_name(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_get_unit(i32 %50)
  %52 = load i32, i32* @ALTERA_AVALON_STR_GEOMIO, align 4
  %53 = call i32 @resource_string_value(i32 %49, i32 %51, i32 %52, i8** %6)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_get_name(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_get_unit(i32 %56)
  %58 = load i32, i32* @ALTERA_AVALON_STR_MMAPIO, align 4
  %59 = call i32 @resource_string_value(i32 %55, i32 %57, i32 %58, i8** %7)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_get_name(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_get_unit(i32 %62)
  %64 = load i32, i32* @ALTERA_AVALON_STR_DEVNAME, align 4
  %65 = call i32 @resource_string_value(i32 %61, i32 %63, i32 %64, i8** %8)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_get_name(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_get_unit(i32 %68)
  %70 = load i32, i32* @ALTERA_AVALON_STR_DEVUNIT, align 4
  %71 = call i32 @resource_int_value(i32 %67, i32 %69, i32 %70, i32* %9)
  %72 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %73 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @SYS_RES_MEMORY, align 4
  %76 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %77 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %76, i32 0, i32 2
  %78 = load i32, i32* @RF_ACTIVE, align 4
  %79 = call i32* @bus_alloc_resource_any(i32 %74, i32 %75, i64* %77, i32 %78)
  %80 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %81 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %83 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %41
  %87 = load i32, i32* %3, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %2, align 4
  br label %112

90:                                               ; preds = %41
  %91 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @altera_avgen_attach(%struct.altera_avgen_softc* %91, i8* %92, i8* %93, i8* %94, i8* %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %90
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @SYS_RES_MEMORY, align 4
  %103 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %104 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %107 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @bus_release_resource(i32 %101, i32 %102, i64 %105, i32* %108)
  br label %110

110:                                              ; preds = %100, %90
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %86, %36
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.altera_avgen_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i32, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @resource_string_value(i32, i32, i32, i8**) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @altera_avgen_attach(%struct.altera_avgen_softc*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
