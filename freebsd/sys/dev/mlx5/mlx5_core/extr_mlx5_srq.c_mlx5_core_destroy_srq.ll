; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_mlx5_core_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_mlx5_core_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_srq_table }
%struct.mlx5_srq_table = type { i32, i32 }
%struct.mlx5_core_srq = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"srq 0x%x not found in tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"corruption on srqn 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_destroy_srq(%struct.mlx5_core_dev* %0, %struct.mlx5_core_srq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_core_srq*, align 8
  %6 = alloca %struct.mlx5_srq_table*, align 8
  %7 = alloca %struct.mlx5_core_srq*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %5, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.mlx5_srq_table* %11, %struct.mlx5_srq_table** %6, align 8
  %12 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %15, i32 0, i32 1
  %17 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlx5_core_srq* @radix_tree_delete(i32* %16, i32 %19)
  store %struct.mlx5_core_srq* %20, %struct.mlx5_core_srq** %7, align 8
  %21 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %25 = icmp ne %struct.mlx5_core_srq* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %28 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %2
  %35 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %36 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %37 = icmp ne %struct.mlx5_core_srq* %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %40 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %67

46:                                               ; preds = %34
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %48 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %49 = call i32 @destroy_srq_split(%struct.mlx5_core_dev* %47, %struct.mlx5_core_srq* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %67

54:                                               ; preds = %46
  %55 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %55, i32 0, i32 1
  %57 = call i64 @atomic_dec_and_test(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %60, i32 0, i32 0
  %62 = call i32 @complete(i32* %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %64, i32 0, i32 0
  %66 = call i32 @wait_for_completion(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %52, %38, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.mlx5_core_srq* @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @destroy_srq_split(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
