; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_mkey_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_mkey_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_mkey_seg = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.mlx5_ib_mr = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MLX5_ACCESS_MODE_MTT = common dso_local global i32 0, align 4
@MLX5_ACCESS_MODE_KLM = common dso_local global i32 0, align 4
@MLX5_MKEY_REMOTE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_mkey_seg*, %struct.mlx5_ib_mr*, i32, i32)* @set_reg_mkey_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg_mkey_seg(%struct.mlx5_mkey_seg* %0, %struct.mlx5_ib_mr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_mkey_seg*, align 8
  %6 = alloca %struct.mlx5_ib_mr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_mkey_seg* %0, %struct.mlx5_mkey_seg** %5, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ALIGN(i32 %12, i32 8)
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %16 = call i32 @memset(%struct.mlx5_mkey_seg* %15, i32 0, i32 56)
  %17 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MLX5_ACCESS_MODE_MTT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ilog2(i32 %26)
  %28 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  br label %40

30:                                               ; preds = %4
  %31 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MLX5_ACCESS_MODE_KLM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @get_umr_flags(i32 %41)
  %43 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  %47 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 255
  %51 = or i32 %50, -256
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @MLX5_MKEY_REMOTE_INVAL, align 4
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_be64(i32 %62)
  %64 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be64(i32 %69)
  %71 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memset(%struct.mlx5_mkey_seg*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @get_umr_flags(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
