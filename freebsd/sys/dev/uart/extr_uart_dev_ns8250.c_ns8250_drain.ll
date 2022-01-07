; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UART_DRAIN_TRANSMITTER = common dso_local global i32 0, align 4
@REG_LSR = common dso_local global i32 0, align 4
@LSR_TEMT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UART_DRAIN_RECEIVER = common dso_local global i32 0, align 4
@LSR_RXRDY = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32)* @ns8250_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns8250_drain(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %9 = call i32 @ns8250_delay(%struct.uart_bas* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @UART_DRAIN_TRANSMITTER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  store i32 10240, i32* %7, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %17 = load i32, i32* @REG_LSR, align 4
  %18 = call i32 @uart_getreg(%struct.uart_bas* %16, i32 %17)
  %19 = load i32, i32* @LSR_TEMT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i1 [ false, %15 ], [ %25, %22 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @DELAY(i32 %29)
  br label %15

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @EIO, align 4
  store i32 %35, i32* %3, align 4
  br label %72

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UART_DRAIN_RECEIVER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  store i32 40960, i32* %7, align 4
  br label %43

43:                                               ; preds = %56, %42
  %44 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %45 = load i32, i32* @REG_LSR, align 4
  %46 = call i32 @uart_getreg(%struct.uart_bas* %44, i32 %45)
  %47 = load i32, i32* @LSR_RXRDY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %50, %43
  %55 = phi i1 [ false, %43 ], [ %53, %50 ]
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %58 = load i32, i32* @REG_DATA, align 4
  %59 = call i32 @uart_getreg(%struct.uart_bas* %57, i32 %58)
  %60 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %61 = call i32 @uart_barrier(%struct.uart_bas* %60)
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 2
  %64 = call i32 @DELAY(i32 %63)
  br label %43

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @EIO, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %37
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %34
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ns8250_delay(%struct.uart_bas*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
