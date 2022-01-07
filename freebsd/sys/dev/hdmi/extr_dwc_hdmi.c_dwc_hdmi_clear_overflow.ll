; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_clear_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_clear_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32 }

@HDMI_MC_SWRSTZ = common dso_local global i32 0, align 4
@HDMI_MC_SWRSTZ_TMDSSWRST_REQ = common dso_local global i64 0, align 8
@HDMI_FC_INVIDCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*)* @dwc_hdmi_clear_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_clear_overflow(%struct.dwc_hdmi_softc* %0) #0 {
  %2 = alloca %struct.dwc_hdmi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %2, align 8
  %5 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %6 = load i32, i32* @HDMI_MC_SWRSTZ, align 4
  %7 = load i64, i64* @HDMI_MC_SWRSTZ_TMDSSWRST_REQ, align 8
  %8 = xor i64 %7, -1
  %9 = trunc i64 %8 to i32
  %10 = call i32 @WR1(%struct.dwc_hdmi_softc* %5, i32 %6, i32 %9)
  %11 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %12 = load i32, i32* @HDMI_FC_INVIDCONF, align 4
  %13 = call i32 @RD1(%struct.dwc_hdmi_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %22, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %19 = load i32, i32* @HDMI_FC_INVIDCONF, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @WR1(%struct.dwc_hdmi_softc* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %14

25:                                               ; preds = %14
  ret void
}

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

declare dso_local i32 @RD1(%struct.dwc_hdmi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
