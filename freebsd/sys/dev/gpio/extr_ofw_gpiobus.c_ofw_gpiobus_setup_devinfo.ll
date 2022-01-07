; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_setup_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_setup_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_gpiobus_devinfo = type { %struct.gpiobus_ivar, i32, i32 }
%struct.gpiobus_ivar = type { i32, i32, i32* }
%struct.gpiobus_pin = type { %struct.gpiobus_ivar, i32, i32 }
%struct.gpiobus_softc = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ofw_gpiobus_devinfo* (i32, i32, i32)* @ofw_gpiobus_setup_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ofw_gpiobus_devinfo* @ofw_gpiobus_setup_devinfo(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ofw_gpiobus_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpiobus_ivar*, align 8
  %11 = alloca %struct.gpiobus_pin*, align 8
  %12 = alloca %struct.gpiobus_softc*, align 8
  %13 = alloca %struct.ofw_gpiobus_devinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.gpiobus_softc* @device_get_softc(i32 %14)
  store %struct.gpiobus_softc* %15, %struct.gpiobus_softc** %12, align 8
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.ofw_gpiobus_devinfo* @malloc(i32 24, i32 %16, i32 %19)
  store %struct.ofw_gpiobus_devinfo* %20, %struct.ofw_gpiobus_devinfo** %13, align 8
  %21 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %22 = icmp eq %struct.ofw_gpiobus_devinfo* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.ofw_gpiobus_devinfo* null, %struct.ofw_gpiobus_devinfo** %4, align 8
  br label %114

24:                                               ; preds = %3
  %25 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %26 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @ofw_bus_gen_setup_devinfo(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = call i32 @free(%struct.ofw_gpiobus_devinfo* %31, i32 %32)
  store %struct.ofw_gpiobus_devinfo* null, %struct.ofw_gpiobus_devinfo** %4, align 8
  br label %114

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %12, align 8
  %38 = bitcast %struct.gpiobus_pin** %11 to %struct.ofw_gpiobus_devinfo**
  %39 = call i32 @ofw_gpiobus_parse_gpios_impl(i32 %35, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.gpiobus_softc* %37, %struct.ofw_gpiobus_devinfo** %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %44 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %43, i32 0, i32 2
  %45 = call i32 @ofw_bus_gen_destroy_devinfo(i32* %44)
  %46 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(%struct.ofw_gpiobus_devinfo* %46, i32 %47)
  store %struct.ofw_gpiobus_devinfo* null, %struct.ofw_gpiobus_devinfo** %4, align 8
  br label %114

49:                                               ; preds = %34
  %50 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %51 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %51, i32 0, i32 1
  %53 = call i32 @resource_list_init(i32* %52)
  %54 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %55 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %54, i32 0, i32 0
  store %struct.gpiobus_ivar* %55, %struct.gpiobus_ivar** %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %58 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %60 = call i64 @gpiobus_alloc_ivars(%struct.gpiobus_ivar* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %11, align 8
  %64 = bitcast %struct.gpiobus_pin* %63 to %struct.ofw_gpiobus_devinfo*
  %65 = load i32, i32* @M_DEVBUF, align 4
  %66 = call i32 @free(%struct.ofw_gpiobus_devinfo* %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %69 = call i32 @ofw_gpiobus_destroy_devinfo(i32 %67, %struct.ofw_gpiobus_devinfo* %68)
  store %struct.ofw_gpiobus_devinfo* null, %struct.ofw_gpiobus_devinfo** %4, align 8
  br label %114

70:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %90, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %74 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %11, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %78, i64 %80
  %82 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %85 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %11, align 8
  %95 = bitcast %struct.gpiobus_pin* %94 to %struct.ofw_gpiobus_devinfo*
  %96 = load i32, i32* @M_DEVBUF, align 4
  %97 = call i32 @free(%struct.ofw_gpiobus_devinfo* %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %101 = getelementptr inbounds %struct.ofw_gpiobus_devinfo, %struct.ofw_gpiobus_devinfo* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %101, i32 0, i32 1
  %103 = call i64 @ofw_bus_intr_to_rl(i32 %98, i32 %99, i32* %102, i32* null)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %108 = call i32 @ofw_gpiobus_destroy_devinfo(i32 %106, %struct.ofw_gpiobus_devinfo* %107)
  store %struct.ofw_gpiobus_devinfo* null, %struct.ofw_gpiobus_devinfo** %4, align 8
  br label %114

109:                                              ; preds = %93
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  %112 = call i32 @device_set_ivars(i32 %110, %struct.ofw_gpiobus_devinfo* %111)
  %113 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %13, align 8
  store %struct.ofw_gpiobus_devinfo* %113, %struct.ofw_gpiobus_devinfo** %4, align 8
  br label %114

114:                                              ; preds = %109, %105, %62, %42, %30, %23
  %115 = load %struct.ofw_gpiobus_devinfo*, %struct.ofw_gpiobus_devinfo** %4, align 8
  ret %struct.ofw_gpiobus_devinfo* %115
}

declare dso_local %struct.gpiobus_softc* @device_get_softc(i32) #1

declare dso_local %struct.ofw_gpiobus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(i32*, i32) #1

declare dso_local i32 @free(%struct.ofw_gpiobus_devinfo*, i32) #1

declare dso_local i32 @ofw_gpiobus_parse_gpios_impl(i32, i32, i8*, %struct.gpiobus_softc*, %struct.ofw_gpiobus_devinfo**) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(i32*) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i64 @gpiobus_alloc_ivars(%struct.gpiobus_ivar*) #1

declare dso_local i32 @ofw_gpiobus_destroy_devinfo(i32, %struct.ofw_gpiobus_devinfo*) #1

declare dso_local i64 @ofw_bus_intr_to_rl(i32, i32, i32*, i32*) #1

declare dso_local i32 @device_set_ivars(i32, %struct.ofw_gpiobus_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
