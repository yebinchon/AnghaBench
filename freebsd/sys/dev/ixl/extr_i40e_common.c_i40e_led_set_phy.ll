; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_led_set_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_led_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_PHY_LED_LINK_MODE_MASK = common dso_local global i32 0, align 4
@I40E_PHY_LED_MANUAL_ON = common dso_local global i32 0, align 4
@I40E_PHY_LED_MODE_ORIG = common dso_local global i32 0, align 4
@I40E_PHY_LED_MODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_led_set_phy(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @i40e_led_get_reg(%struct.i40e_hw* %14, i32 %15, i32* %12)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %79

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @I40E_PHY_LED_LINK_MODE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @i40e_led_set_reg(%struct.i40e_hw* %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %79

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @i40e_led_get_reg(%struct.i40e_hw* %38, i32 %39, i32* %12)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %73

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @I40E_PHY_LED_MANUAL_ON, align 4
  store i32 %48, i32* %12, align 4
  br label %50

49:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @i40e_led_set_reg(%struct.i40e_hw* %51, i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %73

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @I40E_PHY_LED_MODE_ORIG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @I40E_PHY_LED_MODE_MASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @i40e_led_set_reg(%struct.i40e_hw* %67, i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %79

73:                                               ; preds = %57, %43
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @i40e_led_set_reg(%struct.i40e_hw* %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %71, %34, %19
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @i40e_led_get_reg(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @i40e_led_set_reg(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
