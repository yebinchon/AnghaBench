; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_d3_lplu_state_82580.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_d3_lplu_state_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_set_d3_lplu_state_82580\00", align 1
@E1000_82580_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@E1000_82580_PM_D3_LPLU = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@E1000_82580_PM_SPD = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@E1000_ALL_SPEED_DUPLEX = common dso_local global i64 0, align 8
@E1000_ALL_NOT_GIG = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_set_d3_lplu_state_82580(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %5, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @E1000_82580_PHY_POWER_MGMT, align 4
  %12 = call i32 @E1000_READ_REG(%struct.e1000_hw* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @E1000_82580_PM_D3_LPLU, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %21 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @e1000_smart_speed_on, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* @E1000_82580_PM_SPD, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %41

29:                                               ; preds = %15
  %30 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %31 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_smart_speed_off, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @E1000_82580_PM_SPD, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %29
  br label %41

41:                                               ; preds = %40, %25
  br label %69

42:                                               ; preds = %2
  %43 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %44 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @E1000_ALL_SPEED_DUPLEX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %50 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @E1000_ALL_NOT_GIG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @E1000_ALL_10_SPEED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54, %48, %42
  %61 = load i32, i32* @E1000_82580_PM_D3_LPLU, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @E1000_82580_PM_SPD, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %60, %54
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = load i32, i32* @E1000_82580_PHY_POWER_MGMT, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %70, i32 %71, i32 %72)
  %74 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %74
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
