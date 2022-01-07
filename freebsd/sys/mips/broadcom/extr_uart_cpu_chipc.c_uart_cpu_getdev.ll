; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_uart_cpu_chipc.c_uart_cpu_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_uart_cpu_chipc.c_uart_cpu_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_devinfo = type { i32 }

@uart_bus_space_io = common dso_local global i32* null, align 8
@mips_bus_space_generic = common dso_local global i32 0, align 4
@uart_bus_space_mem = common dso_local global i32 0, align 4
@chipc_uart_class = common dso_local global i32 0, align 4
@CHIPC_UART_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@UART_DEV_CONSOLE = common dso_local global i32 0, align 4
@UART_DEV_DBGPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@CHIPC_UART_BAUDRATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_getdev(i32 %0, %struct.uart_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_devinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %5, align 8
  store i32* null, i32** @uart_bus_space_io, align 8
  %8 = load i32, i32* @mips_bus_space_generic, align 4
  store i32 %8, i32* @uart_bus_space_mem, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %11 = load i32, i32* @chipc_uart_class, align 4
  %12 = call i64 @uart_getenv(i32 %9, %struct.uart_devinfo* %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %62, %15
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @CHIPC_UART_MAX, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @resource_int_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %62

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @UART_DEV_CONSOLE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @UART_FLAGS_CONSOLE(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %62

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @UART_DEV_DBGPORT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @UART_FLAGS_DBGPORT(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %62

43:                                               ; preds = %38, %34
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @resource_int_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %62

51:                                               ; preds = %47, %43
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @resource_int_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @CHIPC_UART_BAUDRATE, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @uart_cpu_init(%struct.uart_devinfo* %58, i64 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %50, %42, %33, %24
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %16

65:                                               ; preds = %16
  %66 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %67 = load i32, i32* @CHIPC_UART_BAUDRATE, align 4
  %68 = call i32 @uart_cpu_init(%struct.uart_devinfo* %66, i64 0, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %57, %14
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @uart_getenv(i32, %struct.uart_devinfo*, i32) #1

declare dso_local i64 @resource_int_value(i8*, i64, i8*, i32*) #1

declare dso_local i32 @UART_FLAGS_CONSOLE(i32) #1

declare dso_local i32 @UART_FLAGS_DBGPORT(i32) #1

declare dso_local i32 @uart_cpu_init(%struct.uart_devinfo*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
