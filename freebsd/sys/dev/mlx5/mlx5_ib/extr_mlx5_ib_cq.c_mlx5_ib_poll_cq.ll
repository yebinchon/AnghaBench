; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_mlx5_ib_poll_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_mlx5_ib_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.mlx5_ib_cq = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ib_qp = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i64 }

@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.mlx5_ib_cq*, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %15 = call %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq* %14)
  store %struct.mlx5_ib_cq* %15, %struct.mlx5_ib_cq** %7, align 8
  store %struct.mlx5_ib_qp* null, %struct.mlx5_ib_qp** %8, align 8
  %16 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlx5_ib_dev* @to_mdev(i32 %19)
  store %struct.mlx5_ib_dev* %20, %struct.mlx5_ib_dev** %9, align 8
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %21, i32 0, i32 0
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  store %struct.mlx5_core_dev* %23, %struct.mlx5_core_dev** %10, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %40 = call i32 @mlx5_ib_poll_sw_comp(%struct.mlx5_ib_cq* %37, i32 %38, %struct.ib_wc* %39, i32* %13)
  br label %86

41:                                               ; preds = %3
  %42 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %42, i32 0, i32 2
  %44 = call i32 @list_empty(i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %54 = call i32 @poll_soft_wc(%struct.mlx5_ib_cq* %51, i32 %52, %struct.ib_wc* %53)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %50, %41
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %64 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %64, i64 %66
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %67, i64 %69
  %71 = call i64 @mlx5_poll_one(%struct.mlx5_ib_cq* %63, %struct.mlx5_ib_qp** %8, %struct.ib_wc* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %78

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %56

78:                                               ; preds = %73, %56
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %82, i32 0, i32 1
  %84 = call i32 @mlx5_cq_set_ci(i32* %83)
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %36
  %87 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %88 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %87, i32 0, i32 0
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %91, %92
  ret i32 %93
}

declare dso_local %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_ib_poll_sw_comp(%struct.mlx5_ib_cq*, i32, %struct.ib_wc*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @poll_soft_wc(%struct.mlx5_ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i64 @mlx5_poll_one(%struct.mlx5_ib_cq*, %struct.mlx5_ib_qp**, %struct.ib_wc*) #1

declare dso_local i32 @mlx5_cq_set_ci(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
