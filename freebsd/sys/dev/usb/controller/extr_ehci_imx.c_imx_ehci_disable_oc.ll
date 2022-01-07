; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_imx.c_imx_ehci_disable_oc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_imx.c_imx_ehci_disable_oc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ehci_softc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"fsl,usbmisc\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"failed to retrieve fsl,usbmisc property, cannot disable overcurrent protection\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"usbmisc device not found, cannot disable overcurrent protection\00", align 1
@USBNC_OVER_CUR_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_ehci_softc*)* @imx_ehci_disable_oc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_ehci_disable_oc(%struct.imx_ehci_softc* %0) #0 {
  %2 = alloca %struct.imx_ehci_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imx_ehci_softc* %0, %struct.imx_ehci_softc** %2, align 8
  %8 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %2, align 8
  %9 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ofw_bus_get_node(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %14 = call i32 @OF_getencprop(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %13, i32 8)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %2, align 8
  %20 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  br label %41

23:                                               ; preds = %1
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @OF_device_from_xref(i32 %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.imx_ehci_softc*, %struct.imx_ehci_softc** %2, align 8
  %31 = getelementptr inbounds %struct.imx_ehci_softc, %struct.imx_ehci_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %41

34:                                               ; preds = %23
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @USBNC_OVER_CUR_DIS, align 4
  %40 = call i32 @imx_usbmisc_set_ctrl(i32* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %29, %18
  ret void
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32 @imx_usbmisc_set_ctrl(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
