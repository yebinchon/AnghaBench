; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_halt_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_halt_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@capa = common dso_local global i32 0, align 4
@XHCI_CAPLENGTH = common dso_local global i32 0, align 4
@XHCI_RTSOFF = common dso_local global i32 0, align 4
@XHCI_DBOFF = common dso_local global i32 0, align 4
@oper = common dso_local global i32 0, align 4
@XHCI_USBCMD = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@XHCI_USBSTS = common dso_local global i32 0, align 4
@XHCI_STS_HCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Controller halt timeout.\0A\00", align 1
@USB_ERR_IOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_halt_controller(%struct.xhci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xhci_softc* %0, %struct.xhci_softc** %3, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %10 = load i32, i32* @capa, align 4
  %11 = load i32, i32* @XHCI_CAPLENGTH, align 4
  %12 = call i32 @XREAD1(%struct.xhci_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %14 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %16 = load i32, i32* @capa, align 4
  %17 = load i32, i32* @XHCI_RTSOFF, align 4
  %18 = call i32 @XREAD4(%struct.xhci_softc* %15, i32 %16, i32 %17)
  %19 = and i32 %18, -16
  %20 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %23 = load i32, i32* @capa, align 4
  %24 = load i32, i32* @XHCI_DBOFF, align 4
  %25 = call i32 @XREAD4(%struct.xhci_softc* %22, i32 %23, i32 %24)
  %26 = and i32 %25, -4
  %27 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %28 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %30 = load i32, i32* @oper, align 4
  %31 = load i32, i32* @XHCI_USBCMD, align 4
  %32 = call i32 @XWRITE4(%struct.xhci_softc* %29, i32 %30, i32 %31, i32 0)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %50, %1
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 100
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32, i32* @hz, align 4
  %38 = sdiv i32 %37, 100
  %39 = call i32 @usb_pause_mtx(i32* null, i32 %38)
  %40 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %41 = load i32, i32* @oper, align 4
  %42 = load i32, i32* @XHCI_USBSTS, align 4
  %43 = call i32 @XREAD4(%struct.xhci_softc* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @XHCI_STS_HCH, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %33

53:                                               ; preds = %48, %33
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %58 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @XREAD1(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @XREAD4(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @XWRITE4(%struct.xhci_softc*, i32, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
