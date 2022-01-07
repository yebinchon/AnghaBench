; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_qp.c_mlx5_get_rsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_qp.c_mlx5_get_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_rsc_common = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_qp_table }
%struct.mlx5_qp_table = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Async event for bogus resource 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_core_rsc_common* (%struct.mlx5_core_dev*, i32)* @mlx5_get_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_core_rsc_common* @mlx5_get_rsc(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_rsc_common*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_qp_table*, align 8
  %7 = alloca %struct.mlx5_core_rsc_common*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mlx5_qp_table* %10, %struct.mlx5_qp_table** %6, align 8
  %11 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.mlx5_core_rsc_common* @radix_tree_lookup(i32* %15, i32 %16)
  store %struct.mlx5_core_rsc_common* %17, %struct.mlx5_core_rsc_common** %7, align 8
  %18 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  %19 = icmp ne %struct.mlx5_core_rsc_common* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_rsc_common, %struct.mlx5_core_rsc_common* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc(i32* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  %29 = icmp ne %struct.mlx5_core_rsc_common* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  store %struct.mlx5_core_rsc_common* null, %struct.mlx5_core_rsc_common** %3, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  store %struct.mlx5_core_rsc_common* %35, %struct.mlx5_core_rsc_common** %3, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %3, align 8
  ret %struct.mlx5_core_rsc_common* %37
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlx5_core_rsc_common* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
