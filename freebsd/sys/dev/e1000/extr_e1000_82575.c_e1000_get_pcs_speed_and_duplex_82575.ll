; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_get_pcs_speed_and_duplex_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_get_pcs_speed_and_duplex_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"e1000_get_pcs_speed_and_duplex_82575\00", align 1
@E1000_PCS_LSTAT = common dso_local global i32 0, align 4
@E1000_PCS_LSTS_LINK_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E1000_PCS_LSTS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@E1000_PCS_LSTS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@E1000_PCS_LSTS_DUPLEX_FULL = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@HALF_DUPLEX = common dso_local global i64 0, align 8
@e1000_i354 = common dso_local global i64 0, align 8
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_2P5_SKU = common dso_local global i32 0, align 4
@E1000_STATUS_2P5_SKU_OVER = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"2500 Mbs, \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64*, i64*)* @e1000_get_pcs_speed_and_duplex_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_pcs_speed_and_duplex_82575(%struct.e1000_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.e1000_mac_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_mac_info* %11, %struct.e1000_mac_info** %7, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = load i32, i32* @E1000_PCS_LSTAT, align 4
  %15 = call i32 @E1000_READ_REG(%struct.e1000_hw* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @E1000_PCS_LSTS_LINK_OK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %3
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @E1000_PCS_LSTS_SPEED_1000, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @SPEED_1000, align 8
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  br label %43

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @E1000_PCS_LSTS_SPEED_100, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* @SPEED_100, align 8
  %38 = load i64*, i64** %5, align 8
  store i64 %37, i64* %38, align 8
  br label %42

39:                                               ; preds = %31
  %40 = load i64, i64* @SPEED_10, align 8
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @E1000_PCS_LSTS_DUPLEX_FULL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, i64* @FULL_DUPLEX, align 8
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  br label %54

51:                                               ; preds = %43
  %52 = load i64, i64* @HALF_DUPLEX, align 8
  %53 = load i64*, i64** %6, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %56 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @e1000_i354, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %62 = load i32, i32* @E1000_STATUS, align 4
  %63 = call i32 @E1000_READ_REG(%struct.e1000_hw* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @E1000_STATUS_2P5_SKU, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @E1000_STATUS_2P5_SKU_OVER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* @SPEED_2500, align 8
  %75 = load i64*, i64** %5, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* @FULL_DUPLEX, align 8
  %77 = load i64*, i64** %6, align 8
  store i64 %76, i64* %77, align 8
  %78 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %79 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %73, %68, %60
  br label %81

81:                                               ; preds = %80, %54
  br label %88

82:                                               ; preds = %3
  %83 = load i32, i32* @FALSE, align 4
  %84 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %85 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load i64*, i64** %5, align 8
  store i64 0, i64* %86, align 8
  %87 = load i64*, i64** %6, align 8
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %81
  %89 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %89
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
