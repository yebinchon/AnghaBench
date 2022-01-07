; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_flow_is_multicast_only.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_flow_is_multicast_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_attr = type { i64, i32, i32 }
%struct.ib_flow_spec_eth = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IB_FLOW_ATTR_NORMAL = common dso_local global i64 0, align 8
@IB_FLOW_SPEC_ETH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_flow_attr*)* @flow_is_multicast_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_is_multicast_only(%struct.ib_flow_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_flow_attr*, align 8
  %4 = alloca %struct.ib_flow_spec_eth*, align 8
  store %struct.ib_flow_attr* %0, %struct.ib_flow_attr** %3, align 8
  %5 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %3, align 8
  %6 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IB_FLOW_ATTR_NORMAL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %3, align 8
  %12 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 40
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %3, align 8
  %18 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %10, %1
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %3, align 8
  %24 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %23, i64 1
  %25 = bitcast %struct.ib_flow_attr* %24 to %struct.ib_flow_spec_eth*
  store %struct.ib_flow_spec_eth* %25, %struct.ib_flow_spec_eth** %4, align 8
  %26 = load %struct.ib_flow_spec_eth*, %struct.ib_flow_spec_eth** %4, align 8
  %27 = getelementptr inbounds %struct.ib_flow_spec_eth, %struct.ib_flow_spec_eth* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_FLOW_SPEC_ETH, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load %struct.ib_flow_spec_eth*, %struct.ib_flow_spec_eth** %4, align 8
  %33 = getelementptr inbounds %struct.ib_flow_spec_eth, %struct.ib_flow_spec_eth* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 24
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %22
  store i32 0, i32* %2, align 4
  br label %55

38:                                               ; preds = %31
  %39 = load %struct.ib_flow_spec_eth*, %struct.ib_flow_spec_eth** %4, align 8
  %40 = getelementptr inbounds %struct.ib_flow_spec_eth, %struct.ib_flow_spec_eth* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @is_multicast_ether_addr(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.ib_flow_spec_eth*, %struct.ib_flow_spec_eth** %4, align 8
  %47 = getelementptr inbounds %struct.ib_flow_spec_eth, %struct.ib_flow_spec_eth* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @is_multicast_ether_addr(i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %45, %38
  %53 = phi i1 [ false, %38 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %37, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
