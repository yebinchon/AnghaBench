; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_mlx4_unicast_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_mlx4_unicast_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_qp = type { i32 }

@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@MLX4_UC_STEER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_unicast_detach(%struct.mlx4_dev* %0, %struct.mlx4_qp* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_qp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_qp* %1, %struct.mlx4_qp** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MLX4_PROT_ETH, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* @MLX4_UC_STEER, align 4
  %15 = shl i32 %14, 1
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 7
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %13, %4
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %22 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %26 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @mlx4_QP_ATTACH(%struct.mlx4_dev* %25, %struct.mlx4_qp* %26, i32* %27, i32 0, i32 0, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %32 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MLX4_UC_STEER, align 4
  %36 = call i32 @mlx4_qp_detach_common(%struct.mlx4_dev* %31, %struct.mlx4_qp* %32, i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QP_ATTACH(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx4_qp_detach_common(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
