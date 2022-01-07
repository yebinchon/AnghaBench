; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_is_sfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_is_sfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@ixgbe_phy_nl = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_is_sfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_is_sfp(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %46 [
    i32 133, label %8
    i32 132, label %19
    i32 130, label %32
    i32 131, label %32
  ]

8:                                                ; preds = %1
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ixgbe_phy_nl, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.0*
  %27 = call i32 %24(%struct.ixgbe_hw.0* %26)
  switch i32 %27, label %30 [
    i32 129, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %19, %19
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %19
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %1, %1
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %36, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = bitcast %struct.ixgbe_hw* %38 to %struct.ixgbe_hw.0*
  %40 = call i32 %37(%struct.ixgbe_hw.0* %39)
  %41 = icmp eq i32 %40, 129
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %1
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %44, %42, %30, %28, %17, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
