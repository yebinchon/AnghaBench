; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_blink_phy_link_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_blink_phy_link_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_PHY_LED_PROV_REG_1 = common dso_local global i32 0, align 4
@I40E_PFGEN_PORTNUM = common dso_local global i32 0, align 4
@I40E_PFGEN_PORTNUM_PORT_NUM_MASK = common dso_local global i64 0, align 8
@I40E_PHY_COM_REG_PAGE = common dso_local global i32 0, align 4
@I40E_PHY_LED_LINK_MODE_MASK = common dso_local global i32 0, align 4
@I40E_PHY_LED_MANUAL_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_blink_phy_link_led(%struct.i40e_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @I40E_PHY_LED_PROV_REG_1, align 4
  store i32 %16, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %18 = load i32, i32* @I40E_PFGEN_PORTNUM, align 4
  %19 = call i64 @rd32(%struct.i40e_hw* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @I40E_PFGEN_PORTNUM_PORT_NUM_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %14, align 8
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %24 = load i64, i64* %14, align 8
  %25 = call i64 @i40e_get_phy_address(%struct.i40e_hw* %23, i64 %24)
  store i64 %25, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %56, %3
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %31 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @i40e_read_phy_register_clause45(%struct.i40e_hw* %30, i32 %31, i32 %32, i64 %33, i32* %11)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %116

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @I40E_PHY_LED_LINK_MODE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %46 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @i40e_write_phy_register_clause45(%struct.i40e_hw* %45, i32 %46, i32 %47, i64 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %116

54:                                               ; preds = %44
  br label %61

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %26

61:                                               ; preds = %54, %26
  %62 = load i64, i64* %5, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %61
  %65 = load i64, i64* %6, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %108

67:                                               ; preds = %64
  store i64 0, i64* %8, align 8
  br label %68

68:                                               ; preds = %103, %67
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %5, align 8
  %71 = mul nsw i64 %70, 1000
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %68
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %75 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @i40e_read_phy_register_clause45(%struct.i40e_hw* %74, i32 %75, i32 %76, i64 %77, i32* %11)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %109

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @I40E_PHY_LED_MANUAL_ON, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @I40E_PHY_LED_MANUAL_ON, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %92 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i64, i64* %13, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @i40e_write_phy_register_clause45(%struct.i40e_hw* %91, i32 %92, i32 %93, i64 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %109

100:                                              ; preds = %90
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @i40e_msec_delay(i64 %101)
  br label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %8, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %8, align 8
  br label %68

107:                                              ; preds = %68
  br label %108

108:                                              ; preds = %107, %64, %61
  br label %109

109:                                              ; preds = %108, %99, %81
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %111 = load i32, i32* @I40E_PHY_COM_REG_PAGE, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i64, i64* %13, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @i40e_write_phy_register_clause45(%struct.i40e_hw* %110, i32 %111, i32 %112, i64 %113, i32 %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %109, %53, %37
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i64 @i40e_get_phy_address(%struct.i40e_hw*, i64) #1

declare dso_local i32 @i40e_read_phy_register_clause45(%struct.i40e_hw*, i32, i32, i64, i32*) #1

declare dso_local i32 @i40e_write_phy_register_clause45(%struct.i40e_hw*, i32, i32, i64, i32) #1

declare dso_local i32 @i40e_msec_delay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
