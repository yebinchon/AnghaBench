; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rlphy.c_rlphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rlphy.c_rlphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i64, i64, %struct.mii_data* }
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
@RL_MEDIASTAT = common dso_local global i32 0, align 4
@RL_MEDIASTAT_SPEED10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @rlphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rlphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.ifmedia_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %8 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %8, i32 0, i32 2
  %10 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  store %struct.mii_data* %10, %struct.mii_data** %3, align 8
  %11 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %12 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %13, align 8
  store %struct.ifmedia_entry* %14, %struct.ifmedia_entry** %4, align 8
  %15 = load i32, i32* @IFM_AVALID, align 4
  %16 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %17 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @IFM_ETHER, align 4
  %19 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %20 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %22 = load i32, i32* @MII_BMSR, align 4
  %23 = call i32 @PHY_READ(%struct.mii_softc* %21, i32 %22)
  %24 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %25 = load i32, i32* @MII_BMSR, align 4
  %26 = call i32 @PHY_READ(%struct.mii_softc* %24, i32 %25)
  %27 = or i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BMSR_LINK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @IFM_ACTIVE, align 4
  %34 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %35 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %40 = load i32, i32* @MII_BMCR, align 4
  %41 = call i32 @PHY_READ(%struct.mii_softc* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BMCR_ISO, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i32, i32* @IFM_NONE, align 4
  %48 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %49 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %53 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %240

54:                                               ; preds = %38
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @BMCR_LOOP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @IFM_LOOP, align 4
  %61 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %62 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @BMCR_AUTOEN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %234

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @BMSR_ACOMP, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @IFM_NONE, align 4
  %77 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %78 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %240

81:                                               ; preds = %70
  %82 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %83 = load i32, i32* @MII_ANAR, align 4
  %84 = call i32 @PHY_READ(%struct.mii_softc* %82, i32 %83)
  %85 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %86 = load i32, i32* @MII_ANLPAR, align 4
  %87 = call i32 @PHY_READ(%struct.mii_softc* %85, i32 %86)
  %88 = and i32 %84, %87
  store i32 %88, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %180

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ANLPAR_TX_FD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32, i32* @IFM_100_TX, align 4
  %97 = load i32, i32* @IFM_FDX, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %100 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %165

103:                                              ; preds = %90
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @ANLPAR_T4, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i32, i32* @IFM_100_T4, align 4
  %110 = load i32, i32* @IFM_HDX, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %113 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %164

116:                                              ; preds = %103
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @ANLPAR_TX, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i32, i32* @IFM_100_TX, align 4
  %123 = load i32, i32* @IFM_HDX, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %126 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %163

129:                                              ; preds = %116
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @ANLPAR_10_FD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i32, i32* @IFM_10_T, align 4
  %136 = load i32, i32* @IFM_FDX, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %139 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %162

142:                                              ; preds = %129
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @ANLPAR_10, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i32, i32* @IFM_10_T, align 4
  %149 = load i32, i32* @IFM_HDX, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %152 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %161

155:                                              ; preds = %142
  %156 = load i32, i32* @IFM_NONE, align 4
  %157 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %158 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %147
  br label %162

162:                                              ; preds = %161, %134
  br label %163

163:                                              ; preds = %162, %121
  br label %164

164:                                              ; preds = %163, %108
  br label %165

165:                                              ; preds = %164, %95
  %166 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %167 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IFM_FDX, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %174 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %173)
  %175 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %176 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %172, %165
  br label %240

180:                                              ; preds = %81
  %181 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %182 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %187 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %208, label %190

190:                                              ; preds = %185, %180
  %191 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %192 = call i32 @PHY_READ(%struct.mii_softc* %191, i32 25)
  %193 = and i32 %192, 1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32, i32* @IFM_100_TX, align 4
  %197 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %198 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %207

201:                                              ; preds = %190
  %202 = load i32, i32* @IFM_10_T, align 4
  %203 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %204 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %195
  br label %228

208:                                              ; preds = %185
  %209 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %210 = load i32, i32* @RL_MEDIASTAT, align 4
  %211 = call i32 @PHY_READ(%struct.mii_softc* %209, i32 %210)
  %212 = load i32, i32* @RL_MEDIASTAT_SPEED10, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %208
  %216 = load i32, i32* @IFM_10_T, align 4
  %217 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %218 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %227

221:                                              ; preds = %208
  %222 = load i32, i32* @IFM_100_TX, align 4
  %223 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %224 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %221, %215
  br label %228

228:                                              ; preds = %227, %207
  %229 = load i32, i32* @IFM_HDX, align 4
  %230 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %231 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  br label %240

234:                                              ; preds = %65
  %235 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %236 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %239 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %46, %75, %179, %234, %228
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
