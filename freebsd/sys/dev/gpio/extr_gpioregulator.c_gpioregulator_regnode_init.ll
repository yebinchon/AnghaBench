; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_regnode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_regnode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.gpioregulator_reg_sc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*)* @gpioregulator_regnode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioregulator_regnode_init(%struct.regnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regnode*, align 8
  %4 = alloca %struct.gpioregulator_reg_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  %7 = load %struct.regnode*, %struct.regnode** %3, align 8
  %8 = call %struct.gpioregulator_reg_sc* @regnode_get_softc(%struct.regnode* %7)
  store %struct.gpioregulator_reg_sc* %8, %struct.gpioregulator_reg_sc** %4, align 8
  %9 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %4, align 8
  %10 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %4, align 8
  %17 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %22 = call i32 @gpio_pin_setflags(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %58

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %4, align 8
  %32 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %4, align 8
  %39 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %48 = call i32 @gpio_pin_setflags(i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %29

57:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %51, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.gpioregulator_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @gpio_pin_setflags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
