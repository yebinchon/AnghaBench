; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iobus_softc = type { i64, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.iobus_devinfo = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"IOBus Device Memory\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to init mem range resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@M_IOBUS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @iobus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iobus_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iobus_softc*, align 8
  %5 = alloca %struct.iobus_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.iobus_softc* @device_get_softc(i32* %12)
  store %struct.iobus_softc* %13, %struct.iobus_softc** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @ofw_bus_get_node(i32* %14)
  %16 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %17 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %19 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %22 = call i32 @OF_getprop(i64 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %21, i32 16)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %24, 16
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %28 = load i8*, i8** %27, align 16
  %29 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %30 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %34 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %112

37:                                               ; preds = %26
  %38 = load i32, i32* @RMAN_ARRAY, align 4
  %39 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %40 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %43 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %46 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %45, i32 0, i32 3
  %47 = call i64 @rman_init(%struct.TYPE_3__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @device_printf(i32* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %2, align 4
  br label %112

53:                                               ; preds = %37
  %54 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %55 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %54, i32 0, i32 3
  %56 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %57 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @rman_manage_region(%struct.TYPE_3__* %55, i32 0, i8* %58)
  %60 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %61 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @OF_child(i64 %63)
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %106, %53
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %109

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @OF_getprop_alloc(i64 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32* @device_add_child(i32* %71, i32* null, i32 -1)
  store i32* %72, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %102

75:                                               ; preds = %68
  %76 = load i32, i32* @M_IOBUS, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = call %struct.iobus_devinfo* @malloc(i32 24, i32 %76, i32 %77)
  store %struct.iobus_devinfo* %78, %struct.iobus_devinfo** %5, align 8
  %79 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %80 = call i32 @memset(%struct.iobus_devinfo* %79, i32 0, i32 24)
  %81 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %82 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %81, i32 0, i32 2
  %83 = call i32 @resource_list_init(i32* %82)
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %86 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %89 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %92 = call i32 @iobus_add_intr(i64 %90, %struct.iobus_devinfo* %91)
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %95 = load %struct.iobus_softc*, %struct.iobus_softc** %4, align 8
  %96 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @iobus_add_reg(i64 %93, %struct.iobus_devinfo* %94, i8* %97)
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %101 = call i32 @device_set_ivars(i32* %99, %struct.iobus_devinfo* %100)
  br label %105

102:                                              ; preds = %68
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @OF_prop_free(i8* %103)
  br label %105

105:                                              ; preds = %102, %75
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = call i64 @OF_peer(i64 %107)
  store i64 %108, i64* %7, align 8
  br label %65

109:                                              ; preds = %65
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @bus_generic_attach(i32* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %109, %49, %35
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.iobus_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8**, i32) #1

declare dso_local i64 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local %struct.iobus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.iobus_devinfo*, i32, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @iobus_add_intr(i64, %struct.iobus_devinfo*) #1

declare dso_local i32 @iobus_add_reg(i64, %struct.iobus_devinfo*, i8*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.iobus_devinfo*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
