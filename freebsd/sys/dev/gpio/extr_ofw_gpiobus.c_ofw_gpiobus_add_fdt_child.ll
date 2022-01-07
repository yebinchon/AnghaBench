; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_add_fdt_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_add_fdt_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { i32, i32* }
%struct.ofw_gpiobus_devinfo = type { %struct.gpiobus_ivar }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ofw_gpiobus_add_fdt_child(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpiobus_ivar*, align 8
  %11 = alloca %struct.ofw_gpiobus_devinfo*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32* @ofw_bus_find_child_device_by_phandle(i32* %12, i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  store i32* %18, i32** %4, align 8
  br label %74

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32* @device_add_child(i32* %20, i8* %21, i32 -1)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %74

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.ofw_gpiobus_devinfo* @ofw_gpiobus_setup_devinfo(i32* %27, i32* %28, i32 %29)
  store %struct.ofw_gpiobus_devinfo* %30, %struct.ofw_gpiobus_devinfo** %11, align 8
  %31 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %11, align 8
  %32 = icmp eq %struct.ofw_gpiobus_devinfo* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @device_delete_child(i32* %34, i32* %35)
  store i32* null, i32** %4, align 8
  br label %74

37:                                               ; preds = %26
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @device_probe_and_attach(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %11, align 8
  %44 = call i32 @ofw_gpiobus_destroy_devinfo(i32* %42, %struct.ofw_gpiobus_devinfo* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @device_delete_child(i32* %45, i32* %46)
  store i32* null, i32** %4, align 8
  br label %74

48:                                               ; preds = %37
  %49 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %11, align 8
  %50 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %49, i32 0, i32 0
  store %struct.gpiobus_ivar* %50, %struct.gpiobus_ivar** %10, align 8
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %69, %48
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %54 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %60 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @device_get_nameunit(i32* %66)
  %68 = call i32 @GPIOBUS_PIN_SETNAME(i32* %58, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32*, i32** %8, align 8
  store i32* %73, i32** %4, align 8
  br label %74

74:                                               ; preds = %72, %41, %33, %25, %17
  %75 = load i32*, i32** %4, align 8
  ret i32* %75
}

declare dso_local i32* @ofw_bus_find_child_device_by_phandle(i32*, i32) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local %struct.ofw_gpiobus_devinfo* @ofw_gpiobus_setup_devinfo(i32*, i32*, i32) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

declare dso_local i32 @ofw_gpiobus_destroy_devinfo(i32*, %struct.ofw_gpiobus_devinfo*) #1

declare dso_local i32 @GPIOBUS_PIN_SETNAME(i32*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
