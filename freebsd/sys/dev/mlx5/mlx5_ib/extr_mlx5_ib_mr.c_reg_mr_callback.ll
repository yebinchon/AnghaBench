; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_reg_mr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_reg_mr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_mr = type { %struct.TYPE_6__, i32, i32, i32, %struct.mlx5_ib_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_ib_dev = type { i32, %struct.TYPE_5__*, i32, %struct.mlx5_mr_cache }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.mlx5_mr_table }
%struct.mlx5_mr_table = type { i32, i32 }
%struct.mlx5_mr_cache = type { i64, %struct.mlx5_cache_ent* }
%struct.mlx5_cache_ent = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"async reg mr failed. status %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@create_mkey_out = common dso_local global i32 0, align 4
@mkey_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error inserting to mkey tree. 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @reg_mr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_mr_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5_ib_mr*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_mr_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_cache_ent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx5_mr_table*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.mlx5_ib_mr*
  store %struct.mlx5_ib_mr* %15, %struct.mlx5_ib_mr** %5, align 8
  %16 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %16, i32 0, i32 4
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %17, align 8
  store %struct.mlx5_ib_dev* %18, %struct.mlx5_ib_dev** %6, align 8
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 3
  store %struct.mlx5_mr_cache* %20, %struct.mlx5_mr_cache** %7, align 8
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %22 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @order2idx(%struct.mlx5_ib_dev* %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %26, i32 0, i32 1
  %28 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %28, i64 %30
  store %struct.mlx5_cache_ent* %31, %struct.mlx5_cache_ent** %9, align 8
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store %struct.mlx5_mr_table* %36, %struct.mlx5_mr_table** %12, align 8
  %37 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %38 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %37, i32 0, i32 0
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %42 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %46 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %45, i32 0, i32 0
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %2
  %52 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %56 = call i32 @kfree(%struct.mlx5_ib_mr* %55)
  %57 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %59, i32 0, i32 2
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i64, i64* @HZ, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @mod_timer(i32* %60, i64 %63)
  br label %148

65:                                               ; preds = %2
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %74 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %80 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* @create_mkey_out, align 4
  %88 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @mkey_index, align 4
  %92 = call i32 @MLX5_GET(i32 %87, i32 %90, i32 %91)
  %93 = call i32 @mlx5_idx_to_mkey(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load i64, i64* @jiffies, align 8
  %100 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %7, align 8
  %101 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %103 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %102, i32 0, i32 0
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %106, i32 0, i32 1
  %108 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %109 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %108, i32 0, i32 3
  %110 = call i32 @list_add_tail(i32* %107, i32* %109)
  %111 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %112 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %116 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %120 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %119, i32 0, i32 0
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.mlx5_mr_table*, %struct.mlx5_mr_table** %12, align 8
  %124 = getelementptr inbounds %struct.mlx5_mr_table, %struct.mlx5_mr_table* %123, i32 0, i32 0
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load %struct.mlx5_mr_table*, %struct.mlx5_mr_table** %12, align 8
  %128 = getelementptr inbounds %struct.mlx5_mr_table, %struct.mlx5_mr_table* %127, i32 0, i32 1
  %129 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @mlx5_mkey_to_idx(i32 %132)
  %134 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %135 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %134, i32 0, i32 0
  %136 = call i32 @radix_tree_insert(i32* %128, i32 %133, %struct.TYPE_6__* %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %65
  %140 = load i32, i32* %13, align 4
  %141 = sub nsw i32 0, %140
  %142 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %139, %65
  %144 = load %struct.mlx5_mr_table*, %struct.mlx5_mr_table** %12, align 8
  %145 = getelementptr inbounds %struct.mlx5_mr_table, %struct.mlx5_mr_table* %144, i32 0, i32 0
  %146 = load i64, i64* %11, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  br label %148

148:                                              ; preds = %143, %51
  ret void
}

declare dso_local i32 @order2idx(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @mlx5_idx_to_mkey(i32) #1

declare dso_local i32 @MLX5_GET(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_mkey_to_idx(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
