; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_handle_good_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_handle_good_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wc = type { i32, i32, i64 }
%struct.mlx5_cqe64 = type { i32, i32 }
%struct.mlx5_ib_wq = type { i32 }

@IB_WC_WITH_IMM = common dso_local global i64 0, align 8
@IB_WC_RDMA_WRITE = common dso_local global i32 0, align 4
@IB_WC_SEND = common dso_local global i32 0, align 4
@IB_WC_RDMA_READ = common dso_local global i32 0, align 4
@IB_WC_COMP_SWAP = common dso_local global i32 0, align 4
@IB_WC_FETCH_ADD = common dso_local global i32 0, align 4
@IB_WC_MASKED_COMP_SWAP = common dso_local global i32 0, align 4
@IB_WC_MASKED_FETCH_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_wc*, %struct.mlx5_cqe64*, %struct.mlx5_ib_wq*, i32)* @handle_good_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_good_req(%struct.ib_wc* %0, %struct.mlx5_cqe64* %1, %struct.mlx5_ib_wq* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca %struct.mlx5_cqe64*, align 8
  %7 = alloca %struct.mlx5_ib_wq*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_wc* %0, %struct.ib_wc** %5, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %6, align 8
  store %struct.mlx5_ib_wq* %2, %struct.mlx5_ib_wq** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %10 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be32_to_cpu(i32 %13)
  %15 = ashr i32 %14, 24
  switch i32 %15, label %76 [
    i32 132, label %16
    i32 133, label %22
    i32 130, label %26
    i32 131, label %32
    i32 129, label %32
    i32 134, label %36
    i32 138, label %46
    i32 137, label %52
    i32 136, label %58
    i32 135, label %64
    i32 128, label %70
  ]

16:                                               ; preds = %4
  %17 = load i64, i64* @IB_WC_WITH_IMM, align 8
  %18 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %19 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = or i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %4, %16
  %23 = load i32, i32* @IB_WC_RDMA_WRITE, align 4
  %24 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %25 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %76

26:                                               ; preds = %4
  %27 = load i64, i64* @IB_WC_WITH_IMM, align 8
  %28 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %30, %27
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %4, %4, %26
  %33 = load i32, i32* @IB_WC_SEND, align 4
  %34 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %35 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %76

36:                                               ; preds = %4
  %37 = load i32, i32* @IB_WC_RDMA_READ, align 4
  %38 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %39 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %45 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %76

46:                                               ; preds = %4
  %47 = load i32, i32* @IB_WC_COMP_SWAP, align 4
  %48 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i32 0, i32 0
  store i32 8, i32* %51, align 8
  br label %76

52:                                               ; preds = %4
  %53 = load i32, i32* @IB_WC_FETCH_ADD, align 4
  %54 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %55 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %57 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %56, i32 0, i32 0
  store i32 8, i32* %57, align 8
  br label %76

58:                                               ; preds = %4
  %59 = load i32, i32* @IB_WC_MASKED_COMP_SWAP, align 4
  %60 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %61 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %63 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %62, i32 0, i32 0
  store i32 8, i32* %63, align 8
  br label %76

64:                                               ; preds = %4
  %65 = load i32, i32* @IB_WC_MASKED_FETCH_ADD, align 4
  %66 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %67 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %69 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i32 0, i32 0
  store i32 8, i32* %69, align 8
  br label %76

70:                                               ; preds = %4
  %71 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @get_umr_comp(%struct.mlx5_ib_wq* %71, i32 %72)
  %74 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %75 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %4, %70, %64, %58, %52, %46, %36, %32, %22
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_umr_comp(%struct.mlx5_ib_wq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
