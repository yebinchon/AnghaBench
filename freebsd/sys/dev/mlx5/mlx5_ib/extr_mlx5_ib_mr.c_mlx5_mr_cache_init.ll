; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_mr_cache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_mr_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_6__*, i32, i32, %struct.mlx5_mr_cache }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_mr_cache = type { i32, %struct.mlx5_cache_ent* }
%struct.mlx5_cache_ent = type { i32, i32, i32, i32, %struct.mlx5_ib_dev*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"mkey_cache\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create work queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@delay_time_func = common dso_local global i32 0, align 4
@MAX_MR_CACHE_ENTRIES = common dso_local global i32 0, align 4
@MLX5_PROF_MASK_MR_CACHE = common dso_local global i32 0, align 4
@cache_work_func = common dso_local global i32 0, align 4
@delayed_cache_work_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_mr_cache_init(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_mr_cache*, align 8
  %5 = alloca %struct.mlx5_cache_ent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 3
  store %struct.mlx5_mr_cache* %9, %struct.mlx5_mr_cache** %4, align 8
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 2
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %14 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %23 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %119

26:                                               ; preds = %1
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %27, i32 0, i32 1
  %29 = load i32, i32* @delay_time_func, align 4
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %31 = ptrtoint %struct.mlx5_ib_dev* %30 to i64
  %32 = call i32 @setup_timer(i32* %28, i32 %29, i64 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %115, %26
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MAX_MR_CACHE_ENTRIES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %118

37:                                               ; preds = %33
  %38 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %38, i32 0, i32 1
  %40 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %40, i64 %42
  %44 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %43, i32 0, i32 6
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %46, i32 0, i32 1
  %48 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %48, i64 %50
  %52 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %51, i32 0, i32 5
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %54, i32 0, i32 1
  %56 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %56, i64 %58
  store %struct.mlx5_cache_ent* %59, %struct.mlx5_cache_ent** %5, align 8
  %60 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %60, i32 0, i32 6
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %63, i32 0, i32 5
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 2
  %68 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %5, align 8
  %69 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %71 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %71, i32 0, i32 4
  store %struct.mlx5_ib_dev* %70, %struct.mlx5_ib_dev** %72, align 8
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MLX5_PROF_MASK_MR_CACHE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %37
  %84 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %85 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %6, align 4
  br label %97

96:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %83
  %98 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %98, i32 0, i32 2
  %100 = load i32, i32* @cache_work_func, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %102, i32 0, i32 3
  %104 = load i32, i32* @delayed_cache_work_func, align 4
  %105 = call i32 @INIT_DELAYED_WORK(i32* %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %5, align 8
  %108 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %110 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %112, i32 0, i32 2
  %114 = call i32 @queue_work(i32 %111, i32* %113)
  br label %115

115:                                              ; preds = %97
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %33

118:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %21
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
