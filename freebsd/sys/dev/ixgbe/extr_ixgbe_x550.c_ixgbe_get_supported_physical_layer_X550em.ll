; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_get_supported_physical_layer_X550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_get_supported_physical_layer_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@IXGBE_PHYSICAL_LAYER_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ixgbe_get_supported_physical_layer_X550em\00", align 1
@ixgbe_mac_X550EM_a = common dso_local global i32 0, align 4
@IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_2500BASE_KX = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_KR_L = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_KX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KR = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KX4 = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_EXT_ABILITY = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_10GBASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_T = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_1000BASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_100BASE_TX = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10_FULL = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10BASE_T = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_supported_physical_layer_X550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %10, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = bitcast %struct.ixgbe_hw* %12 to %struct.ixgbe_hw.2*
  %14 = call i32 %11(%struct.ixgbe_hw.2* %13)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %125 [
    i32 130, label %19
    i32 128, label %47
    i32 129, label %51
    i32 131, label %55
    i32 133, label %84
    i32 132, label %121
    i32 134, label %123
  ]

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ixgbe_mac_X550EM_a, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @IXGBE_PHYSICAL_LAYER_2500BASE_KX, align 4
  store i32 %35, i32* %3, align 4
  br label %126

36:                                               ; preds = %26
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_KR_L, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  store i32 %43, i32* %3, align 4
  br label %126

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %1, %46
  %48 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KR, align 4
  %49 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %3, align 4
  br label %126

51:                                               ; preds = %1
  %52 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  %53 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %3, align 4
  br label %126

55:                                               ; preds = %1
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %59, align 8
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = bitcast %struct.ixgbe_hw* %61 to %struct.ixgbe_hw.1*
  %63 = load i32, i32* @IXGBE_MDIO_PHY_EXT_ABILITY, align 4
  %64 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %65 = call i32 %60(%struct.ixgbe_hw.1* %62, i32 %63, i32 %64, i32* %4)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @IXGBE_MDIO_PHY_10GBASET_ABILITY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %55
  %71 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_T, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %55
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @IXGBE_MDIO_PHY_1000BASET_ABILITY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %126

84:                                               ; preds = %1
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %84
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i32, i32* @IXGBE_PHYSICAL_LAYER_100BASE_TX, align 4
  %106 = load i32, i32* %3, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %96
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10BASE_T, align 4
  %118 = load i32, i32* %3, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %108
  br label %126

121:                                              ; preds = %1
  %122 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  store i32 %122, i32* %3, align 4
  br label %126

123:                                              ; preds = %1
  %124 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %1
  br label %126

126:                                              ; preds = %125, %123, %121, %120, %83, %51, %47, %42, %34
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %130, align 8
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %133 = bitcast %struct.ixgbe_hw* %132 to %struct.ixgbe_hw.0*
  %134 = call i64 %131(%struct.ixgbe_hw.0* %133)
  %135 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %139 = call i32 @ixgbe_get_supported_phy_sfp_layer_generic(%struct.ixgbe_hw* %138)
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %137, %126
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_get_supported_phy_sfp_layer_generic(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
