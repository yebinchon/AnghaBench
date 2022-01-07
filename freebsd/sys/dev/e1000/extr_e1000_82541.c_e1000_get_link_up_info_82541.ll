; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_get_link_up_info_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_get_link_up_info_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"e1000_get_link_up_info_82541\00", align 1
@PHY_AUTONEG_EXP = common dso_local global i32 0, align 4
@NWAY_ER_LP_NWAY_CAPS = common dso_local global i64 0, align 8
@HALF_DUPLEX = common dso_local global i64 0, align 8
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@NWAY_LPAR_100TX_FD_CAPS = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@NWAY_LPAR_10T_FD_CAPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64*, i64*)* @e1000_get_link_up_info_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_link_up_info_82541(%struct.e1000_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.e1000_phy_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_phy_info* %11, %struct.e1000_phy_info** %7, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = call i64 @e1000_get_speed_and_duplex_copper_generic(%struct.e1000_hw* %13, i64* %14, i64* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %89

20:                                               ; preds = %3
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %89

26:                                               ; preds = %20
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %32 = bitcast %struct.e1000_hw* %31 to %struct.e1000_hw.0*
  %33 = load i32, i32* @PHY_AUTONEG_EXP, align 4
  %34 = call i64 %30(%struct.e1000_hw.0* %32, i32 %33, i64* %9)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %89

38:                                               ; preds = %26
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @NWAY_ER_LP_NWAY_CAPS, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @HALF_DUPLEX, align 8
  %45 = load i64*, i64** %6, align 8
  store i64 %44, i64* %45, align 8
  br label %88

46:                                               ; preds = %38
  %47 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %49, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %52 = bitcast %struct.e1000_hw* %51 to %struct.e1000_hw.0*
  %53 = load i32, i32* @PHY_LP_ABILITY, align 4
  %54 = call i64 %50(%struct.e1000_hw.0* %52, i32 %53, i64* %9)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %89

58:                                               ; preds = %46
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPEED_100, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @NWAY_LPAR_100TX_FD_CAPS, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* @HALF_DUPLEX, align 8
  %70 = load i64*, i64** %6, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  br label %87

72:                                               ; preds = %58
  %73 = load i64*, i64** %5, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SPEED_10, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @NWAY_LPAR_10T_FD_CAPS, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i64, i64* @HALF_DUPLEX, align 8
  %84 = load i64*, i64** %6, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %72
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87, %43
  br label %89

89:                                               ; preds = %88, %57, %37, %25, %19
  %90 = load i64, i64* %8, align 8
  ret i64 %90
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_get_speed_and_duplex_copper_generic(%struct.e1000_hw*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
