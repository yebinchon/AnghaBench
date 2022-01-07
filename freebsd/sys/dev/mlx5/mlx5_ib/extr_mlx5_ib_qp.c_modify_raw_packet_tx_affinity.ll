; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_modify_raw_packet_tx_affinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_modify_raw_packet_tx_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ib_sq = type { i32 }

@modify_tis_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@bitmask = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ctx = common dso_local global i32 0, align 4
@lag_tx_port_affinity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_ib_sq*, i32)* @modify_raw_packet_tx_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_raw_packet_tx_affinity(%struct.mlx5_core_dev* %0, %struct.mlx5_ib_sq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_ib_sq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_ib_sq* %1, %struct.mlx5_ib_sq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** @modify_tis_in, align 8
  %13 = call i32 @MLX5_ST_SZ_BYTES(i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i8* @mlx5_vzalloc(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load i8*, i8** @modify_tis_in, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bitmask, i32 0, i32 0), align 4
  %25 = call i32 @MLX5_SET(i8* %22, i8* %23, i32 %24, i32 1)
  %26 = load i8*, i8** @modify_tis_in, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @ctx, align 4
  %29 = call i8* @MLX5_ADDR_OF(i8* %26, i8* %27, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @lag_tx_port_affinity, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @MLX5_SET(i8* %30, i8* %31, i32 %32, i32 %33)
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %36 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @mlx5_core_modify_tis(%struct.mlx5_core_dev* %35, i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @kvfree(i8* %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %21, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_core_modify_tis(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
