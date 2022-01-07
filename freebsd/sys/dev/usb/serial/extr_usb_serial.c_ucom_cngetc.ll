; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cngetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cngetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ucom_softc*)* }
%struct.consdev = type { i32 }

@ucom_cons_softc = common dso_local global %struct.ucom_softc* null, align 8
@ucom_cons_rx_low = common dso_local global i64 0, align 8
@ucom_cons_rx_high = common dso_local global i64 0, align 8
@ucom_cons_rx_buf = common dso_local global i32* null, align 8
@UCOM_CONS_BUFSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.consdev*)* @ucom_cngetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucom_cngetc(%struct.consdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** @ucom_cons_softc, align 8
  store %struct.ucom_softc* %6, %struct.ucom_softc** %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %8 = icmp eq %struct.ucom_softc* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %12 = call i32 @UCOM_MTX_LOCK(%struct.ucom_softc* %11)
  %13 = load i64, i64* @ucom_cons_rx_low, align 8
  %14 = load i64, i64* @ucom_cons_rx_high, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load i32*, i32** @ucom_cons_rx_buf, align 8
  %18 = load i64, i64* @ucom_cons_rx_low, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* @ucom_cons_rx_low, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* @ucom_cons_rx_low, align 8
  %23 = load i64, i64* @UCOM_CONS_BUFSIZE, align 8
  %24 = load i64, i64* @ucom_cons_rx_low, align 8
  %25 = urem i64 %24, %23
  store i64 %25, i64* @ucom_cons_rx_low, align 8
  br label %27

26:                                               ; preds = %10
  store i32 -1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ucom_outwakeup(i32 %30)
  %32 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %33 = call i32 @UCOM_MTX_UNLOCK(%struct.ucom_softc* %32)
  %34 = call i64 (...) @USB_IN_POLLING_MODE_FUNC()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %40, align 8
  %42 = icmp ne i32 (%struct.ucom_softc*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %47, align 8
  %49 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %50 = call i32 %48(%struct.ucom_softc* %49)
  br label %51

51:                                               ; preds = %43, %36, %27
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @UCOM_MTX_LOCK(%struct.ucom_softc*) #1

declare dso_local i32 @ucom_outwakeup(i32) #1

declare dso_local i32 @UCOM_MTX_UNLOCK(%struct.ucom_softc*) #1

declare dso_local i64 @USB_IN_POLLING_MODE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
