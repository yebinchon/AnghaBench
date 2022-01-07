; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_led_get_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_led_get_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE = common dso_local global i32 0, align 4
@I40E_AQ_PHY_REG_ACCESS_EXTERNAL = common dso_local global i32 0, align 4
@I40E_PHY_COM_REG_PAGE = common dso_local global i32 0, align 4
@I40E_PHY_LED_PROV_REG_1 = common dso_local global i32 0, align 4
@I40E_PHY_LED_LINK_MODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_led_get_phy(%struct.i40e_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = load i32, i32* @I40E_AQ_PHY_REG_ACCESS_EXTERNAL, align 4
  %24 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %25 = load i32, i32* @I40E_PHY_LED_PROV_REG_1, align 4
  %26 = call i32 @i40e_aq_get_phy_register(%struct.i40e_hw* %22, i32 %23, i32 %24, i32 %25, i64* %10, i32* null)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @I40E_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %74

36:                                               ; preds = %3
  %37 = load i32, i32* @I40E_PHY_LED_PROV_REG_1, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %40 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i40e_get_phy_address(%struct.i40e_hw* %38, i32 %41)
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %67, %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %48 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @i40e_read_phy_register_clause45(%struct.i40e_hw* %47, i32 %48, i32 %49, i32 %50, i32* %13)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %74

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @I40E_PHY_LED_LINK_MODE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %72

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %43

72:                                               ; preds = %63, %43
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %54, %34
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @i40e_aq_get_phy_register(%struct.i40e_hw*, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @i40e_get_phy_address(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_read_phy_register_clause45(%struct.i40e_hw*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
