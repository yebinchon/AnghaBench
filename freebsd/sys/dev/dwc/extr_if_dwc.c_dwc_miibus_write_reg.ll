; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_miibus_write_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_miibus_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32 }

@GMII_ADDRESS_PA_MASK = common dso_local global i32 0, align 4
@GMII_ADDRESS_PA_SHIFT = common dso_local global i32 0, align 4
@GMII_ADDRESS_GR_MASK = common dso_local global i32 0, align 4
@GMII_ADDRESS_GR_SHIFT = common dso_local global i32 0, align 4
@GMII_ADDRESS_CR_SHIFT = common dso_local global i32 0, align 4
@GMII_ADDRESS_GB = common dso_local global i32 0, align 4
@GMII_ADDRESS_GW = common dso_local global i32 0, align 4
@GMII_DATA = common dso_local global i32 0, align 4
@GMII_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @dwc_miibus_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_miibus_write_reg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dwc_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.dwc_softc* @device_get_softc(i32 %12)
  store %struct.dwc_softc* %13, %struct.dwc_softc** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GMII_ADDRESS_PA_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @GMII_ADDRESS_PA_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GMII_ADDRESS_GR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @GMII_ADDRESS_GR_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %18, %23
  %25 = load %struct.dwc_softc*, %struct.dwc_softc** %9, align 8
  %26 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GMII_ADDRESS_CR_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %24, %29
  %31 = load i32, i32* @GMII_ADDRESS_GB, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GMII_ADDRESS_GW, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.dwc_softc*, %struct.dwc_softc** %9, align 8
  %36 = load i32, i32* @GMII_DATA, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @WRITE4(%struct.dwc_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.dwc_softc*, %struct.dwc_softc** %9, align 8
  %40 = load i32, i32* @GMII_ADDRESS, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @WRITE4(%struct.dwc_softc* %39, i32 %40, i32 %41)
  store i64 0, i64* %11, align 8
  br label %43

43:                                               ; preds = %56, %4
  %44 = load i64, i64* %11, align 8
  %45 = icmp ult i64 %44, 1000
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.dwc_softc*, %struct.dwc_softc** %9, align 8
  %48 = load i32, i32* @GMII_ADDRESS, align 4
  %49 = call i32 @READ4(%struct.dwc_softc* %47, i32 %48)
  %50 = load i32, i32* @GMII_ADDRESS_GB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %59

54:                                               ; preds = %46
  %55 = call i32 @DELAY(i32 10)
  br label %56

56:                                               ; preds = %54
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %43

59:                                               ; preds = %53, %43
  ret i32 0
}

declare dso_local %struct.dwc_softc* @device_get_softc(i32) #1

declare dso_local i32 @WRITE4(%struct.dwc_softc*, i32, i32) #1

declare dso_local i32 @READ4(%struct.dwc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
