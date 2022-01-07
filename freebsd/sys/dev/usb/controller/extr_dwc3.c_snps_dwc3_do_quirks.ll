; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_do_quirks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_do_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snps_dwc3_softc = type { i32 }

@DWC3_GUSB2PHYCFG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"snps,dis-u2-freeclk-exists-quirk\00", align 1
@DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"snps,dis_u2_susphy_quirk\00", align 1
@DWC3_GUSB2PHYCFG0_SUSPENDUSB20 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"snps,dis_enblslpm_quirk\00", align 1
@DWC3_GUSB2PHYCFG0_ENBLSLPM = common dso_local global i32 0, align 4
@DWC3_GUCTL1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"snps,dis-tx-ipgap-linecheck-quirk\00", align 1
@DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"snps,dis-del-phy-power-chg-quirk\00", align 1
@DWC3_GUSB3PIPECTL0 = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL0_DELAYP1TRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snps_dwc3_softc*)* @snps_dwc3_do_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snps_dwc3_do_quirks(%struct.snps_dwc3_softc* %0) #0 {
  %2 = alloca %struct.snps_dwc3_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.snps_dwc3_softc* %0, %struct.snps_dwc3_softc** %2, align 8
  %4 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %5 = load i32, i32* @DWC3_GUSB2PHYCFG0, align 4
  %6 = call i32 @DWC3_READ(%struct.snps_dwc3_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %8 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @OF_hasprop(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %23 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @OF_hasprop(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* @DWC3_GUSB2PHYCFG0_SUSPENDUSB20, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @DWC3_GUSB2PHYCFG0_SUSPENDUSB20, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %38 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @OF_hasprop(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @DWC3_GUSB2PHYCFG0_ENBLSLPM, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %36
  %48 = load i32, i32* @DWC3_GUSB2PHYCFG0_ENBLSLPM, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %53 = load i32, i32* @DWC3_GUSB2PHYCFG0, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %57 = load i32, i32* @DWC3_GUCTL1, align 4
  %58 = call i32 @DWC3_READ(%struct.snps_dwc3_softc* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %60 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @OF_hasprop(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load i32, i32* @DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %51
  %69 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %70 = load i32, i32* @DWC3_GUCTL1, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %74 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @OF_hasprop(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %68
  %79 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %80 = load i32, i32* @DWC3_GUSB3PIPECTL0, align 4
  %81 = call i32 @DWC3_READ(%struct.snps_dwc3_softc* %79, i32 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @DWC3_GUSB3PIPECTL0_DELAYP1TRANS, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %86 = load i32, i32* @DWC3_GUSB3PIPECTL0, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %78, %68
  ret void
}

declare dso_local i32 @DWC3_READ(%struct.snps_dwc3_softc*, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @DWC3_WRITE(%struct.snps_dwc3_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
