; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_eq_get_mtt_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_eq_get_mtt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_eq_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_eq_context*)* @eq_get_mtt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eq_get_mtt_size(%struct.mlx4_eq_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_eq_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_eq_context* %0, %struct.mlx4_eq_context** %3, align 8
  %6 = load %struct.mlx4_eq_context*, %struct.mlx4_eq_context** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_eq_context, %struct.mlx4_eq_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 31
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mlx4_eq_context*, %struct.mlx4_eq_context** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_eq_context, %struct.mlx4_eq_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 63
  %14 = add nsw i32 %13, 12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 5
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 5
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %22, %23
  %25 = shl i32 1, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
