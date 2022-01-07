; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_mlx4_ib_mcg_demux_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_mlx4_ib_mcg_demux_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_mad = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx4_ib_demux_ctx* }
%struct.mlx4_ib_demux_ctx = type { i32, i32 }
%struct.ib_sa_mcmember_data = type { i32 }
%struct.mcast_group = type { i32, i32, i32, i32, i32, %struct.ib_sa_mad }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MCAST_RESP_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"In demux, port %d: unexpected MCMember method: 0x%x, dropping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_mcg_demux_handler(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_sa_mad* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_sa_mad*, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.ib_sa_mcmember_data*, align 8
  %12 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %13 = alloca %struct.mcast_group*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_sa_mad* %3, %struct.ib_sa_mad** %9, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %10, align 8
  %17 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %18 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ib_sa_mcmember_data*
  store %struct.ib_sa_mcmember_data* %20, %struct.ib_sa_mcmember_data** %11, align 8
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %24, i64 %27
  store %struct.mlx4_ib_demux_ctx* %28, %struct.mlx4_ib_demux_ctx** %12, align 8
  %29 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %30 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %109 [
    i32 133, label %33
    i32 130, label %33
    i32 132, label %108
    i32 129, label %108
    i32 128, label %108
    i32 131, label %108
  ]

33:                                               ; preds = %4, %4
  %34 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %38 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %11, align 8
  %39 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.mcast_group* @acquire_group(%struct.mlx4_ib_demux_ctx* %37, i32* %39, i32 0, i32 %40)
  store %struct.mcast_group* %41, %struct.mcast_group** %13, align 8
  %42 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %46 = call i32 @IS_ERR(%struct.mcast_group* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %33
  %49 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %50 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 133
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %56 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %11, align 8
  %63 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %62, i32 0, i32 0
  %64 = call %struct.mcast_group* @search_relocate_mgid0_group(%struct.mlx4_ib_demux_ctx* %60, i32 %61, i32* %63)
  store %struct.mcast_group* %64, %struct.mcast_group** %13, align 8
  br label %66

65:                                               ; preds = %48
  store %struct.mcast_group* null, %struct.mcast_group** %13, align 8
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %33
  %68 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %69 = icmp ne %struct.mcast_group* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 1, i32* %5, align 4
  br label %116

71:                                               ; preds = %67
  %72 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %73 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %76 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %75, i32 0, i32 5
  %77 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %78 = bitcast %struct.ib_sa_mad* %76 to i8*
  %79 = bitcast %struct.ib_sa_mad* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %81 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %84 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @MCAST_RESP_READY, align 4
  %86 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %87 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %89 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %88, i32 0, i32 1
  %90 = call i32 @atomic_inc(i32* %89)
  %91 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %92 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %95 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %94, i32 0, i32 2
  %96 = call i32 @queue_work(i32 %93, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %71
  %99 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %100 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %99, i32 0, i32 1
  %101 = call i32 @safe_atomic_dec(i32* %100)
  br label %102

102:                                              ; preds = %98, %71
  %103 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %104 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %107 = call i32 @release_group(%struct.mcast_group* %106, i32 0)
  store i32 1, i32* %5, align 4
  br label %116

108:                                              ; preds = %4, %4, %4, %4
  store i32 0, i32* %5, align 4
  br label %116

109:                                              ; preds = %4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %112 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @mcg_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %114)
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %109, %108, %102, %70
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mcast_group* @acquire_group(%struct.mlx4_ib_demux_ctx*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IS_ERR(%struct.mcast_group*) #1

declare dso_local %struct.mcast_group* @search_relocate_mgid0_group(%struct.mlx4_ib_demux_ctx*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @safe_atomic_dec(i32*) #1

declare dso_local i32 @release_group(%struct.mcast_group*, i32) #1

declare dso_local i32 @mcg_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
