; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_write_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { i64, i32* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot allocate device ivars\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @gpiobus_write_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_write_ivar(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gpiobus_ivar*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %13)
  store %struct.gpiobus_ivar* %14, %struct.gpiobus_ivar** %10, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %70 [
    i32 129, label %16
    i32 128, label %37
  ]

16:                                               ; preds = %4
  %17 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %18 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %5, align 4
  br label %73

23:                                               ; preds = %16
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %26 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %28 = call i32 @gpiobus_alloc_ivars(%struct.gpiobus_ivar* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %34 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  br label %73

36:                                               ; preds = %23
  br label %72

37:                                               ; preds = %4
  %38 = load i64, i64* %9, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %59, %37
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %44 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %10, align 8
  %54 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @gpiobus_acquire_child_pins(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @EBUSY, align 4
  store i32 %68, i32* %5, align 4
  br label %73

69:                                               ; preds = %62
  br label %72

70:                                               ; preds = %4
  %71 = load i32, i32* @ENOENT, align 4
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %69, %36
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %70, %67, %30, %21
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i32 @gpiobus_alloc_ivars(%struct.gpiobus_ivar*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @gpiobus_acquire_child_pins(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
