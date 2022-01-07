; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_phy_wait_i2c_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_phy_wait_i2c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32 }

@HDMI_IH_I2CMPHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_I2CMPHY_STAT0_DONE = common dso_local global i32 0, align 4
@HDMI_IH_I2CMPHY_STAT0_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"HDMI_PHY\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*, i32)* @dwc_hdmi_phy_wait_i2c_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_phy_wait_i2c_done(%struct.dwc_hdmi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc_hdmi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %7 = load i32, i32* @HDMI_IH_I2CMPHY_STAT0, align 4
  %8 = call i32 @RD1(%struct.dwc_hdmi_softc* %6, i32 %7)
  %9 = load i32, i32* @HDMI_IH_I2CMPHY_STAT0_DONE, align 4
  %10 = load i32, i32* @HDMI_IH_I2CMPHY_STAT0_ERROR, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %25, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, i32* @hz, align 4
  %18 = sdiv i32 %17, 100
  %19 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 10
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %33

25:                                               ; preds = %16
  %26 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %27 = load i32, i32* @HDMI_IH_I2CMPHY_STAT0, align 4
  %28 = call i32 @RD1(%struct.dwc_hdmi_softc* %26, i32 %27)
  %29 = load i32, i32* @HDMI_IH_I2CMPHY_STAT0_DONE, align 4
  %30 = load i32, i32* @HDMI_IH_I2CMPHY_STAT0_ERROR, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  store i32 %32, i32* %5, align 4
  br label %13

33:                                               ; preds = %24, %13
  ret void
}

declare dso_local i32 @RD1(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
