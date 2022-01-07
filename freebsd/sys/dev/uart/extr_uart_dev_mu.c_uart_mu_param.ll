; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mu.c_uart_mu_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mu.c_uart_mu_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@AUX_MU_CNTL_REG = common dso_local global i32 0, align 4
@LCR_WLEN7 = common dso_local global i32 0, align 4
@LCR_WLEN8 = common dso_local global i32 0, align 4
@AUX_MU_LCR_REG = common dso_local global i32 0, align 4
@CPU_CLOCK = common dso_local global i32 0, align 4
@AUX_MU_BAUD_REG = common dso_local global i32 0, align 4
@CNTL_RXENAB = common dso_local global i32 0, align 4
@CNTL_TXENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @uart_mu_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_mu_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %14 = load i32, i32* @AUX_MU_CNTL_REG, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @__uart_setreg(%struct.uart_bas* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %23 [
    i32 7, label %18
    i32 6, label %22
    i32 8, label %22
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* @LCR_WLEN7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %11, align 4
  br label %27

22:                                               ; preds = %5, %5
  br label %23

23:                                               ; preds = %5, %22
  %24 = load i32, i32* @LCR_WLEN8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %29 = load i32, i32* @AUX_MU_LCR_REG, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @__uart_setreg(%struct.uart_bas* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i32, i32* @CPU_CLOCK, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 8, %36
  %38 = sdiv i32 %35, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %40 = load i32, i32* @AUX_MU_BAUD_REG, align 4
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, 65535
  %43 = call i32 @__uart_setreg(%struct.uart_bas* %39, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %34, %27
  %45 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %46 = load i32, i32* @AUX_MU_CNTL_REG, align 4
  %47 = load i32, i32* @CNTL_RXENAB, align 4
  %48 = load i32, i32* @CNTL_TXENAB, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @__uart_setreg(%struct.uart_bas* %45, i32 %46, i32 %49)
  ret void
}

declare dso_local i32 @__uart_setreg(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
