; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty* }
%struct.tty = type { i32 }
%struct.consdev = type { i32 }

@uart_tty_class = common dso_local global i32 0, align 4
@UART_DEV_CONSOLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ttyu%r\00", align 1
@tty_intr_event = common dso_local global i32 0, align 4
@uart_driver_name = common dso_local global i32 0, align 4
@uart_tty_intr = common dso_local global i32 0, align 4
@SWI_TTY = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"u%r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_tty_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = call %struct.tty* @tty_alloc(i32* @uart_tty_class, %struct.uart_softc* %5)
  store %struct.tty* %6, %struct.tty** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.tty* %6, %struct.tty** %10, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @device_get_unit(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UART_DEV_CONSOLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %29 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.consdev*
  %34 = getelementptr inbounds %struct.consdev, %struct.consdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sprintf(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.tty*, %struct.tty** %3, align 8
  %39 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @tty_init_console(%struct.tty* %38, i32 %43)
  br label %45

45:                                               ; preds = %27, %19, %1
  %46 = load i32, i32* @uart_driver_name, align 4
  %47 = load i32, i32* @uart_tty_intr, align 4
  %48 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %49 = load i32, i32* @SWI_TTY, align 4
  %50 = load i32, i32* @INTR_TYPE_TTY, align 4
  %51 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 0
  %53 = call i32 @swi_add(i32* @tty_intr_event, i32 %46, i32 %47, %struct.uart_softc* %48, i32 %49, i32 %50, i32* %52)
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @tty_makedev(%struct.tty* %54, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  ret i32 0
}

declare dso_local %struct.tty* @tty_alloc(i32*, %struct.uart_softc*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @tty_init_console(%struct.tty*, i32) #1

declare dso_local i32 @swi_add(i32*, i32, i32, %struct.uart_softc*, i32, i32, i32*) #1

declare dso_local i32 @tty_makedev(%struct.tty*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
