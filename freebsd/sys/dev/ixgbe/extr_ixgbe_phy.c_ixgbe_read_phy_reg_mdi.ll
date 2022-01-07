; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_read_phy_reg_mdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_read_phy_reg_mdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_MSCA_NP_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_DEV_TYPE_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_PHY_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_ADDR_CYCLE = common dso_local global i64 0, align 8
@IXGBE_MSCA_MDI_COMMAND = common dso_local global i64 0, align 8
@IXGBE_MSCA = common dso_local global i32 0, align 4
@IXGBE_MDIO_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PHY address command did not complete.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"PHY address command did not complete, returning IXGBE_ERR_PHY\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4
@IXGBE_MSCA_READ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"PHY read command didn't complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"PHY read command didn't complete, returning IXGBE_ERR_PHY\0A\00", align 1
@IXGBE_MSRWD = common dso_local global i32 0, align 4
@IXGBE_MSRWD_READ_DATA_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_read_phy_reg_mdi(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @IXGBE_MSCA_NP_ADDR_SHIFT, align 8
  %15 = shl i64 %13, %14
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = or i64 %15, %18
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 8
  %25 = shl i64 %23, %24
  %26 = or i64 %19, %25
  %27 = load i64, i64* @IXGBE_MSCA_ADDR_CYCLE, align 8
  %28 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %29 = or i64 %27, %28
  %30 = or i64 %26, %29
  store i64 %30, i64* %12, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %32 = load i32, i32* @IXGBE_MSCA, align 4
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %31, i32 %32, i64 %33)
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %50, %4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = call i32 @usec_delay(i32 10)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %42 = load i32, i32* @IXGBE_MSCA, align 4
  %43 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %41, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %46 = and i64 %44, %45
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %53

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %10, align 8
  br label %35

53:                                               ; preds = %48, %35
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %60 = call i32 @ERROR_REPORT1(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %62, i32* %5, align 4
  br label %124

63:                                               ; preds = %53
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @IXGBE_MSCA_NP_ADDR_SHIFT, align 8
  %66 = shl i64 %64, %65
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = or i64 %66, %69
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 8
  %76 = shl i64 %74, %75
  %77 = or i64 %70, %76
  %78 = load i64, i64* @IXGBE_MSCA_READ, align 8
  %79 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %80 = or i64 %78, %79
  %81 = or i64 %77, %80
  store i64 %81, i64* %12, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %83 = load i32, i32* @IXGBE_MSCA, align 4
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %82, i32 %83, i64 %84)
  store i64 0, i64* %10, align 8
  br label %86

86:                                               ; preds = %101, %63
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = call i32 @usec_delay(i32 10)
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %93 = load i32, i32* @IXGBE_MSCA, align 4
  %94 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %92, i32 %93)
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %97 = and i64 %95, %96
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %104

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %86

104:                                              ; preds = %99, %86
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %111 = call i32 @ERROR_REPORT1(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %112 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %113, i32* %5, align 4
  br label %124

114:                                              ; preds = %104
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %116 = load i32, i32* @IXGBE_MSRWD, align 4
  %117 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %115, i32 %116)
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* @IXGBE_MSRWD_READ_DATA_SHIFT, align 8
  %119 = load i64, i64* %11, align 8
  %120 = ashr i64 %119, %118
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %114, %109, %58
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
