; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cq.c_mlx5_cq_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cq.c_mlx5_cq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_cq_table }
%struct.mlx5_cq_table = type { i32, i32, %struct.mlx5_cq_linear_array_entry* }
%struct.mlx5_cq_linear_array_entry = type { i32, %struct.mlx5_core_cq* }
%struct.mlx5_core_cq = type { i32, i32, i32 (%struct.mlx5_core_cq*)*, i32 }

@MLX5_CQ_LINEAR_ARRAY_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Completion event for bogus CQ 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_cq_completion(%struct.mlx5_core_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mlx5_core_cq*, align 8
  %6 = alloca %struct.mlx5_cq_table*, align 8
  %7 = alloca %struct.mlx5_cq_linear_array_entry*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mlx5_cq_table* %10, %struct.mlx5_cq_table** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @MLX5_CQ_LINEAR_ARRAY_SIZE, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %15, i32 0, i32 2
  %17 = load %struct.mlx5_cq_linear_array_entry*, %struct.mlx5_cq_linear_array_entry** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_cq_linear_array_entry, %struct.mlx5_cq_linear_array_entry* %17, i64 %18
  store %struct.mlx5_cq_linear_array_entry* %19, %struct.mlx5_cq_linear_array_entry** %7, align 8
  %20 = load %struct.mlx5_cq_linear_array_entry*, %struct.mlx5_cq_linear_array_entry** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5_cq_linear_array_entry, %struct.mlx5_cq_linear_array_entry* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.mlx5_cq_linear_array_entry*, %struct.mlx5_cq_linear_array_entry** %7, align 8
  %24 = getelementptr inbounds %struct.mlx5_cq_linear_array_entry, %struct.mlx5_cq_linear_array_entry* %23, i32 0, i32 1
  %25 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %24, align 8
  store %struct.mlx5_core_cq* %25, %struct.mlx5_core_cq** %5, align 8
  %26 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %27 = icmp eq %struct.mlx5_core_cq* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %42

32:                                               ; preds = %14
  %33 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %37, i32 0, i32 2
  %39 = load i32 (%struct.mlx5_core_cq*)*, i32 (%struct.mlx5_core_cq*)** %38, align 8
  %40 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %41 = call i32 %39(%struct.mlx5_core_cq* %40)
  br label %42

42:                                               ; preds = %32, %28
  %43 = load %struct.mlx5_cq_linear_array_entry*, %struct.mlx5_cq_linear_array_entry** %7, align 8
  %44 = getelementptr inbounds %struct.mlx5_cq_linear_array_entry, %struct.mlx5_cq_linear_array_entry* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %89

46:                                               ; preds = %2
  %47 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %6, align 8
  %48 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %50, i32 0, i32 1
  %52 = load i64, i64* %4, align 8
  %53 = call %struct.mlx5_core_cq* @radix_tree_lookup(i32* %51, i64 %52)
  store %struct.mlx5_core_cq* %53, %struct.mlx5_core_cq** %5, align 8
  %54 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %55 = call i64 @likely(%struct.mlx5_core_cq* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %58, i32 0, i32 1
  %60 = call i32 @atomic_inc(i32* %59)
  br label %61

61:                                               ; preds = %57, %46
  %62 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %66 = icmp ne %struct.mlx5_core_cq* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %89

71:                                               ; preds = %61
  %72 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %73 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %77 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %76, i32 0, i32 2
  %78 = load i32 (%struct.mlx5_core_cq*)*, i32 (%struct.mlx5_core_cq*)** %77, align 8
  %79 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %80 = call i32 %78(%struct.mlx5_core_cq* %79)
  %81 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %82 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %81, i32 0, i32 1
  %83 = call i64 @atomic_dec_and_test(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %87 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %86, i32 0, i32 0
  %88 = call i32 @complete(i32* %87)
  br label %89

89:                                               ; preds = %42, %67, %85, %71
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.mlx5_core_cq* @radix_tree_lookup(i32*, i64) #1

declare dso_local i64 @likely(%struct.mlx5_core_cq*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
