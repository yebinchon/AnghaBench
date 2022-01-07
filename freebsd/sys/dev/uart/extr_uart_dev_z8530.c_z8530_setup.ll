; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64, i32 }

@DEFAULT_RCLK = common dso_local global i64 0, align 8
@WR_MIC = common dso_local global i32 0, align 4
@MIC_NV = common dso_local global i32 0, align 4
@MIC_CRA = common dso_local global i32 0, align 4
@MIC_CRB = common dso_local global i32 0, align 4
@WR_CMC = common dso_local global i32 0, align 4
@CMC_RC_BRG = common dso_local global i32 0, align 4
@CMC_TC_BRG = common dso_local global i32 0, align 4
@WR_MCB2 = common dso_local global i32 0, align 4
@UART_PCLK = common dso_local global i32 0, align 4
@WR_MCB1 = common dso_local global i32 0, align 4
@MCB1_NRZ = common dso_local global i32 0, align 4
@TPC_DTR = common dso_local global i32 0, align 4
@TPC_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @z8530_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_setup(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %13 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i64, i64* @DEFAULT_RCLK, align 8
  %18 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %19 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %5
  %21 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %22 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %38 [
    i32 1, label %24
    i32 2, label %31
  ]

24:                                               ; preds = %20
  %25 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %26 = load i32, i32* @WR_MIC, align 4
  %27 = load i32, i32* @MIC_NV, align 4
  %28 = load i32, i32* @MIC_CRA, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @uart_setmreg(%struct.uart_bas* %25, i32 %26, i32 %29)
  br label %38

31:                                               ; preds = %20
  %32 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %33 = load i32, i32* @WR_MIC, align 4
  %34 = load i32, i32* @MIC_NV, align 4
  %35 = load i32, i32* @MIC_CRB, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @uart_setmreg(%struct.uart_bas* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %20, %31, %24
  %39 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %40 = call i32 @uart_barrier(%struct.uart_bas* %39)
  %41 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %42 = load i32, i32* @WR_CMC, align 4
  %43 = load i32, i32* @CMC_RC_BRG, align 4
  %44 = load i32, i32* @CMC_TC_BRG, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @uart_setmreg(%struct.uart_bas* %41, i32 %42, i32 %45)
  %47 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %48 = load i32, i32* @WR_MCB2, align 4
  %49 = load i32, i32* @UART_PCLK, align 4
  %50 = call i32 @uart_setmreg(%struct.uart_bas* %47, i32 %48, i32 %49)
  %51 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %52 = call i32 @uart_barrier(%struct.uart_bas* %51)
  %53 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %54 = load i32, i32* @WR_MCB1, align 4
  %55 = load i32, i32* @MCB1_NRZ, align 4
  %56 = call i32 @uart_setmreg(%struct.uart_bas* %53, i32 %54, i32 %55)
  %57 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %58 = call i32 @uart_barrier(%struct.uart_bas* %57)
  %59 = load i32, i32* @TPC_DTR, align 4
  %60 = load i32, i32* @TPC_RTS, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @z8530_param(%struct.uart_bas* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32* %11)
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @uart_setmreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @z8530_param(%struct.uart_bas*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
