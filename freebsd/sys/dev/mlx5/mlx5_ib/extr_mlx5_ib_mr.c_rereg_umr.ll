; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_rereg_umr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_rereg_umr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_mr = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5_ib_dev = type { %struct.umr_common, %struct.TYPE_6__ }
%struct.umr_common = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mlx5_ib_umr_context = type { i32, i32, i32 }
%struct.ib_send_wr = type { i32 }
%struct.mlx5_umr_wr = type { i32, %struct.TYPE_9__, %struct.ib_pd*, i8*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i8* }
%struct.ib_sge = type { i32 }

@MLX5_IB_SEND_UMR_FAIL_IF_FREE = common dso_local global i32 0, align 4
@IB_MR_REREG_TRANS = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_TRANSLATION = common dso_local global i32 0, align 4
@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_PD = common dso_local global i32 0, align 4
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"post send failed, err %d\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"reg umr failed (%u)\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.mlx5_ib_mr*, i8*, i8*, i32, i32, i32, i32, i32)* @rereg_umr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rereg_umr(%struct.ib_pd* %0, %struct.mlx5_ib_mr* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_pd*, align 8
  %12 = alloca %struct.mlx5_ib_mr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mlx5_ib_dev*, align 8
  %21 = alloca %struct.device*, align 8
  %22 = alloca %struct.mlx5_ib_umr_context, align 4
  %23 = alloca %struct.ib_send_wr*, align 8
  %24 = alloca %struct.mlx5_umr_wr, align 8
  %25 = alloca %struct.ib_sge, align 4
  %26 = alloca %struct.umr_common*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %11, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %31 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %32 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mlx5_ib_dev* @to_mdev(i32 %33)
  store %struct.mlx5_ib_dev* %34, %struct.mlx5_ib_dev** %20, align 8
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.device*, %struct.device** %37, align 8
  store %struct.device* %38, %struct.device** %21, align 8
  %39 = bitcast %struct.mlx5_umr_wr* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 48, i1 false)
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %40, i32 0, i32 0
  store %struct.umr_common* %41, %struct.umr_common** %26, align 8
  store i32 0, i32* %27, align 4
  store i32* null, i32** %28, align 8
  %42 = call i32 @mlx5_ib_init_umr_context(%struct.mlx5_ib_umr_context* %22)
  %43 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %22, i32 0, i32 2
  %44 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* @MLX5_IB_SEND_UMR_FAIL_IF_FREE, align 4
  %47 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %9
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %55 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %12, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @dma_map_mr_pas(%struct.mlx5_ib_dev* %54, i32 %57, i32 %58, i32 %59, i32* %29, i32** %28, i32* %27)
  store i32 %60, i32* %30, align 4
  %61 = load i32, i32* %30, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %30, align 4
  store i32 %64, i32* %10, align 4
  br label %160

65:                                               ; preds = %53
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_TRANSLATION, align 4
  %72 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %65, %9
  %77 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %78 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 1
  %79 = load i32, i32* %27, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %12, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @prep_umr_wqe_common(%struct.ib_pd* %77, %struct.TYPE_9__* %78, %struct.ib_sge* %25, i32 %79, i32 %80, i32 %84, i32 %85)
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* @IB_MR_REREG_PD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %76
  %92 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %93 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 2
  store %struct.ib_pd* %92, %struct.ib_pd** %93, align 8
  %94 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_PD, align 4
  %95 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %91, %76
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32, i32* %18, align 4
  %106 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_ACCESS, align 4
  %108 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %104, %99
  %113 = load %struct.umr_common*, %struct.umr_common** %26, align 8
  %114 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %113, i32 0, i32 0
  %115 = call i32 @down(i32* %114)
  %116 = load %struct.umr_common*, %struct.umr_common** %26, align 8
  %117 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %24, i32 0, i32 1
  %120 = call i32 @ib_post_send(i32 %118, %struct.TYPE_9__* %119, %struct.ib_send_wr** %23)
  store i32 %120, i32* %30, align 4
  %121 = load i32, i32* %30, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %112
  %124 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %125 = load i32, i32* %30, align 4
  %126 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %125)
  br label %142

127:                                              ; preds = %112
  %128 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %22, i32 0, i32 1
  %129 = call i32 @wait_for_completion(i32* %128)
  %130 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %22, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IB_WC_SUCCESS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %20, align 8
  %136 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %22, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EFAULT, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %30, align 4
  br label %141

141:                                              ; preds = %134, %127
  br label %142

142:                                              ; preds = %141, %123
  %143 = load %struct.umr_common*, %struct.umr_common** %26, align 8
  %144 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %143, i32 0, i32 0
  %145 = call i32 @up(i32* %144)
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %142
  %151 = load %struct.device*, %struct.device** %21, align 8
  %152 = load i32, i32* %27, align 4
  %153 = load i32, i32* %29, align 4
  %154 = load i32, i32* @DMA_TO_DEVICE, align 4
  %155 = call i32 @dma_unmap_single(%struct.device* %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32*, i32** %28, align 8
  %157 = call i32 @kfree(i32* %156)
  br label %158

158:                                              ; preds = %150, %142
  %159 = load i32, i32* %30, align 4
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %158, %63
  %161 = load i32, i32* %10, align 4
  ret i32 %161
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlx5_ib_init_umr_context(%struct.mlx5_ib_umr_context*) #1

declare dso_local i32 @dma_map_mr_pas(%struct.mlx5_ib_dev*, i32, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @prep_umr_wqe_common(%struct.ib_pd*, %struct.TYPE_9__*, %struct.ib_sge*, i32, i32, i32, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_9__*, %struct.ib_send_wr**) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
