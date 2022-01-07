; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc_ebus.c_atkbdc_ebus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc_ebus.c_atkbdc_ebus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"8042\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@sparc64_model = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"SUNW,UltraAX-MP\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SUNW,UltraSPARC-IIi-Engine\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Keyboard controller (i8042)\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"cannot determine command/data port resource\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"cannot allocate command/data port resource\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"cannot determine status port resource\0A\00", align 1
@KBD_STATUS_PORT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"cannot allocate status port resource\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"atkbdc_porbe_unit failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atkbdc_ebus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdc_ebus_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ofw_bus_get_name(i32 %10)
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load i32, i32* @sparc64_model, align 4
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @sparc64_model, align 4
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20, %16
  %25 = call i64 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @ofw_bus_get_node(i32 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_disable(i32 %30)
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %108

33:                                               ; preds = %24, %20
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_set_desc(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @bus_get_resource(i32 %36, i32 %37, i32 %38, i32* %7, i32* %6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %108

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = call %struct.resource* @bus_alloc_resource(i32 %46, i32 %47, i32* %9, i32 %48, i32 %49, i32 1, i32 %50)
  store %struct.resource* %51, %struct.resource** %4, align 8
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = icmp eq %struct.resource* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %108

58:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SYS_RES_MEMORY, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @bus_get_resource(i32 %59, i32 %60, i32 %61, i32* %7, i32* %6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %8, align 4
  br label %102

68:                                               ; preds = %58
  %69 = load i64, i64* @KBD_STATUS_PORT, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @SYS_RES_MEMORY, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @RF_ACTIVE, align 4
  %79 = call %struct.resource* @bus_alloc_resource(i32 %74, i32 %75, i32* %9, i32 %76, i32 %77, i32 1, i32 %78)
  store %struct.resource* %79, %struct.resource** %5, align 8
  %80 = load %struct.resource*, %struct.resource** %5, align 8
  %81 = icmp eq %struct.resource* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %68
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %8, align 4
  br label %102

86:                                               ; preds = %68
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_get_unit(i32 %87)
  %89 = load %struct.resource*, %struct.resource** %4, align 8
  %90 = load %struct.resource*, %struct.resource** %5, align 8
  %91 = call i32 @atkbdc_probe_unit(i32 %88, %struct.resource* %89, %struct.resource* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %86
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @SYS_RES_MEMORY, align 4
  %100 = load %struct.resource*, %struct.resource** %5, align 8
  %101 = call i32 @bus_release_resource(i32 %98, i32 %99, i32 1, %struct.resource* %100)
  br label %102

102:                                              ; preds = %97, %82, %64
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @SYS_RES_MEMORY, align 4
  %105 = load %struct.resource*, %struct.resource** %4, align 8
  %106 = call i32 @bus_release_resource(i32 %103, i32 %104, i32 0, %struct.resource* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %54, %41, %29, %14
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_name(i32) #1

declare dso_local i64 @OF_finddevice(i8*) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_disable(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i64 @bus_get_resource(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @atkbdc_probe_unit(i32, %struct.resource*, %struct.resource*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
