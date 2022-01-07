; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.regnode_fixed_sc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, %struct.gpiobus_pin, i64 }
%struct.gpiobus_pin = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Cannot set GPIO pin: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32*)* @regnode_fixed_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regnode_fixed_stop(%struct.regnode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regnode_fixed_sc*, align 8
  %8 = alloca %struct.gpiobus_pin*, align 8
  %9 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.regnode*, %struct.regnode** %4, align 8
  %11 = call %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode* %10)
  store %struct.regnode_fixed_sc* %11, %struct.regnode_fixed_sc** %7, align 8
  %12 = load %struct.regnode*, %struct.regnode** %4, align 8
  %13 = call i32 @regnode_get_device(%struct.regnode* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %16 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %22 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %72

28:                                               ; preds = %20
  %29 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %30 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store %struct.gpiobus_pin* %32, %struct.gpiobus_pin** %8, align 8
  %33 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %34 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %72

40:                                               ; preds = %28
  %41 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %8, align 8
  %42 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %8, align 8
  %45 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %48 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 1
  %55 = call i32 @GPIO_PIN_SET(i32 %43, i32 %46, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %40
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %8, align 8
  %61 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %40
  %66 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %7, align 8
  %67 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %58, %39, %27, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @regnode_get_device(%struct.regnode*) #1

declare dso_local i32 @GPIO_PIN_SET(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
