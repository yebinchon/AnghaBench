; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@MAC_CONFIGURATION = common dso_local global i32 0, align 4
@CONF_FES = common dso_local global i32 0, align 4
@CONF_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported media %u\0A\00", align 1
@IFM_FDX = common dso_local global i32 0, align 4
@CONF_DM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dwc_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.dwc_softc* @device_get_softc(i32 %6)
  store %struct.dwc_softc* %7, %struct.dwc_softc** %3, align 8
  %8 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %9 = call i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc* %8)
  %10 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %10, i32 0, i32 1
  %12 = load %struct.mii_data*, %struct.mii_data** %11, align 8
  store %struct.mii_data* %12, %struct.mii_data** %4, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %14 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFM_ACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %27 = load i32, i32* @MAC_CONFIGURATION, align 4
  %28 = call i32 @READ4(%struct.dwc_softc* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %30 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IFM_SUBTYPE(i32 %31)
  switch i32 %32, label %57 [
    i32 131, label %33
    i32 132, label %33
    i32 130, label %40
    i32 129, label %46
    i32 128, label %54
  ]

33:                                               ; preds = %25, %25
  %34 = load i32, i32* @CONF_FES, align 4
  %35 = load i32, i32* @CONF_PS, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %66

40:                                               ; preds = %25
  %41 = load i32, i32* @CONF_FES, align 4
  %42 = load i32, i32* @CONF_PS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %66

46:                                               ; preds = %25
  %47 = load i32, i32* @CONF_FES, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @CONF_PS, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %66

54:                                               ; preds = %25
  %55 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %56 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %88

57:                                               ; preds = %25
  %58 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i32, i32* %2, align 4
  %61 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %62 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IFM_SUBTYPE(i32 %63)
  %65 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %88

66:                                               ; preds = %46, %40, %33
  %67 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %68 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IFM_OPTIONS(i32 %69)
  %71 = load i32, i32* @IFM_FDX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* @CONF_DM, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %83

78:                                               ; preds = %66
  %79 = load i32, i32* @CONF_DM, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %85 = load i32, i32* @MAC_CONFIGURATION, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @WRITE4(%struct.dwc_softc* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %57, %54
  ret void
}

declare dso_local %struct.dwc_softc* @device_get_softc(i32) #1

declare dso_local i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc*) #1

declare dso_local i32 @READ4(%struct.dwc_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @WRITE4(%struct.dwc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
