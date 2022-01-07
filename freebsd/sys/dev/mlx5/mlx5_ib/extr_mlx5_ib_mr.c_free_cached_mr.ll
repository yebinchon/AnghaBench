; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_free_cached_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_free_cached_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_mr_cache }
%struct.mlx5_mr_cache = type { i32, %struct.mlx5_cache_ent* }
%struct.mlx5_cache_ent = type { i32, i32, i32, i32, i32 }
%struct.mlx5_ib_mr = type { i32, i32 }

@MAX_MR_CACHE_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"order %d, cache index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*)* @free_cached_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cached_mr(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_mr* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_mr*, align 8
  %5 = alloca %struct.mlx5_mr_cache*, align 8
  %6 = alloca %struct.mlx5_cache_ent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %4, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  store %struct.mlx5_mr_cache* %10, %struct.mlx5_mr_cache** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %12 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @order2idx(%struct.mlx5_ib_dev* %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MAX_MR_CACHE_ENTRIES, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18, %2
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %24 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %70

29:                                               ; preds = %18
  %30 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %30, i32 0, i32 1
  %32 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %32, i64 %34
  store %struct.mlx5_cache_ent* %35, %struct.mlx5_cache_ent** %6, align 8
  %36 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %36, i32 0, i32 3
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %39, i32 0, i32 0
  %41 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %41, i32 0, i32 4
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 2, %53
  %55 = icmp sgt i32 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %59 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %58, i32 0, i32 3
  %60 = call i32 @spin_unlock_irq(i32* %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %68 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %67, i32 0, i32 2
  %69 = call i32 @queue_work(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %22, %63, %57
  ret void
}

declare dso_local i32 @order2idx(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
