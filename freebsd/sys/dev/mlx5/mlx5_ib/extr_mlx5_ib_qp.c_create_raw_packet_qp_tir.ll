; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_raw_packet_qp_tir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_raw_packet_qp_tir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_rq = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@create_tir_in = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tir_context = common dso_local global i32 0, align 4
@disp_type = common dso_local global i32 0, align 4
@MLX5_TIRC_DISP_TYPE_DIRECT = common dso_local global i32 0, align 4
@inline_rqn = common dso_local global i32 0, align 4
@transport_domain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32)* @create_raw_packet_qp_tir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_raw_packet_qp_tir(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_rq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_rq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_rq* %1, %struct.mlx5_ib_rq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @create_tir_in, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32* @mlx5_vzalloc(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load i32, i32* @create_tir_in, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @tir_context, align 4
  %25 = call i8* @MLX5_ADDR_OF(i32 %22, i32* %23, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* @disp_type, align 4
  %29 = load i32, i32* @MLX5_TIRC_DISP_TYPE_DIRECT, align 4
  %30 = call i32 @MLX5_SET(i8* %26, i8* %27, i32 %28, i32 %29)
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @inline_rqn, align 4
  %34 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MLX5_SET(i8* %31, i8* %32, i32 %33, i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @transport_domain, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @MLX5_SET(i8* %40, i8* %41, i32 %42, i32 %43)
  %45 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %50, i32 0, i32 0
  %52 = call i32 @mlx5_core_create_tir(i32 %47, i32* %48, i32 %49, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @kvfree(i32* %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %21, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_tir(i32, i32*, i32, i32*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
