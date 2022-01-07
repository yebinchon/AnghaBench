; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_get_cfg_done_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_get_cfg_done_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@PHY_CFG_TIMEOUT = common dso_local global i64 0, align 8
@E1000_NVM_CFG_DONE_PORT_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"e1000_get_cfg_done_82575\00", align 1
@E1000_FUNC_1 = common dso_local global i64 0, align 8
@E1000_NVM_CFG_DONE_PORT_1 = common dso_local global i32 0, align 4
@E1000_FUNC_2 = common dso_local global i64 0, align 8
@E1000_NVM_CFG_DONE_PORT_2 = common dso_local global i32 0, align 4
@E1000_FUNC_3 = common dso_local global i64 0, align 8
@E1000_NVM_CFG_DONE_PORT_3 = common dso_local global i32 0, align 4
@E1000_EEMNGCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"MNG configuration cycle has not completed.\0A\00", align 1
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_PRES = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_get_cfg_done_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_cfg_done_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i64, i64* @PHY_CFG_TIMEOUT, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_0, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @E1000_FUNC_1, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_1, align 4
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @E1000_FUNC_2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_2, align 4
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @E1000_FUNC_3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_3, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %25
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %14
  br label %37

37:                                               ; preds = %48, %36
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = load i32, i32* @E1000_EEMNGCTL, align 4
  %43 = call i32 @E1000_READ_REG(%struct.e1000_hw* %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %52

48:                                               ; preds = %40
  %49 = call i32 @msec_delay(i32 1)
  %50 = load i64, i64* %3, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %3, align 8
  br label %37

52:                                               ; preds = %47, %37
  %53 = load i64, i64* %3, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = load i32, i32* @E1000_EECD, align 4
  %60 = call i32 @E1000_READ_REG(%struct.e1000_hw* %58, i32 %59)
  %61 = load i32, i32* @E1000_EECD_PRES, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %57
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_phy_igp_3, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = call i32 @e1000_phy_init_script_igp3(%struct.e1000_hw* %72)
  br label %74

74:                                               ; preds = %71, %64, %57
  %75 = load i64, i64* @E1000_SUCCESS, align 8
  ret i64 %75
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_phy_init_script_igp3(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
