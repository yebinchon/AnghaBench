; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_put_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_put_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MLX4_STEERING_MODE_A0 = common dso_local global i64 0, align 8
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Registering MAC: %pM for deleting\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Releasing qp: port %d, qpn %d\0A\00", align 1
@MLX4_EN_FLAG_FORCE_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*)* @mlx4_en_put_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_put_qp(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca %struct.mlx4_en_dev*, align 8
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 4
  %9 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  store %struct.mlx4_en_dev* %9, %struct.mlx4_en_dev** %3, align 8
  %10 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %10, i32 0, i32 0
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  store %struct.mlx4_dev* %12, %struct.mlx4_dev** %4, align 8
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MLX4_STEERING_MODE_A0, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IF_LLADDR(i32 %25)
  %27 = call i32 @mlx4_mac_to_u64(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @DRV, align 4
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IF_LLADDR(i32 %32)
  %34 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, ...) @en_dbg(i32 %28, %struct.mlx4_en_priv* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @mlx4_unregister_mac(%struct.mlx4_dev* %35, i32 %38, i32 %39)
  br label %58

41:                                               ; preds = %1
  %42 = load i32, i32* @DRV, align 4
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, ...) @en_dbg(i32 %42, %struct.mlx4_en_priv* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @mlx4_qp_release_range(%struct.mlx4_dev* %49, i32 %50, i32 1)
  %52 = load i32, i32* @MLX4_EN_FLAG_FORCE_PROMISC, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %41, %22
  ret void
}

declare dso_local i32 @mlx4_mac_to_u64(i32) #1

declare dso_local i32 @IF_LLADDR(i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, ...) #1

declare dso_local i32 @mlx4_unregister_mac(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_qp_release_range(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
