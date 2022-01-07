; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioled_fdt.c_gpioleds_attach_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioled_fdt.c_gpioleds_attach_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioleds_softc = type { i32 }
%struct.gpioled = type { i32, i32, %struct.gpioleds_softc* }

@.str = private unnamed_addr constant [14 x i8] c"default-state\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"unknown value for default-state in FDT\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"no name provided for gpio LED, skipping\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"<%s> failed to map pin\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@gpioled_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpioleds_softc*, i32, %struct.gpioled*)* @gpioleds_attach_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpioleds_attach_led(%struct.gpioleds_softc* %0, i32 %1, %struct.gpioled* %2) #0 {
  %4 = alloca %struct.gpioleds_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpioled*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.gpioleds_softc* %0, %struct.gpioleds_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.gpioled* %2, %struct.gpioled** %6, align 8
  %11 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %12 = load %struct.gpioled*, %struct.gpioled** %6, align 8
  %13 = getelementptr inbounds %struct.gpioled, %struct.gpioled* %12, i32 0, i32 2
  store %struct.gpioleds_softc* %11, %struct.gpioleds_softc** %13, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @OF_getprop_alloc(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %10)
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load i8*, i8** %10, align 8
  %19 = call i64 @strcasecmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %39

22:                                               ; preds = %17
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @strcasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %38

27:                                               ; preds = %22
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %8, align 4
  br label %37

32:                                               ; preds = %27
  store i32 -1, i32* %8, align 4
  %33 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %34 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %31
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @OF_prop_free(i8* %40)
  br label %42

42:                                               ; preds = %39, %3
  store i8* null, i8** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @OF_getprop_alloc(i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %7)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @OF_getprop_alloc(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %7)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8*, i8** %7, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %54 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %97

57:                                               ; preds = %49
  %58 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %59 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.gpioled*, %struct.gpioled** %6, align 8
  %63 = getelementptr inbounds %struct.gpioled, %struct.gpioled* %62, i32 0, i32 1
  %64 = call i32 @gpio_pin_get_by_ofw_idx(i32 %60, i32 %61, i32 0, i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load %struct.gpioleds_softc*, %struct.gpioleds_softc** %4, align 8
  %69 = getelementptr inbounds %struct.gpioleds_softc, %struct.gpioleds_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @OF_prop_free(i8* %76)
  br label %78

78:                                               ; preds = %75, %67
  br label %97

79:                                               ; preds = %57
  %80 = load %struct.gpioled*, %struct.gpioled** %6, align 8
  %81 = getelementptr inbounds %struct.gpioled, %struct.gpioled* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %84 = call i32 @gpio_pin_setflags(i32 %82, i32 %83)
  %85 = load i32, i32* @gpioled_control, align 4
  %86 = load %struct.gpioled*, %struct.gpioled** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @led_create_state(i32 %85, %struct.gpioled* %86, i8* %87, i32 %88)
  %90 = load %struct.gpioled*, %struct.gpioled** %6, align 8
  %91 = getelementptr inbounds %struct.gpioled, %struct.gpioled* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %79
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @OF_prop_free(i8* %95)
  br label %97

97:                                               ; preds = %52, %78, %94, %79
  ret void
}

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i32 @gpio_pin_get_by_ofw_idx(i32, i32, i32, i32*) #1

declare dso_local i32 @gpio_pin_setflags(i32, i32) #1

declare dso_local i32 @led_create_state(i32, %struct.gpioled*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
