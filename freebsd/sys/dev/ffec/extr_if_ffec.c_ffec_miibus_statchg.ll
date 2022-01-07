; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32, i32, %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@FEC_ECR_REG = common dso_local global i32 0, align 4
@FEC_ECR_SPEED = common dso_local global i32 0, align 4
@FEC_RCR_REG = common dso_local global i32 0, align 4
@FEC_RCR_RMII_10T = common dso_local global i32 0, align 4
@FEC_RCR_RMII_MODE = common dso_local global i32 0, align 4
@FEC_RCR_RGMII_EN = common dso_local global i32 0, align 4
@FEC_RCR_DRT = common dso_local global i32 0, align 4
@FEC_RCR_FCE = common dso_local global i32 0, align 4
@FEC_TCR_REG = common dso_local global i32 0, align 4
@FEC_TCR_FDEN = common dso_local global i32 0, align 4
@FEC_RCR_MII_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported media %u\0A\00", align 1
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ffec_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffec_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ffec_softc* @device_get_softc(i32 %8)
  store %struct.ffec_softc* %9, %struct.ffec_softc** %3, align 8
  %10 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %11 = call i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc* %10)
  %12 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %12, i32 0, i32 2
  %14 = load %struct.mii_data*, %struct.mii_data** %13, align 8
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  %15 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %16 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFM_ACTIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %29 = load i32, i32* @FEC_ECR_REG, align 4
  %30 = call i32 @RD4(%struct.ffec_softc* %28, i32 %29)
  %31 = load i32, i32* @FEC_ECR_SPEED, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %35 = load i32, i32* @FEC_RCR_REG, align 4
  %36 = call i32 @RD4(%struct.ffec_softc* %34, i32 %35)
  %37 = load i32, i32* @FEC_RCR_RMII_10T, align 4
  %38 = load i32, i32* @FEC_RCR_RMII_MODE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FEC_RCR_RGMII_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FEC_RCR_DRT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FEC_RCR_FCE, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %36, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %49 = load i32, i32* @FEC_TCR_REG, align 4
  %50 = call i32 @RD4(%struct.ffec_softc* %48, i32 %49)
  %51 = load i32, i32* @FEC_TCR_FDEN, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @FEC_RCR_MII_MODE, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %68 [
    i32 128, label %60
    i32 132, label %64
    i32 131, label %64
    i32 130, label %64
    i32 129, label %64
  ]

60:                                               ; preds = %27
  %61 = load i32, i32* @FEC_RCR_RMII_MODE, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %69

64:                                               ; preds = %27, %27, %27, %27
  %65 = load i32, i32* @FEC_RCR_RGMII_EN, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %69

68:                                               ; preds = %27
  br label %69

69:                                               ; preds = %68, %64, %60
  %70 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %71 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @IFM_SUBTYPE(i32 %72)
  switch i32 %73, label %86 [
    i32 136, label %74
    i32 137, label %74
    i32 135, label %78
    i32 134, label %79
    i32 133, label %83
  ]

74:                                               ; preds = %69, %69
  %75 = load i32, i32* @FEC_ECR_SPEED, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %95

78:                                               ; preds = %69
  br label %95

79:                                               ; preds = %69
  %80 = load i32, i32* @FEC_RCR_RMII_10T, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %95

83:                                               ; preds = %69
  %84 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %85 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %136

86:                                               ; preds = %69
  %87 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load i32, i32* %2, align 4
  %90 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %91 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @IFM_SUBTYPE(i32 %92)
  %94 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %136

95:                                               ; preds = %79, %78, %74
  %96 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %97 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @IFM_OPTIONS(i32 %98)
  %100 = load i32, i32* @IFM_FDX, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @FEC_TCR_FDEN, align 4
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %111

107:                                              ; preds = %95
  %108 = load i32, i32* @FEC_RCR_DRT, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %113 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @IFM_OPTIONS(i32 %114)
  %116 = load i32, i32* @IFM_FLOW, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32, i32* @FEC_RCR_FCE, align 4
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %111
  %124 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %125 = load i32, i32* @FEC_RCR_REG, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @WR4(%struct.ffec_softc* %124, i32 %125, i32 %126)
  %128 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %129 = load i32, i32* @FEC_TCR_REG, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @WR4(%struct.ffec_softc* %128, i32 %129, i32 %130)
  %132 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %133 = load i32, i32* @FEC_ECR_REG, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @WR4(%struct.ffec_softc* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %123, %86, %83
  ret void
}

declare dso_local %struct.ffec_softc* @device_get_softc(i32) #1

declare dso_local i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc*) #1

declare dso_local i32 @RD4(%struct.ffec_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
