; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i32 }

@MLX4_DEV_CAP_FLAG2_FSM = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_set_vf_spoofchk(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca %struct.mlx4_vport_state*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %14 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %13)
  store %struct.mlx4_priv* %14, %struct.mlx4_priv** %10, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %16 = call i32 @mlx4_is_master(%struct.mlx4_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FSM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18, %4
  %27 = load i32, i32* @EPROTONOSUPPORT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %59

29:                                               ; preds = %18
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %59

38:                                               ; preds = %29
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mlx4_slaves_closest_port(%struct.mlx4_dev* %39, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %44 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %52, i64 %54
  store %struct.mlx4_vport_state* %55, %struct.mlx4_vport_state** %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %58 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %38, %35, %26
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_slaves_closest_port(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
