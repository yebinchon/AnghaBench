; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_ttyoutwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_ttyoutwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.uart_opal_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @uart_opal_ttyoutwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_opal_ttyoutwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.uart_opal_softc*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %6 = load %struct.tty*, %struct.tty** %2, align 8
  %7 = call %struct.uart_opal_softc* @tty_softc(%struct.tty* %6)
  store %struct.uart_opal_softc* %7, %struct.uart_opal_softc** %3, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.tty*, %struct.tty** %2, align 8
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %11 = call i32 @ttydisc_getc(%struct.tty* %9, i8* %10, i32 8)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @uart_opal_put(%struct.uart_opal_softc* %14, i8* %15, i32 %16)
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local %struct.uart_opal_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @ttydisc_getc(%struct.tty*, i8*, i32) #1

declare dso_local i32 @uart_opal_put(%struct.uart_opal_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
