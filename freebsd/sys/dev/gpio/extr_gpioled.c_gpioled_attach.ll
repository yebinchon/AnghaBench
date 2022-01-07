; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioled.c_gpioled_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioled.c_gpioled_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioled_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@gpioled_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpioled_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioled_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpioled_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.gpioled_softc* @device_get_softc(i32 %6)
  store %struct.gpioled_softc* %7, %struct.gpioled_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.gpioled_softc*, %struct.gpioled_softc** %3, align 8
  %10 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = load %struct.gpioled_softc*, %struct.gpioled_softc** %3, align 8
  %14 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.gpioled_softc*, %struct.gpioled_softc** %3, align 8
  %16 = call i32 @GPIOLED_LOCK_INIT(%struct.gpioled_softc* %15)
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @device_get_name(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @device_get_unit(i32 %19)
  %21 = call i64 @resource_string_value(i32 %18, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i8* null, i8** %5, align 8
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @device_get_name(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @device_get_unit(i32 %27)
  %29 = load %struct.gpioled_softc*, %struct.gpioled_softc** %3, align 8
  %30 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %29, i32 0, i32 0
  %31 = call i32 @resource_int_value(i32 %26, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @device_get_name(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @device_get_unit(i32 %34)
  %36 = call i32 @resource_int_value(i32 %33, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %37 = load i32, i32* @gpioled_control, align 4
  %38 = load %struct.gpioled_softc*, %struct.gpioled_softc** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i8*, i8** %5, align 8
  br label %46

43:                                               ; preds = %24
  %44 = load i32, i32* %2, align 4
  %45 = call i8* @device_get_nameunit(i32 %44)
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i8* [ %42, %41 ], [ %45, %43 ]
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @led_create_state(i32 %37, %struct.gpioled_softc* %38, i8* %47, i32 %48)
  %50 = load %struct.gpioled_softc*, %struct.gpioled_softc** %3, align 8
  %51 = getelementptr inbounds %struct.gpioled_softc, %struct.gpioled_softc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  ret i32 0
}

declare dso_local %struct.gpioled_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @GPIOLED_LOCK_INIT(%struct.gpioled_softc*) #1

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @led_create_state(i32, %struct.gpioled_softc*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
