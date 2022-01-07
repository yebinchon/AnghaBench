; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_sgmii.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_sgmii.c"
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
@IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_1G = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_sgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_sgmii(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
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
  br label %183

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
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %51 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %52, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %55 = bitcast %struct.ixgbe_hw* %54 to %struct.ixgbe_hw.1*
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %59)
  %61 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i64 %53(%struct.ixgbe_hw.1* %55, i32 %60, i32 %61, i32 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %32
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %4, align 8
  br label %183

68:                                               ; preds = %32
  %69 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %70 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %71, align 8
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %74 = bitcast %struct.ixgbe_hw* %73 to %struct.ixgbe_hw.2*
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @IXGBE_KRM_SGMII_CTRL(i32 %78)
  %80 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %81 = call i64 %72(%struct.ixgbe_hw.2* %74, i32 %79, i32 %80, i32* %10)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %4, align 8
  br label %183

86:                                               ; preds = %68
  %87 = load i32, i32* @IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_10_D, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_100_D, align 4
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %94 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %95, align 8
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %98 = bitcast %struct.ixgbe_hw* %97 to %struct.ixgbe_hw.1*
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @IXGBE_KRM_SGMII_CTRL(i32 %102)
  %104 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i64 %96(%struct.ixgbe_hw.1* %98, i32 %103, i32 %104, i32 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %86
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %4, align 8
  br label %183

111:                                              ; preds = %86
  %112 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %113 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %114, align 8
  %116 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %117 = bitcast %struct.ixgbe_hw* %116 to %struct.ixgbe_hw.2*
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %119 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %121)
  %123 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %124 = call i64 %115(%struct.ixgbe_hw.2* %117, i32 %122, i32 %123, i32* %11)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %12, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = load i64, i64* %12, align 8
  store i64 %128, i64* %4, align 8
  br label %183

129:                                              ; preds = %111
  %130 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %11, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_1G, align 4
  %135 = load i32, i32* %11, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN, align 4
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  %147 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %8, align 8
  %148 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %149, align 8
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %152 = bitcast %struct.ixgbe_hw* %151 to %struct.ixgbe_hw.1*
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %154 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %156)
  %158 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i64 %150(%struct.ixgbe_hw.1* %152, i32 %157, i32 %158, i32 %159)
  store i64 %160, i64* %12, align 8
  %161 = load i64, i64* %12, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %129
  %164 = load i64, i64* %12, align 8
  store i64 %164, i64* %4, align 8
  br label %183

165:                                              ; preds = %129
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %167 = call i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %166)
  store i64 %167, i64* %12, align 8
  %168 = load i64, i64* %12, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i64, i64* %12, align 8
  store i64 %171, i64* %4, align 8
  br label %183

172:                                              ; preds = %165
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %174 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64 (%struct.ixgbe_hw.0*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32)** %176, align 8
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %179 = bitcast %struct.ixgbe_hw* %178 to %struct.ixgbe_hw.0*
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i64 %177(%struct.ixgbe_hw.0* %179, i32 %180, i32 %181)
  store i64 %182, i64* %4, align 8
  br label %183

183:                                              ; preds = %172, %170, %163, %127, %109, %84, %66, %30
  %184 = load i64, i64* %4, align 8
  ret i64 %184
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
