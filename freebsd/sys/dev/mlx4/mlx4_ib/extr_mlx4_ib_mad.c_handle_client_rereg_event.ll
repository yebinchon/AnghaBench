; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_handle_client_rereg_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_handle_client_rereg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@MLX4_EQ_PORT_INFO_CLIENT_REREG_MASK = common dso_local global i32 0, align 4
@MLX4_FLAG_SECURE_HOST = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT = common dso_local global i32 0, align 4
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32)* @handle_client_rereg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_client_rereg_event(%struct.mlx4_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = call i64 @mlx4_is_master(%struct.TYPE_8__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @mlx4_ib_invalidate_all_guid_record(%struct.mlx4_ib_dev* %11, i32 %12)
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %10
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = call i32 @mlx4_ib_mcg_port_cleanup(i32* %27, i32 0)
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MLX4_EQ_PORT_INFO_CLIENT_REREG_MASK, align 4
  %34 = call i32 @mlx4_gen_slaves_port_mgt_ev(%struct.TYPE_8__* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %19, %10
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @mlx4_is_slave(%struct.TYPE_8__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %36
  %43 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MLX4_FLAG_SECURE_HOST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %42
  %52 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %51
  %62 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = call i64 @mlx4_is_master(%struct.TYPE_8__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @mlx4_ib_sl2vl_update(%struct.mlx4_ib_dev* %68, i32 %69)
  br label %75

71:                                               ; preds = %61
  %72 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @mlx4_sched_ib_sl2vl_update_work(%struct.mlx4_ib_dev* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %51, %42, %36
  %77 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %80 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %77, i32 %78, i32 %79)
  ret void
}

declare dso_local i64 @mlx4_is_master(%struct.TYPE_8__*) #1

declare dso_local i32 @mlx4_ib_invalidate_all_guid_record(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_ib_mcg_port_cleanup(i32*, i32) #1

declare dso_local i32 @mlx4_gen_slaves_port_mgt_ev(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.TYPE_8__*) #1

declare dso_local i32 @mlx4_ib_sl2vl_update(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_sched_ib_sl2vl_update_work(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
