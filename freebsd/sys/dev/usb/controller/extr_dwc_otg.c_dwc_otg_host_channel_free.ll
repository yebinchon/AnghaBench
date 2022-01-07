; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_channel_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_channel_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32 }
%struct.dwc_otg_td = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_host_channel_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_host_channel_free(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca %struct.dwc_otg_td*, align 8
  %5 = alloca i64, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %3, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %4, align 8
  %9 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %14 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @dwc_otg_host_channel_free_sub(%struct.dwc_otg_softc* %13, %struct.dwc_otg_td* %14, i64 %15)
  br label %17

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dwc_otg_host_channel_free_sub(%struct.dwc_otg_softc*, %struct.dwc_otg_td*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
