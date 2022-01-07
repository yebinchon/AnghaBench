; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"e1000_read_phy_reg_i2c\00", align 1
@E1000_I2CCMD_REG_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_I2CCMD_PHY_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_I2CCMD_OPCODE_READ = common dso_local global i64 0, align 8
@E1000_I2CCMD = common dso_local global i32 0, align 4
@E1000_I2CCMD_PHY_TIMEOUT = common dso_local global i64 0, align 8
@E1000_I2CCMD_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"I2CCMD Read did not complete\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_I2CCMD_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"I2CCMD Error bit set\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_read_phy_reg_i2c(%struct.e1000_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.e1000_phy_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_phy_info* %12, %struct.e1000_phy_info** %8, align 8
  store i64 0, i64* %10, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @E1000_I2CCMD_REG_ADDR_SHIFT, align 8
  %16 = shl i64 %14, %15
  %17 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %8, align 8
  %18 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @E1000_I2CCMD_PHY_ADDR_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = or i64 %16, %21
  %23 = load i64, i64* @E1000_I2CCMD_OPCODE_READ, align 8
  %24 = or i64 %22, %23
  store i64 %24, i64* %10, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %26 = load i32, i32* @E1000_I2CCMD, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %25, i32 %26, i64 %27)
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %44, %3
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @E1000_I2CCMD_PHY_TIMEOUT, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = call i32 @usec_delay(i32 50)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = load i32, i32* @E1000_I2CCMD, align 4
  %37 = call i64 @E1000_READ_REG(%struct.e1000_hw* %35, i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @E1000_I2CCMD_READY, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %9, align 8
  br label %29

47:                                               ; preds = %42, %29
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @E1000_I2CCMD_READY, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @E1000_ERR_PHY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %75

56:                                               ; preds = %47
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @E1000_I2CCMD_ERROR, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @E1000_ERR_PHY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %75

65:                                               ; preds = %56
  %66 = load i64, i64* %10, align 8
  %67 = ashr i64 %66, 8
  %68 = and i64 %67, 255
  %69 = load i64, i64* %10, align 8
  %70 = shl i64 %69, 8
  %71 = and i64 %70, 65280
  %72 = or i64 %68, %71
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %65, %61, %52
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
