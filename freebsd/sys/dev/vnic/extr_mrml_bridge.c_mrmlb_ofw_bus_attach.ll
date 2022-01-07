; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_mrml_bridge.c_mrmlb_ofw_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_mrml_bridge.c_mrmlb_ofw_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplebus_softc = type { i32, i32 }
%struct.mrmlb_ofw_devinfo = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"could not get ranges\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_MRMLB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mrmlb_ofw_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrmlb_ofw_bus_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.simplebus_softc*, align 8
  %5 = alloca %struct.mrmlb_ofw_devinfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @ofw_bus_get_node(i32* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @simplebus_init(i32* %11, i64 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.simplebus_softc* @device_get_softc(i32* %14)
  store %struct.simplebus_softc* %15, %struct.simplebus_softc** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %18 = call i64 @mrmlb_ofw_fill_ranges(i64 %16, %struct.simplebus_softc* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @device_printf(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %87

24:                                               ; preds = %1
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @OF_child(i64 %25)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %83, %24
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %86

30:                                               ; preds = %27
  %31 = load i32, i32* @M_MRMLB, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.mrmlb_ofw_devinfo* @malloc(i32 8, i32 %31, i32 %34)
  store %struct.mrmlb_ofw_devinfo* %35, %struct.mrmlb_ofw_devinfo** %5, align 8
  %36 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %37 = getelementptr inbounds %struct.mrmlb_ofw_devinfo, %struct.mrmlb_ofw_devinfo* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @ofw_bus_gen_setup_devinfo(i32* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %43 = load i32, i32* @M_MRMLB, align 4
  %44 = call i32 @free(%struct.mrmlb_ofw_devinfo* %42, i32 %43)
  br label %83

45:                                               ; preds = %30
  %46 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %47 = getelementptr inbounds %struct.mrmlb_ofw_devinfo, %struct.mrmlb_ofw_devinfo* %46, i32 0, i32 1
  %48 = call i32 @resource_list_init(i32* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %52 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %55 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %58 = getelementptr inbounds %struct.mrmlb_ofw_devinfo, %struct.mrmlb_ofw_devinfo* %57, i32 0, i32 1
  %59 = call i32 @ofw_bus_reg_to_rl(i32* %49, i64 %50, i32 %53, i32 %56, i32* %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %63 = getelementptr inbounds %struct.mrmlb_ofw_devinfo, %struct.mrmlb_ofw_devinfo* %62, i32 0, i32 1
  %64 = call i32 @ofw_bus_intr_to_rl(i32* %60, i64 %61, i32* %63, i32* null)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32* @device_add_child(i32* %65, i32* null, i32 -1)
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %45
  %70 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %71 = getelementptr inbounds %struct.mrmlb_ofw_devinfo, %struct.mrmlb_ofw_devinfo* %70, i32 0, i32 1
  %72 = call i32 @resource_list_free(i32* %71)
  %73 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %74 = getelementptr inbounds %struct.mrmlb_ofw_devinfo, %struct.mrmlb_ofw_devinfo* %73, i32 0, i32 0
  %75 = call i32 @ofw_bus_gen_destroy_devinfo(i32* %74)
  %76 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %77 = load i32, i32* @M_MRMLB, align 4
  %78 = call i32 @free(%struct.mrmlb_ofw_devinfo* %76, i32 %77)
  br label %83

79:                                               ; preds = %45
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %5, align 8
  %82 = call i32 @device_set_ivars(i32* %80, %struct.mrmlb_ofw_devinfo* %81)
  br label %83

83:                                               ; preds = %79, %69, %41
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @OF_peer(i64 %84)
  store i64 %85, i64* %8, align 8
  br label %27

86:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %20
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @simplebus_init(i32*, i64) #1

declare dso_local %struct.simplebus_softc* @device_get_softc(i32*) #1

declare dso_local i64 @mrmlb_ofw_fill_ranges(i64, %struct.simplebus_softc*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.mrmlb_ofw_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(i32*, i64) #1

declare dso_local i32 @free(%struct.mrmlb_ofw_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @ofw_bus_reg_to_rl(i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @ofw_bus_intr_to_rl(i32*, i64, i32*, i32*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.mrmlb_ofw_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
