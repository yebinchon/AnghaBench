; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_reset_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_reset_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@oper = common dso_local global i32 0, align 4
@XHCI_USBCMD = common dso_local global i32 0, align 4
@XHCI_CMD_HCRST = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@XHCI_USBSTS = common dso_local global i32 0, align 4
@XHCI_STS_CNR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Controller reset timeout.\0A\00", align 1
@USB_ERR_IOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_reset_controller(%struct.xhci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xhci_softc* %0, %struct.xhci_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %8 = load i32, i32* @oper, align 4
  %9 = load i32, i32* @XHCI_USBCMD, align 4
  %10 = load i32, i32* @XHCI_CMD_HCRST, align 4
  %11 = call i32 @XWRITE4(%struct.xhci_softc* %7, i32 %8, i32 %9, i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 100
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i32, i32* @hz, align 4
  %17 = sdiv i32 %16, 100
  %18 = call i32 @usb_pause_mtx(i32* null, i32 %17)
  %19 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %20 = load i32, i32* @oper, align 4
  %21 = load i32, i32* @XHCI_USBCMD, align 4
  %22 = call i32 @XREAD4(%struct.xhci_softc* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @XHCI_CMD_HCRST, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %26 = load i32, i32* @oper, align 4
  %27 = load i32, i32* @XHCI_USBSTS, align 4
  %28 = call i32 @XREAD4(%struct.xhci_softc* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @XHCI_STS_CNR, align 4
  %30 = and i32 %28, %29
  %31 = or i32 %24, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %15
  br label %39

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %12

39:                                               ; preds = %34, %12
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %44 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @XWRITE4(%struct.xhci_softc*, i32, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @XREAD4(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
