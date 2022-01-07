; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pinctrl.c_jz4780_pinctrl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pinctrl.c_jz4780_pinctrl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_pinctrl_softc = type { i32* }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32, i32 }
%struct.simplebus_devinfo = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@CHIP_REG_STRIDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ingenic,pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @jz4780_pinctrl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_pinctrl_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.jz4780_pinctrl_softc*, align 8
  %5 = alloca %struct.resource_list*, align 8
  %6 = alloca %struct.resource_list_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.simplebus_devinfo*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.jz4780_pinctrl_softc* @device_get_softc(i32* %15)
  store %struct.jz4780_pinctrl_softc* %16, %struct.jz4780_pinctrl_softc** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.jz4780_pinctrl_softc*, %struct.jz4780_pinctrl_softc** %4, align 8
  %19 = getelementptr inbounds %struct.jz4780_pinctrl_softc, %struct.jz4780_pinctrl_softc* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @device_get_parent(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %21, i32* %22)
  store %struct.resource_list* %23, %struct.resource_list** %5, align 8
  %24 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %25 = icmp eq %struct.resource_list* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %104

28:                                               ; preds = %1
  %29 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %29, i32 %30, i32 0)
  store %struct.resource_list_entry* %31, %struct.resource_list_entry** %6, align 8
  %32 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %33 = icmp eq %struct.resource_list_entry* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %104

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @simplebus_init(i32* %37, i32 0)
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @ofw_bus_get_node(i32* %39)
  store i64 %40, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @OF_child(i64 %41)
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %89, %36
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @OF_hasprop(i64 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %89

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32* @simplebus_add_device(i32* %52, i64 %53, i32 0, i32* null, i32 -1, i32* null)
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %92

58:                                               ; preds = %51
  %59 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %60 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @CHIP_REG_OFFSET(i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* @CHIP_REG_STRIDE, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %70 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %58
  %74 = load i32*, i32** %12, align 8
  %75 = call %struct.simplebus_devinfo* @device_get_ivars(i32* %74)
  store %struct.simplebus_devinfo* %75, %struct.simplebus_devinfo** %11, align 8
  %76 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %11, align 8
  %77 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %76, i32 0, i32 0
  %78 = load i32, i32* @SYS_RES_MEMORY, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @resource_list_add(i32* %77, i32 %78, i32 0, i32 %79, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %58
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %50
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @OF_peer(i64 %90)
  store i64 %91, i64* %8, align 8
  br label %43

92:                                               ; preds = %57, %43
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @bus_generic_attach(i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @fdt_pinctrl_register(i32* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @fdt_pinctrl_configure_tree(i32* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %34, %26
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.jz4780_pinctrl_softc* @device_get_softc(i32*) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i32*) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @simplebus_init(i32*, i32) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_hasprop(i64, i8*) #1

declare dso_local i32* @simplebus_add_device(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @CHIP_REG_OFFSET(i32, i32) #1

declare dso_local %struct.simplebus_devinfo* @device_get_ivars(i32*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

declare dso_local i32 @fdt_pinctrl_register(i32*, i8*) #1

declare dso_local i32 @fdt_pinctrl_configure_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
