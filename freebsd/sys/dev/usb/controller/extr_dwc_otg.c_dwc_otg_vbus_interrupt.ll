; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_vbus_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_vbus_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"vbus = %u\0A\00", align 1
@DWC_MODE_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*, i64)* @dwc_otg_vbus_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_vbus_interrupt(%struct.dwc_otg_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %11 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DWC_MODE_HOST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9, %2
  %16 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %17 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %23 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %26 = call i32 @dwc_otg_root_intr(%struct.dwc_otg_softc* %25)
  br label %27

27:                                               ; preds = %21, %15
  br label %53

28:                                               ; preds = %9
  %29 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %30 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %36 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %39 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %42 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %45 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %48 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %51 = call i32 @dwc_otg_root_intr(%struct.dwc_otg_softc* %50)
  br label %52

52:                                               ; preds = %34, %28
  br label %53

53:                                               ; preds = %52, %27
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i64) #1

declare dso_local i32 @dwc_otg_root_intr(%struct.dwc_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
