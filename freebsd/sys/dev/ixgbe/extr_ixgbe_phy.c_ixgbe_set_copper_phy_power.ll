; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_set_copper_phy_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_set_copper_phy_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_MDIO_VENDOR_SPECIFIC_1_CONTROL = common dso_local global i32 0, align 4
@IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_SET_LOW_POWER_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %12 = call i64 @ixgbe_mng_present(%struct.ixgbe_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  br label %60

15:                                               ; preds = %10, %2
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.1*
  %23 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_CONTROL, align 4
  %24 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %25 = call i64 %20(%struct.ixgbe_hw.1* %22, i32 %23, i32 %24, i32* %7)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %60

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @IXGBE_MDIO_PHY_SET_LOW_POWER_MODE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 0, i64* %3, align 8
  br label %60

43:                                               ; preds = %38
  %44 = load i32, i32* @IXGBE_MDIO_PHY_SET_LOW_POWER_MODE, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %33
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %51, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %54 = bitcast %struct.ixgbe_hw* %53 to %struct.ixgbe_hw.0*
  %55 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_CONTROL, align 4
  %56 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 %52(%struct.ixgbe_hw.0* %54, i32 %55, i32 %56, i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %47, %42, %28, %14
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i64 @ixgbe_mng_present(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
