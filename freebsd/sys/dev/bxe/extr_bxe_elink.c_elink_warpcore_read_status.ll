; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_warpcore_read_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_warpcore_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32, i64, i32, i64 }
%struct.elink_params = type { i64, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i32, i32 }

@DUPLEX_FULL = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@ELINK_FLAGS_WC_DUAL_MODE = common dso_local global i32 0, align 4
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_DIGITAL5_LINK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"params->loopback_mode link_up read = %x\0A\00", align 1
@ELINK_SPEED_10000 = common dso_local global i64 0, align 8
@ELINK_SUPPORTED_20000baseMLD2_Full = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PCS RX link status = 0x%x-->0x%x\0A\00", align 1
@MDIO_WC_REG_GP2_STATUS_GP_2_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"0x81d1 = 0x%x\0A\00", align 1
@ELINK_SUPPORTED_20000baseKR2_Full = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"an_link = %x, link_up = %x\0A\00", align 1
@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@MDIO_WC_REG_GP2_STATUS_GP_2_4 = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@MDIO_WC_REG_PAR_DET_10G_STATUS = common dso_local global i32 0, align 4
@LINK_STATUS_PARALLEL_DETECTION_USED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"pd = %x, link_status = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c" ELINK_SINGLE_MEDIA_DIRECT duplex %x  flow_ctrl 0x%x link_status 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"duplex %x  flow_ctrl 0x%x link_status 0x%x\0A\00", align 1
@MDIO_AN_REG_LP_AUTO_NEG2 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_1000M_KX = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KX4 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KR = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"val = %x, link_status = %x\0A\00", align 1
@MDIO_WC_REG_DIGITAL3_LP_UP1 = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_2_5G = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_10G = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_10GH = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_2 = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"lane %d gp_speed 0x%x\0A\00", align 1
@ELINK_ETH_PHY_KR = common dso_local global i64 0, align 8
@MAX_KR_LINK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_warpcore_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_warpcore_read_status(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %19 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %20 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %19, i32 0, i32 1
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %20, align 8
  store %struct.bxe_softc* %21, %struct.bxe_softc** %7, align 8
  %22 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %25 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %26 = call i32 @elink_get_warpcore_lane(%struct.elink_phy* %24, %struct.elink_params* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %28 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %3
  %32 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %33 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ELINK_FLAGS_WC_DUAL_MODE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %40 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %41 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %42 = load i32, i32* @MDIO_WC_REG_DIGITAL5_LINK_STATUS, align 4
  %43 = call i32 @elink_cl45_read(%struct.bxe_softc* %39, %struct.elink_phy* %40, i32 %41, i32 %42, i32* %11)
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %45 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %46 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %47 = load i32, i32* @MDIO_WC_REG_DIGITAL5_LINK_STATUS, align 4
  %48 = call i32 @elink_cl45_read(%struct.bxe_softc* %44, %struct.elink_phy* %45, i32 %46, i32 %47, i32* %11)
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %207

54:                                               ; preds = %31, %3
  %55 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %56 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ELINK_SPEED_10000, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %54
  %61 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %62 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ELINK_SUPPORTED_20000baseMLD2_Full, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %69 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %70 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %71 = call i32 @elink_cl45_read(%struct.bxe_softc* %68, %struct.elink_phy* %69, i32 %70, i32 1, i32* %14)
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %73 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %74 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %75 = call i32 @elink_cl45_read(%struct.bxe_softc* %72, %struct.elink_phy* %73, i32 %74, i32 1, i32* %11)
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %86 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %87 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %88 = call i32 @elink_ext_phy_resolve_fc(%struct.elink_phy* %85, %struct.elink_params* %86, %struct.elink_vars* %87)
  br label %89

89:                                               ; preds = %84, %67
  br label %206

90:                                               ; preds = %60, %54
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %92 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %93 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %94 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_1, align 4
  %95 = call i32 @elink_cl45_read(%struct.bxe_softc* %91, %struct.elink_phy* %92, i32 %93, i32 %94, i32* %9)
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = ashr i32 %99, 8
  %101 = load i32, i32* %9, align 4
  %102 = ashr i32 %101, 12
  %103 = or i32 %100, %102
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = shl i32 1, %106
  %108 = and i32 %105, %107
  store i32 %108, i32* %11, align 4
  %109 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %110 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ELINK_SUPPORTED_20000baseKR2_Full, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %90
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %117 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %118 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %119 = load i32, i32* @MDIO_AN_REG_STATUS, align 4
  %120 = call i32 @elink_cl45_read(%struct.bxe_softc* %116, %struct.elink_phy* %117, i32 %118, i32 %119, i32* %15)
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %122 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %123 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %124 = load i32, i32* @MDIO_AN_REG_STATUS, align 4
  %125 = call i32 @elink_cl45_read(%struct.bxe_softc* %121, %struct.elink_phy* %122, i32 %123, i32 %124, i32* %15)
  %126 = load i32, i32* %15, align 4
  %127 = and i32 %126, 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %115, %90
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %205

137:                                              ; preds = %134
  %138 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %139 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %205

141:                                              ; preds = %137
  %142 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %143 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %186

147:                                              ; preds = %141
  %148 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %149 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %150 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %151 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_4, align 4
  %152 = call i32 @elink_cl45_read(%struct.bxe_softc* %148, %struct.elink_phy* %149, i32 %150, i32 %151, i32* %17)
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %8, align 4
  %155 = shl i32 4096, %154
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %147
  %159 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %160 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %161 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %158, %147
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %166 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %167 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %168 = load i32, i32* @MDIO_WC_REG_PAR_DET_10G_STATUS, align 4
  %169 = call i32 @elink_cl45_read(%struct.bxe_softc* %165, %struct.elink_phy* %166, i32 %167, i32 %168, i32* %16)
  %170 = load i32, i32* %16, align 4
  %171 = and i32 %170, 32768
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %164
  %174 = load i32, i32* @LINK_STATUS_PARALLEL_DETECTION_USED, align 4
  %175 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %176 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %173, %164
  %180 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %181 = load i32, i32* %16, align 4
  %182 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %183 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %179, %141
  %187 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %188 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %189 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %190 = call i32 @elink_ext_phy_resolve_fc(%struct.elink_phy* %187, %struct.elink_params* %188, %struct.elink_vars* %189)
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %193 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %195 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %196 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %199 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %202 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %194, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %197, i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %186, %137, %134
  br label %206

206:                                              ; preds = %205, %89
  br label %207

207:                                              ; preds = %206, %38
  %208 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %209 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %210 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %213 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %216 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %208, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %211, i32 %214, i32 %217)
  %219 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %220 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %300

225:                                              ; preds = %207
  %226 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %227 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %300

229:                                              ; preds = %225
  %230 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %231 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %232 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %233 = load i32, i32* @MDIO_AN_REG_LP_AUTO_NEG2, align 4
  %234 = call i32 @elink_cl45_read(%struct.bxe_softc* %230, %struct.elink_phy* %231, i32 %232, i32 %233, i32* %18)
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_1000M_KX, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %229
  %240 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 4
  %241 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %242 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %239, %229
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KX4, align 4
  %248 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KR, align 4
  %249 = or i32 %247, %248
  %250 = and i32 %246, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %254 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %255 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %252, %245
  %259 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %260 = load i32, i32* %18, align 4
  %261 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %262 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %259, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %260, i32 %263)
  %265 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %266 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %267 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %268 = load i32, i32* @MDIO_WC_REG_DIGITAL3_LP_UP1, align 4
  %269 = call i32 @elink_cl45_read(%struct.bxe_softc* %265, %struct.elink_phy* %266, i32 %267, i32 %268, i32* %18)
  %270 = load i32, i32* %18, align 4
  %271 = load i32, i32* @MDIO_OVER_1G_UP1_2_5G, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %258
  %275 = load i32, i32* @LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE, align 4
  %276 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %277 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  br label %280

280:                                              ; preds = %274, %258
  %281 = load i32, i32* %18, align 4
  %282 = load i32, i32* @MDIO_OVER_1G_UP1_10G, align 4
  %283 = load i32, i32* @MDIO_OVER_1G_UP1_10GH, align 4
  %284 = or i32 %282, %283
  %285 = and i32 %281, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %289 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %290 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %280
  %294 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %295 = load i32, i32* %18, align 4
  %296 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %297 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %294, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %295, i32 %298)
  br label %300

300:                                              ; preds = %293, %225, %207
  %301 = load i32, i32* %8, align 4
  %302 = icmp slt i32 %301, 2
  br i1 %302, label %303, label %309

303:                                              ; preds = %300
  %304 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %305 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %306 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %307 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_2, align 4
  %308 = call i32 @elink_cl45_read(%struct.bxe_softc* %304, %struct.elink_phy* %305, i32 %306, i32 %307, i32* %10)
  br label %315

309:                                              ; preds = %300
  %310 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %311 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %312 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %313 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_3, align 4
  %314 = call i32 @elink_cl45_read(%struct.bxe_softc* %310, %struct.elink_phy* %311, i32 %312, i32 %313, i32* %10)
  br label %315

315:                                              ; preds = %309, %303
  %316 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* %10, align 4
  %319 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %317, i32 %318)
  %320 = load i32, i32* %8, align 4
  %321 = and i32 %320, 1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %315
  %324 = load i32, i32* %10, align 4
  %325 = shl i32 %324, 8
  store i32 %325, i32* %10, align 4
  br label %326

326:                                              ; preds = %323, %315
  %327 = load i32, i32* %10, align 4
  %328 = and i32 %327, 16128
  store i32 %328, i32* %10, align 4
  %329 = load i32, i32* %11, align 4
  %330 = icmp ne i32 %329, 0
  %331 = xor i1 %330, true
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  store i32 %333, i32* %11, align 4
  %334 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %335 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %336 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* %10, align 4
  %339 = load i32, i32* %12, align 4
  %340 = call i32 @elink_get_link_speed_duplex(%struct.elink_phy* %334, %struct.elink_params* %335, %struct.elink_vars* %336, i32 %337, i32 %338, i32 %339)
  store i32 %340, i32* %13, align 4
  %341 = load i32, i32* %11, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %360, label %343

343:                                              ; preds = %326
  %344 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %345 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @ELINK_ETH_PHY_KR, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %343
  %350 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %351 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @ELINK_FLAGS_WC_DUAL_MODE, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %360, label %356

356:                                              ; preds = %349
  %357 = load i32, i32* @MAX_KR_LINK_RETRY, align 4
  %358 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %359 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %358, i32 0, i32 3
  store i32 %357, i32* %359, align 4
  br label %360

360:                                              ; preds = %356, %349, %343, %326
  %361 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %362 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %363 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %366 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %369 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %361, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %364, i32 %367, i32 %370)
  %372 = load i32, i32* %13, align 4
  ret i32 %372
}

declare dso_local i32 @elink_get_warpcore_lane(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

declare dso_local i32 @elink_ext_phy_resolve_fc(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params*) #1

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @elink_get_link_speed_duplex(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
