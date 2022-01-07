; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_clrint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_clrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@REG_IIR = common dso_local global i32 0, align 4
@IIR_NOPEND = common dso_local global i32 0, align 4
@IIR_IMASK = common dso_local global i32 0, align 4
@IIR_RLS = common dso_local global i32 0, align 4
@REG_LSR = common dso_local global i32 0, align 4
@LSR_BI = common dso_local global i32 0, align 4
@LSR_FE = common dso_local global i32 0, align 4
@LSR_PE = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@IIR_RXRDY = common dso_local global i32 0, align 4
@IIR_RXTOUT = common dso_local global i32 0, align 4
@IIR_MLSC = common dso_local global i32 0, align 4
@REG_MSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*)* @ns8250_clrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns8250_clrint(%struct.uart_bas* %0) #0 {
  %2 = alloca %struct.uart_bas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %2, align 8
  %5 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %6 = load i32, i32* @REG_IIR, align 4
  %7 = call i32 @uart_getreg(%struct.uart_bas* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %59, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IIR_NOPEND, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %8
  %14 = load i32, i32* @IIR_IMASK, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IIR_RLS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %22 = load i32, i32* @REG_LSR, align 4
  %23 = call i32 @uart_getreg(%struct.uart_bas* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @LSR_BI, align 4
  %26 = load i32, i32* @LSR_FE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LSR_PE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %34 = load i32, i32* @REG_DATA, align 4
  %35 = call i32 @uart_getreg(%struct.uart_bas* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %20
  br label %59

37:                                               ; preds = %13
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @IIR_RXRDY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @IIR_RXTOUT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %47 = load i32, i32* @REG_DATA, align 4
  %48 = call i32 @uart_getreg(%struct.uart_bas* %46, i32 %47)
  br label %58

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @IIR_MLSC, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %55 = load i32, i32* @REG_MSR, align 4
  %56 = call i32 @uart_getreg(%struct.uart_bas* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %61 = call i32 @uart_barrier(%struct.uart_bas* %60)
  %62 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %63 = load i32, i32* @REG_IIR, align 4
  %64 = call i32 @uart_getreg(%struct.uart_bas* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %8

65:                                               ; preds = %8
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
