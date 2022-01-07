; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_bitmap_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_bitmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_bitmap = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_bitmap_alloc(%struct.mlx4_bitmap* %0) #0 {
  %2 = alloca %struct.mlx4_bitmap*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_bitmap* %0, %struct.mlx4_bitmap** %2, align 8
  %4 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %4, i32 0, i32 5
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %11 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %14 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @find_next_zero_bit(i32 %9, i32 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %19 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %1
  %23 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %27 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %31 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %35 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %39 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %41 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %44 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @find_first_zero_bit(i32 %42, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %22, %1
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %50 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %56 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_bit(i32 %54, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %62 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %64 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %67 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %72 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %53
  %74 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %75 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %85 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %2, align 8
  %90 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %89, i32 0, i32 5
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
