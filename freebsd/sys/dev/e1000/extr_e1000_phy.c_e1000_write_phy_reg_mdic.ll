; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_mdic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_mdic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_phy_info }
%struct.TYPE_2__ = type { i64 }
%struct.e1000_phy_info = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"e1000_write_phy_reg_mdic\00", align 1
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"PHY Address %d is out of range\0A\00", align 1
@E1000_ERR_PARAM = common dso_local global i32 0, align 4
@E1000_MDIC_REG_SHIFT = common dso_local global i32 0, align 4
@E1000_MDIC_PHY_SHIFT = common dso_local global i32 0, align 4
@E1000_MDIC_OP_WRITE = common dso_local global i32 0, align 4
@E1000_MDIC = common dso_local global i32 0, align 4
@E1000_GEN_POLL_TIMEOUT = common dso_local global i32 0, align 4
@E1000_MDIC_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"MDI Write did not complete\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_MDIC_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"MDI Error\0A\00", align 1
@E1000_MDIC_REG_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"MDI Write offset error - requested %d, returned %d\0A\00", align 1
@e1000_pch2lan = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.e1000_phy_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  store %struct.e1000_phy_info* %12, %struct.e1000_phy_info** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
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
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %8, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @E1000_MDIC_PHY_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %28, %33
  %35 = load i32, i32* @E1000_MDIC_OP_WRITE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %38 = load i32, i32* @E1000_MDIC, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %37, i32 %38, i32 %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %57, %22
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @E1000_GEN_POLL_TIMEOUT, align 4
  %44 = mul nsw i32 %43, 3
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = call i32 @usec_delay_irq(i32 50)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %49 = load i32, i32* @E1000_MDIC, align 4
  %50 = call i32 @E1000_READ_REG(%struct.e1000_hw* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @E1000_MDIC_READY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %60

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %41

60:                                               ; preds = %55, %41
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @E1000_MDIC_READY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @E1000_ERR_PHY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %107

69:                                               ; preds = %60
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @E1000_MDIC_ERROR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @E1000_ERR_PHY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %107

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @E1000_MDIC_REG_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %83 = ashr i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @E1000_MDIC_REG_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %92 = ashr i32 %90, %91
  %93 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %92)
  %94 = load i32, i32* @E1000_ERR_PHY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %107

96:                                               ; preds = %78
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @e1000_pch2lan, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = call i32 @usec_delay_irq(i32 100)
  br label %105

105:                                              ; preds = %103, %96
  %106 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %86, %74, %65, %17
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
