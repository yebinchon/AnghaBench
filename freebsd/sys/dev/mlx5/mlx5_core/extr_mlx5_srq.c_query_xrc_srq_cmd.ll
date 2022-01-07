; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_query_xrc_srq_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_query_xrc_srq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_srq = type { i32 }
%struct.mlx5_srq_attr = type { i32 }

@query_xrc_srq_out = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xrc_srq_context_entry = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_XRC_SRQC_STATE_GOOD = common dso_local global i64 0, align 8
@MLX5_SRQ_FLAG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*)* @query_xrc_srq_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_xrc_srq_cmd(%struct.mlx5_core_dev* %0, %struct.mlx5_core_srq* %1, %struct.mlx5_srq_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_core_srq*, align 8
  %7 = alloca %struct.mlx5_srq_attr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %6, align 8
  store %struct.mlx5_srq_attr* %2, %struct.mlx5_srq_attr** %7, align 8
  %11 = load i32, i32* @query_xrc_srq_out, align 4
  %12 = call i32 @MLX5_ST_SZ_BYTES(i32 %11)
  %13 = call i32* @mlx5_vzalloc(i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @mlx5_core_query_xsrq(%struct.mlx5_core_dev* %20, i32 %23, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %50

29:                                               ; preds = %19
  %30 = load i32, i32* @query_xrc_srq_out, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @xrc_srq_context_entry, align 4
  %33 = call i8* @MLX5_ADDR_OF(i32 %30, i32* %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %36 = call i32 @get_srqc(i8* %34, %struct.mlx5_srq_attr* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @state, align 4
  %40 = call i64 @MLX5_GET(i8* %37, i8* %38, i32 %39)
  %41 = load i64, i64* @MLX5_XRC_SRQC_STATE_GOOD, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load i32, i32* @MLX5_SRQ_FLAG_ERR, align 4
  %45 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %29
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @kvfree(i32* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @mlx5_core_query_xsrq(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @get_srqc(i8*, %struct.mlx5_srq_attr*) #1

declare dso_local i64 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
