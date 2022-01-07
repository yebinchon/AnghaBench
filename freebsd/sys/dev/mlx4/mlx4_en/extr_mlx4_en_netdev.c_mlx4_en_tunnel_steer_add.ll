; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_tunnel_steer_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_tunnel_steer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@MLX4_TUNNEL_OFFLOAD_MODE_VXLAN = common dso_local global i64 0, align 8
@MLX4_STEERING_DMFS_A0_STATIC = common dso_local global i64 0, align 8
@MLX4_DOMAIN_NIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to add vxlan steering rule, err %d\0A\00", align 1
@DRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"added vxlan steering rule, mac %pM reg_id %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, i8*, i32, i64*)* @mlx4_en_tunnel_steer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_tunnel_steer_add(%struct.mlx4_en_priv* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX4_TUNNEL_OFFLOAD_MODE_VXLAN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MLX4_STEERING_DMFS_A0_STATIC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %61

33:                                               ; preds = %21
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MLX4_DOMAIN_NIC, align 4
  %45 = load i64*, i64** %9, align 8
  %46 = call i32 @mlx4_tunnel_steer_add(%struct.TYPE_6__* %38, i8* %39, i32 %42, i32 %43, i32 %44, i64* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @en_err(%struct.mlx4_en_priv* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %61

54:                                               ; preds = %33
  %55 = load i32, i32* @DRV, align 4
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @en_dbg(i32 %55, %struct.mlx4_en_priv* %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %57, i64 %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %49, %32
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @mlx4_tunnel_steer_add(%struct.TYPE_6__*, i8*, i32, i32, i32, i64*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
