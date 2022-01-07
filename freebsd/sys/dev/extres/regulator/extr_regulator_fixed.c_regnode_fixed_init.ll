; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.regnode_fixed_sc = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { %struct.gpiobus_pin }
%struct.gpiobus_pin = type { i32, i32 }

@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OPENDRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot set GPIO pin: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot configure GPIO pin: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*)* @regnode_fixed_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regnode_fixed_init(%struct.regnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regnode_fixed_sc*, align 8
  %6 = alloca %struct.gpiobus_pin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  %9 = load %struct.regnode*, %struct.regnode** %3, align 8
  %10 = call %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode* %9)
  store %struct.regnode_fixed_sc* %10, %struct.regnode_fixed_sc** %5, align 8
  %11 = load %struct.regnode*, %struct.regnode** %3, align 8
  %12 = call i32 @regnode_get_device(%struct.regnode* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.regnode*, %struct.regnode** %3, align 8
  %14 = call %struct.TYPE_4__* @regnode_get_stdparam(%struct.regnode* %13)
  %15 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %5, align 8
  %16 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %15, i32 0, i32 0
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %5, align 8
  %18 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

22:                                               ; preds = %1
  %23 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %5, align 8
  %24 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.gpiobus_pin* %26, %struct.gpiobus_pin** %6, align 8
  %27 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %5, align 8
  %29 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @GPIO_PIN_OPENDRAIN, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %22
  %37 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %5, align 8
  %38 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %5, align 8
  %45 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %43, %36
  %51 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %6, align 8
  %52 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %6, align 8
  %55 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %5, align 8
  %58 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @GPIO_PIN_SET(i32 %53, i32 %56, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %6, align 8
  %68 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %92

72:                                               ; preds = %50
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %6, align 8
  %75 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %6, align 8
  %78 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @GPIO_PIN_SETFLAGS(i32 %76, i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %6, align 8
  %87 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %84, %65, %21
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @regnode_get_device(%struct.regnode*) #1

declare dso_local %struct.TYPE_4__* @regnode_get_stdparam(%struct.regnode*) #1

declare dso_local i32 @GPIO_PIN_SET(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
