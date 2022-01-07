; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobacklight.c_gpiobacklight_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobacklight.c_gpiobacklight_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobacklight_softc = type { i32, i32, i32* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"default-on\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to map GPIO pin\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@gpiobacklight_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"backlight brightness\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpiobacklight_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobacklight_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpiobacklight_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.gpiobacklight_softc* @device_get_softc(i32 %8)
  store %struct.gpiobacklight_softc* %9, %struct.gpiobacklight_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ofw_bus_get_node(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @OF_hasprop(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.gpiobacklight_softc*, %struct.gpiobacklight_softc** %4, align 8
  %21 = getelementptr inbounds %struct.gpiobacklight_softc, %struct.gpiobacklight_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %25

22:                                               ; preds = %15
  %23 = load %struct.gpiobacklight_softc*, %struct.gpiobacklight_softc** %4, align 8
  %24 = getelementptr inbounds %struct.gpiobacklight_softc, %struct.gpiobacklight_softc* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.gpiobacklight_softc*, %struct.gpiobacklight_softc** %4, align 8
  %29 = getelementptr inbounds %struct.gpiobacklight_softc, %struct.gpiobacklight_softc* %28, i32 0, i32 2
  %30 = call i32 @gpio_pin_get_by_ofw_idx(i32 %26, i32 %27, i32 0, i32** %29)
  %31 = load %struct.gpiobacklight_softc*, %struct.gpiobacklight_softc** %4, align 8
  %32 = getelementptr inbounds %struct.gpiobacklight_softc, %struct.gpiobacklight_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %25
  %40 = load %struct.gpiobacklight_softc*, %struct.gpiobacklight_softc** %4, align 8
  %41 = getelementptr inbounds %struct.gpiobacklight_softc, %struct.gpiobacklight_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %44 = call i32 @gpio_pin_setflags(i32* %42, i32 %43)
  %45 = load %struct.gpiobacklight_softc*, %struct.gpiobacklight_softc** %4, align 8
  %46 = call i32 @gpiobacklight_update_brightness(%struct.gpiobacklight_softc* %45)
  %47 = load i32, i32* %3, align 4
  %48 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %47)
  store %struct.sysctl_ctx_list* %48, %struct.sysctl_ctx_list** %5, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %49)
  store %struct.sysctl_oid* %50, %struct.sysctl_oid** %6, align 8
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %52 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %53 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLTYPE_INT, align 4
  %56 = load i32, i32* @CTLFLAG_RW, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.gpiobacklight_softc*, %struct.gpiobacklight_softc** %4, align 8
  %59 = load i32, i32* @gpiobacklight_sysctl, align 4
  %60 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %51, i32 %53, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %57, %struct.gpiobacklight_softc* %58, i32 0, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.gpiobacklight_softc*, %struct.gpiobacklight_softc** %4, align 8
  %62 = getelementptr inbounds %struct.gpiobacklight_softc, %struct.gpiobacklight_softc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %39, %35, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.gpiobacklight_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @gpio_pin_get_by_ofw_idx(i32, i32, i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @gpio_pin_setflags(i32*, i32) #1

declare dso_local i32 @gpiobacklight_update_brightness(%struct.gpiobacklight_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.gpiobacklight_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
