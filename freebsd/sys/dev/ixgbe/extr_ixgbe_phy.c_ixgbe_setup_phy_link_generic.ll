; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_REG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ixgbe_setup_phy_link_generic\00", align 1
@IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MII_10GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_MII_5GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_2_5GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_2_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_1GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_ADVERTISE_REG = common dso_local global i32 0, align 4
@IXGBE_MII_100BASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_MII_100BASE_T_ADVERTISE_HALF = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_CONTROL = common dso_local global i32 0, align 4
@IXGBE_MII_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_phy_link_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @IXGBE_MII_AUTONEG_REG, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %6, align 4
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = call i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw* %12, i32* %7, i32* %6)
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.1*
  %21 = load i32, i32* @IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG, align 4
  %22 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %23 = call i32 %18(%struct.ixgbe_hw.1* %20, i32 %21, i32 %22, i32* %5)
  %24 = load i32, i32* @IXGBE_MII_10GBASE_T_ADVERTISE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @IXGBE_MII_10GBASE_T_ADVERTISE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %35, %1
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %48, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = bitcast %struct.ixgbe_hw* %50 to %struct.ixgbe_hw.0*
  %52 = load i32, i32* @IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG, align 4
  %53 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %49(%struct.ixgbe_hw.0* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %59, align 8
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = bitcast %struct.ixgbe_hw* %61 to %struct.ixgbe_hw.1*
  %63 = load i32, i32* @IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG, align 4
  %64 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %65 = call i32 %60(%struct.ixgbe_hw.1* %62, i32 %63, i32 %64, i32* %5)
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ixgbe_mac_X550, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %44
  %73 = load i32, i32* @IXGBE_MII_5GBASE_T_ADVERTISE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IXGBE_LINK_SPEED_5GB_FULL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %72
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @IXGBE_LINK_SPEED_5GB_FULL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @IXGBE_MII_5GBASE_T_ADVERTISE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %84, %72
  %94 = load i32, i32* @IXGBE_MII_2_5GBASE_T_ADVERTISE, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %93
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @IXGBE_MII_2_5GBASE_T_ADVERTISE, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %105, %93
  br label %115

115:                                              ; preds = %114, %44
  %116 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %115
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE, align 4
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %132, %127, %115
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %140, align 8
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %143 = bitcast %struct.ixgbe_hw* %142 to %struct.ixgbe_hw.0*
  %144 = load i32, i32* @IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG, align 4
  %145 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 %141(%struct.ixgbe_hw.0* %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %149 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %151, align 8
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %154 = bitcast %struct.ixgbe_hw* %153 to %struct.ixgbe_hw.1*
  %155 = load i32, i32* @IXGBE_MII_AUTONEG_ADVERTISE_REG, align 4
  %156 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %157 = call i32 %152(%struct.ixgbe_hw.1* %154, i32 %155, i32 %156, i32* %5)
  %158 = load i32, i32* @IXGBE_MII_100BASE_T_ADVERTISE, align 4
  %159 = load i32, i32* @IXGBE_MII_100BASE_T_ADVERTISE_HALF, align 4
  %160 = or i32 %158, %159
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %5, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %5, align 4
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %165 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %136
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @IXGBE_MII_100BASE_T_ADVERTISE, align 4
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %171, %136
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %184, align 8
  %186 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %187 = bitcast %struct.ixgbe_hw* %186 to %struct.ixgbe_hw.0*
  %188 = load i32, i32* @IXGBE_MII_AUTONEG_ADVERTISE_REG, align 4
  %189 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i32 %185(%struct.ixgbe_hw.0* %187, i32 %188, i32 %189, i32 %190)
  %192 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %193 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %180
  %196 = load i32, i32* %4, align 4
  store i32 %196, i32* %2, align 4
  br label %223

197:                                              ; preds = %180
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %199 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %201, align 8
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %204 = bitcast %struct.ixgbe_hw* %203 to %struct.ixgbe_hw.1*
  %205 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_CONTROL, align 4
  %206 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %207 = call i32 %202(%struct.ixgbe_hw.1* %204, i32 %205, i32 %206, i32* %5)
  %208 = load i32, i32* @IXGBE_MII_RESTART, align 4
  %209 = load i32, i32* %5, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %5, align 4
  %211 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %212 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %214, align 8
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %217 = bitcast %struct.ixgbe_hw* %216 to %struct.ixgbe_hw.0*
  %218 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_CONTROL, align 4
  %219 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %220 = load i32, i32* %5, align 4
  %221 = call i32 %215(%struct.ixgbe_hw.0* %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* %4, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %197, %195
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
