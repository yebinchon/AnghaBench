; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplebus_devinfo = type { %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.cesa_softc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@cesa_attach.engine_idx = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"marvell,armada-38x-crypto\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@CESA0_TDMA_ADDR = common dso_local global i64 0, align 8
@CESA_TDMA_SIZE = common dso_local global i64 0, align 8
@CESA0_CESA_ADDR = common dso_local global i64 0, align 8
@CESA_CESA_SIZE = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@CESA1_TDMA_ADDR = common dso_local global i64 0, align 8
@CESA1_CESA_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad cesa engine_idx\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cesa\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cesa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.simplebus_devinfo*, align 8
  %5 = alloca %struct.resource_list*, align 8
  %6 = alloca %struct.cesa_softc*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ofw_bus_is_compatible(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @cesa_attach_late(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %98

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.simplebus_devinfo* @device_get_ivars(i32 %14)
  store %struct.simplebus_devinfo* %15, %struct.simplebus_devinfo** %4, align 8
  %16 = icmp eq %struct.simplebus_devinfo* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %13
  %20 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %4, align 8
  %21 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %20, i32 0, i32 0
  store %struct.resource_list* %21, %struct.resource_list** %5, align 8
  %22 = load i32, i32* @cesa_attach.engine_idx, align 4
  switch i32 %22, label %75 [
    i32 0, label %23
    i32 1, label %47
  ]

23:                                               ; preds = %19
  %24 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = load i64, i64* @CESA0_TDMA_ADDR, align 8
  %27 = load i64, i64* @CESA0_TDMA_ADDR, align 8
  %28 = load i64, i64* @CESA_TDMA_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = sub nsw i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* @CESA_TDMA_SIZE, align 8
  %33 = call i32 @resource_list_add(%struct.resource_list* %24, i32 %25, i32 0, i64 %26, i32 %31, i64 %32)
  %34 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %35 = load i32, i32* @SYS_RES_MEMORY, align 4
  %36 = load i64, i64* @CESA0_CESA_ADDR, align 8
  %37 = load i64, i64* @CESA0_CESA_ADDR, align 8
  %38 = load i64, i64* @CESA_CESA_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = sub nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* @CESA_CESA_SIZE, align 8
  %43 = call i32 @resource_list_add(%struct.resource_list* %34, i32 %35, i32 1, i64 %36, i32 %41, i64 %42)
  %44 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %45 = load i32, i32* @SYS_RES_IRQ, align 4
  %46 = call i32 @resource_list_delete(%struct.resource_list* %44, i32 %45, i32 1)
  br label %79

47:                                               ; preds = %19
  %48 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load i64, i64* @CESA1_TDMA_ADDR, align 8
  %51 = load i64, i64* @CESA1_TDMA_ADDR, align 8
  %52 = load i64, i64* @CESA_TDMA_SIZE, align 8
  %53 = add nsw i64 %51, %52
  %54 = sub nsw i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* @CESA_TDMA_SIZE, align 8
  %57 = call i32 @resource_list_add(%struct.resource_list* %48, i32 %49, i32 0, i64 %50, i32 %55, i64 %56)
  %58 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %59 = load i32, i32* @SYS_RES_MEMORY, align 4
  %60 = load i64, i64* @CESA1_CESA_ADDR, align 8
  %61 = load i64, i64* @CESA1_CESA_ADDR, align 8
  %62 = load i64, i64* @CESA_CESA_SIZE, align 8
  %63 = add nsw i64 %61, %62
  %64 = sub nsw i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* @CESA_CESA_SIZE, align 8
  %67 = call i32 @resource_list_add(%struct.resource_list* %58, i32 %59, i32 1, i64 %60, i32 %65, i64 %66)
  %68 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %69 = load i32, i32* @SYS_RES_IRQ, align 4
  %70 = call i32 @resource_list_delete(%struct.resource_list* %68, i32 %69, i32 0)
  %71 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %72 = load i32, i32* @SYS_RES_IRQ, align 4
  %73 = call %struct.TYPE_2__* @resource_list_find(%struct.resource_list* %71, i32 %72, i32 1)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %79

75:                                               ; preds = %19
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %2, align 4
  br label %98

79:                                               ; preds = %47, %23
  %80 = load i32, i32* %3, align 4
  %81 = call %struct.cesa_softc* @device_get_softc(i32 %80)
  store %struct.cesa_softc* %81, %struct.cesa_softc** %6, align 8
  %82 = load i32, i32* @cesa_attach.engine_idx, align 4
  %83 = load %struct.cesa_softc*, %struct.cesa_softc** %6, align 8
  %84 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @cesa_attach.engine_idx, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_get_parent(i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @ofw_bus_get_node(i32 %90)
  %92 = call i32 @simplebus_add_device(i32 %89, i32 %91, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1, i32* null)
  br label %93

93:                                               ; preds = %87, %79
  %94 = load i32, i32* @cesa_attach.engine_idx, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @cesa_attach.engine_idx, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @cesa_attach_late(i32 %96)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %75, %17, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @cesa_attach_late(i32) #1

declare dso_local %struct.simplebus_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @resource_list_delete(%struct.resource_list*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.cesa_softc* @device_get_softc(i32) #1

declare dso_local i32 @simplebus_add_device(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
