; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_led_off_t_X550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_led_off_t_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ixgbe_led_off_t_X550em\00", align 1
@IXGBE_X557_MAX_LED_INDEX = common dso_local global i64 0, align 8
@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_X557_LED_PROVISIONING = common dso_local global i64 0, align 8
@IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_X557_LED_MANUAL_SET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_led_off_t_X550em(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @IXGBE_X557_MAX_LED_INDEX, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %15 = load i64, i64* @IXGBE_X557_LED_PROVISIONING, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %19 = call i32 @ixgbe_read_phy_reg(%struct.ixgbe_hw* %14, i64 %17, i32 %18, i32* %6)
  %20 = load i32, i32* @IXGBE_X557_LED_MANUAL_SET_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %25 = load i64, i64* @IXGBE_X557_LED_PROVISIONING, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ixgbe_write_phy_reg(%struct.ixgbe_hw* %24, i64 %27, i32 %28, i32 %29)
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ixgbe_led_off_generic(%struct.ixgbe_hw* %31, i64 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %13, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_read_phy_reg(%struct.ixgbe_hw*, i64, i32, i32*) #1

declare dso_local i32 @ixgbe_write_phy_reg(%struct.ixgbe_hw*, i64, i32, i32) #1

declare dso_local i32 @ixgbe_led_off_generic(%struct.ixgbe_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
