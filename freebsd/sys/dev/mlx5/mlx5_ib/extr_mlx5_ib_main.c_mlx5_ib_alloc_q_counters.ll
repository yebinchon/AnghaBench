; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_alloc_q_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_alloc_q_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MLX5_INTERFACE_PROTOCOL_IB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"couldn't allocate queue counter for port %d, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_ib_alloc_q_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_alloc_q_counters(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_IB, align 4
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mlx5_vport_alloc_q_counter(i32 %15, i32 %16, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %12
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %38

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %6

37:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %49

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @mlx5_ib_dealloc_q_port_counter(%struct.mlx5_ib_dev* %44, i32 %45)
  br label %39

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %37
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mlx5_vport_alloc_q_counter(i32, i32, i32*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_ib_dealloc_q_port_counter(%struct.mlx5_ib_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
