; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_test_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i64*, i64, i32, %struct.elink_phy*, %struct.bxe_softc* }
%struct.elink_phy = type { i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i32 }
%struct.elink_params.0 = type opaque
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@ELINK_INT_PHY = common dso_local global i64 0, align 8
@ELINK_SPEED_10000 = common dso_local global i64 0, align 8
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_1 = common dso_local global i32 0, align 4
@ELINK_STATUS_NO_LINK = common dso_local global i32 0, align 4
@MDIO_REG_BANK_GP_STATUS = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1 = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_LOOPBACK_XGXS = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@ELINK_ETH_PHY_SFPP_10G_FIBER = common dso_local global i32 0, align 4
@ELINK_ETH_PHY_SFP_1G_FIBER = common dso_local global i32 0, align 4
@ELINK_ETH_PHY_XFP_FIBER = common dso_local global i32 0, align 4
@ELINK_ETH_PHY_DA_TWINAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_test_link(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.elink_vars, align 4
  %14 = alloca %struct.elink_phy*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %18 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %17, i32 0, i32 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %18, align 8
  store %struct.bxe_softc* %19, %struct.bxe_softc** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %21 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %20, i32 0, i32 3
  %22 = load %struct.elink_phy*, %struct.elink_phy** %21, align 8
  %23 = load i64, i64* @ELINK_INT_PHY, align 8
  %24 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %22, i64 %23
  store %struct.elink_phy* %24, %struct.elink_phy** %14, align 8
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %26 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %3
  %29 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %30 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @ELINK_INT_PHY, align 8
  %33 = call i64 @ELINK_LINK_CONFIG_IDX(i64 %32)
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ELINK_SPEED_10000, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %40 = load %struct.elink_phy*, %struct.elink_phy** %14, align 8
  %41 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %42 = call i32 @elink_cl45_read(%struct.bxe_softc* %39, %struct.elink_phy* %40, i32 %41, i32 1, i32* %15)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %44 = load %struct.elink_phy*, %struct.elink_phy** %14, align 8
  %45 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %46 = call i32 @elink_cl45_read(%struct.bxe_softc* %43, %struct.elink_phy* %44, i32 %45, i32 1, i32* %15)
  %47 = load i32, i32* %15, align 4
  %48 = and i32 %47, 4
  store i32 %48, i32* %15, align 4
  br label %69

49:                                               ; preds = %28
  %50 = load %struct.elink_phy*, %struct.elink_phy** %14, align 8
  %51 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %52 = call i32 @elink_get_warpcore_lane(%struct.elink_phy* %50, %struct.elink_params* %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %54 = load %struct.elink_phy*, %struct.elink_phy** %14, align 8
  %55 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %56 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_1, align 4
  %57 = call i32 @elink_cl45_read(%struct.bxe_softc* %53, %struct.elink_phy* %54, i32 %55, i32 %56, i32* %9)
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 15
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 12
  %63 = and i32 %62, 15
  %64 = or i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %16, align 4
  %67 = shl i32 1, %66
  %68 = and i32 %65, %67
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %49, %38
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @ELINK_STATUS_NO_LINK, align 4
  store i32 %73, i32* %4, align 4
  br label %220

74:                                               ; preds = %69
  br label %88

75:                                               ; preds = %3
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %77 = load %struct.elink_phy*, %struct.elink_phy** %14, align 8
  %78 = load i32, i32* @MDIO_REG_BANK_GP_STATUS, align 4
  %79 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1, align 4
  %80 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %76, %struct.elink_phy* %77, i32 %78, i32 %79, i32* %9)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @ELINK_STATUS_NO_LINK, align 4
  store i32 %86, i32* %4, align 4
  br label %220

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %74
  %89 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %90 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ELINK_LOOPBACK_XGXS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %95, i32* %4, align 4
  br label %220

96:                                               ; preds = %88
  %97 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %98 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %213 [
    i32 1, label %100
    i32 2, label %102
    i32 3, label %118
  ]

100:                                              ; preds = %96
  %101 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %220

102:                                              ; preds = %96
  %103 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %104 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %103, i32 0, i32 3
  %105 = load %struct.elink_phy*, %struct.elink_phy** %104, align 8
  %106 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %107 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %105, i64 %106
  %108 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %107, i32 0, i32 0
  %109 = load i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %108, align 8
  %110 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %111 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %110, i32 0, i32 3
  %112 = load %struct.elink_phy*, %struct.elink_phy** %111, align 8
  %113 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %114 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %112, i64 %113
  %115 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %116 = bitcast %struct.elink_params* %115 to %struct.elink_params.0*
  %117 = call i32 %109(%struct.elink_phy* %114, %struct.elink_params.0* %116, %struct.elink_vars* %13)
  store i32 %117, i32* %11, align 4
  br label %213

118:                                              ; preds = %96
  %119 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %209, %118
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %124 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %212

127:                                              ; preds = %121
  %128 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %129 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %128, i32 0, i32 3
  %130 = load %struct.elink_phy*, %struct.elink_phy** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %130, i64 %132
  %134 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ELINK_ETH_PHY_SFPP_10G_FIBER, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %171, label %138

138:                                              ; preds = %127
  %139 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %140 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %139, i32 0, i32 3
  %141 = load %struct.elink_phy*, %struct.elink_phy** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %141, i64 %143
  %145 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ELINK_ETH_PHY_SFP_1G_FIBER, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %171, label %149

149:                                              ; preds = %138
  %150 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %151 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %150, i32 0, i32 3
  %152 = load %struct.elink_phy*, %struct.elink_phy** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %152, i64 %154
  %156 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @ELINK_ETH_PHY_XFP_FIBER, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %171, label %160

160:                                              ; preds = %149
  %161 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %162 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %161, i32 0, i32 3
  %163 = load %struct.elink_phy*, %struct.elink_phy** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %163, i64 %165
  %167 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ELINK_ETH_PHY_DA_TWINAX, align 4
  %170 = icmp eq i32 %168, %169
  br label %171

171:                                              ; preds = %160, %149, %138, %127
  %172 = phi i1 [ true, %149 ], [ true, %138 ], [ true, %127 ], [ %170, %160 ]
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %209

178:                                              ; preds = %171
  %179 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %180 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %179, i32 0, i32 3
  %181 = load %struct.elink_phy*, %struct.elink_phy** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %181, i64 %183
  %185 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %184, i32 0, i32 0
  %186 = load i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %185, align 8
  %187 = icmp ne i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)* %186, null
  br i1 %187, label %188, label %208

188:                                              ; preds = %178
  %189 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %190 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %189, i32 0, i32 3
  %191 = load %struct.elink_phy*, %struct.elink_phy** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %191, i64 %193
  %195 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %194, i32 0, i32 0
  %196 = load i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %195, align 8
  %197 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %198 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %197, i32 0, i32 3
  %199 = load %struct.elink_phy*, %struct.elink_phy** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %199, i64 %201
  %203 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %204 = bitcast %struct.elink_params* %203 to %struct.elink_params.0*
  %205 = call i32 %196(%struct.elink_phy* %202, %struct.elink_params.0* %204, %struct.elink_vars* %13)
  %206 = load i32, i32* %11, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %188, %178
  br label %209

209:                                              ; preds = %208, %177
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %121

212:                                              ; preds = %121
  br label %213

213:                                              ; preds = %96, %212, %102
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %217, i32* %4, align 4
  br label %220

218:                                              ; preds = %213
  %219 = load i32, i32* @ELINK_STATUS_NO_LINK, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %216, %100, %94, %85, %72
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i64 @ELINK_LINK_CONFIG_IDX(i64) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_get_warpcore_lane(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
