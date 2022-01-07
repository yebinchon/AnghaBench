; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_read_i2c_phy_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_read_i2c_phy_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.3*, i32, i32, i32)* }
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ixgbe_read_i2c_phy_82598\00", align 1
@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_1 = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY1_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY0_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@ixgbe_phy_nl = common dso_local global i64 0, align 8
@IXGBE_I2C_EEPROM_READ_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_SDA_SCL_ADDR = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_SDA_SCL_STAT = common dso_local global i32 0, align 4
@IXGBE_I2C_EEPROM_STATUS_MASK = common dso_local global i32 0, align 4
@IXGBE_I2C_EEPROM_STATUS_IN_PROGRESS = common dso_local global i32 0, align 4
@IXGBE_I2C_EEPROM_STATUS_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"EEPROM read did not pass.\0A\00", align 1
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_MDIO_PMA_PMD_SDA_SCL_DATA = common dso_local global i32 0, align 4
@IXGBE_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_read_i2c_phy_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_read_i2c_phy_82598(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = load i32, i32* @IXGBE_STATUS, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  %21 = load i32, i32* @IXGBE_STATUS_LAN_ID_1, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @IXGBE_GSSR_PHY1_SM, align 4
  store i32 %25, i32* %14, align 4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @IXGBE_GSSR_PHY0_SM, align 4
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = load i32, i32* %14, align 4
  %37 = call i64 %33(%struct.ixgbe_hw.0* %35, i32 %36)
  %38 = load i64, i64* @IXGBE_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %41, i64* %5, align 8
  br label %129

42:                                               ; preds = %28
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ixgbe_phy_nl, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %115

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @IXGBE_I2C_EEPROM_READ_MASK, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32 (%struct.ixgbe_hw.3*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32, i32)** %60, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %63 = bitcast %struct.ixgbe_hw* %62 to %struct.ixgbe_hw.3*
  %64 = load i32, i32* @IXGBE_MDIO_PMA_PMD_SDA_SCL_ADDR, align 4
  %65 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 %61(%struct.ixgbe_hw.3* %63, i32 %64, i32 %65, i32 %66)
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %91, %49
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 100
  br i1 %70, label %71, label %94

71:                                               ; preds = %68
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %75, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %78 = bitcast %struct.ixgbe_hw* %77 to %struct.ixgbe_hw.2*
  %79 = load i32, i32* @IXGBE_MDIO_PMA_PMD_SDA_SCL_STAT, align 4
  %80 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %81 = call i32 %76(%struct.ixgbe_hw.2* %78, i32 %79, i32 %80, i32* %13)
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @IXGBE_I2C_EEPROM_STATUS_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @IXGBE_I2C_EEPROM_STATUS_IN_PROGRESS, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %71
  br label %94

89:                                               ; preds = %71
  %90 = call i32 @msec_delay(i32 10)
  br label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %68

94:                                               ; preds = %88, %68
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @IXGBE_I2C_EEPROM_STATUS_PASS, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %100, i64* %10, align 8
  br label %118

101:                                              ; preds = %94
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %103 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %105, align 8
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %108 = bitcast %struct.ixgbe_hw* %107 to %struct.ixgbe_hw.2*
  %109 = load i32, i32* @IXGBE_MDIO_PMA_PMD_SDA_SCL_DATA, align 4
  %110 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %111 = call i32 %106(%struct.ixgbe_hw.2* %108, i32 %109, i32 %110, i32* %12)
  %112 = load i32, i32* %12, align 4
  %113 = ashr i32 %112, 8
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  br label %117

115:                                              ; preds = %42
  %116 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %115, %101
  br label %118

118:                                              ; preds = %117, %98
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %120 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %122, align 8
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %125 = bitcast %struct.ixgbe_hw* %124 to %struct.ixgbe_hw.1*
  %126 = load i32, i32* %14, align 4
  %127 = call i32 %123(%struct.ixgbe_hw.1* %125, i32 %126)
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %118, %40
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
