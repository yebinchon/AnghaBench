; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_get_lasi_ext_t_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_get_lasi_ext_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@FALSE = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG = common dso_local global i32 0, align 4
@IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_FLAG = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_ALARM_1_INT = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_ALARM_1 = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL = common dso_local global i32 0, align 4
@IXGBE_ERR_OVERTEMP = common dso_local global i64 0, align 8
@IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_FAULT_MSG = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_STD_ALM2_INT = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM2 = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VEN_LSC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*)* @ixgbe_get_lasi_ext_t_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_lasi_ext_t_x550em(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.0*
  %17 = load i32, i32* @IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG, align 4
  %18 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %19 = call i64 %14(%struct.ixgbe_hw.0* %16, i32 %17, i32 %18, i32* %7)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @IXGBE_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %2
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %158

30:                                               ; preds = %23
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %34, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %37 = bitcast %struct.ixgbe_hw* %36 to %struct.ixgbe_hw.0*
  %38 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_FLAG, align 4
  %39 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %40 = call i64 %35(%struct.ixgbe_hw.0* %37, i32 %38, i32 %39, i32* %7)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @IXGBE_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN, align 4
  %47 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALARM_1_INT, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44, %30
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  br label %158

53:                                               ; preds = %44
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %57, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = bitcast %struct.ixgbe_hw* %59 to %struct.ixgbe_hw.0*
  %61 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALARM_1, align 4
  %62 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %63 = call i64 %58(%struct.ixgbe_hw.0* %60, i32 %61, i32 %62, i32* %7)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @IXGBE_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %3, align 8
  br label %158

69:                                               ; preds = %53
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %75, i32 %76)
  %78 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  store i64 %78, i64* %3, align 8
  br label %158

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %88, align 8
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %91 = bitcast %struct.ixgbe_hw* %90 to %struct.ixgbe_hw.0*
  %92 = load i32, i32* @IXGBE_MDIO_GLOBAL_FAULT_MSG, align 4
  %93 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %94 = call i64 %89(%struct.ixgbe_hw.0* %91, i32 %92, i32 %93, i32* %7)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @IXGBE_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i64, i64* %6, align 8
  store i64 %99, i64* %3, align 8
  br label %158

100:                                              ; preds = %84
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i32 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %105, i32 %106)
  %108 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  store i64 %108, i64* %3, align 8
  br label %158

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %79
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %115, align 8
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %118 = bitcast %struct.ixgbe_hw* %117 to %struct.ixgbe_hw.0*
  %119 = load i32, i32* @IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG, align 4
  %120 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %121 = call i64 %116(%struct.ixgbe_hw.0* %118, i32 %119, i32 %120, i32* %7)
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @IXGBE_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %111
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @IXGBE_MDIO_GLOBAL_STD_ALM2_INT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125, %111
  %131 = load i64, i64* %6, align 8
  store i64 %131, i64* %3, align 8
  br label %158

132:                                              ; preds = %125
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %134 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %136, align 8
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %139 = bitcast %struct.ixgbe_hw* %138 to %struct.ixgbe_hw.0*
  %140 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM2, align 4
  %141 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %142 = call i64 %137(%struct.ixgbe_hw.0* %139, i32 %140, i32 %141, i32* %7)
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @IXGBE_SUCCESS, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = load i64, i64* %6, align 8
  store i64 %147, i64* %3, align 8
  br label %158

148:                                              ; preds = %132
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VEN_LSC, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* @TRUE, align 4
  %155 = load i32*, i32** %5, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %157, i64* %3, align 8
  br label %158

158:                                              ; preds = %156, %146, %130, %104, %98, %74, %67, %51, %28
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

declare dso_local i32 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
