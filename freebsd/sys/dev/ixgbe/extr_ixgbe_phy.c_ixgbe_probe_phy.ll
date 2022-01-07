; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_probe_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_probe_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [39 x i8] c"Unable to validate PHY address 0x%04X\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@IXGBE_MDIO_PHY_EXT_ABILITY = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_10GBASET_ABILITY = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_1000BASET_ABILITY = common dso_local global i32 0, align 4
@ixgbe_phy_cu_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_generic = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbe_probe_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_probe_phy(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ixgbe_validate_phy_addr(%struct.ixgbe_hw* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %17 = call i64 @ixgbe_get_phy_id(%struct.ixgbe_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %15
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ixgbe_get_phy_type_from_id(i32 %25)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ixgbe_phy_unknown, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %21
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.0*
  %44 = load i32, i32* @IXGBE_MDIO_PHY_EXT_ABILITY, align 4
  %45 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %46 = call i32 %41(%struct.ixgbe_hw.0* %43, i32 %44, i32 %45, i32* %6)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @IXGBE_MDIO_PHY_10GBASET_ABILITY, align 4
  %49 = load i32, i32* @IXGBE_MDIO_PHY_1000BASET_ABILITY, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load i64, i64* @ixgbe_phy_cu_unknown, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %63

58:                                               ; preds = %36
  %59 = load i64, i64* @ixgbe_phy_generic, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %21
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %19, %11
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ixgbe_validate_phy_addr(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i64 @ixgbe_get_phy_id(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_get_phy_type_from_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
