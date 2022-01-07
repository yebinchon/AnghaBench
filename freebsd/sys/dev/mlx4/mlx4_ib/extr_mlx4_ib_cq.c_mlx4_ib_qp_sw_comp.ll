; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_qp_sw_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_qp_sw_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_qp = type { i32, %struct.mlx4_ib_wq, %struct.mlx4_ib_wq }
%struct.mlx4_ib_wq = type { i32, i32, i32, i32* }
%struct.ib_wc = type { i32*, i32, i32, i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@MLX4_CQE_SYNDROME_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_qp*, i32, %struct.ib_wc*, i32*, i32)* @mlx4_ib_qp_sw_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_qp_sw_comp(%struct.mlx4_ib_qp* %0, i32 %1, %struct.ib_wc* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx4_ib_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_wc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_wq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_ib_qp* %0, %struct.mlx4_ib_qp** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %17, i32 0, i32 2
  br label %22

19:                                               ; preds = %5
  %20 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %20, i32 0, i32 1
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.mlx4_ib_wq* [ %18, %16 ], [ %21, %19 ]
  store %struct.mlx4_ib_wq* %23, %struct.mlx4_ib_wq** %11, align 8
  %24 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %11, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %11, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %26, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %85

34:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %82, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %85

46:                                               ; preds = %44
  %47 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %11, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %11, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %11, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %52, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %49, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %64 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %65 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @MLX4_CQE_SYNDROME_WR_FLUSH_ERR, align 4
  %67 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %68 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %11, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %76, i32 0, i32 0
  %78 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %79 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %81 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %80, i32 1
  store %struct.ib_wc* %81, %struct.ib_wc** %8, align 8
  br label %82

82:                                               ; preds = %46
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %35

85:                                               ; preds = %33, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
