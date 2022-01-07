; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_ib_nr_to_mlx5_nr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_ib_nr_to_mlx5_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX5_QP_OPTPAR_RWE = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_RRE = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_RAE = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_PKEY_INDEX = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_PRI_PORT = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_Q_KEY = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_PRIMARY_ADDR_PATH = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_ACK_TIMEOUT = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_RETRY_COUNT = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_RNR_RETRY = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_SRA_MAX = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_ALT_ADDR_PATH = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_RNR_TIMEOUT = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_RRA_MAX = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_PM_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ib_nr_to_mlx5_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_nr_to_mlx5_nr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %51 [
    i32 129, label %5
    i32 144, label %6
    i32 142, label %7
    i32 148, label %8
    i32 136, label %14
    i32 135, label %16
    i32 134, label %18
    i32 146, label %20
    i32 137, label %24
    i32 128, label %25
    i32 133, label %27
    i32 132, label %29
    i32 131, label %31
    i32 140, label %32
    i32 147, label %34
    i32 139, label %36
    i32 130, label %38
    i32 141, label %39
    i32 138, label %47
    i32 145, label %49
    i32 143, label %50
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

8:                                                ; preds = %1
  %9 = load i32, i32* @MLX5_QP_OPTPAR_RWE, align 4
  %10 = load i32, i32* @MLX5_QP_OPTPAR_RRE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MLX5_QP_OPTPAR_RAE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load i32, i32* @MLX5_QP_OPTPAR_PKEY_INDEX, align 4
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load i32, i32* @MLX5_QP_OPTPAR_PRI_PORT, align 4
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i32, i32* @MLX5_QP_OPTPAR_Q_KEY, align 4
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %1
  %21 = load i32, i32* @MLX5_QP_OPTPAR_PRIMARY_ADDR_PATH, align 4
  %22 = load i32, i32* @MLX5_QP_OPTPAR_PRI_PORT, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

25:                                               ; preds = %1
  %26 = load i32, i32* @MLX5_QP_OPTPAR_ACK_TIMEOUT, align 4
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load i32, i32* @MLX5_QP_OPTPAR_RETRY_COUNT, align 4
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %1
  %30 = load i32, i32* @MLX5_QP_OPTPAR_RNR_RETRY, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

32:                                               ; preds = %1
  %33 = load i32, i32* @MLX5_QP_OPTPAR_SRA_MAX, align 4
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %1
  %35 = load i32, i32* @MLX5_QP_OPTPAR_ALT_ADDR_PATH, align 4
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %1
  %37 = load i32, i32* @MLX5_QP_OPTPAR_RNR_TIMEOUT, align 4
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

39:                                               ; preds = %1
  %40 = load i32, i32* @MLX5_QP_OPTPAR_RRA_MAX, align 4
  %41 = load i32, i32* @MLX5_QP_OPTPAR_RWE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MLX5_QP_OPTPAR_RRE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MLX5_QP_OPTPAR_RAE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %1
  %48 = load i32, i32* @MLX5_QP_OPTPAR_PM_STATE, align 4
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %49, %47, %39, %38, %36, %34, %32, %31, %29, %27, %25, %24, %20, %18, %16, %14, %8, %7, %6, %5
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
