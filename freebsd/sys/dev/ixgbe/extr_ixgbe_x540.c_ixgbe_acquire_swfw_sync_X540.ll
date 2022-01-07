; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_acquire_swfw_sync_X540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_acquire_swfw_sync_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_GSSR_NVM_PHY_MASK = common dso_local global i32 0, align 4
@IXGBE_GSSR_I2C_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ixgbe_acquire_swfw_sync_X540\00", align 1
@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_FLASH_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_SW_MNG_SM = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [80 x i8] c"Failed to get NVM access and register semaphore, returning IXGBE_ERR_SWFW_SYNC\0A\00", align 1
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [161 x i8] c"Failed to get NVM sempahore and register semaphore while forcefully ignoring FW sempahore bit(s) and setting SW semaphore bit(s), returning IXGBE_ERR_SWFW_SYNC\0A\00", align 1
@IXGBE_GSSR_PHY0_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY1_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Resource not released by other SW, returning IXGBE_ERR_SWFW_SYNC\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Returning error IXGBE_ERR_SWFW_SYNC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IXGBE_GSSR_NVM_PHY_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 5
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IXGBE_GSSR_I2C_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  store i32 200, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @IXGBE_GSSR_FLASH_SM, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 2
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ixgbe_mac_X550, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 1000, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %40
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %96, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %62 = call i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %66, i32* %3, align 4
  br label %164

67:                                               ; preds = %60
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %70 = call i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw* %69)
  %71 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %68, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %72, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %86 = call i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw* %85)
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %84, i32 %86, i32 %87)
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %90 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %89)
  %91 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %91, i32* %3, align 4
  br label %164

92:                                               ; preds = %67
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %94 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %93)
  %95 = call i32 @msec_delay(i32 5)
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %56

99:                                               ; preds = %56
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %101 = call i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %105, i32* %3, align 4
  br label %164

106:                                              ; preds = %99
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %109 = call i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw* %108)
  %110 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %107, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %106
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %123 = call i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw* %122)
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %121, i32 %123, i32 %124)
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %127 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %126)
  %128 = call i32 @msec_delay(i32 5)
  %129 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %129, i32* %3, align 4
  br label %164

130:                                              ; preds = %106
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %130
  %136 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %137 = load i32, i32* @IXGBE_GSSR_PHY0_SM, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @IXGBE_GSSR_PHY1_SM, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load i32, i32* @IXGBE_GSSR_I2C_MASK, align 4
  %149 = load i32, i32* %13, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %147, %135
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw* %152, i32 %153)
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %156 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %155)
  %157 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %158, i32* %3, align 4
  br label %164

159:                                              ; preds = %130
  %160 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %161 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %160)
  %162 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %151, %117, %103, %80, %64
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
