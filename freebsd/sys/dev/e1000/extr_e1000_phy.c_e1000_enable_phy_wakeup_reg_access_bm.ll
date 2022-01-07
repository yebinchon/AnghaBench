; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_enable_phy_wakeup_reg_access_bm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_enable_phy_wakeup_reg_access_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"e1000_enable_phy_wakeup_reg_access_bm\00", align 1
@E1000_ERR_PARAM = common dso_local global i64 0, align 8
@BM_PORT_CTRL_PAGE = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not set Port Control page\0A\00", align 1
@BM_WUC_ENABLE_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not read PHY register %d.%d\0A\00", align 1
@BM_WUC_ENABLE_BIT = common dso_local global i32 0, align 4
@BM_WUC_ME_WU_BIT = common dso_local global i32 0, align 4
@BM_WUC_HOST_WU_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not write PHY register %d.%d\0A\00", align 1
@BM_WUC_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @E1000_ERR_PARAM, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %3, align 8
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %20 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %18, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %69

28:                                               ; preds = %14
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %29, i32 %30, i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %37 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %38 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %69

40:                                               ; preds = %28
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @BM_WUC_ENABLE_BIT, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @BM_WUC_ME_WU_BIT, align 4
  %47 = load i32, i32* @BM_WUC_HOST_WU_BIT, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %53 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %52, i32 %53, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %60 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %61 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %69

63:                                               ; preds = %40
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %65 = load i32, i32* @BM_WUC_PAGE, align 4
  %66 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %64, i32 %67)
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %63, %58, %35, %25, %11
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_set_page_igp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
