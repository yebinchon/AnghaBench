; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_res_abort_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_res_abort_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx4_resource_tracker }
%struct.mlx4_resource_tracker = type { i32* }
%struct.res_common = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i32, i32, i32)* @res_abort_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_abort_move(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_priv*, align 8
  %10 = alloca %struct.mlx4_resource_tracker*, align 8
  %11 = alloca %struct.res_common*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %13 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %12)
  store %struct.mlx4_priv* %13, %struct.mlx4_priv** %9, align 8
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.mlx4_resource_tracker* %17, %struct.mlx4_resource_tracker** %10, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %19 = call i32 @mlx4_tlock(%struct.mlx4_dev* %18)
  %20 = call i32 @spin_lock_irq(i32 %19)
  %21 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.res_common* @res_tracker_lookup(i32* %26, i32 %27)
  store %struct.res_common* %28, %struct.res_common** %11, align 8
  %29 = load %struct.res_common*, %struct.res_common** %11, align 8
  %30 = icmp ne %struct.res_common* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %4
  %32 = load %struct.res_common*, %struct.res_common** %11, align 8
  %33 = getelementptr inbounds %struct.res_common, %struct.res_common* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.res_common*, %struct.res_common** %11, align 8
  %39 = getelementptr inbounds %struct.res_common, %struct.res_common* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.res_common*, %struct.res_common** %11, align 8
  %42 = getelementptr inbounds %struct.res_common, %struct.res_common* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %31, %4
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %45 = call i32 @mlx4_tlock(%struct.mlx4_dev* %44)
  %46 = call i32 @spin_unlock_irq(i32 %45)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @mlx4_tlock(%struct.mlx4_dev*) #1

declare dso_local %struct.res_common* @res_tracker_lookup(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
