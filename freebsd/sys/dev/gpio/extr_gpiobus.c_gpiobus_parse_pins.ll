; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_parse_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_parse_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_softc = type { i32 }
%struct.gpiobus_ivar = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"empty pin mask\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot allocate device ivars\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpiobus_softc*, i32, i32)* @gpiobus_parse_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_parse_pins(%struct.gpiobus_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpiobus_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpiobus_ivar*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpiobus_softc* %0, %struct.gpiobus_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %11)
  store %struct.gpiobus_ivar* %12, %struct.gpiobus_ivar** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %26, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %80

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %8, align 8
  %39 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %8, align 8
  %41 = call i64 @gpiobus_alloc_ivars(%struct.gpiobus_ivar* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %80

47:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %67

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %8, align 8
  %61 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %57
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %48

70:                                               ; preds = %48
  %71 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %72 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @gpiobus_acquire_child_pins(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %77, %43, %32
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @gpiobus_alloc_ivars(%struct.gpiobus_ivar*) #1

declare dso_local i64 @gpiobus_acquire_child_pins(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
