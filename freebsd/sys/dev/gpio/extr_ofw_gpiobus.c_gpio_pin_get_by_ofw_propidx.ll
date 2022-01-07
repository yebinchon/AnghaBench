; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_gpio_pin_get_by_ofw_propidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_gpio_pin_get_by_ofw_propidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_pin = type { i32, i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"both consumer and cnode required\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_pin_get_by_ofw_propidx(i32* %0, i32 %1, i8* %2, i32 %3, %struct.gpiobus_pin** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gpiobus_pin**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.gpiobus_pin, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.gpiobus_pin** %4, %struct.gpiobus_pin*** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi i1 [ false, %5 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ofw_bus_parse_xref_list_alloc(i32 %27, i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32* %12, i32* %16, i32** %13)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %6, align 4
  br label %93

35:                                               ; preds = %23
  %36 = load i32, i32* %12, align 4
  %37 = call i32* @OF_device_from_xref(i32 %36)
  %38 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %15, i32 0, i32 2
  store i32* %37, i32** %38, align 8
  %39 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %15, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @OF_prop_free(i32* %43)
  %45 = load i32, i32* @ENODEV, align 4
  store i32 %45, i32* %6, align 4
  br label %93

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %15, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @GPIO_GET_BUS(i32* %48)
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @OF_prop_free(i32* %53)
  %55 = load i32, i32* @ENODEV, align 4
  store i32 %55, i32* %6, align 4
  br label %93

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %15, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @OF_node_from_xref(i32 %60)
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %15, i32 0, i32 0
  %65 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %15, i32 0, i32 1
  %66 = call i32 @gpio_map_gpios(i32* %58, i32 %59, i32 %61, i32 %62, i32* %63, i32* %64, i32* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @OF_prop_free(i32* %67)
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %6, align 4
  br label %93

73:                                               ; preds = %56
  %74 = load i32*, i32** %14, align 8
  %75 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %15, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @gpiobus_acquire_pin(i32* %74, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @EBUSY, align 4
  store i32 %81, i32* %6, align 4
  br label %93

82:                                               ; preds = %73
  %83 = load i32, i32* @M_DEVBUF, align 4
  %84 = load i32, i32* @M_WAITOK, align 4
  %85 = load i32, i32* @M_ZERO, align 4
  %86 = or i32 %84, %85
  %87 = call %struct.gpiobus_pin* @malloc(i32 16, i32 %83, i32 %86)
  %88 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  store %struct.gpiobus_pin* %87, %struct.gpiobus_pin** %88, align 8
  %89 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %90 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %89, align 8
  %91 = bitcast %struct.gpiobus_pin* %90 to i8*
  %92 = bitcast %struct.gpiobus_pin* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %82, %80, %71, %52, %42, %33
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ofw_bus_parse_xref_list_alloc(i32, i8*, i8*, i32, i32*, i32*, i32**) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32 @OF_prop_free(i32*) #1

declare dso_local i32* @GPIO_GET_BUS(i32*) #1

declare dso_local i32 @gpio_map_gpios(i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @gpiobus_acquire_pin(i32*, i32) #1

declare dso_local %struct.gpiobus_pin* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
