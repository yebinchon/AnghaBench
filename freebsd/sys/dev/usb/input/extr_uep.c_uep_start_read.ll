; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uep.c_uep_start_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uep.c_uep_start_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uep_softc = type { i32, i32** }

@UEP_INTR_DT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_fifo*)* @uep_start_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uep_start_read(%struct.usb_fifo* %0) #0 {
  %2 = alloca %struct.usb_fifo*, align 8
  %3 = alloca %struct.uep_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %2, align 8
  %5 = load %struct.usb_fifo*, %struct.usb_fifo** %2, align 8
  %6 = call %struct.uep_softc* @usb_fifo_softc(%struct.usb_fifo* %5)
  store %struct.uep_softc* %6, %struct.uep_softc** %3, align 8
  %7 = load %struct.uep_softc*, %struct.uep_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1000
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1000, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.uep_softc*, %struct.uep_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load i64, i64* @UEP_INTR_DT, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %15
  %24 = load %struct.uep_softc*, %struct.uep_softc** %3, align 8
  %25 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* @UEP_INTR_DT, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @usbd_transfer_stop(i32* %29)
  %31 = load %struct.uep_softc*, %struct.uep_softc** %3, align 8
  %32 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* @UEP_INTR_DT, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sdiv i32 1000, %37
  %39 = call i32 @usbd_xfer_set_interval(i32* %36, i32 %38)
  %40 = load %struct.uep_softc*, %struct.uep_softc** %3, align 8
  %41 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %23, %15, %12
  %43 = load %struct.uep_softc*, %struct.uep_softc** %3, align 8
  %44 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* @UEP_INTR_DT, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @usbd_transfer_start(i32* %48)
  ret void
}

declare dso_local %struct.uep_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @usbd_transfer_stop(i32*) #1

declare dso_local i32 @usbd_xfer_set_interval(i32*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
