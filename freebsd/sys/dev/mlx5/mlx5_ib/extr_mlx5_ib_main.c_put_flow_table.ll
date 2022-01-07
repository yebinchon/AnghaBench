; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_put_flow_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_put_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_flow_prio = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, i32)* @put_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_flow_table(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_prio* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @mlx5_destroy_flow_table(i32* %24)
  %26 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @mlx5_destroy_flow_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
