; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_qp.c_create_qprqsq_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_qp.c_create_qprqsq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mlx5_qp_table }
%struct.mlx5_qp_table = type { i32, i32 }
%struct.mlx5_core_qp = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_core_qp*, i32)* @create_qprqsq_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_qprqsq_common(%struct.mlx5_core_dev* %0, %struct.mlx5_core_qp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_core_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_qp_table*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_qp* %1, %struct.mlx5_core_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.mlx5_qp_table* %12, %struct.mlx5_qp_table** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %20, i32 0, i32 1
  %22 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 24
  %27 = or i32 %24, %26
  %28 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %6, align 8
  %29 = call i32 @radix_tree_insert(i32* %21, i32 %27, %struct.mlx5_core_qp* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %3
  %38 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = call i32 @atomic_set(i32* %40, i32 1)
  %42 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i32 @init_completion(i32* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %37, %35
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.mlx5_core_qp*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
