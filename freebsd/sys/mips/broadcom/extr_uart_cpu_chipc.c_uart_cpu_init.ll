; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_uart_cpu_chipc.c_uart_cpu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_uart_cpu_chipc.c_uart_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_devinfo = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i64 }

@CHIPC_UART_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@chipc_uart_class = common dso_local global i32 0, align 4
@uart_bus_space_mem = common dso_local global i32 0, align 4
@cc_addr = common dso_local global i32 0, align 4
@UART_PARITY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_devinfo*, i64, i32)* @uart_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_cpu_init(%struct.uart_devinfo* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.uart_devinfo* %0, %struct.uart_devinfo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @CHIPC_UART_MAX, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %4, align 4
  br label %51

13:                                               ; preds = %3
  %14 = load i32, i32* @chipc_uart_class, align 4
  %15 = call i32 @uart_getops(i32 %14)
  %16 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %17 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %19 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @uart_bus_space_mem, align 4
  %22 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %23 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = call i32 (...) @bcm_get_platform()
  %26 = load i32, i32* @cc_addr, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @CHIPC_UART(i64 %27)
  %29 = call i64 @BCM_CORE_ADDR(i32 %25, i32 %26, i32 %28)
  %30 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %31 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i64 %29, i64* %32, align 8
  %33 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %34 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = call i32 (...) @bcm_get_platform()
  %37 = call i32 @bcm_get_uart_rclk(i32 %36)
  %38 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %39 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %43 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %45 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %44, i32 0, i32 1
  store i32 8, i32* %45, align 4
  %46 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %47 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @UART_PARITY_NONE, align 4
  %49 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %50 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %13, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @uart_getops(i32) #1

declare dso_local i64 @BCM_CORE_ADDR(i32, i32, i32) #1

declare dso_local i32 @bcm_get_platform(...) #1

declare dso_local i32 @CHIPC_UART(i64) #1

declare dso_local i32 @bcm_get_uart_rclk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
