; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_write_phy_reg_gg82563_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_write_phy_reg_gg82563_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"e1000_write_phy_reg_gg82563_80003es2lan\00", align 1
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@GG82563_MIN_ALT_REG = common dso_local global i32 0, align 4
@GG82563_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@GG82563_PHY_PAGE_SELECT_ALT = common dso_local global i32 0, align 4
@GG82563_PAGE_SHIFT = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32)* @e1000_write_phy_reg_gg82563_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_phy_reg_gg82563_80003es2lan(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %13 = call i64 @e1000_acquire_phy_80003es2lan(%struct.e1000_hw* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %4, align 8
  br label %84

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @GG82563_MIN_ALT_REG, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @GG82563_PHY_PAGE_SELECT, align 4
  store i32 %25, i32* %9, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @GG82563_PHY_PAGE_SELECT_ALT, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GG82563_PAGE_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %32, i32 %33, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %40 = call i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw* %39)
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %4, align 8
  br label %84

42:                                               ; preds = %28
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %42
  %50 = call i32 @usec_delay(i32 200)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %51, i32 %52, i32* %10)
  store i64 %53, i64* %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @GG82563_PAGE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %61 = call i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw* %60)
  %62 = load i64, i64* @E1000_ERR_PHY, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %4, align 8
  br label %84

64:                                               ; preds = %49
  %65 = call i32 @usec_delay(i32 200)
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %67 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %66, i32 %69, i32 %70)
  store i64 %71, i64* %8, align 8
  %72 = call i32 @usec_delay(i32 200)
  br label %80

73:                                               ; preds = %42
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %75 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %74, i32 %77, i32 %78)
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %73, %64
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %82 = call i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw* %81)
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %80, %59, %38, %16
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_acquire_phy_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
