; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_print_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_print_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpiobus_ivar*, i8*, i64)* @gpiobus_print_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiobus_print_pins(%struct.gpiobus_ivar* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.gpiobus_ivar*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpiobus_ivar* %0, %struct.gpiobus_ivar** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %13 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %108

17:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %18 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %19 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  store i32 %22, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %78, %17
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %26 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %23
  %30 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %31 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @strlcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %49 = call i32 @memset(i8* %48, i32 0, i32 128)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %54, i32 127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %47
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %59, i32 127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @strlcat(i8* %63, i8* %64, i64 %65)
  %67 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %68 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  store i32 %73, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %77

74:                                               ; preds = %29
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %23

81:                                               ; preds = %23
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @strlcat(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %90 = call i32 @memset(i8* %89, i32 0, i32 128)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %95, i32 127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  br label %103

99:                                               ; preds = %88
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %100, i32 127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @strlcat(i8* %104, i8* %105, i64 %106)
  br label %108

108:                                              ; preds = %103, %16
  ret void
}

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
