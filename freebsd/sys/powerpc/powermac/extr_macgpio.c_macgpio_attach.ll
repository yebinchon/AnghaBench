; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macgpio_softc = type { i64, i32, i32 }
%struct.macgpio_devinfo = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@M_MACGPIO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @macgpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macgpio_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.macgpio_softc*, align 8
  %4 = alloca %struct.macgpio_devinfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.macgpio_softc* @device_get_softc(i32* %10)
  store %struct.macgpio_softc* %11, %struct.macgpio_softc** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @ofw_bus_get_node(i32* %12)
  %14 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %15 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  store i64 %13, i64* %5, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %19 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %18, i32 0, i32 1
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i32 @bus_alloc_resource_any(i32* %16, i32 %17, i32* %19, i32 %20)
  %22 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %23 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @OF_child(i64 %24)
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %110, %1
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %113

29:                                               ; preds = %26
  %30 = load i32, i32* @M_MACGPIO, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.macgpio_devinfo* @malloc(i32 12, i32 %30, i32 %33)
  store %struct.macgpio_devinfo* %34, %struct.macgpio_devinfo** %4, align 8
  %35 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %36 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %35, i32 0, i32 1
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_3__* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %42 = load i32, i32* @M_MACGPIO, align 4
  %43 = call i32 @free(%struct.macgpio_devinfo* %41, i32 %42)
  br label %110

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %47 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %46, i32 0, i32 0
  %48 = call i32 @OF_getencprop(i64 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %47, i32 4)
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 4
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %53 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %56 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %55, i32 0, i32 2
  %57 = call i32 @resource_list_init(i32* %56)
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %60 = call i32 @OF_getencprop(i64 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %59, i32 8)
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %61, 8
  br i1 %62, label %63, label %78

63:                                               ; preds = %54
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @OF_searchencprop(i64 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %7, i32 8)
  %66 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %67 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %66, i32 0, i32 2
  %68 = load i32, i32* @SYS_RES_IRQ, align 4
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MAP_IRQ(i64 %69, i32 %71)
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MAP_IRQ(i64 %73, i32 %75)
  %77 = call i32 @resource_list_add(i32* %67, i32 %68, i32 0, i32 %72, i32 %76, i32 1)
  br label %78

78:                                               ; preds = %63, %54
  %79 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %80 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 80
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %85 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 80
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32*, i32** %2, align 8
  %90 = call i32* @device_add_child(i32* %89, i32* null, i32 -1)
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load i32*, i32** %2, align 8
  %95 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %96 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_printf(i32* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %101 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %100, i32 0, i32 1
  %102 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__* %101)
  %103 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %104 = load i32, i32* @M_MACGPIO, align 4
  %105 = call i32 @free(%struct.macgpio_devinfo* %103, i32 %104)
  br label %110

106:                                              ; preds = %88
  %107 = load i32*, i32** %8, align 8
  %108 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %4, align 8
  %109 = call i32 @device_set_ivars(i32* %107, %struct.macgpio_devinfo* %108)
  br label %110

110:                                              ; preds = %106, %93, %40
  %111 = load i64, i64* %6, align 8
  %112 = call i64 @OF_peer(i64 %111)
  store i64 %112, i64* %6, align 8
  br label %26

113:                                              ; preds = %26
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @bus_generic_attach(i32* %114)
  ret i32 %115
}

declare dso_local %struct.macgpio_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.macgpio_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @free(%struct.macgpio_devinfo*, i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @OF_searchencprop(i64, i8*, i64*, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAP_IRQ(i64, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.macgpio_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
