; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_cons.c_aju_cons_readable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_cons.c_aju_cons_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aju_cons_buffer_valid = common dso_local global i32 0, align 4
@ALTERA_JTAG_UART_DATA_RVALID = common dso_local global i32 0, align 4
@ALTERA_JTAG_UART_DATA_DATA = common dso_local global i32 0, align 4
@aju_cons_buffer_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @aju_cons_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aju_cons_readable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @AJU_CONSOLE_LOCK_ASSERT()
  %4 = load i32, i32* @aju_cons_buffer_valid, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %18

7:                                                ; preds = %0
  %8 = call i32 (...) @aju_cons_data_read()
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @ALTERA_JTAG_UART_DATA_RVALID, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  store i32 1, i32* @aju_cons_buffer_valid, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @ALTERA_JTAG_UART_DATA_DATA, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* @aju_cons_buffer_data, align 4
  store i32 1, i32* %1, align 4
  br label %18

17:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %13, %6
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @AJU_CONSOLE_LOCK_ASSERT(...) #1

declare dso_local i32 @aju_cons_data_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
