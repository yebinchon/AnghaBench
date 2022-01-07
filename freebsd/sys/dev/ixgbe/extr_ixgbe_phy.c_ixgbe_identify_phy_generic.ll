; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_phy_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_phy_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"ixgbe_identify_phy_generic\00", align 1
@IXGBE_GSSR_PHY1_SM = common dso_local global i64 0, align 8
@IXGBE_GSSR_PHY0_SM = common dso_local global i64 0, align 8
@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD = common dso_local global i32 0, align 4
@IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD_SHIFT = common dso_local global i32 0, align 4
@IXGBE_MAX_PHY_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %6, i64* %4, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i64, i64* @IXGBE_GSSR_PHY1_SM, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i64 %20, i64* %23, align 8
  br label %29

24:                                               ; preds = %13
  %25 = load i64, i64* @IXGBE_GSSR_PHY0_SM, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ixgbe_phy_unknown, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %38, i64* %2, align 8
  br label %88

39:                                               ; preds = %30
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD_SHIFT, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @ixgbe_probe_phy(%struct.ixgbe_hw* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %59, i64* %2, align 8
  br label %88

60:                                               ; preds = %45
  %61 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %61, i64* %2, align 8
  br label %88

62:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IXGBE_MAX_PHY_ADDR, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @ixgbe_probe_phy(%struct.ixgbe_hw* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %73, i64* %4, align 8
  br label %78

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %63

78:                                               ; preds = %72, %63
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @IXGBE_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i64, i64* %4, align 8
  store i64 %87, i64* %2, align 8
  br label %88

88:                                               ; preds = %86, %60, %58, %37
  %89 = load i64, i64* %2, align 8
  ret i64 %89
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_probe_phy(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
