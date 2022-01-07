; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_e1000phy.c_e1000phy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_e1000phy.c_e1000phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i64, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i64 0, align 8
@E1000_SR = common dso_local global i32 0, align 4
@E1000_CR = common dso_local global i32 0, align 4
@E1000_SSR = common dso_local global i32 0, align 4
@E1000_SR_LINK_STATUS = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@E1000_CR_LOOPBACK = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i64 0, align 8
@E1000_CR_AUTO_NEG_ENABLE = common dso_local global i32 0, align 4
@E1000_SSR_SPD_DPLX_RESOLVED = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@MIIF_HAVEFIBER = common dso_local global i32 0, align 4
@E1000_SSR_SPEED = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i64 0, align 8
@IFM_100_TX = common dso_local global i64 0, align 8
@IFM_10_T = common dso_local global i64 0, align 8
@IFM_1000_SX = common dso_local global i64 0, align 8
@E1000_SSR_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i64 0, align 8
@IFM_HDX = common dso_local global i64 0, align 8
@E1000_1GSR = common dso_local global i32 0, align 4
@E1000_1GSR_MS_CONFIG_RES = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @e1000phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000phy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %7 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %7, i32 0, i32 1
  %9 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  store %struct.mii_data* %9, %struct.mii_data** %3, align 8
  %10 = load i32, i32* @IFM_AVALID, align 4
  %11 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %12 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* @IFM_ETHER, align 8
  %14 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %17 = load i32, i32* @E1000_SR, align 4
  %18 = call i32 @PHY_READ(%struct.mii_softc* %16, i32 %17)
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = load i32, i32* @E1000_SR, align 4
  %21 = call i32 @PHY_READ(%struct.mii_softc* %19, i32 %20)
  %22 = or i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %24 = load i32, i32* @E1000_CR, align 4
  %25 = call i32 @PHY_READ(%struct.mii_softc* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %27 = load i32, i32* @E1000_SSR, align 4
  %28 = call i32 @PHY_READ(%struct.mii_softc* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @E1000_SR_LINK_STATUS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @IFM_ACTIVE, align 4
  %35 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %36 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @E1000_CR_LOOPBACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* @IFM_LOOP, align 8
  %46 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %47 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = or i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @E1000_CR_AUTO_NEG_ENABLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @E1000_SSR_SPD_DPLX_RESOLVED, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i64, i64* @IFM_NONE, align 8
  %62 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %63 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %164

66:                                               ; preds = %55, %50
  %67 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %68 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @E1000_SSR_SPEED, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %95 [
    i32 130, label %77
    i32 129, label %83
    i32 128, label %89
  ]

77:                                               ; preds = %73
  %78 = load i64, i64* @IFM_1000_T, align 8
  %79 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %80 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = or i64 %81, %78
  store i64 %82, i64* %80, align 8
  br label %101

83:                                               ; preds = %73
  %84 = load i64, i64* @IFM_100_TX, align 8
  %85 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %86 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %101

89:                                               ; preds = %73
  %90 = load i64, i64* @IFM_10_T, align 8
  %91 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %92 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = or i64 %93, %90
  store i64 %94, i64* %92, align 8
  br label %101

95:                                               ; preds = %73
  %96 = load i64, i64* @IFM_NONE, align 8
  %97 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %98 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %164

101:                                              ; preds = %89, %83, %77
  br label %108

102:                                              ; preds = %66
  %103 = load i64, i64* @IFM_1000_SX, align 8
  %104 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %105 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %106, %103
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %102, %101
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @E1000_SSR_DUPLEX, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load i64, i64* @IFM_FDX, align 8
  %115 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %116 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = or i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %120 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %113
  %126 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %127 = call i64 @mii_phy_flowstatus(%struct.mii_softc* %126)
  %128 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %129 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = or i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %125, %113
  br label %139

133:                                              ; preds = %108
  %134 = load i64, i64* @IFM_HDX, align 8
  %135 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %136 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = or i64 %137, %134
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %133, %132
  %140 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %141 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @IFM_SUBTYPE(i64 %142)
  %144 = load i64, i64* @IFM_1000_T, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %139
  %147 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %148 = load i32, i32* @E1000_1GSR, align 4
  %149 = call i32 @PHY_READ(%struct.mii_softc* %147, i32 %148)
  %150 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %151 = load i32, i32* @E1000_1GSR, align 4
  %152 = call i32 @PHY_READ(%struct.mii_softc* %150, i32 %151)
  %153 = or i32 %149, %152
  %154 = load i32, i32* @E1000_1GSR_MS_CONFIG_RES, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %146
  %158 = load i64, i64* @IFM_ETH_MASTER, align 8
  %159 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %160 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = or i64 %161, %158
  store i64 %162, i64* %160, align 8
  br label %163

163:                                              ; preds = %157, %146
  br label %164

164:                                              ; preds = %60, %95, %163, %139
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i64 @mii_phy_flowstatus(%struct.mii_softc*) #1

declare dso_local i64 @IFM_SUBTYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
