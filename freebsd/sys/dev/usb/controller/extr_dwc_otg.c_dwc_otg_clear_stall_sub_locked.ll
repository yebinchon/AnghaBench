; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_clear_stall_sub_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_clear_stall_sub_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32*, i32* }

@UE_CONTROL = common dso_local global i64 0, align 8
@UE_BULK = common dso_local global i64 0, align 8
@DIEPCTL_EPTYPE_BULK = common dso_local global i32 0, align 4
@DIEPCTL_USBACTEP = common dso_local global i32 0, align 4
@UE_INTERRUPT = common dso_local global i64 0, align 8
@DIEPCTL_EPTYPE_INTERRUPT = common dso_local global i32 0, align 4
@DIEPCTL_EPTYPE_ISOC = common dso_local global i32 0, align 4
@DOEPCTL_EPDIS = common dso_local global i32 0, align 4
@DOEPCTL_SETD0PID = common dso_local global i32 0, align 4
@DIEPCTL_SNAK = common dso_local global i32 0, align 4
@GRSTCTL_TXFFLSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*, i32, i64, i64, i64)* @dwc_otg_clear_stall_sub_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_clear_stall_sub_locked(%struct.dwc_otg_softc* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dwc_otg_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @UE_CONTROL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %122

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @DOTG_DIEPCTL(i64 %21)
  store i32 %22, i32* %11, align 4
  br label %33

23:                                               ; preds = %17
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @DOTG_DOEPCTL(i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %30 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 3
  %36 = and i32 %35, 2044
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @UE_BULK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* @DIEPCTL_EPTYPE_BULK, align 4
  %42 = call i32 @DIEPCTL_EPTYPE_SET(i32 %41)
  %43 = load i32, i32* @DIEPCTL_USBACTEP, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %12, align 4
  br label %60

45:                                               ; preds = %33
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @UE_INTERRUPT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @DIEPCTL_EPTYPE_INTERRUPT, align 4
  %51 = call i32 @DIEPCTL_EPTYPE_SET(i32 %50)
  %52 = load i32, i32* @DIEPCTL_USBACTEP, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %12, align 4
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @DIEPCTL_EPTYPE_ISOC, align 4
  %56 = call i32 @DIEPCTL_EPTYPE_SET(i32 %55)
  %57 = load i32, i32* @DIEPCTL_USBACTEP, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @DIEPCTL_MPS_SET(i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @DIEPCTL_TXFNUM_SET(i64 %65)
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %74 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %72, i32* %77, align 4
  br label %85

78:                                               ; preds = %60
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %81 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %71
  %86 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @DOEPCTL_EPDIS, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %86, i32 %87, i32 %90)
  %92 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @DOEPCTL_SETD0PID, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %92, i32 %93, i32 %96)
  %98 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @DIEPCTL_SNAK, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %98, i32 %99, i32 %102)
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %85
  %107 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @GRSTCTL_TXFIFO(i64 %108)
  %110 = load i32, i32* @GRSTCTL_TXFFLSH, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @dwc_otg_tx_fifo_reset(%struct.dwc_otg_softc* %107, i32 %111)
  %113 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @DOTG_DIEPTSIZ(i64 %114)
  %116 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %113, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %106, %85
  %118 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %119 = call i32 @dwc_otg_interrupt_poll_locked(%struct.dwc_otg_softc* %118)
  %120 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %6, align 8
  %121 = call i32 @dwc_otg_interrupt_complete_locked(%struct.dwc_otg_softc* %120)
  br label %122

122:                                              ; preds = %117, %16
  ret void
}

declare dso_local i32 @DOTG_DIEPCTL(i64) #1

declare dso_local i32 @DOTG_DOEPCTL(i64) #1

declare dso_local i32 @DIEPCTL_EPTYPE_SET(i32) #1

declare dso_local i32 @DIEPCTL_MPS_SET(i32) #1

declare dso_local i32 @DIEPCTL_TXFNUM_SET(i64) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @dwc_otg_tx_fifo_reset(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @GRSTCTL_TXFIFO(i64) #1

declare dso_local i32 @DOTG_DIEPTSIZ(i64) #1

declare dso_local i32 @dwc_otg_interrupt_poll_locked(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_interrupt_complete_locked(%struct.dwc_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
