; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_opal_softc = type { i32, i32, i32*, %struct.tty* }
%struct.tty = type { i32 }

@OPAL_POLL_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @uart_opal_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_opal_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_opal_softc*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.uart_opal_softc*
  store %struct.uart_opal_softc* %7, %struct.uart_opal_softc** %3, align 8
  %8 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %8, i32 0, i32 3
  %10 = load %struct.tty*, %struct.tty** %9, align 8
  store %struct.tty* %10, %struct.tty** %4, align 8
  %11 = load %struct.tty*, %struct.tty** %4, align 8
  %12 = call i32 @tty_lock(%struct.tty* %11)
  br label %13

13:                                               ; preds = %17, %1
  %14 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %15 = call i32 @uart_opal_getc(%struct.uart_opal_softc* %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.tty*, %struct.tty** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ttydisc_rint(%struct.tty* %18, i32 %19, i32 0)
  br label %13

21:                                               ; preds = %13
  %22 = load %struct.tty*, %struct.tty** %4, align 8
  %23 = call i32 @ttydisc_rint_done(%struct.tty* %22)
  %24 = load %struct.tty*, %struct.tty** %4, align 8
  %25 = call i32 @tty_unlock(%struct.tty* %24)
  %26 = load i32, i32* @OPAL_POLL_EVENTS, align 4
  %27 = call i32 @opal_call(i32 %26, i32* null)
  %28 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %29 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %34 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %33, i32 0, i32 1
  %35 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %36 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %39 = call i32 @callout_reset(i32* %34, i32 %37, void (i8*)* @uart_opal_intr, %struct.uart_opal_softc* %38)
  br label %40

40:                                               ; preds = %32, %21
  ret void
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @uart_opal_getc(%struct.uart_opal_softc*) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @opal_call(i32, i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.uart_opal_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
