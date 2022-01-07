; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_settings_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_settings_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i32 }

@DUPLEX_HALF = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@MDIO_REG_BANK_GP_STATUS = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1 = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1_DUPLEX_STATUS = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"duplex status read from phy is = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"phy status does not allow interface to be FULL_DUPLEX : %x\0A\00", align 1
@MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_GP_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"gp_status 0x%x, is_link_up %d, speed_mask 0x%x\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_IEEEB1 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_LP_ADV2 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_1000M_KX = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KX4 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KR = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_REG_BANK_OVER_1G = common dso_local global i32 0, align 4
@MDIO_OVER_1G_LP_UP1 = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_2_5G = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_10G = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_10GH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"duplex %x  flow_ctrl 0x%x link_status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_link_settings_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_link_settings_status(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca %struct.elink_params*, align 8
  %7 = alloca %struct.elink_vars*, align 8
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %5, align 8
  store %struct.elink_params* %1, %struct.elink_params** %6, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %7, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 0
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  store %struct.bxe_softc* %17, %struct.bxe_softc** %8, align 8
  %18 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i64, i64* @ELINK_STATUS_OK, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %21 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %22 = load i32, i32* @MDIO_REG_BANK_GP_STATUS, align 4
  %23 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1, align 4
  %24 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %20, %struct.elink_phy* %21, i32 %22, i32 %23, i32* %9)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_DUPLEX_STATUS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ELINK_GP_STATUS_SPEED_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %54 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %55 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @elink_get_link_speed_duplex(%struct.elink_phy* %53, %struct.elink_params* %54, %struct.elink_vars* %55, i32 %56, i32 %57, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %44
  %64 = load i64, i64* %13, align 8
  store i64 %64, i64* %4, align 8
  br label %194

65:                                               ; preds = %44
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %72 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %77 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %79 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %80 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @elink_flow_ctrl_resolve(%struct.elink_phy* %78, %struct.elink_params* %79, %struct.elink_vars* %80, i32 %81)
  %83 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %84 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %74
  %89 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %90 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %91 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @elink_xgxs_an_resolve(%struct.elink_phy* %89, %struct.elink_params* %90, %struct.elink_vars* %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %74
  br label %95

95:                                               ; preds = %94, %70
  br label %111

96:                                               ; preds = %65
  %97 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %98 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %104 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %108 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %109 = call i32 @elink_check_fallback_to_cl37(%struct.elink_phy* %107, %struct.elink_params* %108)
  br label %110

110:                                              ; preds = %106, %102, %96
  br label %111

111:                                              ; preds = %110, %95
  %112 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %113 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %181

115:                                              ; preds = %111
  %116 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %117 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %181

122:                                              ; preds = %115
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %124 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %125 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB1, align 4
  %126 = load i32, i32* @MDIO_CL73_IEEEB1_AN_LP_ADV2, align 4
  %127 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %123, %struct.elink_phy* %124, i32 %125, i32 %126, i32* %14)
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_1000M_KX, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %122
  %133 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 4
  %134 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %135 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %122
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KX4, align 4
  %141 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KR, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %147 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %148 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %138
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %153 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %154 = load i32, i32* @MDIO_REG_BANK_OVER_1G, align 4
  %155 = load i32, i32* @MDIO_OVER_1G_LP_UP1, align 4
  %156 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %152, %struct.elink_phy* %153, i32 %154, i32 %155, i32* %14)
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @MDIO_OVER_1G_UP1_2_5G, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %151
  %162 = load i32, i32* @LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE, align 4
  %163 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %164 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %151
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @MDIO_OVER_1G_UP1_10G, align 4
  %170 = load i32, i32* @MDIO_OVER_1G_UP1_10GH, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %176 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %177 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %167
  br label %181

181:                                              ; preds = %180, %115, %111
  %182 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %183 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %184 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %187 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %190 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %185, i32 %188, i32 %191)
  %193 = load i64, i64* %13, align 8
  store i64 %193, i64* %4, align 8
  br label %194

194:                                              ; preds = %181, %63
  %195 = load i64, i64* %4, align 8
  ret i64 %195
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i64 @elink_get_link_speed_duplex(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32, i32, i32) #1

declare dso_local i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params*) #1

declare dso_local i32 @elink_flow_ctrl_resolve(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_xgxs_an_resolve(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_check_fallback_to_cl37(%struct.elink_phy*, %struct.elink_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
