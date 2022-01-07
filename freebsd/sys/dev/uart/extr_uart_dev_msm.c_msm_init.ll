; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64 }

@DEF_CLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"msm_init: Invalid rclk\00", align 1
@UART_DM_MR1 = common dso_local global i32 0, align 4
@UART_DM_IMR = common dso_local global i32 0, align 4
@UART_DM_TFWR = common dso_local global i32 0, align 4
@UART_DM_TFW_VALUE = common dso_local global i32 0, align 4
@UART_DM_RFWR = common dso_local global i32 0, align 4
@UART_DM_RFW_VALUE = common dso_local global i32 0, align 4
@UART_DM_IPR = common dso_local global i32 0, align 4
@UART_DM_STALE_TIMEOUT_LSB = common dso_local global i32 0, align 4
@UART_DM_IRDA = common dso_local global i32 0, align 4
@UART_DM_HCR = common dso_local global i32 0, align 4
@UART_DM_CR = common dso_local global i32 0, align 4
@UART_DM_RESET_TX = common dso_local global i32 0, align 4
@UART_DM_RESET_RX = common dso_local global i32 0, align 4
@UART_DM_RESET_ERROR_STATUS = common dso_local global i32 0, align 4
@UART_DM_RESET_BREAK_INT = common dso_local global i32 0, align 4
@UART_DM_RESET_STALE_INT = common dso_local global i32 0, align 4
@UART_DM_DMEN = common dso_local global i32 0, align 4
@UART_DM_DMEN_RX_SC_ENABLE = common dso_local global i32 0, align 4
@UART_DM_CR_RX_ENABLE = common dso_local global i32 0, align 4
@UART_DM_CR_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @msm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %12 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i64, i64* @DEF_CLK, align 8
  %17 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %18 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %5
  %20 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %21 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @msm_uart_param(%struct.uart_bas* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %33 = load i32, i32* @UART_DM_MR1, align 4
  %34 = call i32 @uart_setreg(%struct.uart_bas* %32, i32 %33, i32 0)
  %35 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %36 = load i32, i32* @UART_DM_IMR, align 4
  %37 = call i32 @uart_setreg(%struct.uart_bas* %35, i32 %36, i32 0)
  %38 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %39 = load i32, i32* @UART_DM_TFWR, align 4
  %40 = load i32, i32* @UART_DM_TFW_VALUE, align 4
  %41 = call i32 @uart_setreg(%struct.uart_bas* %38, i32 %39, i32 %40)
  %42 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %43 = load i32, i32* @UART_DM_RFWR, align 4
  %44 = load i32, i32* @UART_DM_RFW_VALUE, align 4
  %45 = call i32 @uart_setreg(%struct.uart_bas* %42, i32 %43, i32 %44)
  %46 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %47 = load i32, i32* @UART_DM_IPR, align 4
  %48 = load i32, i32* @UART_DM_STALE_TIMEOUT_LSB, align 4
  %49 = call i32 @uart_setreg(%struct.uart_bas* %46, i32 %47, i32 %48)
  %50 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %51 = load i32, i32* @UART_DM_IRDA, align 4
  %52 = call i32 @uart_setreg(%struct.uart_bas* %50, i32 %51, i32 0)
  %53 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %54 = load i32, i32* @UART_DM_HCR, align 4
  %55 = call i32 @uart_setreg(%struct.uart_bas* %53, i32 %54, i32 0)
  %56 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %57 = load i32, i32* @UART_DM_CR, align 4
  %58 = load i32, i32* @UART_DM_RESET_TX, align 4
  %59 = call i32 @SETREG(%struct.uart_bas* %56, i32 %57, i32 %58)
  %60 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %61 = load i32, i32* @UART_DM_CR, align 4
  %62 = load i32, i32* @UART_DM_RESET_RX, align 4
  %63 = call i32 @SETREG(%struct.uart_bas* %60, i32 %61, i32 %62)
  %64 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %65 = load i32, i32* @UART_DM_CR, align 4
  %66 = load i32, i32* @UART_DM_RESET_ERROR_STATUS, align 4
  %67 = call i32 @SETREG(%struct.uart_bas* %64, i32 %65, i32 %66)
  %68 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %69 = load i32, i32* @UART_DM_CR, align 4
  %70 = load i32, i32* @UART_DM_RESET_BREAK_INT, align 4
  %71 = call i32 @SETREG(%struct.uart_bas* %68, i32 %69, i32 %70)
  %72 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %73 = load i32, i32* @UART_DM_CR, align 4
  %74 = load i32, i32* @UART_DM_RESET_STALE_INT, align 4
  %75 = call i32 @SETREG(%struct.uart_bas* %72, i32 %73, i32 %74)
  %76 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %77 = load i32, i32* @UART_DM_DMEN, align 4
  %78 = load i32, i32* @UART_DM_DMEN_RX_SC_ENABLE, align 4
  %79 = call i32 @uart_setreg(%struct.uart_bas* %76, i32 %77, i32 %78)
  %80 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %81 = load i32, i32* @UART_DM_CR, align 4
  %82 = load i32, i32* @UART_DM_CR_RX_ENABLE, align 4
  %83 = call i32 @uart_setreg(%struct.uart_bas* %80, i32 %81, i32 %82)
  %84 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %85 = load i32, i32* @UART_DM_CR, align 4
  %86 = load i32, i32* @UART_DM_CR_TX_ENABLE, align 4
  %87 = call i32 @uart_setreg(%struct.uart_bas* %84, i32 %85, i32 %86)
  %88 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %89 = call i32 @uart_barrier(%struct.uart_bas* %88)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @msm_uart_param(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
