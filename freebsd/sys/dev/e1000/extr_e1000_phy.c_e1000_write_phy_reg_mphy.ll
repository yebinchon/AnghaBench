; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_mphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_mphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"e1000_write_phy_reg_mphy\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_MPHY_ADDR_CTRL = common dso_local global i32 0, align 4
@E1000_MPHY_DIS_ACCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E1000_MPHY_ENA_ACCESS = common dso_local global i32 0, align 4
@E1000_MPHY_ADDRESS_FNC_OVERRIDE = common dso_local global i32 0, align 4
@E1000_MPHY_ADDRESS_MASK = common dso_local global i32 0, align 4
@E1000_MPHY_DATA = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_write_phy_reg_mphy(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %11, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @E1000_ERR_PHY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %109

22:                                               ; preds = %4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %24 = load i32, i32* @E1000_MPHY_ADDR_CTRL, align 4
  %25 = call i32 @E1000_READ_REG(%struct.e1000_hw* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @E1000_MPHY_DIS_ACCESS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %33 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @E1000_ERR_PHY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %109

39:                                               ; preds = %30
  %40 = load i32, i32* @E1000_MPHY_ENA_ACCESS, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = load i32, i32* @E1000_MPHY_ADDR_CTRL, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %22
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %49 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @E1000_ERR_PHY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %109

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @E1000_MPHY_ADDRESS_FNC_OVERRIDE, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @E1000_MPHY_ADDRESS_FNC_OVERRIDE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @E1000_MPHY_ADDRESS_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @E1000_MPHY_ADDRESS_MASK, align 4
  %74 = and i32 %72, %73
  %75 = or i32 %71, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %77 = load i32, i32* @E1000_MPHY_ADDR_CTRL, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %76, i32 %77, i32 %78)
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %81 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %67
  %85 = load i32, i32* @E1000_ERR_PHY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %109

87:                                               ; preds = %67
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %89 = load i32, i32* @E1000_MPHY_DATA, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %96 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %95)
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @E1000_ERR_PHY, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %109

103:                                              ; preds = %97
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %105 = load i32, i32* @E1000_MPHY_ADDR_CTRL, align 4
  %106 = load i32, i32* @E1000_MPHY_DIS_ACCESS, align 4
  %107 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %100, %84, %52, %36, %19
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_is_mphy_ready(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
