; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_mdic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_read_phy_reg_mdic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_phy_info }
%struct.TYPE_2__ = type { i64 }
%struct.e1000_phy_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"e1000_read_phy_reg_mdic\00", align 1
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"PHY Address %d is out of range\0A\00", align 1
@E1000_ERR_PARAM = common dso_local global i32 0, align 4
@E1000_MDIC_REG_SHIFT = common dso_local global i32 0, align 4
@E1000_MDIC_PHY_SHIFT = common dso_local global i32 0, align 4
@E1000_MDIC_OP_READ = common dso_local global i32 0, align 4
@E1000_MDIC = common dso_local global i32 0, align 4
@E1000_GEN_POLL_TIMEOUT = common dso_local global i32 0, align 4
@E1000_MDIC_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"MDI Read did not complete\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_MDIC_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"MDI Error\0A\00", align 1
@E1000_MDIC_REG_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"MDI Read offset error - requested %d, returned %d\0A\00", align 1
@e1000_pch2lan = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.e1000_phy_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  store %struct.e1000_phy_info* %12, %struct.e1000_phy_info** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @E1000_ERR_PARAM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %107

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %8, align 8
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @E1000_MDIC_PHY_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %25, %30
  %32 = load i32, i32* @E1000_MDIC_OP_READ, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %35 = load i32, i32* @E1000_MDIC, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %34, i32 %35, i32 %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %54, %22
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @E1000_GEN_POLL_TIMEOUT, align 4
  %41 = mul nsw i32 %40, 3
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = call i32 @usec_delay_irq(i32 50)
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %46 = load i32, i32* @E1000_MDIC, align 4
  %47 = call i32 @E1000_READ_REG(%struct.e1000_hw* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @E1000_MDIC_READY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %38

57:                                               ; preds = %52, %38
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @E1000_MDIC_READY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @E1000_ERR_PHY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %107

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @E1000_MDIC_ERROR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @E1000_ERR_PHY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %107

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @E1000_MDIC_REG_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %80 = ashr i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @E1000_MDIC_REG_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %89)
  %91 = load i32, i32* @E1000_ERR_PHY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %107

93:                                               ; preds = %75
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @e1000_pch2lan, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = call i32 @usec_delay_irq(i32 100)
  br label %105

105:                                              ; preds = %103, %93
  %106 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %83, %71, %62, %17
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usec_delay_irq(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
