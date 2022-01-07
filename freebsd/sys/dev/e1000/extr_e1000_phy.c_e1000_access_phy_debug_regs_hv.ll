; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_access_phy_debug_regs_hv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_access_phy_debug_regs_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"e1000_access_phy_debug_regs_hv\00", align 1
@e1000_phy_82578 = common dso_local global i64 0, align 8
@I82578_ADDR_REG = common dso_local global i64 0, align 8
@I82577_ADDR_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Could not write the Address Offset port register\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Could not access the Data port register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i32*, i32)* @e1000_access_phy_debug_regs_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_phy_82578, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @I82578_ADDR_REG, align 8
  br label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @I82577_ADDR_REG, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i64 [ %21, %20 ], [ %23, %22 ]
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %12, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 2, i32* %30, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 63
  %36 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %31, i64 %32, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* %10, align 8
  store i64 %41, i64* %5, align 8
  br label %63

42:                                               ; preds = %24
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %46, i64 %47, i32* %48)
  store i64 %49, i64* %10, align 8
  br label %56

50:                                               ; preds = %42
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %51, i64 %52, i32 %54)
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %39
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i64, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
