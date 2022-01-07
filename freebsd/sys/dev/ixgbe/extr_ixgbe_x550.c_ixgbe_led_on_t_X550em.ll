; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_led_on_t_X550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_led_on_t_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ixgbe_led_on_t_X550em\00", align 1
@IXGBE_X557_MAX_LED_INDEX = common dso_local global i64 0, align 8
@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_X557_LED_PROVISIONING = common dso_local global i64 0, align 8
@IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_X557_LED_MANUAL_SET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_led_on_t_X550em(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @IXGBE_X557_MAX_LED_INDEX, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %15 = load i64, i64* @IXGBE_X557_LED_PROVISIONING, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %19 = call i32 @ixgbe_read_phy_reg(%struct.ixgbe_hw* %14, i64 %17, i32 %18, i32* %6)
  %20 = load i32, i32* @IXGBE_X557_LED_MANUAL_SET_MASK, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = load i64, i64* @IXGBE_X557_LED_PROVISIONING, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ixgbe_write_phy_reg(%struct.ixgbe_hw* %23, i64 %26, i32 %27, i32 %28)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @ixgbe_led_on_generic(%struct.ixgbe_hw* %30, i64 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %13, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_read_phy_reg(%struct.ixgbe_hw*, i64, i32, i32*) #1

declare dso_local i32 @ixgbe_write_phy_reg(%struct.ixgbe_hw*, i64, i32, i32) #1

declare dso_local i32 @ixgbe_led_on_generic(%struct.ixgbe_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
