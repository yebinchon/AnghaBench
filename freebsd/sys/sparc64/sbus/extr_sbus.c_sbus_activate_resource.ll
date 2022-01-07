; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.sbus_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.bus_space_tag = type { i32 }

@SBUS_BUS_SPACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @sbus_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbus_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.sbus_softc*, align 8
  %13 = alloca %struct.bus_space_tag*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %75 [
    i32 129, label %16
    i32 128, label %23
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.resource*, %struct.resource** %11, align 8
  %22 = call i32 @bus_generic_activate_resource(i32 %17, i32 %18, i32 %19, i32 %20, %struct.resource* %21)
  store i32 %22, i32* %6, align 4
  br label %77

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.sbus_softc* @device_get_softc(i32 %24)
  store %struct.sbus_softc* %25, %struct.sbus_softc** %12, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %71, %23
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.sbus_softc*, %struct.sbus_softc** %12, align 8
  %29 = getelementptr inbounds %struct.sbus_softc, %struct.sbus_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %26
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = load %struct.sbus_softc*, %struct.sbus_softc** %12, align 8
  %35 = getelementptr inbounds %struct.sbus_softc, %struct.sbus_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @rman_is_region_manager(%struct.resource* %33, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %32
  %44 = load %struct.resource*, %struct.resource** %11, align 8
  %45 = load i32, i32* @SBUS_BUS_SPACE, align 4
  %46 = call %struct.bus_space_tag* @sparc64_alloc_bus_tag(%struct.resource* %44, i32 %45)
  store %struct.bus_space_tag* %46, %struct.bus_space_tag** %13, align 8
  %47 = load %struct.bus_space_tag*, %struct.bus_space_tag** %13, align 8
  %48 = icmp eq %struct.bus_space_tag* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %6, align 4
  br label %77

51:                                               ; preds = %43
  %52 = load %struct.resource*, %struct.resource** %11, align 8
  %53 = load %struct.bus_space_tag*, %struct.bus_space_tag** %13, align 8
  %54 = call i32 @rman_set_bustag(%struct.resource* %52, %struct.bus_space_tag* %53)
  %55 = load %struct.resource*, %struct.resource** %11, align 8
  %56 = load %struct.sbus_softc*, %struct.sbus_softc** %12, align 8
  %57 = getelementptr inbounds %struct.sbus_softc, %struct.sbus_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.resource*, %struct.resource** %11, align 8
  %65 = call i64 @rman_get_start(%struct.resource* %64)
  %66 = add nsw i64 %63, %65
  %67 = call i32 @rman_set_bushandle(%struct.resource* %55, i64 %66)
  %68 = load %struct.resource*, %struct.resource** %11, align 8
  %69 = call i32 @rman_activate_resource(%struct.resource* %68)
  store i32 %69, i32* %6, align 4
  br label %77

70:                                               ; preds = %32
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %26

74:                                               ; preds = %26
  br label %75

75:                                               ; preds = %5, %74
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %51, %49, %16
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @bus_generic_activate_resource(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local %struct.sbus_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, i32*) #1

declare dso_local %struct.bus_space_tag* @sparc64_alloc_bus_tag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, %struct.bus_space_tag*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i64) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
