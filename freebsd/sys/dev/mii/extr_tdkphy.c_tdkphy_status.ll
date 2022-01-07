; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_tdkphy.c_tdkphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_tdkphy.c_tdkphy_status.c"
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
@MII_DIAG = common dso_local global i32 0, align 4
@DIAG_NEGFAIL = common dso_local global i32 0, align 4
@DIAG_DUPLEX = common dso_local global i32 0, align 4
@DIAG_RATE_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @tdkphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tdkphy_status(%struct.mii_softc* %0) #0 {
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
  br label %231

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
  br i1 %70, label %71, label %225

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
  br label %231

82:                                               ; preds = %71
  %83 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %84 = load i32, i32* @MII_ANAR, align 4
  %85 = call i32 @PHY_READ(%struct.mii_softc* %83, i32 %84)
  %86 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %87 = load i32, i32* @MII_ANLPAR, align 4
  %88 = call i32 @PHY_READ(%struct.mii_softc* %86, i32 %87)
  %89 = and i32 %85, %88
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @ANLPAR_TX_FD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %82
  %95 = load i32, i32* @IFM_100_TX, align 4
  %96 = load i32, i32* @IFM_FDX, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %99 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %210

102:                                              ; preds = %82
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @ANLPAR_T4, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i32, i32* @IFM_100_T4, align 4
  %109 = load i32, i32* @IFM_HDX, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %112 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %209

115:                                              ; preds = %102
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @ANLPAR_TX, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i32, i32* @IFM_100_TX, align 4
  %122 = load i32, i32* @IFM_HDX, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %125 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %208

128:                                              ; preds = %115
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @ANLPAR_10_FD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i32, i32* @IFM_10_T, align 4
  %135 = load i32, i32* @IFM_FDX, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %138 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %207

141:                                              ; preds = %128
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @ANLPAR_10, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load i32, i32* @IFM_10_T, align 4
  %148 = load i32, i32* @IFM_HDX, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %151 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %206

154:                                              ; preds = %141
  %155 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %156 = load i32, i32* @MII_DIAG, align 4
  %157 = call i32 @PHY_READ(%struct.mii_softc* %155, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @DIAG_NEGFAIL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %154
  %163 = load i32, i32* @IFM_10_T, align 4
  %164 = load i32, i32* @IFM_HDX, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %167 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %205

170:                                              ; preds = %154
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @DIAG_DUPLEX, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @IFM_FDX, align 4
  %177 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %178 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %187

181:                                              ; preds = %170
  %182 = load i32, i32* @IFM_HDX, align 4
  %183 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %184 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %181, %175
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @DIAG_RATE_100, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i32, i32* @IFM_100_TX, align 4
  %194 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %195 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %204

198:                                              ; preds = %187
  %199 = load i32, i32* @IFM_10_T, align 4
  %200 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %201 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %198, %192
  br label %205

205:                                              ; preds = %204, %162
  br label %206

206:                                              ; preds = %205, %146
  br label %207

207:                                              ; preds = %206, %133
  br label %208

208:                                              ; preds = %207, %120
  br label %209

209:                                              ; preds = %208, %107
  br label %210

210:                                              ; preds = %209, %94
  %211 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %212 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @IFM_FDX, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %210
  %218 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %219 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %218)
  %220 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %221 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %217, %210
  br label %231

225:                                              ; preds = %66
  %226 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %227 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %230 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %47, %76, %225, %224
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
