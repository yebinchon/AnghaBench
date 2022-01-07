; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_frwr_mkey_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_frwr_mkey_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX5_MKEY_MASK_LEN = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_PAGE_SIZE = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_START_ADDR = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_EN_RINVAL = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_KEY = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_LR = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_LW = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_RR = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_RW = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_A = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_SMALL_FENCE = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @frwr_mkey_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frwr_mkey_mask() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MLX5_MKEY_MASK_LEN, align 4
  %3 = load i32, i32* @MLX5_MKEY_MASK_PAGE_SIZE, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @MLX5_MKEY_MASK_START_ADDR, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @MLX5_MKEY_MASK_EN_RINVAL, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MLX5_MKEY_MASK_KEY, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MLX5_MKEY_MASK_LR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MLX5_MKEY_MASK_LW, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MLX5_MKEY_MASK_RR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MLX5_MKEY_MASK_RW, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MLX5_MKEY_MASK_A, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MLX5_MKEY_MASK_SMALL_FENCE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MLX5_MKEY_MASK_FREE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @cpu_to_be64(i32 %25)
  ret i32 %26
}

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
