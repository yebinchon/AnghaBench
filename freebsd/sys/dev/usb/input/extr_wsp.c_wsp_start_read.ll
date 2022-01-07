; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_start_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_start_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.wsp_softc = type { i32, i32** }

@WSP_INTR_DT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_fifo*)* @wsp_start_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wsp_start_read(%struct.usb_fifo* %0) #0 {
  %2 = alloca %struct.usb_fifo*, align 8
  %3 = alloca %struct.wsp_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %2, align 8
  %5 = load %struct.usb_fifo*, %struct.usb_fifo** %2, align 8
  %6 = call %struct.wsp_softc* @usb_fifo_softc(%struct.usb_fifo* %5)
  store %struct.wsp_softc* %6, %struct.wsp_softc** %3, align 8
  %7 = load %struct.wsp_softc*, %struct.wsp_softc** %3, align 8
  %8 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1000
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1000, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.wsp_softc*, %struct.wsp_softc** %3, align 8
  %18 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* @WSP_INTR_DT, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load %struct.wsp_softc*, %struct.wsp_softc** %3, align 8
  %26 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @WSP_INTR_DT, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usbd_transfer_stop(i32* %30)
  %32 = load %struct.wsp_softc*, %struct.wsp_softc** %3, align 8
  %33 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load i64, i64* @WSP_INTR_DT, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sdiv i32 1000, %38
  %40 = call i32 @usbd_xfer_set_interval(i32* %37, i32 %39)
  %41 = load %struct.wsp_softc*, %struct.wsp_softc** %3, align 8
  %42 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %24, %16, %13
  %44 = load %struct.wsp_softc*, %struct.wsp_softc** %3, align 8
  %45 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* @WSP_INTR_DT, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @usbd_transfer_start(i32* %49)
  ret void
}

declare dso_local %struct.wsp_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @usbd_transfer_stop(i32*) #1

declare dso_local i32 @usbd_xfer_set_interval(i32*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
