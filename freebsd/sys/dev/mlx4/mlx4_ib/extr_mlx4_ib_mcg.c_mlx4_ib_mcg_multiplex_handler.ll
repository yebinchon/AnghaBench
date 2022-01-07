; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_mlx4_ib_mcg_multiplex_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_mlx4_ib_mcg_multiplex_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_mad = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx4_ib_demux_ctx* }
%struct.mlx4_ib_demux_ctx = type { i32, i64 }
%struct.ib_sa_mcmember_data = type { i32 }
%struct.mcast_group = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mcast_req = type { i32, %struct.mcast_group*, %struct.ib_sa_mad }

@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_PEND_REQS_PER_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Port %d, Func %d has too many pending requests (%d), dropping\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"In multiplex, port %d, func %d: unexpected MCMember method: 0x%x, dropping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_mcg_multiplex_handler(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_sa_mad* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_sa_mad*, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.ib_sa_mcmember_data*, align 8
  %12 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %13 = alloca %struct.mcast_group*, align 8
  %14 = alloca %struct.mcast_req*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_sa_mad* %3, %struct.ib_sa_mad** %9, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %16)
  store %struct.mlx4_ib_dev* %17, %struct.mlx4_ib_dev** %10, align 8
  %18 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %19 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ib_sa_mcmember_data*
  store %struct.ib_sa_mcmember_data* %21, %struct.ib_sa_mcmember_data** %11, align 8
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %25, i64 %28
  store %struct.mlx4_ib_demux_ctx* %29, %struct.mlx4_ib_demux_ctx** %12, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %138

37:                                               ; preds = %4
  %38 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %39 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %130 [
    i32 132, label %42
    i32 131, label %43
    i32 129, label %129
    i32 133, label %129
    i32 128, label %129
    i32 130, label %129
  ]

42:                                               ; preds = %37
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %37, %42
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.mcast_req* @kzalloc(i32 32, i32 %44)
  store %struct.mcast_req* %45, %struct.mcast_req** %14, align 8
  %46 = load %struct.mcast_req*, %struct.mcast_req** %14, align 8
  %47 = icmp ne %struct.mcast_req* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %138

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mcast_req*, %struct.mcast_req** %14, align 8
  %54 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mcast_req*, %struct.mcast_req** %14, align 8
  %56 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %55, i32 0, i32 2
  %57 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %58 = bitcast %struct.ib_sa_mad* %56 to i8*
  %59 = bitcast %struct.ib_sa_mad* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %64 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %11, align 8
  %65 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %64, i32 0, i32 0
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.mcast_group* @acquire_group(%struct.mlx4_ib_demux_ctx* %63, i32* %65, i32 %66, i32 %67)
  store %struct.mcast_group* %68, %struct.mcast_group** %13, align 8
  %69 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %73 = call i32 @IS_ERR(%struct.mcast_group* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %51
  %76 = load %struct.mcast_req*, %struct.mcast_req** %14, align 8
  %77 = call i32 @kfree(%struct.mcast_req* %76)
  %78 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %79 = call i32 @PTR_ERR(%struct.mcast_group* %78)
  store i32 %79, i32* %5, align 4
  br label %138

80:                                               ; preds = %51
  %81 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %82 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %81, i32 0, i32 0
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %85 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MAX_PEND_REQS_PER_FUNC, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %80
  %95 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %96 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @MAX_PEND_REQS_PER_FUNC, align 4
  %102 = call i32 @mcg_debug_group(%struct.mcast_group* %98, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %104 = call i32 @release_group(%struct.mcast_group* %103, i32 0)
  %105 = load %struct.mcast_req*, %struct.mcast_req** %14, align 8
  %106 = call i32 @kfree(%struct.mcast_req* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %138

109:                                              ; preds = %80
  %110 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %111 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %120 = load %struct.mcast_req*, %struct.mcast_req** %14, align 8
  %121 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %120, i32 0, i32 1
  store %struct.mcast_group* %119, %struct.mcast_group** %121, align 8
  %122 = load %struct.mcast_req*, %struct.mcast_req** %14, align 8
  %123 = call i32 @queue_req(%struct.mcast_req* %122)
  %124 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %125 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %128 = call i32 @release_group(%struct.mcast_group* %127, i32 0)
  store i32 1, i32* %5, align 4
  br label %138

129:                                              ; preds = %37, %37, %37, %37
  store i32 0, i32* %5, align 4
  br label %138

130:                                              ; preds = %37
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %134 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @mcg_warn(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132, i32 %136)
  store i32 1, i32* %5, align 4
  br label %138

138:                                              ; preds = %130, %129, %109, %94, %75, %48, %34
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mcast_req* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mcast_group* @acquire_group(%struct.mlx4_ib_demux_ctx*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IS_ERR(%struct.mcast_group*) #1

declare dso_local i32 @kfree(%struct.mcast_req*) #1

declare dso_local i32 @PTR_ERR(%struct.mcast_group*) #1

declare dso_local i32 @mcg_debug_group(%struct.mcast_group*, i8*, i32, i32, i32) #1

declare dso_local i32 @release_group(%struct.mcast_group*, i32) #1

declare dso_local i32 @queue_req(%struct.mcast_req*) #1

declare dso_local i32 @mcg_warn(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
