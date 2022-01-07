; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cq.c_mlx4_cq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cq.c_mlx4_cq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cq = type { i32, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__, %struct.mlx4_cq_table }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mlx4_cq_table = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"HW2SW_CQ failed (%d) for CQN %06x\0A\00", align 1
@MLX4_EQ_ASYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cq_free(%struct.mlx4_dev* %0, %struct.mlx4_cq* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_cq*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca %struct.mlx4_cq_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_cq* %1, %struct.mlx4_cq** %4, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %5, align 8
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 1
  store %struct.mlx4_cq_table* %11, %struct.mlx4_cq_table** %6, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mlx4_HW2SW_CQ(%struct.mlx4_dev* %12, i32* null, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx4_warn(%struct.mlx4_dev* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @MLX4_CQ_TO_EQ_VECTOR(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @synchronize_irq(i64 %37)
  %39 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @MLX4_CQ_TO_EQ_VECTOR(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %51 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* @MLX4_EQ_ASYNC, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %49, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %26
  %60 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %61 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i64, i64* @MLX4_EQ_ASYNC, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @synchronize_irq(i64 %67)
  br label %69

69:                                               ; preds = %59, %26
  %70 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_irq(i32* %71)
  %73 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %74 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %73, i32 0, i32 1
  %75 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %76 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @radix_tree_delete(i32* %74, i32 %77)
  %79 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %80 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %82, i32 0, i32 2
  %84 = call i64 @atomic_dec_and_test(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %69
  %87 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %88 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %87, i32 0, i32 1
  %89 = call i32 @complete(i32* %88)
  br label %90

90:                                               ; preds = %86, %69
  %91 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %92 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %91, i32 0, i32 1
  %93 = call i32 @wait_for_completion(i32* %92)
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %95 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %96 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mlx4_cq_free_icm(%struct.mlx4_dev* %94, i32 %97)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_HW2SW_CQ(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i64 @MLX4_CQ_TO_EQ_VECTOR(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mlx4_cq_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
