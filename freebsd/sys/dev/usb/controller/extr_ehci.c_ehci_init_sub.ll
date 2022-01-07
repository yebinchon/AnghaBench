; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_init_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_init_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_page_search = type { i32 }

@EHCI_HCCPARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cparams=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"HCC uses 64-bit structures\0A\00", align 1
@EHCI_CTRLDSSEGMENT = common dso_local global i32 0, align 4
@EHCI_PERIODICLISTBASE = common dso_local global i32 0, align 4
@EHCI_ASYNCLISTADDR = common dso_local global i32 0, align 4
@EHCI_LINK_QH = common dso_local global i32 0, align 4
@EHCI_USBINTR = common dso_local global i32 0, align 4
@EHCI_USBCMD = common dso_local global i32 0, align 4
@EHCI_CMD_ITC_1 = common dso_local global i32 0, align 4
@EHCI_CMD_FLS_M = common dso_local global i32 0, align 4
@EHCI_CMD_ASE = common dso_local global i32 0, align 4
@EHCI_CMD_PSE = common dso_local global i32 0, align 4
@EHCI_CMD_RS = common dso_local global i32 0, align 4
@EHCI_CONFIGFLAG = common dso_local global i32 0, align 4
@EHCI_CONF_CF = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EHCI_USBSTS = common dso_local global i32 0, align 4
@EHCI_STS_HCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"run timeout\0A\00", align 1
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_softc*)* @ehci_init_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_init_sub(%struct.ehci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehci_softc*, align 8
  %4 = alloca %struct.usb_page_search, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ehci_softc* %0, %struct.ehci_softc** %3, align 8
  %8 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %9 = load i32, i32* @EHCI_HCCPARAMS, align 4
  %10 = call i32 @EREAD4(%struct.ehci_softc* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @EHCI_HCC_64BIT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %19 = load i32, i32* @EHCI_CTRLDSSEGMENT, align 4
  %20 = call i32 @EOWRITE4(%struct.ehci_softc* %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ehci_softc, %struct.ehci_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @usbd_get_page(i32* %24, i32 0, %struct.usb_page_search* %4)
  %26 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %27 = load i32, i32* @EHCI_PERIODICLISTBASE, align 4
  %28 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @EOWRITE4(%struct.ehci_softc* %26, i32 %27, i32 %29)
  %31 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ehci_softc, %struct.ehci_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @usbd_get_page(i32* %33, i32 0, %struct.usb_page_search* %4)
  %35 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %36 = load i32, i32* @EHCI_ASYNCLISTADDR, align 4
  %37 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EHCI_LINK_QH, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @EOWRITE4(%struct.ehci_softc* %35, i32 %36, i32 %40)
  %42 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %43 = load i32, i32* @EHCI_USBINTR, align 4
  %44 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ehci_softc, %struct.ehci_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @EOWRITE4(%struct.ehci_softc* %42, i32 %43, i32 %46)
  %48 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %49 = load i32, i32* @EHCI_USBCMD, align 4
  %50 = load i32, i32* @EHCI_CMD_ITC_1, align 4
  %51 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %52 = load i32, i32* @EHCI_USBCMD, align 4
  %53 = call i32 @EOREAD4(%struct.ehci_softc* %51, i32 %52)
  %54 = load i32, i32* @EHCI_CMD_FLS_M, align 4
  %55 = and i32 %53, %54
  %56 = or i32 %50, %55
  %57 = load i32, i32* @EHCI_CMD_ASE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @EHCI_CMD_PSE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EHCI_CMD_RS, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @EOWRITE4(%struct.ehci_softc* %48, i32 %49, i32 %62)
  %64 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %65 = load i32, i32* @EHCI_CONFIGFLAG, align 4
  %66 = load i32, i32* @EHCI_CONF_CF, align 4
  %67 = call i32 @EOWRITE4(%struct.ehci_softc* %64, i32 %65, i32 %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %84, %21
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 100
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32, i32* @hz, align 4
  %73 = sdiv i32 %72, 128
  %74 = call i32 @usb_pause_mtx(i32* null, i32 %73)
  %75 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %76 = load i32, i32* @EHCI_USBSTS, align 4
  %77 = call i32 @EOREAD4(%struct.ehci_softc* %75, i32 %76)
  %78 = load i32, i32* @EHCI_STS_HCH, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %71
  br label %87

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %68

87:                                               ; preds = %82, %68
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ehci_softc, %struct.ehci_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %90
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @EREAD4(%struct.ehci_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @EHCI_HCC_64BIT(i32) #1

declare dso_local i32 @EOWRITE4(%struct.ehci_softc*, i32, i32) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @EOREAD4(%struct.ehci_softc*, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
