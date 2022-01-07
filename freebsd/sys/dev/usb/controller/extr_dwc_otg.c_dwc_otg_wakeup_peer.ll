; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_wakeup_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_wakeup_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Remote wakeup\0A\00", align 1
@DOTG_DCTL = common dso_local global i32 0, align 4
@DCTL_RMTWKUPSIG = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@DOTG_PCGCCTL = common dso_local global i32 0, align 4
@HPRT_PRTRES = common dso_local global i32 0, align 4
@DOTG_HPRT = common dso_local global i32 0, align 4
@HPRT_PRTSUSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*)* @dwc_otg_wakeup_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_wakeup_peer(%struct.dwc_otg_softc* %0) #0 {
  %2 = alloca %struct.dwc_otg_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %2, align 8
  %4 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %5 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %92

10:                                               ; preds = %1
  %11 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %13 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %19 = load i32, i32* @DOTG_DCTL, align 4
  %20 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @DCTL_RMTWKUPSIG, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %25 = load i32, i32* @DOTG_DCTL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* @hz, align 4
  %32 = sdiv i32 %31, 125
  %33 = call i32 @usb_pause_mtx(i32* %30, i32 %32)
  %34 = load i32, i32* @DCTL_RMTWKUPSIG, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %39 = load i32, i32* @DOTG_DCTL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %38, i32 %39, i32 %40)
  br label %89

42:                                               ; preds = %10
  %43 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %44 = load i32, i32* @DOTG_PCGCCTL, align 4
  %45 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %43, i32 %44, i32 0)
  %46 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %47 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* @hz, align 4
  %50 = sdiv i32 %49, 100
  %51 = call i32 @usb_pause_mtx(i32* %48, i32 %50)
  %52 = load i32, i32* @HPRT_PRTRES, align 4
  %53 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %54 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %58 = load i32, i32* @DOTG_HPRT, align 4
  %59 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %60 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %57, i32 %58, i32 %61)
  %63 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %64 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* @hz, align 4
  %67 = sdiv i32 %66, 10
  %68 = call i32 @usb_pause_mtx(i32* %65, i32 %67)
  %69 = load i32, i32* @HPRT_PRTSUSP, align 4
  %70 = load i32, i32* @HPRT_PRTRES, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %74 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %78 = load i32, i32* @DOTG_HPRT, align 4
  %79 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %80 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %77, i32 %78, i32 %81)
  %83 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %84 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* @hz, align 4
  %87 = sdiv i32 %86, 250
  %88 = call i32 @usb_pause_mtx(i32* %85, i32 %87)
  br label %89

89:                                               ; preds = %42, %17
  %90 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %91 = call i32 @dwc_otg_resume_irq(%struct.dwc_otg_softc* %90)
  br label %92

92:                                               ; preds = %89, %9
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @dwc_otg_resume_irq(%struct.dwc_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
