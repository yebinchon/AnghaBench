; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_e1000phy.c_e1000phy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_e1000phy.c_e1000phy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32, i32, i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AUTO = common dso_local global i32 0, align 4
@MIIF_HAVE_GTCR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E1000_CR_SPEED_1000 = common dso_local global i32 0, align 4
@EXTSR_1000XFDX = common dso_local global i32 0, align 4
@EXTSR_1000XHDX = common dso_local global i32 0, align 4
@E1000_CR_SPEED_100 = common dso_local global i32 0, align 4
@E1000_CR_SPEED_10 = common dso_local global i32 0, align 4
@E1000_CR = common dso_local global i32 0, align 4
@E1000_CR_ISOLATE = common dso_local global i32 0, align 4
@E1000_CR_POWER_DOWN = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@E1000_CR_FULL_DUPLEX = common dso_local global i32 0, align 4
@E1000_1GCR_1000T_FD = common dso_local global i32 0, align 4
@E1000_1GCR_1000T = common dso_local global i32 0, align 4
@E1000_CR_AUTO_NEG_ENABLE = common dso_local global i32 0, align 4
@E1000_CR_RESET = common dso_local global i32 0, align 4
@E1000_1GCR_MS_ENABLE = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@E1000_1GCR_MS_VALUE = common dso_local global i32 0, align 4
@E1000_1GCR = common dso_local global i32 0, align 4
@E1000_AR = common dso_local global i32 0, align 4
@E1000_AR_SELECTOR_FIELD = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @e1000phy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000phy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %13 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %14, align 8
  store %struct.ifmedia_entry* %15, %struct.ifmedia_entry** %8, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %202 [
    i32 129, label %17
    i32 130, label %18
    i32 128, label %151
  ]

17:                                               ; preds = %3
  br label %202

18:                                               ; preds = %3
  %19 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %20 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IFM_SUBTYPE(i32 %21)
  %23 = load i32, i32* @IFM_AUTO, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %27 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %28 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @e1000phy_mii_phy_auto(%struct.mii_softc* %26, i32 %29)
  br label %202

31:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  %32 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %33 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IFM_SUBTYPE(i32 %34)
  switch i32 %35, label %76 [
    i32 134, label %36
    i32 135, label %47
    i32 133, label %60
    i32 132, label %62
    i32 131, label %64
  ]

36:                                               ; preds = %31
  %37 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %38 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MIIF_HAVE_GTCR, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %208

45:                                               ; preds = %36
  %46 = load i32, i32* @E1000_CR_SPEED_1000, align 4
  store i32 %46, i32* %9, align 4
  br label %78

47:                                               ; preds = %31
  %48 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %49 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EXTSR_1000XFDX, align 4
  %52 = load i32, i32* @EXTSR_1000XHDX, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %4, align 4
  br label %208

58:                                               ; preds = %47
  %59 = load i32, i32* @E1000_CR_SPEED_1000, align 4
  store i32 %59, i32* %9, align 4
  br label %78

60:                                               ; preds = %31
  %61 = load i32, i32* @E1000_CR_SPEED_100, align 4
  store i32 %61, i32* %9, align 4
  br label %78

62:                                               ; preds = %31
  %63 = load i32, i32* @E1000_CR_SPEED_10, align 4
  store i32 %63, i32* %9, align 4
  br label %78

64:                                               ; preds = %31
  %65 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %66 = load i32, i32* @E1000_CR, align 4
  %67 = call i32 @PHY_READ(%struct.mii_softc* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %69 = load i32, i32* @E1000_CR, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @E1000_CR_ISOLATE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @E1000_CR_POWER_DOWN, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @PHY_WRITE(%struct.mii_softc* %68, i32 %69, i32 %74)
  br label %150

76:                                               ; preds = %31
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %4, align 4
  br label %208

78:                                               ; preds = %62, %60, %58, %45
  %79 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %80 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IFM_FDX, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @E1000_CR_FULL_DUPLEX, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @E1000_1GCR_1000T_FD, align 4
  store i32 %89, i32* %10, align 4
  br label %92

90:                                               ; preds = %78
  %91 = load i32, i32* @E1000_1GCR_1000T, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %94 = load i32, i32* @E1000_CR, align 4
  %95 = call i32 @PHY_READ(%struct.mii_softc* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @E1000_CR_AUTO_NEG_ENABLE, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %101 = load i32, i32* @E1000_CR, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @E1000_CR_RESET, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @PHY_WRITE(%struct.mii_softc* %100, i32 %101, i32 %104)
  %106 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %107 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @IFM_SUBTYPE(i32 %108)
  %110 = icmp eq i32 %109, 134
  br i1 %110, label %111, label %126

111:                                              ; preds = %92
  %112 = load i32, i32* @E1000_1GCR_MS_ENABLE, align 4
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %116 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IFM_ETH_MASTER, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load i32, i32* @E1000_1GCR_MS_VALUE, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %121, %111
  br label %135

126:                                              ; preds = %92
  %127 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %128 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MIIF_HAVE_GTCR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %133, %126
  br label %135

135:                                              ; preds = %134, %125
  %136 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %137 = load i32, i32* @E1000_1GCR, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @PHY_WRITE(%struct.mii_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %141 = load i32, i32* @E1000_AR, align 4
  %142 = load i32, i32* @E1000_AR_SELECTOR_FIELD, align 4
  %143 = call i32 @PHY_WRITE(%struct.mii_softc* %140, i32 %141, i32 %142)
  %144 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %145 = load i32, i32* @E1000_CR, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @E1000_CR_RESET, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @PHY_WRITE(%struct.mii_softc* %144, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %135, %64
  br label %202

151:                                              ; preds = %3
  %152 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %153 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @IFM_SUBTYPE(i32 %154)
  %156 = load i32, i32* @IFM_AUTO, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %160 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %159, i32 0, i32 2
  store i32 0, i32* %160, align 4
  br label %202

161:                                              ; preds = %151
  %162 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %163 = load i32, i32* @MII_BMSR, align 4
  %164 = call i32 @PHY_READ(%struct.mii_softc* %162, i32 %163)
  %165 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %166 = load i32, i32* @MII_BMSR, align 4
  %167 = call i32 @PHY_READ(%struct.mii_softc* %165, i32 %166)
  %168 = or i32 %164, %167
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @BMSR_LINK, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %161
  %174 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %175 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %174, i32 0, i32 2
  store i32 0, i32* %175, align 4
  br label %202

176:                                              ; preds = %161
  %177 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %178 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = icmp eq i32 %179, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %202

183:                                              ; preds = %176
  %184 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %185 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %188 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp sle i32 %186, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %202

192:                                              ; preds = %183
  %193 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %194 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %193, i32 0, i32 2
  store i32 0, i32* %194, align 4
  %195 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %196 = call i32 @PHY_RESET(%struct.mii_softc* %195)
  %197 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %198 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %199 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @e1000phy_mii_phy_auto(%struct.mii_softc* %197, i32 %200)
  br label %202

202:                                              ; preds = %3, %192, %191, %182, %173, %158, %150, %25, %17
  %203 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %204 = call i32 @PHY_STATUS(%struct.mii_softc* %203)
  %205 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @mii_phy_update(%struct.mii_softc* %205, i32 %206)
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %202, %76, %56, %43
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @e1000phy_mii_phy_auto(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
