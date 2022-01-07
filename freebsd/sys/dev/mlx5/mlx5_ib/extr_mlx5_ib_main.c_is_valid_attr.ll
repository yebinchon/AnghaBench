; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_is_valid_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_is_valid_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_attr = type { i32 }
%union.ib_flow_spec = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@IB_FLOW_SPEC_ETH = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IB_FLOW_SPEC_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_flow_attr*)* @is_valid_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_attr(%struct.ib_flow_attr* %0) #0 {
  %2 = alloca %struct.ib_flow_attr*, align 8
  %3 = alloca %union.ib_flow_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_flow_attr* %0, %struct.ib_flow_attr** %2, align 8
  %7 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %2, align 8
  %8 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %7, i64 1
  %9 = bitcast %struct.ib_flow_attr* %8 to %union.ib_flow_spec*
  store %union.ib_flow_spec* %9, %union.ib_flow_spec** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %65, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %2, align 8
  %13 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %10
  %17 = load %union.ib_flow_spec*, %union.ib_flow_spec** %3, align 8
  %18 = bitcast %union.ib_flow_spec* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IB_FLOW_SPEC_ETH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %union.ib_flow_spec*, %union.ib_flow_spec** %3, align 8
  %24 = bitcast %union.ib_flow_spec* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load %union.ib_flow_spec*, %union.ib_flow_spec** %3, align 8
  %31 = bitcast %union.ib_flow_spec* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @htons(i32 65535)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %union.ib_flow_spec*, %union.ib_flow_spec** %3, align 8
  %39 = bitcast %union.ib_flow_spec* %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @ETH_P_IP, align 4
  %44 = call i64 @htons(i32 %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %37, %29
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %37
  br label %56

48:                                               ; preds = %22, %16
  %49 = load %union.ib_flow_spec*, %union.ib_flow_spec** %3, align 8
  %50 = bitcast %union.ib_flow_spec* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IB_FLOW_SPEC_IPV4, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %union.ib_flow_spec*, %union.ib_flow_spec** %3, align 8
  %58 = bitcast %union.ib_flow_spec* %57 to i8*
  %59 = load %union.ib_flow_spec*, %union.ib_flow_spec** %3, align 8
  %60 = bitcast %union.ib_flow_spec* %59 to i32*
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %58, i64 %62
  %64 = bitcast i8* %63 to %union.ib_flow_spec*
  store %union.ib_flow_spec* %64, %union.ib_flow_spec** %3, align 8
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %10

68:                                               ; preds = %10
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ true, %68 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
