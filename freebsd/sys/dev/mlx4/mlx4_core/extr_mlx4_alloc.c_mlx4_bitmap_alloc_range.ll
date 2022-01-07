; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_bitmap_alloc_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_bitmap_alloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_bitmap = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_bitmap_alloc_range(%struct.mlx4_bitmap* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_bitmap* %0, %struct.mlx4_bitmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %13, %4
  %21 = phi i1 [ false, %13 ], [ false, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %27 = call i32 @mlx4_bitmap_alloc(%struct.mlx4_bitmap* %26)
  store i32 %27, i32* %5, align 4
  br label %134

28:                                               ; preds = %20
  %29 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %29, i32 0, i32 6
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @find_aligned_range(i32 %34, i32 %37, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %28
  %51 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %63 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, %64
  %66 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %69 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @find_aligned_range(i32 %70, i32 0, i32 %73, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %50, %28
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %81 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %78
  %85 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %86 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @bitmap_set(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %93 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %84
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %101 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %103 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %106 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %96
  %110 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %111 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %96
  br label %113

113:                                              ; preds = %112, %84
  %114 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %115 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %120

119:                                              ; preds = %78
  store i32 -1, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %113
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, -1
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %126 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %120
  %130 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %6, align 8
  %131 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %130, i32 0, i32 6
  %132 = call i32 @spin_unlock(i32* %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %129, %25
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mlx4_bitmap_alloc(%struct.mlx4_bitmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_aligned_range(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
