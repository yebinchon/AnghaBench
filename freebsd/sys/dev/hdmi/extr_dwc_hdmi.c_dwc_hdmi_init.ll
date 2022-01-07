; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.dwc_hdmi_softc*, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"HDMI controller %02x:%02x:%02x:%02x\0A\00", align 1
@HDMI_DESIGN_ID = common dso_local global i32 0, align 4
@HDMI_REVISION_ID = common dso_local global i32 0, align 4
@HDMI_PRODUCT_ID0 = common dso_local global i32 0, align 4
@HDMI_PRODUCT_ID1 = common dso_local global i32 0, align 4
@HDMI_PHY_POL0 = common dso_local global i32 0, align 4
@HDMI_PHY_POL0_HPD = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_HPD = common dso_local global i32 0, align 4
@dwc_hdmi_detect_cable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc_hdmi_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc_hdmi_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.dwc_hdmi_softc* @device_get_softc(i32 %5)
  store %struct.dwc_hdmi_softc* %6, %struct.dwc_hdmi_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @EDID_LENGTH, align 4
  %8 = load i32, i32* @M_DEVBUF, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i32* @malloc(i32 %7, i32 %8, i32 %11)
  %13 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load i32, i32* @EDID_LENGTH, align 4
  %16 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %22 = load i32, i32* @HDMI_DESIGN_ID, align 4
  %23 = call i32 @RD1(%struct.dwc_hdmi_softc* %21, i32 %22)
  %24 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %25 = load i32, i32* @HDMI_REVISION_ID, align 4
  %26 = call i32 @RD1(%struct.dwc_hdmi_softc* %24, i32 %25)
  %27 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %28 = load i32, i32* @HDMI_PRODUCT_ID0, align 4
  %29 = call i32 @RD1(%struct.dwc_hdmi_softc* %27, i32 %28)
  %30 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %31 = load i32, i32* @HDMI_PRODUCT_ID1, align 4
  %32 = call i32 @RD1(%struct.dwc_hdmi_softc* %30, i32 %31)
  %33 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %35 = load i32, i32* @HDMI_PHY_POL0, align 4
  %36 = load i32, i32* @HDMI_PHY_POL0_HPD, align 4
  %37 = call i32 @WR1(%struct.dwc_hdmi_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %39 = load i32, i32* @HDMI_IH_PHY_STAT0, align 4
  %40 = load i32, i32* @HDMI_IH_PHY_STAT0_HPD, align 4
  %41 = call i32 @WR1(%struct.dwc_hdmi_softc* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @dwc_hdmi_detect_cable, align 4
  %43 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %47 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %48 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.dwc_hdmi_softc* %46, %struct.dwc_hdmi_softc** %49, align 8
  %50 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %51 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %50, i32 0, i32 1
  %52 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %1
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %56, %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %62 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @M_DEVBUF, align 4
  %65 = call i32 @free(i32* %63, i32 %64)
  %66 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %67 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %60, %57
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.dwc_hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @RD1(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
