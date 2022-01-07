; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_bitmap_free_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_bitmap_free_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_bitmap = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_bitmap_free_range(%struct.mlx4_bitmap* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_bitmap* %0, %struct.mlx4_bitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %19, i32 0, i32 5
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %4
  %25 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  %30 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %31 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %48 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %24, %4
  %50 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %51 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @bitmap_clear(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %62 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %61, i32 0, i32 5
  %63 = call i32 @spin_unlock(i32* %62)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
