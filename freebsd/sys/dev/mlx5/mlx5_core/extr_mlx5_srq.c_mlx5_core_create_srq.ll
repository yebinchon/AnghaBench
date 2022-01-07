; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_mlx5_core_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_mlx5_core_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_srq_table }
%struct.mlx5_srq_table = type { i32, i32 }
%struct.mlx5_core_srq = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_srq_attr = type { i64 }

@IB_SRQT_XRC = common dso_local global i64 0, align 8
@MLX5_RES_XSRQ = common dso_local global i32 0, align 4
@MLX5_RES_SRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"err %d, srqn 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_create_srq(%struct.mlx5_core_dev* %0, %struct.mlx5_core_srq* %1, %struct.mlx5_srq_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_core_srq*, align 8
  %7 = alloca %struct.mlx5_srq_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_srq_table*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %6, align 8
  store %struct.mlx5_srq_attr* %2, %struct.mlx5_srq_attr** %7, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.mlx5_srq_table* %12, %struct.mlx5_srq_table** %9, align 8
  %13 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_SRQT_XRC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @MLX5_RES_XSRQ, align 4
  %20 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @MLX5_RES_SRQ, align 4
  %25 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %30 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %31 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %32 = call i32 @create_srq_split(%struct.mlx5_core_dev* %29, %struct.mlx5_core_srq* %30, %struct.mlx5_srq_attr* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %72

37:                                               ; preds = %28
  %38 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %38, i32 0, i32 2
  %40 = call i32 @atomic_set(i32* %39, i32 1)
  %41 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %41, i32 0, i32 1
  %43 = call i32 @init_completion(i32* %42)
  %44 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %9, align 8
  %45 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_irq(i32* %45)
  %47 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %9, align 8
  %48 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %47, i32 0, i32 1
  %49 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %53 = call i32 @radix_tree_insert(i32* %48, i32 %51, %struct.mlx5_core_srq* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %9, align 8
  %55 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %37
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  br label %67

66:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %69 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %70 = call i32 @destroy_srq_split(%struct.mlx5_core_dev* %68, %struct.mlx5_core_srq* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %66, %35
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @create_srq_split(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.mlx5_core_srq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @destroy_srq_split(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
