; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_wq_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_wq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_qp = type { i32 }
%struct.mlx5_ib_rwq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.mlx5_ib_dev = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@IB_EVENT_WQ_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected event type %d on WQ %06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_qp*, i32)* @mlx5_ib_wq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_wq_event(%struct.mlx5_core_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_rwq*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.ib_event.0, align 8
  store %struct.mlx5_core_qp* %0, %struct.mlx5_core_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %3, align 8
  %9 = call %struct.mlx5_ib_rwq* @to_mibrwq(%struct.mlx5_core_qp* %8)
  store %struct.mlx5_ib_rwq* %9, %struct.mlx5_ib_rwq** %5, align 8
  %10 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.mlx5_ib_dev* @to_mdev(i32 %13)
  store %struct.mlx5_ib_dev* %14, %struct.mlx5_ib_dev** %6, align 8
  %15 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.ib_event*, i32)* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %2
  %21 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %34 [
    i32 128, label %31
  ]

31:                                               ; preds = %20
  %32 = load i32, i32* @IB_EVENT_WQ_FATAL, align 4
  %33 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  br label %41

34:                                               ; preds = %20
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %52

41:                                               ; preds = %31
  %42 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %44, align 8
  %46 = bitcast %struct.ib_event.0* %7 to %struct.ib_event*
  %47 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %45(%struct.ib_event* %46, i32 %50)
  br label %52

52:                                               ; preds = %34, %41, %2
  ret void
}

declare dso_local %struct.mlx5_ib_rwq* @to_mibrwq(%struct.mlx5_core_qp*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
