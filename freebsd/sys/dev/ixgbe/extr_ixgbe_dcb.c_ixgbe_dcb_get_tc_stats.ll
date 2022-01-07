; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_get_tc_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_get_tc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_hw_stats = type { i32 }

@IXGBE_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_get_tc_stats(%struct.ixgbe_hw* %0, %struct.ixgbe_hw_stats* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.ixgbe_hw_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store %struct.ixgbe_hw_stats* %1, %struct.ixgbe_hw_stats** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @IXGBE_NOT_IMPLEMENTED, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 133, label %13
    i32 132, label %18
    i32 131, label %18
    i32 130, label %18
    i32 128, label %18
    i32 129, label %18
  ]

13:                                               ; preds = %3
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %15 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ixgbe_dcb_get_tc_stats_82598(%struct.ixgbe_hw* %14, %struct.ixgbe_hw_stats* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  br label %24

18:                                               ; preds = %3, %3, %3, %3, %3
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %20 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ixgbe_dcb_get_tc_stats_82599(%struct.ixgbe_hw* %19, %struct.ixgbe_hw_stats* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %18, %13
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @ixgbe_dcb_get_tc_stats_82598(%struct.ixgbe_hw*, %struct.ixgbe_hw_stats*, i32) #1

declare dso_local i32 @ixgbe_dcb_get_tc_stats_82599(%struct.ixgbe_hw*, %struct.ixgbe_hw_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
