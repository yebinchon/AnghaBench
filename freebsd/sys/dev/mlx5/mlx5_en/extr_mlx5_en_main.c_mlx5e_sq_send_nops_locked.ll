; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_sq_send_nops_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_sq_send_nops_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_sq*, i32)* @mlx5e_sq_send_nops_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_sq_send_nops_locked(%struct.mlx5e_sq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_sq*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %2
  %6 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %28, %10
  %12 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %13 = call i32 @mlx5e_sq_has_room_for(%struct.mlx5e_sq* %12, i32 1)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %20, i32 0, i32 2
  %22 = call i32 @mtx_unlock(i32* %21)
  %23 = call i32 @msleep(i32 4)
  %24 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %24, i32 0, i32 2
  %26 = call i32 @mtx_lock(i32* %25)
  br label %28

27:                                               ; preds = %16
  br label %34

28:                                               ; preds = %19
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %31 = call i32 @mlx5e_send_nop(%struct.mlx5e_sq* %30, i32 1)
  %32 = call i32 (...) @atomic_thread_fence_rel()
  br label %5

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %45 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mlx5e_tx_notify_hw(%struct.mlx5e_sq* %44, i32 %48, i32 0)
  %50 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %43, %34
  ret void
}

declare dso_local i32 @mlx5e_sq_has_room_for(%struct.mlx5e_sq*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mlx5e_send_nop(%struct.mlx5e_sq*, i32) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mlx5e_tx_notify_hw(%struct.mlx5e_sq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
