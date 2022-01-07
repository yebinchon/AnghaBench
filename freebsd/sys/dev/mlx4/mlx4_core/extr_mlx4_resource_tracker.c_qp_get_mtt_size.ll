; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_qp_get_mtt_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_qp_get_mtt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_qp_context = type { i32, i32, i32, i32, i32, i32 }

@MLX4_QP_ST_XRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_qp_context*)* @qp_get_mtt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_get_mtt_size(%struct.mlx4_qp_context* %0) #0 {
  %2 = alloca %struct.mlx4_qp_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx4_qp_context* %0, %struct.mlx4_qp_context** %2, align 8
  %17 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %18 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 63
  %21 = add nsw i32 %20, 12
  store i32 %21, i32* %3, align 4
  %22 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %23 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 15
  store i32 %26, i32* %4, align 4
  %27 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %28 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 7
  store i32 %30, i32* %5, align 4
  %31 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %32 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 3
  %35 = and i32 %34, 15
  store i32 %35, i32* %6, align 4
  %36 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %37 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 7
  store i32 %39, i32* %7, align 4
  %40 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %41 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = ashr i32 %43, 24
  %45 = and i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %47 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be32_to_cpu(i32 %48)
  %50 = ashr i32 %49, 13
  %51 = and i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %53 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @MLX4_QP_ST_XRC, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  store i32 %63, i32* %11, align 4
  %64 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %65 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = ashr i32 %67, 6
  %69 = and i32 %68, 63
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 4
  %74 = shl i32 1, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %1
  br label %88

82:                                               ; preds = %1
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %83, %84
  %86 = add nsw i32 %85, 4
  %87 = shl i32 1, %86
  br label %88

88:                                               ; preds = %82, %81
  %89 = phi i32 [ 0, %81 ], [ %87, %82 ]
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = shl i32 %94, 6
  %96 = add nsw i32 %93, %95
  %97 = load i32, i32* %3, align 4
  %98 = ashr i32 %96, %97
  %99 = call i32 @roundup_pow_of_two(i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  ret i32 %100
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
