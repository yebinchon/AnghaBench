; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.regnode_fixed_sc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, %struct.gpiobus_pin }
%struct.gpiobus_pin = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid enable count\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot set GPIO pin: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32*)* @regnode_fixed_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regnode_fixed_enable(%struct.regnode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.regnode_fixed_sc*, align 8
  %10 = alloca %struct.gpiobus_pin*, align 8
  %11 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.regnode*, %struct.regnode** %5, align 8
  %13 = call %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode* %12)
  store %struct.regnode_fixed_sc* %13, %struct.regnode_fixed_sc** %9, align 8
  %14 = load %struct.regnode*, %struct.regnode** %5, align 8
  %15 = call i32 @regnode_get_device(%struct.regnode* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %18 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %115

22:                                               ; preds = %3
  %23 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %24 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store %struct.gpiobus_pin* %26, %struct.gpiobus_pin** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %31 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %37 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %115

43:                                               ; preds = %29
  br label %67

44:                                               ; preds = %22
  %45 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %46 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %54 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %60 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %115

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %69 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %115

78:                                               ; preds = %74, %67
  %79 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %80 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %10, align 8
  %92 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %10, align 8
  %95 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @GPIO_PIN_SET(i32 %93, i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %90
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %10, align 8
  %104 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %115

108:                                              ; preds = %90
  %109 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %9, align 8
  %110 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %108, %101, %77, %65, %42, %21
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @regnode_get_device(%struct.regnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GPIO_PIN_SET(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
