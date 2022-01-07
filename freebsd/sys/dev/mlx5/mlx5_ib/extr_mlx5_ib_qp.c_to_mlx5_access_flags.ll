; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_to_mlx5_access_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_to_mlx5_access_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32 }

@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@MLX5_QP_BIT_RRE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@MLX5_QP_BIT_RAE = common dso_local global i32 0, align 4
@MLX5_ATOMIC_MODE_CX = common dso_local global i32 0, align 4
@MLX5_QP_BIT_RWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, %struct.ib_qp_attr*, i32)* @to_mlx5_access_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_mlx5_access_flags(%struct.mlx5_ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %4, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %16 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %30 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %37

32:                                               ; preds = %23
  %33 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @MLX5_QP_BIT_RRE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @MLX5_QP_BIT_RAE, align 4
  %60 = load i32, i32* @MLX5_ATOMIC_MODE_CX, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @MLX5_QP_BIT_RWE, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @cpu_to_be32(i32 %74)
  ret i32 %75
}

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
