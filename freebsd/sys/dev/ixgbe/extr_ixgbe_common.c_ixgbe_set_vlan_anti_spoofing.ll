; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_vlan_anti_spoofing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_vlan_anti_spoofing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_SPOOF_VLANAS_SHIFT = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_vlan_anti_spoofing(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 3
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = srem i32 %12, 8
  %14 = load i32, i32* @IXGBE_SPOOF_VLANAS_SHIFT, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @IXGBE_PFVFSPOOF(i32 %25)
  %27 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %24, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %41

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @IXGBE_PFVFSPOOF(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %22
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_PFVFSPOOF(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
