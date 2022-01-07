; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_disable_phy_wakeup_reg_access_bm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_disable_phy_wakeup_reg_access_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"e1000_disable_phy_wakeup_reg_access_bm\00", align 1
@E1000_ERR_PARAM = common dso_local global i64 0, align 8
@BM_PORT_CTRL_PAGE = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not set Port Control page\0A\00", align 1
@BM_WUC_ENABLE_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not restore PHY register %d.%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @E1000_ERR_PARAM, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %3, align 8
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %15 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %16 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %14, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %38

24:                                               ; preds = %13
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %25, i32 %26, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %34 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %35 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %21, %10
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_set_page_igp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
