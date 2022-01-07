; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_cons.c_aju_cons_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_cons.c_aju_cons_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALTERA_JTAG_UART_CONTROL_AC = common dso_local global i32 0, align 4
@aju_cons_jtag_present = common dso_local global i32 0, align 4
@aju_cons_jtag_missed = common dso_local global i64 0, align 8
@ALTERA_JTAG_UART_CONTROL_WSPACE = common dso_local global i32 0, align 4
@altera_jtag_uart_ac_poll_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @aju_cons_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aju_cons_write(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = call i32 (...) @AJU_CONSOLE_LOCK_ASSERT()
  %5 = call i32 (...) @aju_cons_control_read()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_AC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  store i32 1, i32* @aju_cons_jtag_present, align 4
  store i64 0, i64* @aju_cons_jtag_missed, align 8
  %11 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_AC, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @aju_cons_control_write(i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_WSPACE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i32, i32* @aju_cons_jtag_present, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %47

27:                                               ; preds = %23
  %28 = load i32, i32* @altera_jtag_uart_ac_poll_delay, align 4
  %29 = call i32 @DELAY(i32 %28)
  %30 = call i32 (...) @aju_cons_control_read()
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_AC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  store i32 1, i32* @aju_cons_jtag_present, align 4
  %36 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_AC, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @aju_cons_control_write(i32 %40)
  br label %43

42:                                               ; preds = %27
  store i32 0, i32* @aju_cons_jtag_present, align 4
  br label %43

43:                                               ; preds = %42, %35
  br label %18

44:                                               ; preds = %18
  %45 = load i8, i8* %2, align 1
  %46 = call i32 @aju_cons_data_write(i8 signext %45)
  br label %47

47:                                               ; preds = %44, %26
  ret void
}

declare dso_local i32 @AJU_CONSOLE_LOCK_ASSERT(...) #1

declare dso_local i32 @aju_cons_control_read(...) #1

declare dso_local i32 @aju_cons_control_write(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @aju_cons_data_write(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
