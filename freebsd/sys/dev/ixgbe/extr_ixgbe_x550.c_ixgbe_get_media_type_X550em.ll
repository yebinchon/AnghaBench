; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_get_media_type_X550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_get_media_type_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ixgbe_get_media_type_X550em\00", align 1
@ixgbe_media_type_backplane = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber = common dso_local global i32 0, align 4
@ixgbe_media_type_copper = common dso_local global i32 0, align 4
@ixgbe_phy_sgmii = common dso_local global i32 0, align 4
@ixgbe_media_type_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_media_type_X550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %22 [
    i32 131, label %8
    i32 130, label %8
    i32 128, label %8
    i32 141, label %8
    i32 140, label %8
    i32 129, label %10
    i32 137, label %10
    i32 136, label %10
    i32 139, label %10
    i32 138, label %10
    i32 132, label %12
    i32 133, label %12
    i32 144, label %12
    i32 135, label %14
    i32 134, label %14
    i32 143, label %20
    i32 142, label %20
  ]

8:                                                ; preds = %1, %1, %1, %1, %1
  %9 = load i32, i32* @ixgbe_media_type_backplane, align 4
  store i32 %9, i32* %3, align 4
  br label %24

10:                                               ; preds = %1, %1, %1, %1, %1
  %11 = load i32, i32* @ixgbe_media_type_fiber, align 4
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %1, %1, %1
  %13 = load i32, i32* @ixgbe_media_type_copper, align 4
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %1, %1
  %15 = load i32, i32* @ixgbe_media_type_backplane, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @ixgbe_phy_sgmii, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %24

20:                                               ; preds = %1, %1
  %21 = load i32, i32* @ixgbe_media_type_copper, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ixgbe_media_type_unknown, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20, %14, %12, %10, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
