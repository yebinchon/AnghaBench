; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_schedule_delayed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_schedule_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.id_map_entry = type { i32, i32 }
%struct.mlx4_ib_sriov = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.mlx4_ib_sriov }

@CM_CLEANUP_CACHE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.id_map_entry*)* @schedule_delayed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_delayed(%struct.ib_device* %0, %struct.id_map_entry* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.id_map_entry*, align 8
  %5 = alloca %struct.mlx4_ib_sriov*, align 8
  %6 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.id_map_entry* %1, %struct.id_map_entry** %4, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %8 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.mlx4_ib_sriov* %9, %struct.mlx4_ib_sriov** %5, align 8
  %10 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %13, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.id_map_entry*, %struct.id_map_entry** %4, align 8
  %23 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.id_map_entry*, %struct.id_map_entry** %4, align 8
  %25 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %24, i32 0, i32 1
  %26 = load i32, i32* @CM_CLEANUP_CACHE_TIMEOUT, align 4
  %27 = call i32 @schedule_delayed_work(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %29, i32 0, i32 1
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
