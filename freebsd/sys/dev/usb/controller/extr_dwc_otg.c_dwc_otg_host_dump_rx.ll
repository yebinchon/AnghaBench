; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_dump_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_dump_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i64 }
%struct.dwc_otg_td = type { i64, i64* }

@DWC_OTG_MAX_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_host_dump_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_host_dump_rx(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca %struct.dwc_otg_td*, align 8
  %5 = alloca i64, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %3, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %4, align 8
  %6 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %7 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %43, %11
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %4, align 8
  %15 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %4, align 8
  %20 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DWC_OTG_MAX_CHANNELS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %18
  %28 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %4, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %35 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @GRXSTSRD_CHNUM_GET(i64 %36)
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27, %18
  br label %43

40:                                               ; preds = %27
  %41 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %42 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %41)
  br label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %12

46:                                               ; preds = %10, %40, %12
  ret void
}

declare dso_local i64 @GRXSTSRD_CHNUM_GET(i64) #1

declare dso_local i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
