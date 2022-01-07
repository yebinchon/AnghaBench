; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_848xx_read_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_848xx_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i64, i32 }

@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_PMD_SIGNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BCM848xx: PMD_SIGNAL 1.a811 = 0x%x\0A\00", align 1
@ELINK_SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MDIO_AN_REG_8481_EXPANSION_REG_ACCESS = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_EXPANSION_REG_RD_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Legacy speed status = 0x%x\0A\00", align 1
@ELINK_SPEED_10 = common dso_local global i32 0, align 4
@ELINK_SPEED_100 = common dso_local global i32 0, align 4
@ELINK_SPEED_1000 = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_IEEE_PHY_TEST = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_LEGACY_MII_CTRL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Link is up in %dMbps, is_duplex_full= %d\0A\00", align 1
@MDIO_AN_REG_8481_LEGACY_MII_STATUS = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_LEGACY_AN_EXPANSION = common dso_local global i32 0, align 4
@LINK_STATUS_PARALLEL_DETECTION_USED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"BCM848x3: link speed is %d\0A\00", align 1
@MDIO_AN_REG_CL37_FC_LP = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10THD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100T4_CAPABLE = common dso_local global i32 0, align 4
@MDIO_AN_REG_1000T_STATUS = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_AN_REG_MASTER_STATUS = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_848xx_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_848xx_read_status(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
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
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 1
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  store %struct.bxe_softc* %17, %struct.bxe_softc** %7, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %19 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %20 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %21 = call i32 @elink_cl45_read(%struct.bxe_softc* %18, %struct.elink_phy* %19, i32 %20, i32 65530, i32* %9)
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %23 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %24 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %25 = load i32, i32* @MDIO_PMA_REG_8481_PMD_SIGNAL, align 4
  %26 = call i32 @elink_cl45_read(%struct.bxe_softc* %22, %struct.elink_phy* %23, i32 %24, i32 %25, i32* %10)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 2048
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load i32, i32* @ELINK_SPEED_10000, align 4
  %35 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %36 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* @DUPLEX_FULL, align 8
  %38 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %39 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  store i32 1, i32* %11, align 4
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %41 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %42 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %43 = call i32 @elink_ext_phy_10G_an_resolve(%struct.bxe_softc* %40, %struct.elink_phy* %41, %struct.elink_vars* %42)
  br label %166

44:                                               ; preds = %3
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %46 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %47 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %48 = load i32, i32* @MDIO_AN_REG_8481_EXPANSION_REG_ACCESS, align 4
  %49 = call i32 @elink_cl45_write(%struct.bxe_softc* %45, %struct.elink_phy* %46, i32 %47, i32 %48, i32 3906)
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %51 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %52 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %53 = load i32, i32* @MDIO_AN_REG_8481_EXPANSION_REG_RD_RW, align 4
  %54 = call i32 @elink_cl45_read(%struct.bxe_softc* %50, %struct.elink_phy* %51, i32 %52, i32 %53, i32* %12)
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 2048
  %60 = icmp eq i32 %59, 2048
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, 1536
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %44
  %67 = load i32, i32* @ELINK_SPEED_10, align 4
  %68 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %69 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %89

70:                                               ; preds = %44
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 512
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @ELINK_SPEED_100, align 4
  %75 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %76 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %88

77:                                               ; preds = %70
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 1024
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @ELINK_SPEED_1000, align 4
  %82 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %83 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %87

84:                                               ; preds = %77
  %85 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %86 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %73
  br label %89

89:                                               ; preds = %88, %66
  %90 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %91 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ELINK_FEATURE_CONFIG_IEEE_PHY_TEST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %98 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %99 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %100 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_MII_CTRL, align 4
  %101 = call i32 @elink_cl45_read(%struct.bxe_softc* %97, %struct.elink_phy* %98, i32 %99, i32 %100, i32* %14)
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %102, 12352
  %104 = icmp eq i32 %103, 64
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %96, %89
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %165

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 256
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i64, i64* @DUPLEX_FULL, align 8
  %117 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %118 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %123

119:                                              ; preds = %111
  %120 = load i64, i64* @DUPLEX_HALF, align 8
  %121 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %122 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %115
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %125 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %126 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %129 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DUPLEX_FULL, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %133)
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %136 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %137 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %138 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_MII_STATUS, align 4
  %139 = call i32 @elink_cl45_read(%struct.bxe_softc* %135, %struct.elink_phy* %136, i32 %137, i32 %138, i32* %8)
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, 32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %123
  %144 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %145 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %146 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %123
  %150 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %151 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %152 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %153 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_AN_EXPANSION, align 4
  %154 = call i32 @elink_cl45_read(%struct.bxe_softc* %150, %struct.elink_phy* %151, i32 %152, i32 %153, i32* %8)
  %155 = load i32, i32* %8, align 4
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %149
  %159 = load i32, i32* @LINK_STATUS_PARALLEL_DETECTION_USED, align 4
  %160 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %161 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %149
  br label %165

165:                                              ; preds = %164, %108
  br label %166

166:                                              ; preds = %165, %33
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %283

169:                                              ; preds = %166
  %170 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %171 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %172 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %176 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %177 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %178 = call i32 @elink_ext_phy_resolve_fc(%struct.elink_phy* %175, %struct.elink_params* %176, %struct.elink_vars* %177)
  %179 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %180 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %181 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %182 = load i32, i32* @MDIO_AN_REG_CL37_FC_LP, align 4
  %183 = call i32 @elink_cl45_read(%struct.bxe_softc* %179, %struct.elink_phy* %180, i32 %181, i32 %182, i32* %8)
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, 32
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %169
  %188 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10THD_CAPABLE, align 4
  %189 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %190 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %187, %169
  %194 = load i32, i32* %8, align 4
  %195 = and i32 %194, 64
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE, align 4
  %199 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %200 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %197, %193
  %204 = load i32, i32* %8, align 4
  %205 = and i32 %204, 128
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE, align 4
  %209 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %210 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %207, %203
  %214 = load i32, i32* %8, align 4
  %215 = and i32 %214, 256
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE, align 4
  %219 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %220 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %217, %213
  %224 = load i32, i32* %8, align 4
  %225 = and i32 %224, 512
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100T4_CAPABLE, align 4
  %229 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %230 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %223
  %234 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %235 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %236 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %237 = load i32, i32* @MDIO_AN_REG_1000T_STATUS, align 4
  %238 = call i32 @elink_cl45_read(%struct.bxe_softc* %234, %struct.elink_phy* %235, i32 %236, i32 %237, i32* %8)
  %239 = load i32, i32* %8, align 4
  %240 = and i32 %239, 1024
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %233
  %243 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE, align 4
  %244 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %245 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %242, %233
  %249 = load i32, i32* %8, align 4
  %250 = and i32 %249, 2048
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 4
  %254 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %255 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 8
  br label %258

258:                                              ; preds = %252, %248
  %259 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %260 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %261 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %262 = load i32, i32* @MDIO_AN_REG_MASTER_STATUS, align 4
  %263 = call i32 @elink_cl45_read(%struct.bxe_softc* %259, %struct.elink_phy* %260, i32 %261, i32 %262, i32* %8)
  %264 = load i32, i32* %8, align 4
  %265 = and i32 %264, 2048
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %258
  %268 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %269 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %270 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %267, %258
  %274 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %275 = call i64 @elink_is_8483x_8485x(%struct.elink_phy* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %279 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %280 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %281 = call i32 @elink_eee_an_resolve(%struct.elink_phy* %278, %struct.elink_params* %279, %struct.elink_vars* %280)
  br label %282

282:                                              ; preds = %277, %273
  br label %283

283:                                              ; preds = %282, %166
  %284 = load i32, i32* %11, align 4
  ret i32 %284
}

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_ext_phy_10G_an_resolve(%struct.bxe_softc*, %struct.elink_phy*, %struct.elink_vars*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

declare dso_local i32 @elink_ext_phy_resolve_fc(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i64 @elink_is_8483x_8485x(%struct.elink_phy*) #1

declare dso_local i32 @elink_eee_an_resolve(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
