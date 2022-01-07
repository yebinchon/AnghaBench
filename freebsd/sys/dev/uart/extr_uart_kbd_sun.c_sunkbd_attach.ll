; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.uart_softc*, i32* }
%struct.uart_softc = type { i32, i32, i32*, i32 }

@sunkbd_softc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"keyboard not present\0A\00", align 1
@tty_intr_event = common dso_local global i32 0, align 4
@uart_driver_name = common dso_local global i32 0, align 4
@sunkbd_uart_intr = common dso_local global i32 0, align 4
@SWI_TTY = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sunkbd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunkbd_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sunkbd_softc, i32 0, i32 2), align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @device_printf(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  store %struct.uart_softc* %17, %struct.uart_softc** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sunkbd_softc, i32 0, i32 1), align 8
  %18 = call i32 @sunkbd_enable(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sunkbd_softc, i32 0, i32 0))
  %19 = load i32, i32* @uart_driver_name, align 4
  %20 = load i32, i32* @sunkbd_uart_intr, align 4
  %21 = load i32, i32* @SWI_TTY, align 4
  %22 = load i32, i32* @INTR_TYPE_TTY, align 4
  %23 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 1
  %25 = call i32 @swi_add(i32* @tty_intr_event, i32 %19, i32 %20, %struct.TYPE_3__* @sunkbd_softc, i32 %21, i32 %22, i32* %24)
  %26 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = call i32 @KBD_INIT_DONE(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sunkbd_softc, i32 0, i32 0))
  br label %29

29:                                               ; preds = %16, %11
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %6
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sunkbd_enable(i32*) #1

declare dso_local i32 @swi_add(i32*, i32, i32, %struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i32 @KBD_INIT_DONE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
