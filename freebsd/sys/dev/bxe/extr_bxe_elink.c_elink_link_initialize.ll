; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i64, i32, i32, %struct.elink_phy*, %struct.bxe_softc* }
%struct.elink_phy = type { i64, i32, i32, i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)* }
%struct.elink_params.0 = type opaque
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64, i32 }

@ELINK_INT_PHY = common dso_local global i64 0, align 8
@ELINK_LOOPBACK_XGXS = common dso_local global i64 0, align 8
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@ELINK_FLAGS_INIT_XGXS_FIRST = common dso_local global i32 0, align 4
@ELINK_LOOPBACK_EXT_PHY = common dso_local global i64 0, align 8
@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@ELINK_SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@ELINK_EXT_PHY2 = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SELECTION_FIRST_PHY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Not initializing second phy\0A\00", align 1
@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@ELINK_NIG_STATUS_XGXS0_LINK10G = common dso_local global i32 0, align 4
@ELINK_NIG_STATUS_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_STATUS_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*)* @elink_link_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_link_initialize(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca %struct.elink_vars*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca %struct.elink_phy*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %4, align 8
  %9 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %7, align 8
  %12 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %13 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %12, i32 0, i32 3
  %14 = load %struct.elink_phy*, %struct.elink_phy** %13, align 8
  %15 = load i64, i64* @ELINK_INT_PHY, align 8
  %16 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %14, i64 %15
  %17 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %20 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %22 = call i32 @USES_WARPCORE(%struct.bxe_softc* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %26 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %25, i32 0, i32 3
  %27 = load %struct.elink_phy*, %struct.elink_phy** %26, align 8
  %28 = load i64, i64* @ELINK_INT_PHY, align 8
  %29 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %27, i64 %28
  %30 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %31 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %32 = call i32 @elink_prepare_xgxs(%struct.elink_phy* %29, %struct.elink_params* %30, %struct.elink_vars* %31)
  br label %33

33:                                               ; preds = %24, %2
  %34 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %35 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %39 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ELINK_LOOPBACK_XGXS, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i1 [ true, %33 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %43
  %49 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %50 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %49, i32 0, i32 3
  %51 = load %struct.elink_phy*, %struct.elink_phy** %50, align 8
  %52 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %53 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %51, i64 %52
  %54 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ELINK_FLAGS_INIT_XGXS_FIRST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %48
  %60 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %61 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ELINK_LOOPBACK_EXT_PHY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %111

65:                                               ; preds = %59, %48, %43
  %66 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %67 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %66, i32 0, i32 3
  %68 = load %struct.elink_phy*, %struct.elink_phy** %67, align 8
  %69 = load i64, i64* @ELINK_INT_PHY, align 8
  %70 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %68, i64 %69
  store %struct.elink_phy* %70, %struct.elink_phy** %8, align 8
  %71 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %72 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %65
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %78 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %82 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80, %76
  %85 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %86 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %87 = call i32 @elink_set_parallel_detection(%struct.elink_phy* %85, %struct.elink_params* %86)
  br label %88

88:                                               ; preds = %84, %80, %65
  %89 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %90 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %89, i32 0, i32 3
  %91 = load %struct.elink_phy*, %struct.elink_phy** %90, align 8
  %92 = load i64, i64* @ELINK_INT_PHY, align 8
  %93 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %91, i64 %92
  %94 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %93, i32 0, i32 3
  %95 = load i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %94, align 8
  %96 = icmp ne i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %88
  %98 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %99 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %98, i32 0, i32 3
  %100 = load %struct.elink_phy*, %struct.elink_phy** %99, align 8
  %101 = load i64, i64* @ELINK_INT_PHY, align 8
  %102 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %100, i64 %101
  %103 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %102, i32 0, i32 3
  %104 = load i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %103, align 8
  %105 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %106 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %107 = bitcast %struct.elink_params* %106 to %struct.elink_params.0*
  %108 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %109 = call i32 %104(%struct.elink_phy* %105, %struct.elink_params.0* %107, %struct.elink_vars* %108)
  br label %110

110:                                              ; preds = %97, %88
  br label %111

111:                                              ; preds = %110, %59
  %112 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %113 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %112, i32 0, i32 3
  %114 = load %struct.elink_phy*, %struct.elink_phy** %113, align 8
  %115 = load i64, i64* @ELINK_INT_PHY, align 8
  %116 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %114, i64 %115
  %117 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %120 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %111
  %124 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %125 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %124, i32 0, i32 3
  %126 = load %struct.elink_phy*, %struct.elink_phy** %125, align 8
  %127 = load i64, i64* @ELINK_INT_PHY, align 8
  %128 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %126, i64 %127
  %129 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ELINK_SUPPORTED_FIBRE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %136 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %137 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %123
  br label %203

141:                                              ; preds = %111
  %142 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %199, %141
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %147 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %202

150:                                              ; preds = %144
  %151 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %152 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %151, i32 0, i32 3
  %153 = load %struct.elink_phy*, %struct.elink_phy** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %153, i64 %155
  %157 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ELINK_SUPPORTED_FIBRE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %150
  %163 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %164 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %165 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %162, %150
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @ELINK_EXT_PHY2, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %174 = call i64 @elink_phy_selection(%struct.elink_params* %173)
  %175 = load i64, i64* @PORT_HW_CFG_PHY_SELECTION_FIRST_PHY, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %179 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %199

180:                                              ; preds = %172, %168
  %181 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %182 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %181, i32 0, i32 3
  %183 = load %struct.elink_phy*, %struct.elink_phy** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %183, i64 %185
  %187 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %186, i32 0, i32 3
  %188 = load i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %187, align 8
  %189 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %190 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %189, i32 0, i32 3
  %191 = load %struct.elink_phy*, %struct.elink_phy** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %191, i64 %193
  %195 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %196 = bitcast %struct.elink_params* %195 to %struct.elink_params.0*
  %197 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %198 = call i32 %188(%struct.elink_phy* %194, %struct.elink_params.0* %196, %struct.elink_vars* %197)
  br label %199

199:                                              ; preds = %180, %177
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %144

202:                                              ; preds = %144
  br label %203

203:                                              ; preds = %202, %140
  %204 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %205 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %206 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %207 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %208, 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %205, %210
  %212 = load i32, i32* @ELINK_NIG_STATUS_XGXS0_LINK10G, align 4
  %213 = load i32, i32* @ELINK_NIG_STATUS_XGXS0_LINK_STATUS, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @ELINK_NIG_STATUS_SERDES0_LINK_STATUS, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @elink_bits_dis(%struct.bxe_softc* %204, i64 %211, i32 %218)
  %220 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %220
}

declare dso_local i32 @USES_WARPCORE(%struct.bxe_softc*) #1

declare dso_local i32 @elink_prepare_xgxs(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @elink_set_parallel_detection(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i64 @elink_phy_selection(%struct.elink_params*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
