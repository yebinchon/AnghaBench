; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snps_dwc3_softc = type { i64, i64 }

@DWC3_GCTL = common dso_local global i32 0, align 4
@DWC3_GCTL_CORESOFTRESET = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG0 = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG0_PHYSOFTRST = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL0 = common dso_local global i32 0, align 4
@DWC3_GUSB3PIPECTL0_PHYSOFTRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snps_dwc3_softc*)* @snps_dwc3_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snps_dwc3_reset(%struct.snps_dwc3_softc* %0) #0 {
  %2 = alloca %struct.snps_dwc3_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snps_dwc3_softc* %0, %struct.snps_dwc3_softc** %2, align 8
  %6 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %7 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %12 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @phy_enable(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %17 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %22 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @phy_enable(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %27 = load i32, i32* @DWC3_GCTL, align 4
  %28 = call i32 @DWC3_READ(%struct.snps_dwc3_softc* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @DWC3_GCTL_CORESOFTRESET, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %33 = load i32, i32* @DWC3_GCTL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %37 = load i32, i32* @DWC3_GUSB2PHYCFG0, align 4
  %38 = call i32 @DWC3_READ(%struct.snps_dwc3_softc* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @DWC3_GUSB2PHYCFG0_PHYSOFTRST, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %43 = load i32, i32* @DWC3_GUSB2PHYCFG0, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %47 = load i32, i32* @DWC3_GUSB3PIPECTL0, align 4
  %48 = call i32 @DWC3_READ(%struct.snps_dwc3_softc* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @DWC3_GUSB3PIPECTL0_PHYSOFTRST, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %53 = load i32, i32* @DWC3_GUSB3PIPECTL0, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %52, i32 %53, i32 %54)
  %56 = call i32 @DELAY(i32 1000)
  %57 = load i32, i32* @DWC3_GUSB2PHYCFG0_PHYSOFTRST, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %62 = load i32, i32* @DWC3_GUSB2PHYCFG0, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @DWC3_GUSB3PIPECTL0_PHYSOFTRST, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %70 = load i32, i32* @DWC3_GUSB3PIPECTL0, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @DWC3_GCTL_CORESOFTRESET, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %78 = load i32, i32* @DWC3_GCTL, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %77, i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @phy_enable(i64) #1

declare dso_local i32 @DWC3_READ(%struct.snps_dwc3_softc*, i32) #1

declare dso_local i32 @DWC3_WRITE(%struct.snps_dwc3_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
