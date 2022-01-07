; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_qp_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_qp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_qp = type { i32, i32, i32 }
%struct.mlx4_priv = type { %struct.mlx4_qp_table }
%struct.mlx4_qp_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_qp_alloc(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_qp* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca %struct.mlx4_qp_table*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx4_qp* %2, %struct.mlx4_qp** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %14 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %13)
  store %struct.mlx4_priv* %14, %struct.mlx4_priv** %10, align 8
  %15 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %16 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %15, i32 0, i32 0
  store %struct.mlx4_qp_table* %16, %struct.mlx4_qp_table** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %69

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @mlx4_qp_alloc_icm(%struct.mlx4_dev* %26, i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %69

34:                                               ; preds = %22
  %35 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %11, align 8
  %36 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %38, i32 0, i32 1
  %40 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %41 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %42, %47
  %49 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %50 = call i32 @radix_tree_insert(i32* %39, i32 %48, %struct.mlx4_qp* %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %11, align 8
  %52 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  br label %64

57:                                               ; preds = %34
  %58 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %59 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %58, i32 0, i32 2
  %60 = call i32 @atomic_set(i32* %59, i32 1)
  %61 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %62 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %61, i32 0, i32 1
  %63 = call i32 @init_completion(i32* %62)
  store i32 0, i32* %5, align 4
  br label %69

64:                                               ; preds = %56
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @mlx4_qp_free_icm(%struct.mlx4_dev* %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %57, %32, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_qp_alloc_icm(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.mlx4_qp*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mlx4_qp_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
