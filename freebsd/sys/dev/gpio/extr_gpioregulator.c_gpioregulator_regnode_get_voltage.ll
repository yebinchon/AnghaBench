; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_regnode_get_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_regnode_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.gpioregulator_reg_sc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32*)* @gpioregulator_regnode_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioregulator_regnode_get_voltage(%struct.regnode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gpioregulator_reg_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.regnode*, %struct.regnode** %4, align 8
  %12 = call %struct.gpioregulator_reg_sc* @regnode_get_softc(%struct.regnode* %11)
  store %struct.gpioregulator_reg_sc* %12, %struct.gpioregulator_reg_sc** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %6, align 8
  %16 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %13
  %22 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %6, align 8
  %23 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpio_pin_is_active(i32 %30, i32* %10)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %85

36:                                               ; preds = %21
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %13

45:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %80, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %6, align 8
  %49 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %46
  %55 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %6, align 8
  %56 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %54
  %68 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %6, align 8
  %69 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %3, align 4
  br label %85

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %46

83:                                               ; preds = %46
  %84 = load i32, i32* @EIO, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %67, %34
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.gpioregulator_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @gpio_pin_is_active(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
