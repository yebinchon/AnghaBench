; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio_fdt.c_mdionexus_ofw_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio_fdt.c_mdionexus_ofw_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplebus_softc = type { i32, i32 }
%struct.mdionexus_ofw_devinfo = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"could not get ranges\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_THUNDER_MDIO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mdionexus_ofw_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdionexus_ofw_bus_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.simplebus_softc*, align 8
  %5 = alloca %struct.mdionexus_ofw_devinfo*, align 8
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
  %15 = call i64 @device_get_softc(i32* %14)
  %16 = inttoptr i64 %15 to %struct.simplebus_softc*
  store %struct.simplebus_softc* %16, %struct.simplebus_softc** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %19 = call i64 @mdionexus_ofw_fill_ranges(i64 %17, %struct.simplebus_softc* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @device_printf(i32* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %88

25:                                               ; preds = %1
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @OF_child(i64 %26)
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %84, %25
  %29 = load i64, i64* %8, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %28
  %32 = load i32, i32* @M_THUNDER_MDIO, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.mdionexus_ofw_devinfo* @malloc(i32 8, i32 %32, i32 %35)
  store %struct.mdionexus_ofw_devinfo* %36, %struct.mdionexus_ofw_devinfo** %5, align 8
  %37 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %38 = getelementptr inbounds %struct.mdionexus_ofw_devinfo, %struct.mdionexus_ofw_devinfo* %37, i32 0, i32 0
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @ofw_bus_gen_setup_devinfo(i32* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %44 = load i32, i32* @M_THUNDER_MDIO, align 4
  %45 = call i32 @free(%struct.mdionexus_ofw_devinfo* %43, i32 %44)
  br label %84

46:                                               ; preds = %31
  %47 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %48 = getelementptr inbounds %struct.mdionexus_ofw_devinfo, %struct.mdionexus_ofw_devinfo* %47, i32 0, i32 1
  %49 = call i32 @resource_list_init(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %53 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %56 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %59 = getelementptr inbounds %struct.mdionexus_ofw_devinfo, %struct.mdionexus_ofw_devinfo* %58, i32 0, i32 1
  %60 = call i32 @ofw_bus_reg_to_rl(i32* %50, i64 %51, i32 %54, i32 %57, i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %64 = getelementptr inbounds %struct.mdionexus_ofw_devinfo, %struct.mdionexus_ofw_devinfo* %63, i32 0, i32 1
  %65 = call i32 @ofw_bus_intr_to_rl(i32* %61, i64 %62, i32* %64, i32* null)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32* @device_add_child(i32* %66, i32* null, i32 -1)
  store i32* %67, i32** %6, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %46
  %71 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %72 = getelementptr inbounds %struct.mdionexus_ofw_devinfo, %struct.mdionexus_ofw_devinfo* %71, i32 0, i32 1
  %73 = call i32 @resource_list_free(i32* %72)
  %74 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %75 = getelementptr inbounds %struct.mdionexus_ofw_devinfo, %struct.mdionexus_ofw_devinfo* %74, i32 0, i32 0
  %76 = call i32 @ofw_bus_gen_destroy_devinfo(i32* %75)
  %77 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %78 = load i32, i32* @M_THUNDER_MDIO, align 4
  %79 = call i32 @free(%struct.mdionexus_ofw_devinfo* %77, i32 %78)
  br label %84

80:                                               ; preds = %46
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.mdionexus_ofw_devinfo*, %struct.mdionexus_ofw_devinfo** %5, align 8
  %83 = call i32 @device_set_ivars(i32* %81, %struct.mdionexus_ofw_devinfo* %82)
  br label %84

84:                                               ; preds = %80, %70, %42
  %85 = load i64, i64* %8, align 8
  %86 = call i64 @OF_peer(i64 %85)
  store i64 %86, i64* %8, align 8
  br label %28

87:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %21
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @simplebus_init(i32*, i64) #1

declare dso_local i64 @device_get_softc(i32*) #1

declare dso_local i64 @mdionexus_ofw_fill_ranges(i64, %struct.simplebus_softc*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.mdionexus_ofw_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(i32*, i64) #1

declare dso_local i32 @free(%struct.mdionexus_ofw_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @ofw_bus_reg_to_rl(i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @ofw_bus_intr_to_rl(i32*, i64, i32*, i32*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.mdionexus_ofw_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
