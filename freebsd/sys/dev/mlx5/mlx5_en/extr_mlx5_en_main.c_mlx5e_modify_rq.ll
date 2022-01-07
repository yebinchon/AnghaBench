; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_modify_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_modify_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.mlx5e_channel* }
%struct.mlx5e_channel = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@modify_rq_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@rqn = common dso_local global i32 0, align 4
@rq_state = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, i32, i32)* @mlx5e_modify_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_modify_rq(%struct.mlx5e_rq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_channel*, align 8
  %9 = alloca %struct.mlx5e_priv*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %15, i32 0, i32 1
  %17 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %16, align 8
  store %struct.mlx5e_channel* %17, %struct.mlx5e_channel** %8, align 8
  %18 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %18, i32 0, i32 0
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %19, align 8
  store %struct.mlx5e_priv* %20, %struct.mlx5e_priv** %9, align 8
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  store %struct.mlx5_core_dev* %23, %struct.mlx5_core_dev** %10, align 8
  %24 = load i8*, i8** @modify_rq_in, align 8
  %25 = call i32 @MLX5_ST_SZ_BYTES(i8* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i8* @mlx5_vzalloc(i32 %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %62

33:                                               ; preds = %3
  %34 = load i8*, i8** @modify_rq_in, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* @ctx, align 4
  %37 = call i8* @MLX5_ADDR_OF(i8* %34, i8* %35, i32 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** @modify_rq_in, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* @rqn, align 4
  %41 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @MLX5_SET(i8* %38, i8* %39, i32 %40, i32 %43)
  %45 = load i8*, i8** @modify_rq_in, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @rq_state, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @MLX5_SET(i8* %45, i8* %46, i32 %47, i32 %48)
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* @state, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @MLX5_SET(i8* %50, i8* %51, i32 %52, i32 %53)
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @mlx5_core_modify_rq(%struct.mlx5_core_dev* %55, i8* %56, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @kvfree(i8* %59)
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %33, %30
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_modify_rq(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
