; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_master_deactivate_admin_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_master_deactivate_admin_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.mlx4_vport_oper_state*, i32* }
%struct.mlx4_vport_oper_state = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.mlx4_active_ports = type { i32 }

@MLX4_VF_SMI_DISABLED = common dso_local global i32 0, align 4
@NO_INDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_priv*, i32)* @mlx4_master_deactivate_admin_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_master_deactivate_admin_state(%struct.mlx4_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_vport_oper_state*, align 8
  %7 = alloca %struct.mlx4_active_ports, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @mlx4_get_active_ports(%struct.TYPE_14__* %11, i32 %12)
  %14 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @find_first_bit(i32 %16, i32 %21)
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bitmap_weight(i32 %27, i32 %32)
  %34 = add nsw i32 %25, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %112, %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %115

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @test_bit(i32 %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %112

48:                                               ; preds = %40
  %49 = load i32, i32* @MLX4_VF_SMI_DISABLED, align 4
  %50 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %49, i32* %62, align 4
  %63 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %72, i64 %74
  store %struct.mlx4_vport_oper_state* %75, %struct.mlx4_vport_oper_state** %6, align 8
  %76 = load i64, i64* @NO_INDX, align 8
  %77 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %6, align 8
  %78 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %48
  %82 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %83 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %6, align 8
  %86 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__mlx4_unregister_vlan(%struct.TYPE_14__* %83, i32 %84, i32 %88)
  %90 = load i64, i64* @NO_INDX, align 8
  %91 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %6, align 8
  %92 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %81, %48
  %94 = load i64, i64* @NO_INDX, align 8
  %95 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %6, align 8
  %96 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %101 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %6, align 8
  %104 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @__mlx4_unregister_mac(%struct.TYPE_14__* %101, i32 %102, i32 %106)
  %108 = load i64, i64* @NO_INDX, align 8
  %109 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %6, align 8
  %110 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %99, %93
  br label %112

112:                                              ; preds = %111, %47
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %36

115:                                              ; preds = %36
  ret void
}

declare dso_local i32 @mlx4_get_active_ports(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__mlx4_unregister_vlan(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @__mlx4_unregister_mac(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
