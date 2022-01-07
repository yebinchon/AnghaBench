; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_srq.c_mlx4_srq_free_icm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_srq.c_mlx4_srq_free_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_SRQ = common dso_local global i32 0, align 4
@RES_OP_RESERVE_AND_MAP = common dso_local global i32 0, align 4
@MLX4_CMD_FREE_RES = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed freeing cq:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i32)* @mlx4_srq_free_icm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_srq_free_icm(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @set_param_l(i32* %5, i32 %10)
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RES_SRQ, align 4
  %15 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %16 = load i32, i32* @MLX4_CMD_FREE_RES, align 4
  %17 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %18 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %19 = call i64 @mlx4_cmd(%struct.mlx4_dev* %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mlx4_warn(%struct.mlx4_dev* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %9
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @__mlx4_srq_free_icm(%struct.mlx4_dev* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %25
  ret void
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i64 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @__mlx4_srq_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
