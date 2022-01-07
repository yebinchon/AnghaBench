; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_get_active_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_get_active_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.mlx4_active_ports = type { i32 }

@MLX4_MAX_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_active_ports, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %10 = call i32 @bitmap_zero(i32 %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bitmap_fill(i32 %15, i32 %19)
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @mlx4_get_vf_indx(%struct.mlx4_dev* %22, i32 %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %57

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @mlx4_get_vf_indx(%struct.mlx4_dev* %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @min(i32 %50, i32 %54)
  %56 = call i32 @bitmap_set(i32 %31, i64 %40, i32 %55)
  br label %57

57:                                               ; preds = %29, %28, %13
  %58 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  ret i32 %59
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i64 @mlx4_get_vf_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @bitmap_set(i32, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
