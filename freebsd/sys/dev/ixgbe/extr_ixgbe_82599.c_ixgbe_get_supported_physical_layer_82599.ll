; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_get_supported_physical_layer_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_get_supported_physical_layer_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_PHYSICAL_LAYER_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ixgbe_get_support_physical_layer_82599\00", align 1
@IXGBE_MDIO_PHY_EXT_ABILITY = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_10GBASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_T = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_1000BASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_100BASETX_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_100BASE_TX = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_KX_BX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_KX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_BX = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_CX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_CX4 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_KX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KX4 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_XAUI = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_XAUI = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_KR = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KR = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SFI = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_supported_physical_layer_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %10 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = load i32, i32* @IXGBE_AUTOC, align 4
  %13 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = load i32, i32* @IXGBE_AUTOC2, align 4
  %16 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IXGBE_AUTOC_10G_PMA_PMD_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IXGBE_AUTOC_1G_PMA_PMD_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.1*
  %34 = call i32 %31(%struct.ixgbe_hw.1* %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %77 [
    i32 128, label %39
    i32 129, label %39
  ]

39:                                               ; preds = %1, %1
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %43, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = bitcast %struct.ixgbe_hw* %45 to %struct.ixgbe_hw.0*
  %47 = load i32, i32* @IXGBE_MDIO_PHY_EXT_ABILITY, align 4
  %48 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %49 = call i32 %44(%struct.ixgbe_hw.0* %46, i32 %47, i32 %48, i32* %9)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @IXGBE_MDIO_PHY_10GBASET_ABILITY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_T, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %39
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @IXGBE_MDIO_PHY_1000BASET_ABILITY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @IXGBE_MDIO_PHY_100BASETX_ABILITY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @IXGBE_PHYSICAL_LAYER_100BASE_TX, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %67
  br label %158

77:                                               ; preds = %1
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %153 [
    i32 133, label %82
    i32 132, label %82
    i32 135, label %91
    i32 134, label %112
    i32 131, label %125
    i32 130, label %125
  ]

82:                                               ; preds = %78, %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @IXGBE_AUTOC_1G_KX_BX, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %88 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_BX, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %3, align 4
  br label %158

90:                                               ; preds = %82
  br label %155

91:                                               ; preds = %78
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @IXGBE_AUTOC_10G_CX4, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_CX4, align 4
  store i32 %96, i32* %3, align 4
  br label %111

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @IXGBE_AUTOC_10G_KX4, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  store i32 %102, i32* %3, align 4
  br label %110

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @IXGBE_AUTOC_10G_XAUI, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_XAUI, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %103
  br label %110

110:                                              ; preds = %109, %101
  br label %111

111:                                              ; preds = %110, %95
  br label %158

112:                                              ; preds = %78
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @IXGBE_AUTOC2_10G_KR, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KR, align 4
  store i32 %117, i32* %3, align 4
  br label %158

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @IXGBE_AUTOC2_10G_SFI, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %155

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123
  br label %154

125:                                              ; preds = %78, %78
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %134
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KR, align 4
  %150 = load i32, i32* %3, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %143
  br label %158

153:                                              ; preds = %78
  br label %158

154:                                              ; preds = %124
  br label %155

155:                                              ; preds = %154, %122, %90
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %157 = call i32 @ixgbe_get_supported_phy_sfp_layer_generic(%struct.ixgbe_hw* %156)
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %155, %153, %152, %116, %111, %86, %76
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_get_supported_phy_sfp_layer_generic(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
