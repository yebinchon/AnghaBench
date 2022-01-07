; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_alloc_rx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_alloc_rx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_usb_softc = type { i32, i32*, i32, i32 }

@RTWN_USB_RX_LIST_COUNT = common dso_local global i32 0, align 4
@RTWN_USB_RXBUFSZ_UNIT = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*)* @rtwn_usb_alloc_rx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_usb_alloc_rx_list(%struct.rtwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.rtwn_usb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %8 = call %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc* %7)
  store %struct.rtwn_usb_softc* %8, %struct.rtwn_usb_softc** %4, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %11 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @RTWN_USB_RX_LIST_COUNT, align 4
  %14 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %15 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RTWN_USB_RXBUFSZ_UNIT, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call i32 @rtwn_usb_alloc_list(%struct.rtwn_softc* %9, i32* %12, i32 %13, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %26 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %25, i32 0, i32 3
  %27 = call i32 @STAILQ_INIT(i32* %26)
  %28 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %28, i32 0, i32 2
  %30 = call i32 @STAILQ_INIT(i32* %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %46, %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RTWN_USB_RX_LIST_COUNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %37 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %36, i32 0, i32 2
  %38 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %39 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* @next, align 4
  %45 = call i32 @STAILQ_INSERT_HEAD(i32* %37, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %31

49:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_usb_alloc_list(%struct.rtwn_softc*, i32*, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
