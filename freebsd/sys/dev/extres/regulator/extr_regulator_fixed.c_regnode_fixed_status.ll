; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator_fixed.c_regnode_fixed_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.regnode_fixed_sc = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.gpiobus_pin }
%struct.gpiobus_pin = type { i32, i32 }

@REGULATOR_STATUS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32*)* @regnode_fixed_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regnode_fixed_status(%struct.regnode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.regnode_fixed_sc*, align 8
  %7 = alloca %struct.gpiobus_pin*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.regnode*, %struct.regnode** %4, align 8
  %11 = call %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode* %10)
  store %struct.regnode_fixed_sc* %11, %struct.regnode_fixed_sc** %6, align 8
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %6, align 8
  %14 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @REGULATOR_STATUS_ENABLED, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %6, align 8
  %22 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.gpiobus_pin* %24, %struct.gpiobus_pin** %7, align 8
  %25 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %7, align 8
  %26 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %7, align 8
  %29 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GPIO_PIN_GET(i32 %27, i32 %30, i64* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %20
  %35 = load %struct.regnode_fixed_sc*, %struct.regnode_fixed_sc** %6, align 8
  %36 = getelementptr inbounds %struct.regnode_fixed_sc, %struct.regnode_fixed_sc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = xor i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @REGULATOR_STATUS_ENABLED, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %34
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.regnode_fixed_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @GPIO_PIN_GET(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
