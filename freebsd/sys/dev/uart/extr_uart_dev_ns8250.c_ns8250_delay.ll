; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@REG_LCR = common dso_local global i32 0, align 4
@LCR_DLAB = common dso_local global i32 0, align 4
@REG_DLL = common dso_local global i32 0, align 4
@REG_DLH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*)* @ns8250_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns8250_delay(%struct.uart_bas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  %6 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %7 = load i32, i32* @REG_LCR, align 4
  %8 = call i32 @uart_getreg(%struct.uart_bas* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %10 = load i32, i32* @REG_LCR, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LCR_DLAB, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @uart_setreg(%struct.uart_bas* %9, i32 %10, i32 %13)
  %15 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %16 = call i32 @uart_barrier(%struct.uart_bas* %15)
  %17 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %18 = load i32, i32* @REG_DLL, align 4
  %19 = call i32 @uart_getreg(%struct.uart_bas* %17, i32 %18)
  %20 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %21 = load i32, i32* @REG_DLH, align 4
  %22 = call i32 @uart_getreg(%struct.uart_bas* %20, i32 %21)
  %23 = shl i32 %22, 8
  %24 = or i32 %19, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %26 = call i32 @uart_barrier(%struct.uart_bas* %25)
  %27 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %28 = load i32, i32* @REG_LCR, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @uart_setreg(%struct.uart_bas* %27, i32 %28, i32 %29)
  %31 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %32 = call i32 @uart_barrier(%struct.uart_bas* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp sle i32 %33, 134
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 16000000, %36
  %38 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %39 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 16000, %43
  %45 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %46 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 1000
  %49 = sdiv i32 %44, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %35
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
