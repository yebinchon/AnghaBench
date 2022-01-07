; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"e1000_write_phy_reg_i2c\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"PHY I2C Address %d is out of range.\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@E1000_I2CCMD_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@E1000_I2CCMD_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@E1000_I2CCMD_OPCODE_WRITE = common dso_local global i32 0, align 4
@E1000_I2CCMD = common dso_local global i32 0, align 4
@E1000_I2CCMD_PHY_TIMEOUT = common dso_local global i32 0, align 4
@E1000_I2CCMD_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"I2CCMD Write did not complete\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_I2CCMD_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"I2CCMD Error bit set\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_write_phy_reg_i2c(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.e1000_phy_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  store %struct.e1000_phy_info* %13, %struct.e1000_phy_info** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 7
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %3
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %97

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 8
  %40 = and i32 %39, 65280
  %41 = or i32 %37, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @E1000_I2CCMD_REG_ADDR_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %8, align 8
  %46 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @E1000_I2CCMD_PHY_ADDR_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %44, %49
  %51 = load i32, i32* @E1000_I2CCMD_OPCODE_WRITE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %56 = load i32, i32* @E1000_I2CCMD, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %55, i32 %56, i32 %57)
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %74, %34
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @E1000_I2CCMD_PHY_TIMEOUT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = call i32 @usec_delay(i32 50)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %66 = load i32, i32* @E1000_I2CCMD, align 4
  %67 = call i32 @E1000_READ_REG(%struct.e1000_hw* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @E1000_I2CCMD_READY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %77

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %59

77:                                               ; preds = %72, %59
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @E1000_I2CCMD_READY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @E1000_ERR_PHY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %97

86:                                               ; preds = %77
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @E1000_I2CCMD_ERROR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @E1000_ERR_PHY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %91, %82, %26
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
