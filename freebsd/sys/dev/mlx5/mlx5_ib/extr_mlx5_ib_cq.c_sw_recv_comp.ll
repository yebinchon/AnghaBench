; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_sw_recv_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_sw_recv_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.mlx5_ib_wq }
%struct.mlx5_ib_wq = type { i32, i32, i32, i32* }
%struct.ib_wc = type { i32*, i32, i32, i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@MLX5_CQE_SYNDROME_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, i32, %struct.ib_wc*, i32*)* @sw_recv_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_recv_comp(%struct.mlx5_ib_qp* %0, i32 %1, %struct.ib_wc* %2, i32* %3) #0 {
  %5 = alloca %struct.mlx5_ib_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx5_ib_wq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %13, i32 0, i32 1
  store %struct.mlx5_ib_wq* %14, %struct.mlx5_ib_wq** %9, align 8
  %15 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %79

27:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %73, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  br i1 %37, label %38, label %76

38:                                               ; preds = %36
  %39 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %44, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %41, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %56 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %57 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @MLX5_CQE_SYNDROME_WR_FLUSH_ERR, align 4
  %59 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %60 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %67, i32 0, i32 0
  %69 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %70 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i32 1
  store %struct.ib_wc* %72, %struct.ib_wc** %7, align 8
  br label %73

73:                                               ; preds = %38
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %28

76:                                               ; preds = %36
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
