; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_miibus_read_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_miibus_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32 }

@GMII_ADDRESS_PA_MASK = common dso_local global i32 0, align 4
@GMII_ADDRESS_PA_SHIFT = common dso_local global i32 0, align 4
@GMII_ADDRESS_GR_MASK = common dso_local global i32 0, align 4
@GMII_ADDRESS_GR_SHIFT = common dso_local global i32 0, align 4
@GMII_ADDRESS_CR_SHIFT = common dso_local global i32 0, align 4
@GMII_ADDRESS_GB = common dso_local global i32 0, align 4
@GMII_ADDRESS = common dso_local global i32 0, align 4
@GMII_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @dwc_miibus_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_miibus_read_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.dwc_softc* @device_get_softc(i32 %11)
  store %struct.dwc_softc* %12, %struct.dwc_softc** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GMII_ADDRESS_PA_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @GMII_ADDRESS_PA_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GMII_ADDRESS_GR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @GMII_ADDRESS_GR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %17, %22
  %24 = load %struct.dwc_softc*, %struct.dwc_softc** %7, align 8
  %25 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GMII_ADDRESS_CR_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %23, %28
  %30 = load i32, i32* @GMII_ADDRESS_GB, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.dwc_softc*, %struct.dwc_softc** %7, align 8
  %33 = load i32, i32* @GMII_ADDRESS, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @WRITE4(%struct.dwc_softc* %32, i32 %33, i32 %34)
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %52, %3
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %37, 1000
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.dwc_softc*, %struct.dwc_softc** %7, align 8
  %41 = load i32, i32* @GMII_ADDRESS, align 4
  %42 = call i32 @READ4(%struct.dwc_softc* %40, i32 %41)
  %43 = load i32, i32* @GMII_ADDRESS_GB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load %struct.dwc_softc*, %struct.dwc_softc** %7, align 8
  %48 = load i32, i32* @GMII_DATA, align 4
  %49 = call i32 @READ4(%struct.dwc_softc* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %55

50:                                               ; preds = %39
  %51 = call i32 @DELAY(i32 10)
  br label %52

52:                                               ; preds = %50
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %36

55:                                               ; preds = %46, %36
  %56 = load i32, i32* %10, align 4
  ret i32 %56
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
