; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_acquire_child_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_acquire_child_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"cannot acquire pin %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gpiobus_acquire_child_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_acquire_child_pins(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpiobus_ivar*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %8)
  store %struct.gpiobus_ivar* %9, %struct.gpiobus_ivar** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %13 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %19 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @gpiobus_acquire_pin(i32 %17, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %30 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %41, %27
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %44 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gpiobus_release_pin(i32 %42, i32 %49)
  br label %37

51:                                               ; preds = %37
  %52 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %53 = call i32 @gpiobus_free_ivars(%struct.gpiobus_ivar* %52)
  %54 = load i32, i32* @EBUSY, align 4
  store i32 %54, i32* %3, align 4
  br label %82

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %10

59:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %63 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %69 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @device_get_nameunit(i32 %75)
  %77 = call i32 @GPIOBUS_PIN_SETNAME(i32 %67, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %60

81:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %51
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i64 @gpiobus_acquire_pin(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @gpiobus_release_pin(i32, i32) #1

declare dso_local i32 @gpiobus_free_ivars(%struct.gpiobus_ivar*) #1

declare dso_local i32 @GPIOBUS_PIN_SETNAME(i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
