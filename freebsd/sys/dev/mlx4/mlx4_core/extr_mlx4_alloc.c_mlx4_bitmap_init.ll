; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_bitmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_bitmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_bitmap = type { i32, i64, i32, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_bitmap_init(%struct.mlx4_bitmap* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_bitmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mlx4_bitmap* %0, %struct.mlx4_bitmap** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @roundup_pow_of_two(i64 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %74

19:                                               ; preds = %5
  %20 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %30, i32 0, i32 6
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %33, i32 0, i32 5
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* %10, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %43 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %46 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %45, i32 0, i32 4
  store i64 %44, i64* %46, align 8
  %47 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %47, i32 0, i32 2
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @BITS_TO_LONGS(i64 %52)
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @kzalloc(i32 %56, i32 %57)
  %59 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %60 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %62 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %19
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %74

68:                                               ; preds = %19
  %69 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %70 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @bitmap_set(i32 %71, i32 0, i64 %72)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %65, %16
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @bitmap_set(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
