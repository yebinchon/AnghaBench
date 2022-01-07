; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_get_supported_physical_layer_X540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_get_supported_physical_layer_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_PHYSICAL_LAYER_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ixgbe_get_supported_physical_layer_X540\00", align 1
@IXGBE_MDIO_PHY_EXT_ABILITY = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_10GBASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_T = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_1000BASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_100BASETX_ABILITY = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_100BASE_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_supported_physical_layer_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %10, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = bitcast %struct.ixgbe_hw* %12 to %struct.ixgbe_hw.0*
  %14 = load i32, i32* @IXGBE_MDIO_PHY_EXT_ABILITY, align 4
  %15 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %16 = call i32 %11(%struct.ixgbe_hw.0* %13, i32 %14, i32 %15, i32* %4)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IXGBE_MDIO_PHY_10GBASET_ABILITY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_T, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IXGBE_MDIO_PHY_1000BASET_ABILITY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IXGBE_MDIO_PHY_100BASETX_ABILITY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @IXGBE_PHYSICAL_LAYER_100BASE_TX, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
