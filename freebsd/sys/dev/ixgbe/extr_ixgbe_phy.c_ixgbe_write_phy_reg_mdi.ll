; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_write_phy_reg_mdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_write_phy_reg_mdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_MSRWD = common dso_local global i32 0, align 4
@IXGBE_MSCA_NP_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_DEV_TYPE_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_PHY_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_ADDR_CYCLE = common dso_local global i64 0, align 8
@IXGBE_MSCA_MDI_COMMAND = common dso_local global i64 0, align 8
@IXGBE_MSCA = common dso_local global i32 0, align 4
@IXGBE_MDIO_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"PHY address cmd didn't complete\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4
@IXGBE_MSCA_WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"PHY write cmd didn't complete\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_write_phy_reg_mdi(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %13 = load i32, i32* @IXGBE_MSRWD, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %12, i32 %13, i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @IXGBE_MSCA_NP_ADDR_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = or i64 %18, %21
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 8
  %28 = shl i64 %26, %27
  %29 = or i64 %22, %28
  %30 = load i64, i64* @IXGBE_MSCA_ADDR_CYCLE, align 8
  %31 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %32 = or i64 %30, %31
  %33 = or i64 %29, %32
  store i64 %33, i64* %11, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %35 = load i32, i32* @IXGBE_MSCA, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %34, i32 %35, i64 %36)
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %53, %4
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = call i32 @usec_delay(i32 10)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %45 = load i32, i32* @IXGBE_MSCA, align 4
  %46 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %44, i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %49 = and i64 %47, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %38

56:                                               ; preds = %51, %38
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %63 = call i32 @ERROR_REPORT1(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %64, i32* %5, align 4
  br label %117

65:                                               ; preds = %56
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @IXGBE_MSCA_NP_ADDR_SHIFT, align 8
  %68 = shl i64 %66, %67
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 8
  %71 = shl i64 %69, %70
  %72 = or i64 %68, %71
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 8
  %78 = shl i64 %76, %77
  %79 = or i64 %72, %78
  %80 = load i64, i64* @IXGBE_MSCA_WRITE, align 8
  %81 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %82 = or i64 %80, %81
  %83 = or i64 %79, %82
  store i64 %83, i64* %11, align 8
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %85 = load i32, i32* @IXGBE_MSCA, align 4
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %84, i32 %85, i64 %86)
  store i64 0, i64* %10, align 8
  br label %88

88:                                               ; preds = %103, %65
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = call i32 @usec_delay(i32 10)
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %95 = load i32, i32* @IXGBE_MSCA, align 4
  %96 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %94, i32 %95)
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %99 = and i64 %97, %98
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %88

106:                                              ; preds = %101, %88
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %113 = call i32 @ERROR_REPORT1(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %114, i32* %5, align 4
  br label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %111, %61
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
