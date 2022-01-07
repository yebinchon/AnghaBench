; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_eq.c_mlx4_gen_pkey_eqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_eq.c_mlx4_gen_pkey_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_eqe = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mlx4_slave_state* }
%struct.mlx4_slave_state = type { i32 }

@MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT = common dso_local global i32 0, align 4
@MLX4_DEV_PMC_SUBTYPE_PKEY_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_gen_pkey_eqe(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_eqe, align 4
  %9 = alloca %struct.mlx4_priv*, align 8
  %10 = alloca %struct.mlx4_slave_state*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %12 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %11)
  store %struct.mlx4_priv* %12, %struct.mlx4_priv** %9, align 8
  %13 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %14 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %17, i64 %19
  store %struct.mlx4_slave_state* %20, %struct.mlx4_slave_state** %10, align 8
  %21 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

26:                                               ; preds = %3
  %27 = call i32 @memset(%struct.mlx4_eqe* %8, i32 0, i32 12)
  %28 = load i32, i32* @MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT, align 4
  %29 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @MLX4_DEV_PMC_SUBTYPE_PKEY_TABLE, align 4
  %31 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mlx4_phys_to_slave_port(%struct.mlx4_dev* %32, i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @mlx4_GEN_EQE(%struct.mlx4_dev* %39, i32 %40, %struct.mlx4_eqe* %8)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %26, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @memset(%struct.mlx4_eqe*, i32, i32) #1

declare dso_local i32 @mlx4_phys_to_slave_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_GEN_EQE(%struct.mlx4_dev*, i32, %struct.mlx4_eqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
