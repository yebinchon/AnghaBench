; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_reg_umr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_reg_umr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_mr = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i8*, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_umem = type { i32 }
%struct.mlx5_ib_dev = type { %struct.umr_common, %struct.TYPE_6__ }
%struct.umr_common = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mlx5_ib_umr_context = type { i64, i32, i32 }
%struct.mlx5_umr_wr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.ib_send_wr = type { i32 }
%struct.ib_sge = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"add_keys failed, err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"post send failed, err %d\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"reg umr failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_mr* (%struct.ib_pd*, %struct.ib_umem*, i8*, i8*, i32, i32, i32, i32)* @reg_umr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_mr* @reg_umr(%struct.ib_pd* %0, %struct.ib_umem* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.mlx5_ib_mr*, align 8
  %10 = alloca %struct.ib_pd*, align 8
  %11 = alloca %struct.ib_umem*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_ib_dev*, align 8
  %19 = alloca %struct.device*, align 8
  %20 = alloca %struct.umr_common*, align 8
  %21 = alloca %struct.mlx5_ib_umr_context, align 8
  %22 = alloca %struct.mlx5_umr_wr, align 8
  %23 = alloca %struct.ib_send_wr*, align 8
  %24 = alloca %struct.mlx5_ib_mr*, align 8
  %25 = alloca %struct.ib_sge, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %10, align 8
  store %struct.ib_umem* %1, %struct.ib_umem** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %31 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %32 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mlx5_ib_dev* @to_mdev(i32 %33)
  store %struct.mlx5_ib_dev* %34, %struct.mlx5_ib_dev** %18, align 8
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.device*, %struct.device** %37, align 8
  store %struct.device* %38, %struct.device** %19, align 8
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 0
  store %struct.umr_common* %40, %struct.umr_common** %20, align 8
  %41 = bitcast %struct.mlx5_umr_wr* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 8, i1 false)
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %42

42:                                               ; preds = %70, %8
  %43 = load i32, i32* %30, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call %struct.mlx5_ib_mr* @alloc_cached_mr(%struct.mlx5_ib_dev* %46, i32 %47)
  store %struct.mlx5_ib_mr* %48, %struct.mlx5_ib_mr** %24, align 8
  %49 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %50 = icmp ne %struct.mlx5_ib_mr* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %73

52:                                               ; preds = %45
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @order2idx(%struct.mlx5_ib_dev* %54, i32 %55)
  %57 = call i32 @add_keys(%struct.mlx5_ib_dev* %53, i32 %56, i32 1)
  store i32 %57, i32* %29, align 4
  %58 = load i32, i32* %29, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load i32, i32* %29, align 4
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %67 = load i32, i32* %29, align 4
  %68 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %73

69:                                               ; preds = %60, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %30, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %30, align 4
  br label %42

73:                                               ; preds = %65, %51, %42
  %74 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %75 = icmp ne %struct.mlx5_ib_mr* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.mlx5_ib_mr* @ERR_PTR(i32 %78)
  store %struct.mlx5_ib_mr* %79, %struct.mlx5_ib_mr** %9, align 8
  br label %174

80:                                               ; preds = %73
  %81 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %82 = load %struct.ib_umem*, %struct.ib_umem** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @dma_map_mr_pas(%struct.mlx5_ib_dev* %81, %struct.ib_umem* %82, i32 %83, i32 %84, i32* %26, i32** %27, i32* %28)
  store i32 %85, i32* %29, align 4
  %86 = load i32, i32* %29, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %163

89:                                               ; preds = %80
  %90 = call i32 @mlx5_ib_init_umr_context(%struct.mlx5_ib_umr_context* %21)
  %91 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %21, i32 0, i32 2
  %92 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %22, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32* %91, i32** %93, align 8
  %94 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %95 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %22, i32 0, i32 0
  %96 = load i32, i32* %28, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @prep_umr_reg_wqe(%struct.ib_pd* %94, %struct.TYPE_9__* %95, %struct.ib_sge* %25, i32 %96, i32 %97, i32 %101, i32 %102, i8* %103, i8* %104, i32 %105)
  %107 = load %struct.umr_common*, %struct.umr_common** %20, align 8
  %108 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %107, i32 0, i32 0
  %109 = call i32 @down(i32* %108)
  %110 = load %struct.umr_common*, %struct.umr_common** %20, align 8
  %111 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %22, i32 0, i32 0
  %114 = call i32 @ib_post_send(i32 %112, %struct.TYPE_9__* %113, %struct.ib_send_wr** %23)
  store i32 %114, i32* %29, align 4
  %115 = load i32, i32* %29, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %89
  %118 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %119 = load i32, i32* %29, align 4
  %120 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %152

121:                                              ; preds = %89
  %122 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %21, i32 0, i32 1
  %123 = call i32 @wait_for_completion(i32* %122)
  %124 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %21, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IB_WC_SUCCESS, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %130 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @EFAULT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %29, align 4
  br label %133

133:                                              ; preds = %128, %121
  br label %134

134:                                              ; preds = %133
  %135 = load i8*, i8** %12, align 8
  %136 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %137 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  store i8* %135, i8** %138, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %141 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  %143 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %144 = call %struct.TYPE_8__* @to_mpd(%struct.ib_pd* %143)
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %148 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %151 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %134, %117
  %153 = load %struct.umr_common*, %struct.umr_common** %20, align 8
  %154 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %153, i32 0, i32 0
  %155 = call i32 @up(i32* %154)
  %156 = load %struct.device*, %struct.device** %19, align 8
  %157 = load i32, i32* %28, align 4
  %158 = load i32, i32* %26, align 4
  %159 = load i32, i32* @DMA_TO_DEVICE, align 4
  %160 = call i32 @dma_unmap_single(%struct.device* %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32*, i32** %27, align 8
  %162 = call i32 @kfree(i32* %161)
  br label %163

163:                                              ; preds = %152, %88
  %164 = load i32, i32* %29, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %168 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  %169 = call i32 @free_cached_mr(%struct.mlx5_ib_dev* %167, %struct.mlx5_ib_mr* %168)
  %170 = load i32, i32* %29, align 4
  %171 = call %struct.mlx5_ib_mr* @ERR_PTR(i32 %170)
  store %struct.mlx5_ib_mr* %171, %struct.mlx5_ib_mr** %9, align 8
  br label %174

172:                                              ; preds = %163
  %173 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %24, align 8
  store %struct.mlx5_ib_mr* %173, %struct.mlx5_ib_mr** %9, align 8
  br label %174

174:                                              ; preds = %172, %166, %76
  %175 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  ret %struct.mlx5_ib_mr* %175
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.mlx5_ib_mr* @alloc_cached_mr(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @add_keys(%struct.mlx5_ib_dev*, i32, i32) #1

declare dso_local i32 @order2idx(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local %struct.mlx5_ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @dma_map_mr_pas(%struct.mlx5_ib_dev*, %struct.ib_umem*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @mlx5_ib_init_umr_context(%struct.mlx5_ib_umr_context*) #1

declare dso_local i32 @prep_umr_reg_wqe(%struct.ib_pd*, %struct.TYPE_9__*, %struct.ib_sge*, i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_9__*, %struct.ib_send_wr**) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local %struct.TYPE_8__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_cached_mr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
