; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_regnode_set_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioregulator.c_gpioregulator_regnode_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.gpioregulator_reg_sc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, %struct.gpioregulator_state* }
%struct.gpioregulator_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32, i32*)* @gpioregulator_regnode_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioregulator_regnode_set_voltage(%struct.regnode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.gpioregulator_reg_sc*, align 8
  %11 = alloca %struct.gpioregulator_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.regnode*, %struct.regnode** %6, align 8
  %15 = call %struct.gpioregulator_reg_sc* @regnode_get_softc(%struct.regnode* %14)
  store %struct.gpioregulator_reg_sc* %15, %struct.gpioregulator_reg_sc** %10, align 8
  store %struct.gpioregulator_state* null, %struct.gpioregulator_state** %11, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %60, %4
  %17 = load i32, i32* %13, align 4
  %18 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %10, align 8
  %19 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %16
  %25 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %10, align 8
  %26 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load %struct.gpioregulator_state*, %struct.gpioregulator_state** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gpioregulator_state, %struct.gpioregulator_state* %29, i64 %31
  %33 = getelementptr inbounds %struct.gpioregulator_state, %struct.gpioregulator_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %24
  %38 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %10, align 8
  %39 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load %struct.gpioregulator_state*, %struct.gpioregulator_state** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.gpioregulator_state, %struct.gpioregulator_state* %42, i64 %44
  %46 = getelementptr inbounds %struct.gpioregulator_state, %struct.gpioregulator_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %37
  %51 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %10, align 8
  %52 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load %struct.gpioregulator_state*, %struct.gpioregulator_state** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gpioregulator_state, %struct.gpioregulator_state* %55, i64 %57
  store %struct.gpioregulator_state* %58, %struct.gpioregulator_state** %11, align 8
  br label %63

59:                                               ; preds = %37, %24
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %16

63:                                               ; preds = %50, %16
  %64 = load %struct.gpioregulator_state*, %struct.gpioregulator_state** %11, align 8
  %65 = icmp eq %struct.gpioregulator_state* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %5, align 4
  br label %109

68:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %99, %68
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %10, align 8
  %72 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %69
  %78 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %10, align 8
  %79 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.gpioregulator_state*, %struct.gpioregulator_state** %11, align 8
  %88 = getelementptr inbounds %struct.gpioregulator_state, %struct.gpioregulator_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = ashr i32 %89, %90
  %92 = and i32 %91, 1
  %93 = call i32 @gpio_pin_set_active(i32 %86, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %77
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %109

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %69

102:                                              ; preds = %69
  %103 = load %struct.gpioregulator_reg_sc*, %struct.gpioregulator_reg_sc** %10, align 8
  %104 = getelementptr inbounds %struct.gpioregulator_reg_sc, %struct.gpioregulator_reg_sc* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %102, %96, %66
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.gpioregulator_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @gpio_pin_set_active(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
