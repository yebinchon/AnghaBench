; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_get_tc_from_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_get_tc_from_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_dcb_config = type { %struct.TYPE_3__, %struct.ixgbe_dcb_tc_config* }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_dcb_tc_config = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_get_tc_from_up(%struct.ixgbe_dcb_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_dcb_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_dcb_tc_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_dcb_config* %0, %struct.ixgbe_dcb_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %10, i32 0, i32 1
  %12 = load %struct.ixgbe_dcb_tc_config*, %struct.ixgbe_dcb_tc_config** %11, align 8
  %13 = getelementptr inbounds %struct.ixgbe_dcb_tc_config, %struct.ixgbe_dcb_tc_config* %12, i64 0
  store %struct.ixgbe_dcb_tc_config* %13, %struct.ixgbe_dcb_tc_config** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %50

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %46, %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ixgbe_dcb_tc_config*, %struct.ixgbe_dcb_tc_config** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ixgbe_dcb_tc_config, %struct.ixgbe_dcb_tc_config* %31, i64 %33
  %35 = getelementptr inbounds %struct.ixgbe_dcb_tc_config, %struct.ixgbe_dcb_tc_config* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %30, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %49

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %9, align 4
  br label %26

49:                                               ; preds = %44, %26
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
