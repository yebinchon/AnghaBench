; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ip1000phy.c_ip1000phy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ip1000phy.c_ip1000phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i64, %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IP1000PHY_MII_BMSR = common dso_local global i32 0, align 4
@IP1000PHY_BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IP1000PHY_MII_BMCR = common dso_local global i32 0, align 4
@IP1000PHY_BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@IP1000PHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@IP1000PHY_BMSR_ANEGCOMP = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@MII_MODEL_xxICPLUS_IP1001 = common dso_local global i64 0, align 8
@IP1000PHY_LSR = common dso_local global i32 0, align 4
@IP1000PHY_LSR_SPEED_MASK = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IP1000PHY_LSR_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@STGE_PhyCtrl = common dso_local global i32 0, align 4
@PC_PhyDuplexStatus = common dso_local global i32 0, align 4
@IP1000PHY_MII_1000SR = common dso_local global i32 0, align 4
@IP1000PHY_1000SR_MASTER = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @ip1000phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip1000phy_status(%struct.mii_softc* %0) #0 {
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
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IFM_ETHER, align 4
  %14 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %17 = load i32, i32* @IP1000PHY_MII_BMSR, align 4
  %18 = call i32 @PHY_READ(%struct.mii_softc* %16, i32 %17)
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = load i32, i32* @IP1000PHY_MII_BMSR, align 4
  %21 = call i32 @PHY_READ(%struct.mii_softc* %19, i32 %20)
  %22 = or i32 %18, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IP1000PHY_BMSR_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @IFM_ACTIVE, align 4
  %29 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %30 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %35 = load i32, i32* @IP1000PHY_MII_BMCR, align 4
  %36 = call i32 @PHY_READ(%struct.mii_softc* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IP1000PHY_BMCR_LOOP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, i32* @IFM_LOOP, align 4
  %43 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IP1000PHY_BMCR_AUTOEN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IP1000PHY_BMSR_ANEGCOMP, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @IFM_NONE, align 4
  %59 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %60 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %209

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %66 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MII_MODEL_xxICPLUS_IP1001, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %119

70:                                               ; preds = %64
  %71 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %72 = load i32, i32* @IP1000PHY_LSR, align 4
  %73 = call i32 @PHY_READ(%struct.mii_softc* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IP1000PHY_LSR_SPEED_MASK, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %95 [
    i32 134, label %77
    i32 133, label %83
    i32 132, label %89
  ]

77:                                               ; preds = %70
  %78 = load i32, i32* @IFM_10_T, align 4
  %79 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %80 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %101

83:                                               ; preds = %70
  %84 = load i32, i32* @IFM_100_TX, align 4
  %85 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %86 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %101

89:                                               ; preds = %70
  %90 = load i32, i32* @IFM_1000_T, align 4
  %91 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %92 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %101

95:                                               ; preds = %70
  %96 = load i32, i32* @IFM_NONE, align 4
  %97 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %98 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %209

101:                                              ; preds = %89, %83, %77
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @IP1000PHY_LSR_FULL_DUPLEX, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @IFM_FDX, align 4
  %108 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %109 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %118

112:                                              ; preds = %101
  %113 = load i32, i32* @IFM_HDX, align 4
  %114 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %115 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %106
  br label %173

119:                                              ; preds = %64
  %120 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %121 = load i32, i32* @STGE_PhyCtrl, align 4
  %122 = call i32 @PHY_READ(%struct.mii_softc* %120, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @PC_LinkSpeed(i32 %123)
  switch i32 %124, label %149 [
    i32 128, label %125
    i32 131, label %131
    i32 130, label %137
    i32 129, label %143
  ]

125:                                              ; preds = %119
  %126 = load i32, i32* @IFM_NONE, align 4
  %127 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %128 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %209

131:                                              ; preds = %119
  %132 = load i32, i32* @IFM_10_T, align 4
  %133 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %134 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %155

137:                                              ; preds = %119
  %138 = load i32, i32* @IFM_100_TX, align 4
  %139 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %140 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %155

143:                                              ; preds = %119
  %144 = load i32, i32* @IFM_1000_T, align 4
  %145 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %146 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %155

149:                                              ; preds = %119
  %150 = load i32, i32* @IFM_NONE, align 4
  %151 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %152 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %209

155:                                              ; preds = %143, %137, %131
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @PC_PhyDuplexStatus, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* @IFM_FDX, align 4
  %162 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %163 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %172

166:                                              ; preds = %155
  %167 = load i32, i32* @IFM_HDX, align 4
  %168 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %169 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %160
  br label %173

173:                                              ; preds = %172, %118
  %174 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %175 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IFM_FDX, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %182 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %181)
  %183 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %184 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %180, %173
  %188 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %189 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @IFM_1000_T, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %187
  %195 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %196 = load i32, i32* @IP1000PHY_MII_1000SR, align 4
  %197 = call i32 @PHY_READ(%struct.mii_softc* %195, i32 %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @IP1000PHY_1000SR_MASTER, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load i32, i32* @IFM_ETH_MASTER, align 4
  %204 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %205 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %194
  br label %209

209:                                              ; preds = %57, %95, %125, %149, %208, %187
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PC_LinkSpeed(i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
