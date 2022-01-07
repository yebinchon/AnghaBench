; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_rxready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_rxready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*)* @quicc_rxready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_rxready(%struct.uart_bas* %0) #0 {
  %2 = alloca %struct.uart_bas*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %2, align 8
  %4 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %5 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %6 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sub nsw i64 %7, 1
  %9 = call i32 @QUICC_PRAM_SCC_RBASE(i64 %8)
  %10 = call i32 @quicc_read2(%struct.uart_bas* %4, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @quicc_read2(%struct.uart_bas* %11, i32 %12)
  %14 = and i32 %13, 32768
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  ret i32 %17
}

declare dso_local i32 @quicc_read2(%struct.uart_bas*, i32) #1

declare dso_local i32 @QUICC_PRAM_SCC_RBASE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
