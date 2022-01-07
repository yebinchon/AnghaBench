; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_regnode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_regnode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.gpioregulator_reg_sc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32*)* @gpioregulator_regnode_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioregulator_regnode_enable(%struct.regnode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gpioregulator_reg_sc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.regnode*, %struct.regnode** %5, align 8
  %12 = call %struct.gpioregulator_reg_sc* @regnode_get_softc(%struct.regnode* %11)
  store %struct.gpioregulator_reg_sc* %12, %struct.gpioregulator_reg_sc** %8, align 8
  %13 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %8, align 8
  %14 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %8, align 8
  %22 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %8, align 8
  %34 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @gpio_pin_set_active(i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %8, align 8
  %47 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.gpioregulator_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @gpio_pin_set_active(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
