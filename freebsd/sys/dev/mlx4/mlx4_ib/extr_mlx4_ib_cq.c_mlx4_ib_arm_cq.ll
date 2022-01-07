; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_arm_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.mlx4_ib_cq = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_dev = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@MLX4_CQ_DB_REQ_NOT_SOL = common dso_local global i32 0, align 4
@MLX4_CQ_DB_REQ_NOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_arm_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_cq*, align 8
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %9 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %8)
  store %struct.mlx4_ib_cq* %9, %struct.mlx4_ib_cq** %6, align 8
  %10 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %11 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mlx4_ib_dev* @to_mdev(i32 %13)
  store %struct.mlx4_ib_dev* %14, %struct.mlx4_ib_dev** %7, align 8
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @MLX4_CQ_DB_REQ_NOT_SOL, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @MLX4_CQ_DB_REQ_NOT, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %44, i32 0, i32 0
  %46 = call i32 @MLX4_GET_DOORBELL_LOCK(i32* %45)
  %47 = call i32 @mlx4_cq_arm(i32* %29, i32 %40, i32 %43, i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx4_cq_arm(i32*, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET_DOORBELL_LOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
