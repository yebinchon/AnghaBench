; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_cpu.c_ofw_cpulist_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_cpu.c_ofw_cpulist_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_cpulist_softc = type { i32 }
%struct.ofw_bus_devinfo = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@M_OFWCPU = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ofw_cpulist_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_cpulist_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ofw_cpulist_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ofw_bus_devinfo*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.ofw_cpulist_softc* @device_get_softc(i32* %8)
  store %struct.ofw_cpulist_softc* %9, %struct.ofw_cpulist_softc** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @ofw_bus_get_node(i32* %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.ofw_cpulist_softc*, %struct.ofw_cpulist_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ofw_cpulist_softc, %struct.ofw_cpulist_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.ofw_cpulist_softc*, %struct.ofw_cpulist_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ofw_cpulist_softc, %struct.ofw_cpulist_softc* %15, i32 0, i32 0
  %17 = call i32 @OF_getencprop(i64 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %16, i32 4)
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @OF_child(i64 %18)
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %57, %1
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load i32, i32* @M_OFWCPU, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.ofw_bus_devinfo* @malloc(i32 4, i32 %24, i32 %27)
  store %struct.ofw_bus_devinfo* %28, %struct.ofw_bus_devinfo** %7, align 8
  %29 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %35 = load i32, i32* @M_OFWCPU, align 4
  %36 = call i32 @free(%struct.ofw_bus_devinfo* %34, i32 %35)
  br label %57

37:                                               ; preds = %23
  %38 = load i32*, i32** %2, align 8
  %39 = call i32* @device_add_child(i32* %38, i32* null, i32 -1)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32*, i32** %2, align 8
  %44 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %45 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %49 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %48)
  %50 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %51 = load i32, i32* @M_OFWCPU, align 4
  %52 = call i32 @free(%struct.ofw_bus_devinfo* %50, i32 %51)
  br label %57

53:                                               ; preds = %37
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %56 = call i32 @device_set_ivars(i32* %54, %struct.ofw_bus_devinfo* %55)
  br label %57

57:                                               ; preds = %53, %42, %33
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @OF_peer(i64 %58)
  store i64 %59, i64* %5, align 8
  br label %20

60:                                               ; preds = %20
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @bus_generic_attach(i32* %61)
  ret i32 %62
}

declare dso_local %struct.ofw_cpulist_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.ofw_bus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo*, i64) #1

declare dso_local i32 @free(%struct.ofw_bus_devinfo*, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.ofw_bus_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
