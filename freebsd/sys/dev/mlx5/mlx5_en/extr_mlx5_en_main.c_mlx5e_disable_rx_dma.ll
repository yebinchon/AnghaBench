; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_disable_rx_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_disable_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.mlx5e_rq }
%struct.mlx5e_rq = type { i32, %struct.TYPE_3__, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }

@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mlx5e_modify_rq() from RDY to RST failed: %d\0A\00", align 1
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"mlx5e_modify_rq() from ERR to RST failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_channel*)* @mlx5e_disable_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_disable_rx_dma(%struct.mlx5e_channel* %0) #0 {
  %2 = alloca %struct.mlx5e_channel*, align 8
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %2, align 8
  %5 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %5, i32 0, i32 0
  store %struct.mlx5e_rq* %6, %struct.mlx5e_rq** %3, align 8
  %7 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %7, i32 0, i32 3
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %12, i32 0, i32 4
  %14 = call i32 @callout_stop(i32* %13)
  %15 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %15, i32 0, i32 3
  %17 = call i32 @mtx_unlock(i32* %16)
  %18 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %19 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %20 = load i32, i32* @MLX5_RQC_STATE_ERR, align 4
  %21 = call i32 @mlx5e_modify_rq(%struct.mlx5e_rq* %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @mlx5_en_err(i32 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %1
  br label %31

31:                                               ; preds = %37, %30
  %32 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %32, i32 0, i32 2
  %34 = call i32 @mlx5_wq_ll_is_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = call i32 @msleep(i32 1)
  %39 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %42, align 8
  %44 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 %43(%struct.TYPE_4__* %46)
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %50 = load i32, i32* @MLX5_RQC_STATE_ERR, align 4
  %51 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %52 = call i32 @mlx5e_modify_rq(%struct.mlx5e_rq* %49, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @mlx5_en_err(i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %48
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mlx5e_modify_rq(%struct.mlx5e_rq*, i32, i32) #1

declare dso_local i32 @mlx5_en_err(i32, i8*, i32) #1

declare dso_local i32 @mlx5_wq_ll_is_empty(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
