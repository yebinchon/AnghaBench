; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_table_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_icm.c_mlx4_table_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_icm_table = type { i32, i32, i32, %struct.TYPE_4__**, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@MLX4_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_table_get(%struct.mlx4_dev* %0, %struct.mlx4_icm_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_icm_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_icm_table* %1, %struct.mlx4_icm_table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %11, %15
  %17 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %18 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  %22 = sdiv i32 %16, %21
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %4
  %35 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %134

45:                                               ; preds = %4
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %47 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @GFP_HIGHUSER, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32, i32* @__GFP_NOWARN, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %63 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_4__* @mlx4_alloc_icm(%struct.mlx4_dev* %46, i32 %49, i32 %61, i32 %64)
  %66 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %71, align 8
  %72 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %73 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = icmp ne %struct.TYPE_4__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %58
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %134

83:                                               ; preds = %58
  %84 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %85 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %86 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %87, i64 %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %93 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %94, %98
  %100 = call i64 @mlx4_MAP_ICM(%struct.mlx4_dev* %84, %struct.TYPE_4__* %91, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %83
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %104 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %105 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %106, i64 %108
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %112 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %103, %struct.TYPE_4__* %110, i32 %113)
  %115 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %116 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %117, i64 %119
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %120, align 8
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %134

123:                                              ; preds = %83
  %124 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %125 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %126, i64 %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %123, %102, %80, %34
  %135 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %6, align 8
  %136 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %135, i32 0, i32 2
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @mlx4_alloc_icm(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i64 @mlx4_MAP_ICM(%struct.mlx4_dev*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
