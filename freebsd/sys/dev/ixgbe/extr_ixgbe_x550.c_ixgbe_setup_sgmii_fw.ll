; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_sgmii_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_sgmii_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.ixgbe_mac_info }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_SGMII_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_CLAUSE_37_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_1G = common dso_local global i32 0, align 4
@IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_10_D = common dso_local global i32 0, align 4
@IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_100_D = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_AN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_sgmii_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_sgmii_fw(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_mac_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 2
  store %struct.ixgbe_mac_info* %14, %struct.ixgbe_mac_info** %8, align 8
  %15 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %16 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.2*
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %24)
  %26 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %27 = call i64 %18(%struct.ixgbe_hw.2* %20, i32 %25, i32 %26, i32* %9)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* %12, align 8
  store i64 %31, i64* %4, align 8
  br label %200

32:                                               ; preds = %3
  %33 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_SGMII_EN, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_CLAUSE_37_EN, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_1G, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %53, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %56 = bitcast %struct.ixgbe_hw* %55 to %struct.ixgbe_hw.1*
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %60)
  %62 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 %54(%struct.ixgbe_hw.1* %56, i32 %61, i32 %62, i32 %63)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %32
  %68 = load i64, i64* %12, align 8
  store i64 %68, i64* %4, align 8
  br label %200

69:                                               ; preds = %32
  %70 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %71 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %72, align 8
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %75 = bitcast %struct.ixgbe_hw* %74 to %struct.ixgbe_hw.2*
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @IXGBE_KRM_SGMII_CTRL(i32 %79)
  %81 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %82 = call i64 %73(%struct.ixgbe_hw.2* %75, i32 %80, i32 %81, i32* %10)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i64, i64* %12, align 8
  store i64 %86, i64* %4, align 8
  br label %200

87:                                               ; preds = %69
  %88 = load i32, i32* @IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_10_D, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* @IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_100_D, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %97 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %98, align 8
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %101 = bitcast %struct.ixgbe_hw* %100 to %struct.ixgbe_hw.1*
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %103 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @IXGBE_KRM_SGMII_CTRL(i32 %105)
  %107 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i64 %99(%struct.ixgbe_hw.1* %101, i32 %106, i32 %107, i32 %108)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %87
  %113 = load i64, i64* %12, align 8
  store i64 %113, i64* %4, align 8
  br label %200

114:                                              ; preds = %87
  %115 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %116 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %117, align 8
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %120 = bitcast %struct.ixgbe_hw* %119 to %struct.ixgbe_hw.1*
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %124)
  %126 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i64 %118(%struct.ixgbe_hw.1* %120, i32 %125, i32 %126, i32 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %114
  %132 = load i64, i64* %12, align 8
  store i64 %132, i64* %4, align 8
  br label %200

133:                                              ; preds = %114
  %134 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %135 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %136, align 8
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %139 = bitcast %struct.ixgbe_hw* %138 to %struct.ixgbe_hw.2*
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %143)
  %145 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %146 = call i64 %137(%struct.ixgbe_hw.2* %139, i32 %144, i32 %145, i32* %11)
  store i64 %146, i64* %12, align 8
  %147 = load i64, i64* %12, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %133
  %150 = load i64, i64* %12, align 8
  store i64 %150, i64* %4, align 8
  br label %200

151:                                              ; preds = %133
  %152 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %11, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_AN, align 4
  %157 = load i32, i32* %11, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %11, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN, align 4
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN, align 4
  %167 = load i32, i32* %11, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %11, align 4
  %169 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %170 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %171, align 8
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %174 = bitcast %struct.ixgbe_hw* %173 to %struct.ixgbe_hw.1*
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %176 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %178)
  %180 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i64 %172(%struct.ixgbe_hw.1* %174, i32 %179, i32 %180, i32 %181)
  store i64 %182, i64* %12, align 8
  %183 = load i64, i64* %12, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %151
  %186 = load i64, i64* %12, align 8
  store i64 %186, i64* %4, align 8
  br label %200

187:                                              ; preds = %151
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %189 = call i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %188)
  store i64 %189, i64* %12, align 8
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %191 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64 (%struct.ixgbe_hw.0*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32)** %193, align 8
  %195 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %196 = bitcast %struct.ixgbe_hw* %195 to %struct.ixgbe_hw.0*
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %7, align 4
  %199 = call i64 %194(%struct.ixgbe_hw.0* %196, i32 %197, i32 %198)
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %187, %185, %149, %131, %112, %85, %67, %30
  %201 = load i64, i64* %4, align 8
  ret i64 %201
}

declare dso_local i32 @IXGBE_KRM_LINK_CTRL_1(i32) #1

declare dso_local i32 @IXGBE_KRM_SGMII_CTRL(i32) #1

declare dso_local i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32) #1

declare dso_local i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
