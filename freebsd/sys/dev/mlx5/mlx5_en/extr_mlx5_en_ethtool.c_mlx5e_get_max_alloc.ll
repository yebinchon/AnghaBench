; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_get_max_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_get_max_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32* }
%struct.mlx5_core_dev = type { i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_get_max_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_max_alloc(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 1
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %3, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %10 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %9)
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @mlx5_query_port_tc_bw_alloc(%struct.mlx5_core_dev* %11, i32* %15)
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %27 = sdiv i32 100, %26
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %27, i32* %34, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @mlx5_set_port_tc_bw_alloc(%struct.mlx5_core_dev* %39, i32* %43)
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %1
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %48 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %47)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @PRIV_LOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_query_port_tc_bw_alloc(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_set_port_tc_bw_alloc(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @PRIV_UNLOCK(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
