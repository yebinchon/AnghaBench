; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" at pins \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" at pin \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gpiobus_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpiobus_ivar*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %8)
  store %struct.gpiobus_ivar* %9, %struct.gpiobus_ivar** %7, align 8
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 128)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @bus_print_child_header(i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %7, align 8
  %20 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %7, align 8
  %25 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %40

34:                                               ; preds = %23
  %35 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %7, align 8
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %43 = call i32 @gpiobus_print_pins(%struct.gpiobus_ivar* %41, i8* %42, i32 128)
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %45 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %40, %2
  %51 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %7, align 8
  %52 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %51, i32 0, i32 1
  %53 = load i32, i32* @SYS_RES_IRQ, align 4
  %54 = call i32 @resource_list_print_type(i32* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @bus_print_child_footer(i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @printf(i8*, ...) #1

declare dso_local i32 @gpiobus_print_pins(%struct.gpiobus_ivar*, i8*, i32) #1

declare dso_local i32 @resource_list_print_type(i32*, i8*, i32, i8*) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
