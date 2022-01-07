; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_mlx5_port_general_notification_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_mlx5_port_general_notification_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_eqe = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eqe_general_notification_event, %struct.TYPE_3__ }
%struct.mlx5_eqe_general_notification_event = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"general event with unrecognized subtype: port %d, sub_type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_eqe*)* @mlx5_port_general_notification_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_port_general_notification_event(%struct.mlx5_core_dev* %0, %struct.mlx5_eqe* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_eqe_general_notification_event*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_eqe* %1, %struct.mlx5_eqe** %4, align 8
  %8 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %30 [
    i32 129, label %18
    i32 128, label %27
  ]

18:                                               ; preds = %2
  %19 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.mlx5_eqe_general_notification_event* %21, %struct.mlx5_eqe_general_notification_event** %7, align 8
  %22 = load %struct.mlx5_eqe_general_notification_event*, %struct.mlx5_eqe_general_notification_event** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5_eqe_general_notification_event, %struct.mlx5_eqe_general_notification_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = and i32 %25, 16777215
  store i32 %26, i32* %6, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = call i32 @mlx5_trigger_health_watchdog(%struct.mlx5_core_dev* %28)
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %27, %18
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx5_trigger_health_watchdog(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
