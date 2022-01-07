; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_mbuf_tstmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_mbuf_tstmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i64, %struct.mlx5e_clbr_point* }
%struct.mlx5e_clbr_point = type { i64, i32, i32, i32, i32 }

@MLX5E_TSTMP_PREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32)* @mlx5e_mbuf_tstmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_mbuf_tstmp(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_clbr_point*, align 8
  %7 = alloca %struct.mlx5e_clbr_point, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %12

12:                                               ; preds = %31, %2
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 1
  %15 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %14, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %15, i64 %18
  store %struct.mlx5e_clbr_point* %19, %struct.mlx5e_clbr_point** %6, align 8
  %20 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %20, i32 0, i32 0
  %22 = call i64 @atomic_load_acq_int(i64* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %70

26:                                               ; preds = %12
  %27 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %6, align 8
  %28 = bitcast %struct.mlx5e_clbr_point* %7 to i8*
  %29 = bitcast %struct.mlx5e_clbr_point* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = call i32 (...) @atomic_thread_fence_acq()
  br label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.mlx5e_clbr_point*, %struct.mlx5e_clbr_point** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %12, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %38, %40
  %42 = load i32, i32* @MLX5E_TSTMP_PREC, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %7, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %7, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %45, %47
  %49 = load i32, i32* @MLX5E_TSTMP_PREC, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* @MLX5E_TSTMP_PREC, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %7, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %57, %59
  %61 = load i32, i32* @MLX5E_TSTMP_PREC, align 4
  %62 = ashr i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = sdiv i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = getelementptr inbounds %struct.mlx5e_clbr_point, %struct.mlx5e_clbr_point* %7, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %37, %25
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @atomic_load_acq_int(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_thread_fence_acq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
