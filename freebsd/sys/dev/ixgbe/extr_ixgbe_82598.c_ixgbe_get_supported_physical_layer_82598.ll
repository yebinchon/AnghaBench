; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_get_supported_physical_layer_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_get_supported_physical_layer_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@IXGBE_PHYSICAL_LAYER_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ixgbe_get_supported_physical_layer_82598\00", align 1
@IXGBE_MDIO_PHY_EXT_ABILITY = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_10GBASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_T = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_1000BASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_100BASETX_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_100BASE_TX = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_KX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_KX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_BX = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_CX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_CX4 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_KX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KX4 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@ixgbe_phy_nl = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_SR = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_LR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_supported_physical_layer_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = load i32, i32* @IXGBE_AUTOC, align 4
  %11 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IXGBE_AUTOC_10G_PMA_PMD_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IXGBE_AUTOC_1G_PMA_PMD_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.2*
  %26 = call i32 %23(%struct.ixgbe_hw.2* %25)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %69 [
    i32 131, label %31
    i32 132, label %31
  ]

31:                                               ; preds = %1, %1
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %35, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = bitcast %struct.ixgbe_hw* %37 to %struct.ixgbe_hw.1*
  %39 = load i32, i32* @IXGBE_MDIO_PHY_EXT_ABILITY, align 4
  %40 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %41 = call i32 %36(%struct.ixgbe_hw.1* %38, i32 %39, i32 %40, i32* %7)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IXGBE_MDIO_PHY_10GBASET_ABILITY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_T, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %31
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @IXGBE_MDIO_PHY_1000BASET_ABILITY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @IXGBE_MDIO_PHY_100BASETX_ABILITY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @IXGBE_PHYSICAL_LAYER_100BASE_TX, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %59
  br label %160

69:                                               ; preds = %1
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %73 = and i32 %71, %72
  switch i32 %73, label %118 [
    i32 141, label %74
    i32 140, label %74
    i32 142, label %83
    i32 139, label %99
    i32 138, label %99
  ]

74:                                               ; preds = %70, %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @IXGBE_AUTOC_1G_KX, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_BX, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %78
  br label %119

83:                                               ; preds = %70
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @IXGBE_AUTOC_10G_CX4, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_CX4, align 4
  store i32 %88, i32* %3, align 4
  br label %98

89:                                               ; preds = %83
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @IXGBE_AUTOC_10G_KX4, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %87
  br label %119

99:                                               ; preds = %70, %70
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %106 = load i32, i32* %3, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %108
  br label %119

118:                                              ; preds = %70
  br label %119

119:                                              ; preds = %118, %117, %98, %82
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ixgbe_phy_nl, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %119
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %130, align 8
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %133 = bitcast %struct.ixgbe_hw* %132 to %struct.ixgbe_hw.0*
  %134 = call i32 %131(%struct.ixgbe_hw.0* %133)
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %136 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %145 [
    i32 130, label %139
    i32 128, label %141
    i32 129, label %143
  ]

139:                                              ; preds = %126
  %140 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU, align 4
  store i32 %140, i32* %3, align 4
  br label %147

141:                                              ; preds = %126
  %142 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  store i32 %142, i32* %3, align 4
  br label %147

143:                                              ; preds = %126
  %144 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  store i32 %144, i32* %3, align 4
  br label %147

145:                                              ; preds = %126
  %146 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %143, %141, %139
  br label %148

148:                                              ; preds = %147, %119
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %150 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  switch i32 %151, label %158 [
    i32 134, label %152
    i32 137, label %154
    i32 136, label %154
    i32 133, label %154
    i32 135, label %156
  ]

152:                                              ; preds = %148
  %153 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU, align 4
  store i32 %153, i32* %3, align 4
  br label %159

154:                                              ; preds = %148, %148, %148
  %155 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  store i32 %155, i32* %3, align 4
  br label %159

156:                                              ; preds = %148
  %157 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  store i32 %157, i32* %3, align 4
  br label %159

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %156, %154, %152
  br label %160

160:                                              ; preds = %159, %68
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
