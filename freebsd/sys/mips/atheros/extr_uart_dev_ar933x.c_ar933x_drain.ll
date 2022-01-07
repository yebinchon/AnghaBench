; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UART_DRAIN_TRANSMITTER = common dso_local global i32 0, align 4
@AR933X_UART_CS_REG = common dso_local global i32 0, align 4
@AR933X_UART_CS_TX_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UART_DRAIN_RECEIVER = common dso_local global i32 0, align 4
@AR933X_UART_DATA_REG = common dso_local global i32 0, align 4
@AR933X_UART_DATA_RX_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32)* @ar933x_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar933x_drain(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @UART_DRAIN_TRANSMITTER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  store i32 10240, i32* %6, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %18 = load i32, i32* @AR933X_UART_CS_REG, align 4
  %19 = call i32 @ar933x_getreg(%struct.uart_bas* %17, i32 %18)
  %20 = load i32, i32* @AR933X_UART_CS_TX_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %25

24:                                               ; preds = %16
  br label %12

25:                                               ; preds = %23, %12
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @EIO, align 4
  store i32 %29, i32* %3, align 4
  br label %67

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @UART_DRAIN_RECEIVER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  store i32 40960, i32* %6, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %43 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %44 = call i32 @ar933x_getreg(%struct.uart_bas* %42, i32 %43)
  %45 = load i32, i32* @AR933X_UART_DATA_RX_CSR, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %60

49:                                               ; preds = %41
  %50 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %51 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %52 = call i32 @ar933x_getreg(%struct.uart_bas* %50, i32 %51)
  %53 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %54 = load i32, i32* @AR933X_UART_DATA_REG, align 4
  %55 = load i32, i32* @AR933X_UART_DATA_RX_CSR, align 4
  %56 = call i32 @ar933x_setreg(%struct.uart_bas* %53, i32 %54, i32 %55)
  %57 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %58 = call i32 @uart_barrier(%struct.uart_bas* %57)
  %59 = call i32 @DELAY(i32 2)
  br label %37

60:                                               ; preds = %48, %37
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @EIO, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %31
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63, %28
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ar933x_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @ar933x_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
