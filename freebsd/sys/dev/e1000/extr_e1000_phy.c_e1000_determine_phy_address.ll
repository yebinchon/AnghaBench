; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_determine_phy_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_determine_phy_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@e1000_phy_unknown = common dso_local global i32 0, align 4
@E1000_MAX_PHY_ADDR = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_ERR_PHY_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_determine_phy_address(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @e1000_phy_unknown, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %42, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @E1000_MAX_PHY_ADDR, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %38, %16
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = call i32 @e1000_get_phy_id(%struct.e1000_hw* %22)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @e1000_get_phy_type_from_id(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @e1000_phy_unknown, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %33, i32* %2, align 4
  br label %48

34:                                               ; preds = %21
  %35 = call i32 @msec_delay(i32 1)
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %39, 10
  br i1 %40, label %21, label %41

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %12

45:                                               ; preds = %12
  %46 = load i32, i32* @E1000_ERR_PHY_TYPE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %32
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @e1000_get_phy_id(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_get_phy_type_from_id(i32) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
