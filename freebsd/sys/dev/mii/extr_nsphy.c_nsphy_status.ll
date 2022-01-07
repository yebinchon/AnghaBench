; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsphy.c_nsphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsphy.c_nsphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@MII_ANER = common dso_local global i32 0, align 4
@ANER_LPAN = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@MII_ANLPAR = common dso_local global i32 0, align 4
@ANLPAR_TX_FD = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@ANLPAR_T4 = common dso_local global i32 0, align 4
@IFM_100_T4 = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@ANLPAR_TX = common dso_local global i32 0, align 4
@ANLPAR_10_FD = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@ANLPAR_10 = common dso_local global i32 0, align 4
@MII_NSPHY_PAR = common dso_local global i32 0, align 4
@PAR_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @nsphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.ifmedia_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %9 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %9, i32 0, i32 0
  %11 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  store %struct.mii_data* %11, %struct.mii_data** %3, align 8
  %12 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %13 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %14, align 8
  store %struct.ifmedia_entry* %15, %struct.ifmedia_entry** %4, align 8
  %16 = load i32, i32* @IFM_AVALID, align 4
  %17 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %18 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IFM_ETHER, align 4
  %20 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %23 = load i32, i32* @MII_BMSR, align 4
  %24 = call i32 @PHY_READ(%struct.mii_softc* %22, i32 %23)
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = load i32, i32* @MII_BMSR, align 4
  %27 = call i32 @PHY_READ(%struct.mii_softc* %25, i32 %26)
  %28 = or i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BMSR_LINK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @IFM_ACTIVE, align 4
  %35 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %36 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %41 = load i32, i32* @MII_BMCR, align 4
  %42 = call i32 @PHY_READ(%struct.mii_softc* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @BMCR_ISO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i32, i32* @IFM_NONE, align 4
  %49 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %50 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %54 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %218

55:                                               ; preds = %39
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BMCR_LOOP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @IFM_LOOP, align 4
  %62 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %63 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BMCR_AUTOEN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %212

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @BMSR_ACOMP, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @IFM_NONE, align 4
  %78 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %79 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %218

82:                                               ; preds = %71
  %83 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %84 = load i32, i32* @MII_ANER, align 4
  %85 = call i32 @PHY_READ(%struct.mii_softc* %83, i32 %84)
  %86 = load i32, i32* @ANER_LPAN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %186

89:                                               ; preds = %82
  %90 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %91 = load i32, i32* @MII_ANAR, align 4
  %92 = call i32 @PHY_READ(%struct.mii_softc* %90, i32 %91)
  %93 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %94 = load i32, i32* @MII_ANLPAR, align 4
  %95 = call i32 @PHY_READ(%struct.mii_softc* %93, i32 %94)
  %96 = and i32 %92, %95
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ANLPAR_TX_FD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %89
  %102 = load i32, i32* @IFM_100_TX, align 4
  %103 = load i32, i32* @IFM_FDX, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %106 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %171

109:                                              ; preds = %89
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @ANLPAR_T4, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i32, i32* @IFM_100_T4, align 4
  %116 = load i32, i32* @IFM_HDX, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %119 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %170

122:                                              ; preds = %109
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @ANLPAR_TX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i32, i32* @IFM_100_TX, align 4
  %129 = load i32, i32* @IFM_HDX, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %132 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %169

135:                                              ; preds = %122
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @ANLPAR_10_FD, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i32, i32* @IFM_10_T, align 4
  %142 = load i32, i32* @IFM_FDX, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %145 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %168

148:                                              ; preds = %135
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @ANLPAR_10, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32, i32* @IFM_10_T, align 4
  %155 = load i32, i32* @IFM_HDX, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %158 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %167

161:                                              ; preds = %148
  %162 = load i32, i32* @IFM_NONE, align 4
  %163 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %164 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %153
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %127
  br label %170

170:                                              ; preds = %169, %114
  br label %171

171:                                              ; preds = %170, %101
  %172 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %173 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IFM_FDX, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %180 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %179)
  %181 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %182 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %178, %171
  br label %218

186:                                              ; preds = %82
  %187 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %188 = load i32, i32* @MII_NSPHY_PAR, align 4
  %189 = call i32 @PHY_READ(%struct.mii_softc* %187, i32 %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @PAR_10, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load i32, i32* @IFM_10_T, align 4
  %196 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %197 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %206

200:                                              ; preds = %186
  %201 = load i32, i32* @IFM_100_TX, align 4
  %202 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %203 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %200, %194
  %207 = load i32, i32* @IFM_HDX, align 4
  %208 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %209 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  br label %218

212:                                              ; preds = %66
  %213 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %214 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %217 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %47, %76, %185, %212, %206
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
