; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64, i64 }

@DEFAULT_RCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @quicc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quicc_setup(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %16 = load i64, i64* @DEFAULT_RCLK, align 8
  %17 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %18 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %5
  %20 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @quicc_param(%struct.uart_bas* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %27 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %28 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @QUICC_REG_SCC_SCCE(i64 %30)
  %32 = call i32 @quicc_write2(%struct.uart_bas* %26, i32 %31, i32 -1)
  %33 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %34 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %35 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @QUICC_REG_SCC_SCCM(i64 %37)
  %39 = call i32 @quicc_write2(%struct.uart_bas* %33, i32 %38, i32 39)
  ret void
}

declare dso_local i32 @quicc_param(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @quicc_write2(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @QUICC_REG_SCC_SCCE(i64) #1

declare dso_local i32 @QUICC_REG_SCC_SCCM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
