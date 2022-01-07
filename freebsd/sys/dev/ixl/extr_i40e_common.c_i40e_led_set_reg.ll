; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_led_set_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_led_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i32 }

@I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE = common dso_local global i32 0, align 4
@I40E_AQ_PHY_REG_ACCESS_EXTERNAL = common dso_local global i32 0, align 4
@I40E_PHY_COM_REG_PAGE = common dso_local global i32 0, align 4
@I40E_PHY_LED_PROV_REG_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32, i64)* @i40e_led_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_led_set_reg(%struct.i40e_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %17 = load i32, i32* @I40E_AQ_PHY_REG_ACCESS_EXTERNAL, align 4
  %18 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %19 = load i32, i32* @I40E_PHY_LED_PROV_REG_1, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @i40e_aq_set_phy_register(%struct.i40e_hw* %16, i32 %17, i32 %18, i32 %19, i64 %20, i32* null)
  store i32 %21, i32* %7, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @i40e_get_phy_address(%struct.i40e_hw* %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %29 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @i40e_write_phy_register_clause45(%struct.i40e_hw* %28, i32 %29, i32 %30, i32 %31, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %22, %15
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @i40e_aq_set_phy_register(%struct.i40e_hw*, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @i40e_get_phy_address(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_write_phy_register_clause45(%struct.i40e_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
