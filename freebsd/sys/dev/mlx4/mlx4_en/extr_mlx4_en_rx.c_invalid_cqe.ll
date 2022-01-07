; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_invalid_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_invalid_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_cqe = type { i32, i32 }
%struct.mlx4_err_cqe = type { i32, i32 }

@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CQE completed in error - vendor syndrom:%d syndrom:%d\0A\00", align 1
@MLX4_CQE_BAD_FCS = common dso_local global i32 0, align 4
@RX_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Accepted frame with bad FCS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_cqe*)* @invalid_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalid_cqe(%struct.mlx4_en_priv* %0, %struct.mlx4_cqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_cqe*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %4, align 8
  store %struct.mlx4_cqe* %1, %struct.mlx4_cqe** %5, align 8
  %6 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %5, align 8
  %7 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @MLX4_CQE_OPCODE_ERROR, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %18 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %5, align 8
  %19 = bitcast %struct.mlx4_cqe* %18 to %struct.mlx4_err_cqe*
  %20 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %5, align 8
  %23 = bitcast %struct.mlx4_cqe* %22 to %struct.mlx4_err_cqe*
  %24 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @en_err(%struct.mlx4_en_priv* %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  store i32 1, i32* %3, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MLX4_CQE_BAD_FCS, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @RX_ERR, align 4
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %38 = call i32 @en_dbg(i32 %36, %struct.mlx4_en_priv* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
