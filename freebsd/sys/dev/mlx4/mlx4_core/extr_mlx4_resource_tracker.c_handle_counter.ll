; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_handle_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_handle_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_qp_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_qp_context*, i32, i32)* @handle_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_counter(%struct.mlx4_dev* %0, %struct.mlx4_qp_context* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_qp_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_qp_context* %1, %struct.mlx4_qp_context** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %11 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call i64 @MLX4_SINK_COUNTER_INDEX(%struct.mlx4_dev* %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %22 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @handle_existing_counter(%struct.mlx4_dev* %18, i32 %19, i32 %20, i64 %24)
  store i32 %25, i32* %5, align 4
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %28 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @handle_unexisting_counter(%struct.mlx4_dev* %27, %struct.mlx4_qp_context* %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %17
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @MLX4_SINK_COUNTER_INDEX(%struct.mlx4_dev*) #1

declare dso_local i32 @handle_existing_counter(%struct.mlx4_dev*, i32, i32, i64) #1

declare dso_local i32 @handle_unexisting_counter(%struct.mlx4_dev*, %struct.mlx4_qp_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
