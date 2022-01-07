; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cnputc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cnputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ucom_softc*)* }
%struct.consdev = type { i32 }

@ucom_cons_softc = common dso_local global %struct.ucom_softc* null, align 8
@UCOM_CONS_BUFSIZE = common dso_local global i32 0, align 4
@ucom_cons_tx_high = common dso_local global i64 0, align 8
@ucom_cons_tx_low = common dso_local global i32 0, align 4
@ucom_cons_tx_buf = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*, i32)* @ucom_cnputc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_cnputc(%struct.consdev* %0, i32 %1) #0 {
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucom_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** @ucom_cons_softc, align 8
  store %struct.ucom_softc* %7, %struct.ucom_softc** %5, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %9 = icmp eq %struct.ucom_softc* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %68

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %66, %11
  %13 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %14 = call i32 @UCOM_MTX_LOCK(%struct.ucom_softc* %13)
  %15 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @ucom_cons_tx_high, align 8
  %19 = sub i64 %17, %18
  %20 = load i32, i32* @ucom_cons_tx_low, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = urem i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %12
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** @ucom_cons_tx_buf, align 8
  %32 = load i64, i64* @ucom_cons_tx_high, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i64, i64* @ucom_cons_tx_high, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* @ucom_cons_tx_high, align 8
  %36 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @ucom_cons_tx_high, align 8
  %39 = urem i64 %38, %37
  store i64 %39, i64* @ucom_cons_tx_high, align 8
  br label %40

40:                                               ; preds = %29, %12
  %41 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ucom_outwakeup(i32 %43)
  %45 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %46 = call i32 @UCOM_MTX_UNLOCK(%struct.ucom_softc* %45)
  %47 = call i64 (...) @USB_IN_POLLING_MODE_FUNC()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %40
  %50 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %51 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %53, align 8
  %55 = icmp ne i32 (%struct.ucom_softc*)* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %58 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %60, align 8
  %62 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %63 = call i32 %61(%struct.ucom_softc* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %12

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %10, %67, %49, %40
  ret void
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
