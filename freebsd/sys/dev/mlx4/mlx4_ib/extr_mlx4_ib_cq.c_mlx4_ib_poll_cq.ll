; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_poll_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.mlx4_ib_cq = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_qp = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.mlx4_ib_cq*, align 8
  %8 = alloca %struct.mlx4_ib_qp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %13 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %12)
  store %struct.mlx4_ib_cq* %13, %struct.mlx4_ib_cq** %7, align 8
  store %struct.mlx4_ib_qp* null, %struct.mlx4_ib_qp** %8, align 8
  %14 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx4_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %11, align 8
  %19 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %19, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %38 = call i32 @mlx4_ib_poll_sw_comp(%struct.mlx4_ib_cq* %35, i32 %36, %struct.ib_wc* %37, i32* %10)
  br label %61

39:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %46 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %46, i64 %48
  %50 = call i64 @mlx4_ib_poll_one(%struct.mlx4_ib_cq* %45, %struct.mlx4_ib_qp** %8, %struct.ib_wc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %40

57:                                               ; preds = %52, %40
  %58 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %58, i32 0, i32 1
  %60 = call i32 @mlx4_cq_set_ci(i32* %59)
  br label %61

61:                                               ; preds = %57, %34
  %62 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %62, i32 0, i32 0
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx4_ib_poll_sw_comp(%struct.mlx4_ib_cq*, i32, %struct.ib_wc*, i32*) #1

declare dso_local i64 @mlx4_ib_poll_one(%struct.mlx4_ib_cq*, %struct.mlx4_ib_qp**, %struct.ib_wc*) #1

declare dso_local i32 @mlx4_cq_set_ci(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
