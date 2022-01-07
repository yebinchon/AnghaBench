; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_cninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_cninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { %struct.uart_devinfo* }
%struct.uart_devinfo = type { i32, %struct.consdev* }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@UART_DEV_CONSOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @uart_cninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_cninit(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca %struct.uart_devinfo*, align 8
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %4 = load %struct.consdev*, %struct.consdev** %2, align 8
  %5 = getelementptr inbounds %struct.consdev, %struct.consdev* %4, i32 0, i32 0
  %6 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  store %struct.uart_devinfo* %6, %struct.uart_devinfo** %3, align 8
  %7 = load %struct.uart_devinfo*, %struct.uart_devinfo** %3, align 8
  %8 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %7, i32 0, i32 1
  %9 = load %struct.consdev*, %struct.consdev** %8, align 8
  %10 = icmp eq %struct.consdev* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.consdev*, %struct.consdev** %2, align 8
  %14 = load %struct.uart_devinfo*, %struct.uart_devinfo** %3, align 8
  %15 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %14, i32 0, i32 1
  store %struct.consdev* %13, %struct.consdev** %15, align 8
  %16 = load i32, i32* @UART_DEV_CONSOLE, align 4
  %17 = load %struct.uart_devinfo*, %struct.uart_devinfo** %3, align 8
  %18 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.uart_devinfo*, %struct.uart_devinfo** %3, align 8
  %20 = call i32 @uart_add_sysdev(%struct.uart_devinfo* %19)
  %21 = load %struct.uart_devinfo*, %struct.uart_devinfo** %3, align 8
  %22 = call i32 @uart_init(%struct.uart_devinfo* %21)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @uart_add_sysdev(%struct.uart_devinfo*) #1

declare dso_local i32 @uart_init(%struct.uart_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
