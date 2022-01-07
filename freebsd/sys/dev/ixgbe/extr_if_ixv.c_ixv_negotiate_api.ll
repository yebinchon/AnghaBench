; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_negotiate_api.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_negotiate_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@ixgbe_mbox_api_11 = common dso_local global i32 0, align 4
@ixgbe_mbox_api_10 = common dso_local global i32 0, align 4
@ixgbe_mbox_api_unknown = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @ixv_negotiate_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixv_negotiate_api(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %4, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* @ixgbe_mbox_api_11, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @ixgbe_mbox_api_10, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @ixgbe_mbox_api_unknown, align 4
  store i32 %14, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %31, %1
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ixgbe_mbox_api_unknown, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ixgbevf_negotiate_api_version(%struct.ixgbe_hw* %23, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @ixgbevf_negotiate_api_version(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
