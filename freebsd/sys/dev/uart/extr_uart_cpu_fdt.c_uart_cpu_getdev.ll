; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_fdt.c_uart_cpu_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_fdt.c_uart_cpu_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_class = type { i32 }
%struct.uart_devinfo = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i64 }

@uart_ns8250_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@UART_DEV_CONSOLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@UART_PARITY_NONE = common dso_local global i32 0, align 4
@uart_bus_space_mem = common dso_local global i32 0, align 4
@uart_bus_space_io = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_getdev(i32 %0, %struct.uart_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_devinfo*, align 8
  %6 = alloca %struct.uart_class*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %5, align 8
  store %struct.uart_class* @uart_ns8250_class, %struct.uart_class** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %16 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %17 = call i32 @uart_getenv(i32 %14, %struct.uart_devinfo* %15, %struct.uart_class* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @UART_DEV_CONSOLE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %3, align 4
  br label %76

27:                                               ; preds = %21
  %28 = call i32 @uart_cpu_fdt_probe(%struct.uart_class** %6, i32* %7, i32* %8, i32* %12, i8** %11, i8** %9, i8** %10)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %27
  %34 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %35 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %39 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %43 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %47 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %50 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  %52 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %53 = call i32 @uart_getops(%struct.uart_class* %52)
  %54 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %55 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %57 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %56, i32 0, i32 1
  store i32 8, i32* %57, align 4
  %58 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %59 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* @UART_PARITY_NONE, align 4
  %61 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %62 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %65 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %69 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %72 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* @uart_bus_space_mem, align 4
  store i32* null, i32** @uart_bus_space_io, align 8
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %33, %31, %25, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @uart_getenv(i32, %struct.uart_devinfo*, %struct.uart_class*) #1

declare dso_local i32 @uart_cpu_fdt_probe(%struct.uart_class**, i32*, i32*, i32*, i8**, i8**, i8**) #1

declare dso_local i32 @uart_getops(%struct.uart_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
