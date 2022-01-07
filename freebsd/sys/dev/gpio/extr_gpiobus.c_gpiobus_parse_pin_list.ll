; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_parse_pin_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_parse_pin_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_softc = type { i32 }
%struct.gpiobus_ivar = type { i32, i64* }

@.str = private unnamed_addr constant [29 x i8] c"garbage in the pin list: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"empty pin list\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot allocate device ivars\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpiobus_softc*, i32, i8*)* @gpiobus_parse_pin_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_parse_pin_list(%struct.gpiobus_softc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpiobus_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gpiobus_ivar*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gpiobus_softc* %0, %struct.gpiobus_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %14)
  store %struct.gpiobus_ivar* %15, %struct.gpiobus_ivar** %8, align 8
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %32, %3
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strtoul(i8* %18, i8** %10, i32 0)
  store i64 %19, i64* %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %35

24:                                               ; preds = %17
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %35

32:                                               ; preds = %24
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %9, align 8
  br label %17

35:                                               ; preds = %31, %23
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %95

45:                                               ; preds = %35
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %95

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %8, align 8
  %55 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %8, align 8
  %57 = call i64 @gpiobus_alloc_ivars(%struct.gpiobus_ivar* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %4, align 4
  br label %95

63:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %9, align 8
  br label %65

65:                                               ; preds = %80, %63
  %66 = load i8*, i8** %9, align 8
  %67 = call i64 @strtoul(i8* %66, i8** %10, i32 0)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %8, align 8
  %70 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %68, i64* %74, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %85

80:                                               ; preds = %65
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %9, align 8
  br label %65

85:                                               ; preds = %79
  %86 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %87 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @gpiobus_acquire_child_pins(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %4, align 4
  br label %95

94:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %92, %59, %48, %40
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @gpiobus_alloc_ivars(%struct.gpiobus_ivar*) #1

declare dso_local i64 @gpiobus_acquire_child_pins(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
