; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_is_vf_vst_and_prio_qos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_is_vf_vst_and_prio_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_vport_state = type { i64, i32 }
%struct.mlx4_qos_manager = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx4_qos_manager* }

@MLX4_DEV_CAP_FLAG2_QOS_VPP = common dso_local global i32 0, align 4
@MLX4_VGT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_vport_state*)* @mlx4_is_vf_vst_and_prio_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_is_vf_vst_and_prio_qos(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vport_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_vport_state*, align 8
  %8 = alloca %struct.mlx4_qos_manager*, align 8
  %9 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_vport_state* %2, %struct.mlx4_vport_state** %7, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %11 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %10)
  store %struct.mlx4_priv* %11, %struct.mlx4_priv** %9, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %13 = call i32 @mlx4_is_master(%struct.mlx4_dev* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QOS_VPP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %49

24:                                               ; preds = %15
  %25 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %26 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %29, i64 %31
  store %struct.mlx4_qos_manager* %32, %struct.mlx4_qos_manager** %8, align 8
  %33 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLX4_VGT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %8, align 8
  %43 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @test_bit(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %49

48:                                               ; preds = %38, %24
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
