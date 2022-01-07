; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_stop_adapter_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_stop_adapter_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@IXGBE_VTEIMC = common dso_local global i32 0, align 4
@IXGBE_VF_IRQ_CLEAR_MASK = common dso_local global i32 0, align 4
@IXGBE_VTEICR = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_VFPSRTYPE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_stop_adapter_vf(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load i32, i32* @TRUE, align 4
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = load i32, i32* @IXGBE_VTEIMC, align 4
  %10 = load i32, i32* @IXGBE_VF_IRQ_CLEAR_MASK, align 4
  %11 = call i32 @IXGBE_VFWRITE_REG(%struct.ixgbe_hw* %8, i32 %9, i32 %10)
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = load i32, i32* @IXGBE_VTEICR, align 4
  %14 = call i32 @IXGBE_VFREAD_REG(%struct.ixgbe_hw* %12, i32 %13)
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @IXGBE_VFTXDCTL(i64 %24)
  %26 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %27 = call i32 @IXGBE_VFWRITE_REG(%struct.ixgbe_hw* %23, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %15

31:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @IXGBE_VFRXDCTL(i64 %41)
  %43 = call i32 @IXGBE_VFREAD_REG(%struct.ixgbe_hw* %40, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @IXGBE_VFRXDCTL(i64 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @IXGBE_VFWRITE_REG(%struct.ixgbe_hw* %48, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i64, i64* %4, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %32

56:                                               ; preds = %32
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %58 = load i32, i32* @IXGBE_VFPSRTYPE, align 4
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i32 %58, i32 0)
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %60)
  %62 = call i32 @msec_delay(i32 2)
  %63 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %63
}

declare dso_local i32 @IXGBE_VFWRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFREAD_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTXDCTL(i64) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
