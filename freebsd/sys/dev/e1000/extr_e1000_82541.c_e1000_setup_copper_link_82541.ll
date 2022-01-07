; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_setup_copper_link_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_setup_copper_link_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.e1000_dev_spec_82541 }
%struct.e1000_dev_spec_82541 = type { i64, i32 }
%struct.e1000_phy_info = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_setup_copper_link_82541\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@e1000_dsp_config_disabled = common dso_local global i32 0, align 4
@e1000_dsp_config_enabled = common dso_local global i32 0, align 4
@e1000_ffe_config_active = common dso_local global i64 0, align 8
@e1000_ffe_config_enabled = common dso_local global i64 0, align 8
@E1000_LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_82541*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 2
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_82541* %12, %struct.e1000_dev_spec_82541** %4, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_CTRL, align 4
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @E1000_CTRL_SLU, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %21 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = load i32, i32* @E1000_CTRL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @e1000_82541, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %1
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @e1000_82547, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36, %1
  %44 = load i32, i32* @e1000_dsp_config_disabled, align 4
  %45 = load %struct.e1000_dev_spec_82541*, %struct.e1000_dev_spec_82541** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_dev_spec_82541, %struct.e1000_dev_spec_82541* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %53

49:                                               ; preds = %36
  %50 = load i32, i32* @e1000_dsp_config_enabled, align 4
  %51 = load %struct.e1000_dev_spec_82541*, %struct.e1000_dev_spec_82541** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_dev_spec_82541, %struct.e1000_dev_spec_82541* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = call i64 @e1000_copper_link_setup_igp(%struct.e1000_hw* %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %94

59:                                               ; preds = %53
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.e1000_dev_spec_82541*, %struct.e1000_dev_spec_82541** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_dev_spec_82541, %struct.e1000_dev_spec_82541* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_ffe_config_active, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i64, i64* @e1000_ffe_config_enabled, align 8
  %73 = load %struct.e1000_dev_spec_82541*, %struct.e1000_dev_spec_82541** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_dev_spec_82541, %struct.e1000_dev_spec_82541* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  br label %76

76:                                               ; preds = %75, %59
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %78 = load i32, i32* @E1000_LEDCTL, align 4
  %79 = call i32 @E1000_READ_REG(%struct.e1000_hw* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %84 = load i32, i32* @IGP_LED3_MODE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = load i32, i32* @E1000_LEDCTL, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %88, i32 %89, i32 %90)
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = call i64 @e1000_setup_copper_link_generic(%struct.e1000_hw* %92)
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %76, %58
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_copper_link_setup_igp(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_setup_copper_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
