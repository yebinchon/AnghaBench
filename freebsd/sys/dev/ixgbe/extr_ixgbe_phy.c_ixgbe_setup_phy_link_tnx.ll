; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_tnx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_tnx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_REG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ixgbe_setup_phy_link_tnx\00", align 1
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MII_10GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_XNP_TX_REG = common dso_local global i32 0, align 4
@IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_ADVERTISE_REG = common dso_local global i32 0, align 4
@IXGBE_MII_100BASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_CONTROL = common dso_local global i32 0, align 4
@IXGBE_MII_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_phy_link_tnx(%struct.ixgbe_hw* %0) #0 {
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
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = call i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw* %12, i32* %7, i32* %6)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.1*
  %26 = load i32, i32* @IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG, align 4
  %27 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %28 = call i32 %23(%struct.ixgbe_hw.1* %25, i32 %26, i32 %27, i32* %5)
  %29 = load i32, i32* @IXGBE_MII_10GBASE_T_ADVERTISE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %18
  %41 = load i32, i32* @IXGBE_MII_10GBASE_T_ADVERTISE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %18
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %48, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = bitcast %struct.ixgbe_hw* %50 to %struct.ixgbe_hw.0*
  %52 = load i32, i32* @IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG, align 4
  %53 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %49(%struct.ixgbe_hw.0* %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %44, %1
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %56
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %65, align 8
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %68 = bitcast %struct.ixgbe_hw* %67 to %struct.ixgbe_hw.1*
  %69 = load i32, i32* @IXGBE_MII_AUTONEG_XNP_TX_REG, align 4
  %70 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %71 = call i32 %66(%struct.ixgbe_hw.1* %68, i32 %69, i32 %70, i32* %5)
  %72 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %61
  %84 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %61
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %89 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %91, align 8
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %94 = bitcast %struct.ixgbe_hw* %93 to %struct.ixgbe_hw.0*
  %95 = load i32, i32* @IXGBE_MII_AUTONEG_XNP_TX_REG, align 4
  %96 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 %92(%struct.ixgbe_hw.0* %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %87, %56
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %99
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %108, align 8
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %111 = bitcast %struct.ixgbe_hw* %110 to %struct.ixgbe_hw.1*
  %112 = load i32, i32* @IXGBE_MII_AUTONEG_ADVERTISE_REG, align 4
  %113 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %114 = call i32 %109(%struct.ixgbe_hw.1* %111, i32 %112, i32 %113, i32* %5)
  %115 = load i32, i32* @IXGBE_MII_100BASE_T_ADVERTISE, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %120 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %104
  %127 = load i32, i32* @IXGBE_MII_100BASE_T_ADVERTISE, align 4
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %104
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %132 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %134, align 8
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %137 = bitcast %struct.ixgbe_hw* %136 to %struct.ixgbe_hw.0*
  %138 = load i32, i32* @IXGBE_MII_AUTONEG_ADVERTISE_REG, align 4
  %139 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 %135(%struct.ixgbe_hw.0* %137, i32 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %130, %99
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %144 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %174

148:                                              ; preds = %142
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %150 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %152, align 8
  %154 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %155 = bitcast %struct.ixgbe_hw* %154 to %struct.ixgbe_hw.1*
  %156 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_CONTROL, align 4
  %157 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %158 = call i32 %153(%struct.ixgbe_hw.1* %155, i32 %156, i32 %157, i32* %5)
  %159 = load i32, i32* @IXGBE_MII_RESTART, align 4
  %160 = load i32, i32* %5, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %5, align 4
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %163 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %165, align 8
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %168 = bitcast %struct.ixgbe_hw* %167 to %struct.ixgbe_hw.0*
  %169 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_CONTROL, align 4
  %170 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 %166(%struct.ixgbe_hw.0* %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %148, %146
  %175 = load i32, i32* %2, align 4
  ret i32 %175
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
