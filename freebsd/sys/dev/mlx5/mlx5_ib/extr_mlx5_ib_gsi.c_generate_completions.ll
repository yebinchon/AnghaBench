; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_generate_completions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_gsi.c_generate_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_gsi_qp = type { i64, i64, i64, %struct.TYPE_3__, %struct.mlx5_ib_gsi_wr*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_ib_gsi_wr = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ib_cq* }
%struct.ib_cq = type { i32 }

@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_gsi_qp*)* @generate_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_completions(%struct.mlx5_ib_gsi_qp* %0) #0 {
  %2 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.mlx5_ib_gsi_wr*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5_ib_gsi_qp* %0, %struct.mlx5_ib_gsi_qp** %2, align 8
  %6 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  store %struct.ib_cq* %9, %struct.ib_cq** %3, align 8
  %10 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %57, %1
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %13
  %20 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %20, i32 0, i32 4
  %22 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = urem i64 %23, %27
  %29 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %22, i64 %28
  store %struct.mlx5_ib_gsi_wr* %29, %struct.mlx5_ib_gsi_wr** %4, align 8
  %30 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  br label %60

35:                                               ; preds = %19
  %36 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41, %35
  %49 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %50 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %50, i32 0, i32 2
  %52 = call i32 @mlx5_ib_generate_wc(%struct.ib_cq* %49, i32* %51)
  %53 = call i32 @WARN_ON_ONCE(i32 %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.mlx5_ib_gsi_wr*, %struct.mlx5_ib_gsi_wr** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, %struct.mlx5_ib_gsi_wr* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %5, align 8
  br label %13

60:                                               ; preds = %34, %13
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %2, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mlx5_ib_generate_wc(%struct.ib_cq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
