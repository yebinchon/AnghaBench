; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_pci_take_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_pci_take_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@capa = common dso_local global i32 0, align 4
@XHCI_HCSPARAMS0 = common dso_local global i32 0, align 4
@XHCI_ID_USB_LEGACY = common dso_local global i64 0, align 8
@XHCI_XECP_BIOS_SEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"waiting for BIOS to give up control\0A\00", align 1
@XHCI_XECP_OS_SEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"timed out waiting for BIOS\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xhci_pci_take_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_pci_take_controller(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.xhci_softc* @device_get_softc(i32 %9)
  store %struct.xhci_softc* %10, %struct.xhci_softc** %3, align 8
  %11 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %12 = load i32, i32* @capa, align 4
  %13 = load i32, i32* @XHCI_HCSPARAMS0, align 4
  %14 = call i32 @XREAD4(%struct.xhci_softc* %11, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @XHCI_HCS0_XECP(i32 %15)
  %17 = shl i32 %16, 2
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %87, %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @XHCI_XECP_NEXT(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %93

27:                                               ; preds = %25
  %28 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %29 = load i32, i32* @capa, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @XREAD4(%struct.xhci_softc* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @XHCI_XECP_ID(i32 %32)
  %34 = load i64, i64* @XHCI_ID_USB_LEGACY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %87

37:                                               ; preds = %27
  %38 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %39 = load i32, i32* @capa, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @XHCI_XECP_BIOS_SEM, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @XREAD1(%struct.xhci_softc* %38, i32 %39, i64 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %87

48:                                               ; preds = %37
  %49 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %50 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %55 = load i32, i32* @capa, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @XHCI_XECP_OS_SEM, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @XWRITE1(%struct.xhci_softc* %54, i32 %55, i64 %59, i32 1)
  store i32 500, i32* %7, align 4
  br label %61

61:                                               ; preds = %48, %82
  %62 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %63 = load i32, i32* @capa, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @XHCI_XECP_BIOS_SEM, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i64 @XREAD1(%struct.xhci_softc* %62, i32 %63, i64 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %86

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %78 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @hz, align 4
  %84 = sdiv i32 %83, 100
  %85 = call i32 @usb_pause_mtx(i32* null, i32 %84)
  br label %61

86:                                               ; preds = %76, %71
  br label %87

87:                                               ; preds = %86, %47, %36
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @XHCI_XECP_NEXT(i32 %88)
  %90 = shl i32 %89, 2
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %18

93:                                               ; preds = %25
  ret i32 0
}

declare dso_local %struct.xhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @XREAD4(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @XHCI_HCS0_XECP(i32) #1

declare dso_local i32 @XHCI_XECP_NEXT(i32) #1

declare dso_local i64 @XHCI_XECP_ID(i32) #1

declare dso_local i64 @XREAD1(%struct.xhci_softc*, i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @XWRITE1(%struct.xhci_softc*, i32, i64, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
