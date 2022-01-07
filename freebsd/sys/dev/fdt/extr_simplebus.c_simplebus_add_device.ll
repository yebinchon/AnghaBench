; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simplebus.c_simplebus_add_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simplebus.c_simplebus_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplebus_devinfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @simplebus_add_device(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, %struct.simplebus_devinfo* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.simplebus_devinfo*, align 8
  %14 = alloca %struct.simplebus_devinfo*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.simplebus_devinfo* %5, %struct.simplebus_devinfo** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %13, align 8
  %19 = call %struct.simplebus_devinfo* @simplebus_setup_dinfo(i32* %16, i32 %17, %struct.simplebus_devinfo* %18)
  store %struct.simplebus_devinfo* %19, %struct.simplebus_devinfo** %14, align 8
  %20 = icmp eq %struct.simplebus_devinfo* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %55

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32* @device_add_child_ordered(i32* %23, i32 %24, i8* %25, i32 %26)
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %14, align 8
  %33 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %14, align 8
  %38 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %37, i32 0, i32 1
  %39 = call i32 @resource_list_free(i32* %38)
  %40 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %14, align 8
  %41 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %40, i32 0, i32 0
  %42 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_2__* %41)
  %43 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %13, align 8
  %44 = icmp eq %struct.simplebus_devinfo* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %14, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(%struct.simplebus_devinfo* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %30
  store i32* null, i32** %7, align 8
  br label %55

50:                                               ; preds = %22
  %51 = load i32*, i32** %15, align 8
  %52 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %14, align 8
  %53 = call i32 @device_set_ivars(i32* %51, %struct.simplebus_devinfo* %52)
  %54 = load i32*, i32** %15, align 8
  store i32* %54, i32** %7, align 8
  br label %55

55:                                               ; preds = %50, %49, %21
  %56 = load i32*, i32** %7, align 8
  ret i32* %56
}

declare dso_local %struct.simplebus_devinfo* @simplebus_setup_dinfo(i32*, i32, %struct.simplebus_devinfo*) #1

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_2__*) #1

declare dso_local i32 @free(%struct.simplebus_devinfo*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.simplebus_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
