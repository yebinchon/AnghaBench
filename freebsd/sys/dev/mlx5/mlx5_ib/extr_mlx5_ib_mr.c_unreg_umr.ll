; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_unreg_umr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_unreg_umr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.umr_common, %struct.mlx5_core_dev* }
%struct.umr_common = type { i32, i32 }
%struct.mlx5_core_dev = type { i64 }
%struct.mlx5_ib_mr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_ib_umr_context = type { i64, i32, i32 }
%struct.mlx5_umr_wr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ib_send_wr = type { i32 }

@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"err %d\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"unreg umr failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*)* @unreg_umr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unreg_umr(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_mr*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.umr_common*, align 8
  %8 = alloca %struct.mlx5_ib_umr_context, align 8
  %9 = alloca %struct.mlx5_umr_wr, align 8
  %10 = alloca %struct.ib_send_wr*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %5, align 8
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 1
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %6, align 8
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 0
  store %struct.umr_common* %16, %struct.umr_common** %7, align 8
  %17 = bitcast %struct.mlx5_umr_wr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

24:                                               ; preds = %2
  %25 = call i32 @mlx5_ib_init_umr_context(%struct.mlx5_ib_umr_context* %8)
  %26 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %8, i32 0, i32 2
  %27 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %9, i32 0, i32 0
  %31 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @prep_umr_unreg_wqe(%struct.mlx5_ib_dev* %29, %struct.TYPE_5__* %30, i32 %34)
  %36 = load %struct.umr_common*, %struct.umr_common** %7, align 8
  %37 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %36, i32 0, i32 0
  %38 = call i32 @down(i32* %37)
  %39 = load %struct.umr_common*, %struct.umr_common** %7, align 8
  %40 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %9, i32 0, i32 0
  %43 = call i32 @ib_post_send(i32 %41, %struct.TYPE_5__* %42, %struct.ib_send_wr** %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %24
  %47 = load %struct.umr_common*, %struct.umr_common** %7, align 8
  %48 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %47, i32 0, i32 0
  %49 = call i32 @up(i32* %48)
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %70

53:                                               ; preds = %24
  %54 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %8, i32 0, i32 1
  %55 = call i32 @wait_for_completion(i32* %54)
  %56 = load %struct.umr_common*, %struct.umr_common** %7, align 8
  %57 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %56, i32 0, i32 0
  %58 = call i32 @up(i32* %57)
  br label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_WC_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %66 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %72

70:                                               ; preds = %64, %46
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %69, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_ib_init_umr_context(%struct.mlx5_ib_umr_context*) #2

declare dso_local i32 @prep_umr_unreg_wqe(%struct.mlx5_ib_dev*, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @down(i32*) #2

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_5__*, %struct.ib_send_wr**) #2

declare dso_local i32 @up(i32*) #2

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32) #2

declare dso_local i32 @wait_for_completion(i32*) #2

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
