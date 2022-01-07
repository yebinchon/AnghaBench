; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_kr_speed_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_kr_speed_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_CAP_KR = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_CAP_KX = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_a = common dso_local global i64 0, align 8
@IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_AN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbe_setup_kr_speed_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %11, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = bitcast %struct.ixgbe_hw* %13 to %struct.ixgbe_hw.1*
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %18)
  %20 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %21 = call i64 %12(%struct.ixgbe_hw.1* %14, i32 %19, i32 %20, i32* %7)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  br label %131

26:                                               ; preds = %2
  %27 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_CAP_KR, align 4
  %31 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_CAP_KX, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_CAP_KR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %26
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_CAP_KX, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %57, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = bitcast %struct.ixgbe_hw* %59 to %struct.ixgbe_hw.0*
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %64)
  %66 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 %58(%struct.ixgbe_hw.0* %60, i32 %65, i32 %66, i32 %67)
  store i64 %68, i64* %6, align 8
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ixgbe_mac_X550EM_a, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %128

75:                                               ; preds = %53
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.1*
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %86)
  %88 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %89 = call i64 %80(%struct.ixgbe_hw.1* %82, i32 %87, i32 %88, i32* %7)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %75
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %3, align 8
  br label %131

94:                                               ; preds = %75
  %95 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_AN, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %114 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %116, align 8
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %119 = bitcast %struct.ixgbe_hw* %118 to %struct.ixgbe_hw.0*
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %123)
  %125 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i64 %117(%struct.ixgbe_hw.0* %119, i32 %124, i32 %125, i32 %126)
  store i64 %127, i64* %6, align 8
  br label %128

128:                                              ; preds = %94, %53
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %130 = call i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %129)
  store i64 %130, i64* %3, align 8
  br label %131

131:                                              ; preds = %128, %92, %24
  %132 = load i64, i64* %3, align 8
  ret i64 %132
}

declare dso_local i32 @IXGBE_KRM_LINK_CTRL_1(i32) #1

declare dso_local i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32) #1

declare dso_local i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
