; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_aju_ac_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_aju_ac_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag_uart_softc = type { i32*, i64*, i32, %struct.tty* }
%struct.tty = type { i32 }

@ALTERA_JTAG_UART_CONTROL_AC = common dso_local global i32 0, align 4
@aju_jtag_appeared = common dso_local global i32 0, align 4
@AJU_JTAG_MAXMISS = common dso_local global i64 0, align 8
@aju_jtag_vanished = common dso_local global i32 0, align 4
@AJU_AC_POLLINTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aju_ac_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aju_ac_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.altera_jtag_uart_softc*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.altera_jtag_uart_softc*
  store %struct.altera_jtag_uart_softc* %7, %struct.altera_jtag_uart_softc** %3, align 8
  %8 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %8, i32 0, i32 3
  %10 = load %struct.tty*, %struct.tty** %9, align 8
  store %struct.tty* %10, %struct.tty** %4, align 8
  %11 = load %struct.tty*, %struct.tty** %4, align 8
  %12 = call i32 @tty_lock(%struct.tty* %11)
  %13 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %14 = call i32 @AJU_LOCK(%struct.altera_jtag_uart_softc* %13)
  %15 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %16 = call i32 @aju_control_read(%struct.altera_jtag_uart_softc* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_AC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %1
  %22 = load i32, i32* @ALTERA_JTAG_UART_CONTROL_AC, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @aju_control_write(%struct.altera_jtag_uart_softc* %26, i32 %27)
  %29 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %30 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %36 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32 1, i32* %37, align 4
  %38 = call i32 @atomic_add_int(i32* @aju_jtag_appeared, i32 1)
  %39 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %40 = load %struct.tty*, %struct.tty** %4, align 8
  %41 = call i32 @aju_handle_output(%struct.altera_jtag_uart_softc* %39, %struct.tty* %40)
  br label %42

42:                                               ; preds = %34, %21
  %43 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %44 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  store i64 0, i64* %45, align 8
  br label %75

46:                                               ; preds = %1
  %47 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %48 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %54 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AJU_JTAG_MAXMISS, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %61 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32 0, i32* %62, align 4
  %63 = call i32 @atomic_add_int(i32* @aju_jtag_vanished, i32 1)
  %64 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %65 = load %struct.tty*, %struct.tty** %4, align 8
  %66 = call i32 @aju_handle_output(%struct.altera_jtag_uart_softc* %64, %struct.tty* %65)
  br label %73

67:                                               ; preds = %52
  %68 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %69 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %67, %59
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %42
  %76 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %77 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %76, i32 0, i32 2
  %78 = load i32, i32* @AJU_AC_POLLINTERVAL, align 4
  %79 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %80 = call i32 @callout_reset(i32* %77, i32 %78, void (i8*)* @aju_ac_callout, %struct.altera_jtag_uart_softc* %79)
  %81 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %82 = call i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc* %81)
  %83 = load %struct.tty*, %struct.tty** %4, align 8
  %84 = call i32 @tty_unlock(%struct.tty* %83)
  ret void
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @AJU_LOCK(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @aju_control_read(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @aju_control_write(%struct.altera_jtag_uart_softc*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @aju_handle_output(%struct.altera_jtag_uart_softc*, %struct.tty*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
