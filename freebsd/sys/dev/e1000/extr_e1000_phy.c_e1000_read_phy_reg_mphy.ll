; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_mphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_mphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"e1000_read_phy_reg_mphy\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_MPHY_ADDR_CTRL = common dso_local global i32 0, align 4
@E1000_MPHY_DIS_ACCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E1000_MPHY_ENA_ACCESS = common dso_local global i32 0, align 4
@E1000_MPHY_ADDRESS_MASK = common dso_local global i32 0, align 4
@E1000_MPHY_ADDRESS_FNC_OVERRIDE = common dso_local global i32 0, align 4
@E1000_MPHY_DATA = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_read_phy_reg_mphy(%struct.e1000_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %14 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @E1000_ERR_PHY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %98

20:                                               ; preds = %3
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %22 = load i32, i32* @E1000_MPHY_ADDR_CTRL, align 4
  %23 = call i32 @E1000_READ_REG(%struct.e1000_hw* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @E1000_MPHY_DIS_ACCESS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %20
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %31 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @E1000_ERR_PHY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %98

37:                                               ; preds = %28
  %38 = load i32, i32* @E1000_MPHY_ENA_ACCESS, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %42 = load i32, i32* @E1000_MPHY_ADDR_CTRL, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %20
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %47 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @E1000_ERR_PHY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %98

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @E1000_MPHY_ADDRESS_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* @E1000_MPHY_ADDRESS_FNC_OVERRIDE, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @E1000_MPHY_ADDRESS_MASK, align 4
  %63 = and i32 %61, %62
  %64 = or i32 %60, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %66 = load i32, i32* @E1000_MPHY_ADDR_CTRL, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %65, i32 %66, i32 %67)
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %70 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %53
  %74 = load i32, i32* @E1000_ERR_PHY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %98

76:                                               ; preds = %53
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %78 = load i32, i32* @E1000_MPHY_DATA, align 4
  %79 = call i32 @E1000_READ_REG(%struct.e1000_hw* %77, i32 %78)
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %85 = call i32 @e1000_is_mphy_ready(%struct.e1000_hw* %84)
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @E1000_ERR_PHY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %98

92:                                               ; preds = %86
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %94 = load i32, i32* @E1000_MPHY_ADDR_CTRL, align 4
  %95 = load i32, i32* @E1000_MPHY_DIS_ACCESS, align 4
  %96 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %92, %89, %73, %50, %34, %17
  %99 = load i32, i32* %4, align 4
  ret i32 %99
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
