; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_sw_send_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_sw_send_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.mlx5_ib_wq }
%struct.mlx5_ib_wq = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_wc = type { i32*, i32, i32, i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@MLX5_CQE_SYNDROME_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, i32, %struct.ib_wc*, i32*)* @sw_send_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_send_comp(%struct.mlx5_ib_qp* %0, i32 %1, %struct.ib_wc* %2, i32* %3) #0 {
  %5 = alloca %struct.mlx5_ib_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx5_ib_wq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %14, i32 0, i32 1
  store %struct.mlx5_ib_wq* %15, %struct.mlx5_ib_wq** %9, align 8
  %16 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %91

28:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %85, %28
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %88

39:                                               ; preds = %37
  %40 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %42, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %56 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %58 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %59 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @MLX5_CQE_SYNDROME_WR_FLUSH_ERR, align 4
  %61 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %64 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  %69 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %69, i32 0, i32 0
  %71 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  %73 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %73, i32 1
  store %struct.ib_wc* %74, %struct.ib_wc** %7, align 8
  %75 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %9, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %39
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %29

88:                                               ; preds = %37
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
