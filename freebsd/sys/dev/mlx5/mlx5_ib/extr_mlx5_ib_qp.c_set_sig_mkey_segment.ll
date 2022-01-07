; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_sig_mkey_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_sig_mkey_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_mkey_seg = type { i32, i8*, i8*, i32, i8*, i8* }
%struct.ib_sig_handover_wr = type { i32, %struct.ib_mr* }
%struct.ib_mr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MLX5_ACCESS_MODE_KLM = common dso_local global i32 0, align 4
@MLX5_MKEY_REMOTE_INVAL = common dso_local global i32 0, align 4
@MLX5_MKEY_BSF_EN = common dso_local global i32 0, align 4
@MLX5_MKEY_BSF_OCTO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_mkey_seg*, %struct.ib_sig_handover_wr*, i32, i32, i32)* @set_sig_mkey_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sig_mkey_segment(%struct.mlx5_mkey_seg* %0, %struct.ib_sig_handover_wr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_mkey_seg*, align 8
  %7 = alloca %struct.ib_sig_handover_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_mr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_mkey_seg* %0, %struct.mlx5_mkey_seg** %6, align 8
  store %struct.ib_sig_handover_wr* %1, %struct.ib_sig_handover_wr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %7, align 8
  %15 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %14, i32 0, i32 1
  %16 = load %struct.ib_mr*, %struct.ib_mr** %15, align 8
  store %struct.ib_mr* %16, %struct.ib_mr** %11, align 8
  %17 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %18 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %21 = call %struct.TYPE_4__* @to_mmr(%struct.ib_mr* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %6, align 8
  %28 = call i32 @memset(%struct.mlx5_mkey_seg* %27, i32 0, i32 48)
  %29 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %7, align 8
  %30 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @get_umr_flags(i32 %31)
  %33 = load i32, i32* @MLX5_ACCESS_MODE_KLM, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 255
  %39 = or i32 %38, -256
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @MLX5_MKEY_REMOTE_INVAL, align 4
  %44 = load i32, i32* %13, align 4
  %45 = shl i32 %44, 26
  %46 = or i32 %43, %45
  %47 = load i32, i32* @MLX5_MKEY_BSF_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @cpu_to_be64(i32 %54)
  %56 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @get_klm_octo(i32 %58)
  %60 = call i32 @be16_to_cpu(i32 %59)
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @MLX5_MKEY_BSF_OCTO_SIZE, align 4
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %6, align 8
  %67 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @memset(%struct.mlx5_mkey_seg*, i32, i32) #1

declare dso_local i32 @get_umr_flags(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_klm_octo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
