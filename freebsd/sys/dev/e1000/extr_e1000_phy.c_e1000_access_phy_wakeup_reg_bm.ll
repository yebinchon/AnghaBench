; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_access_phy_wakeup_reg_bm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_access_phy_wakeup_reg_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"e1000_access_phy_wakeup_reg_bm\00", align 1
@e1000_pchlan = common dso_local global i64 0, align 8
@E1000_PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Attempting to access page %d while gig enabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not enable PHY wakeup reg access\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Accessing PHY page %d reg 0x%x\0A\00", align 1
@BM_WUC_ADDRESS_OPCODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Could not write address opcode to page %d\0A\00", align 1
@BM_WUC_DATA_OPCODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not access PHY reg %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32*, i32, i32)* @e1000_access_phy_wakeup_reg_bm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BM_PHY_REG_NUM(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @BM_PHY_REG_PAGE(i32 %18)
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_pchlan, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %29 = load i32, i32* @E1000_PHY_CTRL, align 4
  %30 = call i32 @E1000_READ_REG(%struct.e1000_hw* %28, i32 %29)
  %31 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %27, %5
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %42 = call i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %41, i32* %15)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %6, align 8
  br label %93

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %54 = load i32, i32* @BM_WUC_ADDRESS_OPCODE, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %53, i32 %54, i32 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %6, align 8
  br label %93

63:                                               ; preds = %49
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %68 = load i32, i32* @BM_WUC_DATA_OPCODE, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %67, i32 %68, i32* %69)
  store i64 %70, i64* %12, align 8
  br label %77

71:                                               ; preds = %63
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %73 = load i32, i32* @BM_WUC_DATA_OPCODE, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %72, i32 %73, i32 %75)
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i64, i64* %12, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i64, i64* %12, align 8
  store i64 %84, i64* %6, align 8
  br label %93

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %90 = call i64 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %89, i32* %15)
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i64, i64* %12, align 8
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %91, %80, %59, %45
  %94 = load i64, i64* %6, align 8
  ret i64 %94
}

declare dso_local i32 @BM_PHY_REG_NUM(i32) #1

declare dso_local i32 @BM_PHY_REG_PAGE(i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
