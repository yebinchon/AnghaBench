; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_clrint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_clrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@REG_IIR = common dso_local global i32 0, align 4
@IIR_NOPEND = common dso_local global i32 0, align 4
@IIR_IMASK = common dso_local global i32 0, align 4
@IIR_RLS = common dso_local global i32 0, align 4
@REG_LSR = common dso_local global i32 0, align 4
@IIR_RXRDY = common dso_local global i32 0, align 4
@IIR_RXTOUT = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@IIR_MLSC = common dso_local global i32 0, align 4
@REG_MSR = common dso_local global i32 0, align 4
@IIR_BUSY = common dso_local global i32 0, align 4
@REG_USR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*)* @oct16550_clrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oct16550_clrint(%struct.uart_bas* %0) #0 {
  %2 = alloca %struct.uart_bas*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %2, align 8
  %4 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %5 = load i32, i32* @REG_IIR, align 4
  %6 = call i32 @uart_getreg(%struct.uart_bas* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %54, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IIR_NOPEND, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %7
  %13 = load i32, i32* @IIR_IMASK, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IIR_RLS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %21 = load i32, i32* @REG_LSR, align 4
  %22 = call i32 @uart_getreg(%struct.uart_bas* %20, i32 %21)
  br label %54

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IIR_RXRDY, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IIR_RXTOUT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %33 = load i32, i32* @REG_DATA, align 4
  %34 = call i32 @uart_getreg(%struct.uart_bas* %32, i32 %33)
  br label %53

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @IIR_MLSC, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %41 = load i32, i32* @REG_MSR, align 4
  %42 = call i32 @uart_getreg(%struct.uart_bas* %40, i32 %41)
  br label %52

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @IIR_BUSY, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %49 = load i32, i32* @REG_USR, align 4
  %50 = call i32 @uart_getreg(%struct.uart_bas* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %19
  %55 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %56 = call i32 @uart_barrier(%struct.uart_bas* %55)
  %57 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %58 = load i32, i32* @REG_IIR, align 4
  %59 = call i32 @uart_getreg(%struct.uart_bas* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %7

60:                                               ; preds = %7
  ret void
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
