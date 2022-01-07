; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_create_umr_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_create_umr_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.ib_qp*, %struct.ib_qp*, %struct.ib_qp* }
%struct.ib_qp = type { i8*, i32*, %struct.ib_qp*, i32* }
%struct.ib_qp_init_attr = type { i32, i32, i32, i8*, %struct.TYPE_3__, i32, %struct.ib_qp*, %struct.ib_qp* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i8*, %struct.TYPE_3__, i32, %struct.ib_qp*, %struct.ib_qp* }
%struct.ib_pd = type { i8*, i32*, %struct.ib_pd*, i32* }
%struct.ib_cq = type { i8*, i32*, %struct.ib_cq*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't create PD for sync UMR QP\0A\00", align 1
@IB_POLL_SOFTIRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't create CQ for sync UMR QP\0A\00", align 1
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@MAX_UMR_WR = common dso_local global i32 0, align 4
@MLX5_IB_QPT_REG_UMR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't create sync UMR QP\0A\00", align 1
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't modify UMR QP\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Couldn't modify umr QP to rtr\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Couldn't modify umr QP to rts\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"mr cache init failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @create_umr_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_umr_res(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_cq*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.ib_qp_init_attr* null, %struct.ib_qp_init_attr** %4, align 8
  store %struct.ib_qp_attr* null, %struct.ib_qp_attr** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ib_qp_init_attr* @kzalloc(i32 56, i32 %10)
  %12 = bitcast %struct.ib_qp_init_attr* %11 to %struct.ib_qp_attr*
  store %struct.ib_qp_attr* %12, %struct.ib_qp_attr** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ib_qp_init_attr* @kzalloc(i32 56, i32 %13)
  store %struct.ib_qp_init_attr* %14, %struct.ib_qp_init_attr** %4, align 8
  %15 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %16 = icmp ne %struct.ib_qp_attr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %19 = icmp ne %struct.ib_qp_init_attr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %204

23:                                               ; preds = %17
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 1
  %26 = call %struct.ib_qp* @ib_alloc_pd(i32* %25, i32 0)
  %27 = bitcast %struct.ib_qp* %26 to %struct.ib_pd*
  store %struct.ib_pd* %27, %struct.ib_pd** %6, align 8
  %28 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %29 = bitcast %struct.ib_pd* %28 to %struct.ib_qp*
  %30 = call i64 @IS_ERR(%struct.ib_qp* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %34 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %36 = bitcast %struct.ib_pd* %35 to %struct.ib_qp*
  %37 = call i32 @PTR_ERR(%struct.ib_qp* %36)
  store i32 %37, i32* %9, align 4
  br label %204

38:                                               ; preds = %23
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 1
  %41 = load i32, i32* @IB_POLL_SOFTIRQ, align 4
  %42 = call %struct.ib_qp* @ib_alloc_cq(i32* %40, i32* null, i32 128, i32 0, i32 %41)
  %43 = bitcast %struct.ib_qp* %42 to %struct.ib_cq*
  store %struct.ib_cq* %43, %struct.ib_cq** %7, align 8
  %44 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %45 = bitcast %struct.ib_cq* %44 to %struct.ib_qp*
  %46 = call i64 @IS_ERR(%struct.ib_qp* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %50 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %52 = bitcast %struct.ib_cq* %51 to %struct.ib_qp*
  %53 = call i32 @PTR_ERR(%struct.ib_qp* %52)
  store i32 %53, i32* %9, align 4
  br label %200

54:                                               ; preds = %38
  %55 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %56 = bitcast %struct.ib_cq* %55 to %struct.ib_qp*
  %57 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %58 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %57, i32 0, i32 7
  store %struct.ib_qp* %56, %struct.ib_qp** %58, align 8
  %59 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %60 = bitcast %struct.ib_cq* %59 to %struct.ib_qp*
  %61 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %62 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %61, i32 0, i32 6
  store %struct.ib_qp* %60, %struct.ib_qp** %62, align 8
  %63 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %64 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %65 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @MAX_UMR_WR, align 4
  %67 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %68 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %71 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i8*, i8** @MLX5_IB_QPT_REG_UMR, align 8
  %74 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %77 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %79 = bitcast %struct.ib_pd* %78 to %struct.ib_qp*
  %80 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %81 = call %struct.ib_qp* @mlx5_ib_create_qp(%struct.ib_qp* %79, %struct.ib_qp_init_attr* %80, i32* null)
  store %struct.ib_qp* %81, %struct.ib_qp** %8, align 8
  %82 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %83 = call i64 @IS_ERR(%struct.ib_qp* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %54
  %86 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %87 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %89 = call i32 @PTR_ERR(%struct.ib_qp* %88)
  store i32 %89, i32* %9, align 4
  br label %196

90:                                               ; preds = %54
  %91 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %92 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %91, i32 0, i32 1
  %93 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %94 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %93, i32 0, i32 3
  store i32* %92, i32** %94, align 8
  %95 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %96 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %97 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %96, i32 0, i32 2
  store %struct.ib_qp* %95, %struct.ib_qp** %97, align 8
  %98 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %99 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load i8*, i8** @MLX5_IB_QPT_REG_UMR, align 8
  %101 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %102 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @IB_QPS_INIT, align 4
  %104 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %105 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %107 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %110 = bitcast %struct.ib_qp_attr* %109 to %struct.ib_qp_init_attr*
  %111 = load i32, i32* @IB_QP_STATE, align 4
  %112 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @IB_QP_PORT, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @mlx5_ib_modify_qp(%struct.ib_qp* %108, %struct.ib_qp_init_attr* %110, i32 %115, i32* null)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %90
  %120 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %121 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %193

122:                                              ; preds = %90
  %123 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %124 = bitcast %struct.ib_qp_attr* %123 to %struct.ib_qp_init_attr*
  %125 = call i32 @memset(%struct.ib_qp_init_attr* %124, i32 0, i32 56)
  %126 = load i32, i32* @IB_QPS_RTR, align 4
  %127 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %128 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @IB_MTU_256, align 4
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %133 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %134 = bitcast %struct.ib_qp_attr* %133 to %struct.ib_qp_init_attr*
  %135 = load i32, i32* @IB_QP_STATE, align 4
  %136 = call i32 @mlx5_ib_modify_qp(%struct.ib_qp* %132, %struct.ib_qp_init_attr* %134, i32 %135, i32* null)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %122
  %140 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %141 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %193

142:                                              ; preds = %122
  %143 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %144 = bitcast %struct.ib_qp_attr* %143 to %struct.ib_qp_init_attr*
  %145 = call i32 @memset(%struct.ib_qp_init_attr* %144, i32 0, i32 56)
  %146 = load i32, i32* @IB_QPS_RTS, align 4
  %147 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %148 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %150 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %151 = bitcast %struct.ib_qp_attr* %150 to %struct.ib_qp_init_attr*
  %152 = load i32, i32* @IB_QP_STATE, align 4
  %153 = call i32 @mlx5_ib_modify_qp(%struct.ib_qp* %149, %struct.ib_qp_init_attr* %151, i32 %152, i32* null)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %158 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %193

159:                                              ; preds = %142
  %160 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %161 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  store %struct.ib_qp* %160, %struct.ib_qp** %163, align 8
  %164 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %165 = bitcast %struct.ib_cq* %164 to %struct.ib_qp*
  %166 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %167 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  store %struct.ib_qp* %165, %struct.ib_qp** %168, align 8
  %169 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %170 = bitcast %struct.ib_pd* %169 to %struct.ib_qp*
  %171 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %172 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  store %struct.ib_qp* %170, %struct.ib_qp** %173, align 8
  %174 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %175 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* @MAX_UMR_WR, align 4
  %178 = call i32 @sema_init(i32* %176, i32 %177)
  %179 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %180 = call i32 @mlx5_mr_cache_init(%struct.mlx5_ib_dev* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %159
  %184 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  br label %193

187:                                              ; preds = %159
  %188 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %189 = bitcast %struct.ib_qp_attr* %188 to %struct.ib_qp_init_attr*
  %190 = call i32 @kfree(%struct.ib_qp_init_attr* %189)
  %191 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %192 = call i32 @kfree(%struct.ib_qp_init_attr* %191)
  store i32 0, i32* %2, align 4
  br label %211

193:                                              ; preds = %183, %156, %139, %119
  %194 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %195 = call i32 @mlx5_ib_destroy_qp(%struct.ib_qp* %194)
  br label %196

196:                                              ; preds = %193, %85
  %197 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %198 = bitcast %struct.ib_cq* %197 to %struct.ib_qp*
  %199 = call i32 @ib_free_cq(%struct.ib_qp* %198)
  br label %200

200:                                              ; preds = %196, %48
  %201 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %202 = bitcast %struct.ib_pd* %201 to %struct.ib_qp*
  %203 = call i32 @ib_dealloc_pd(%struct.ib_qp* %202)
  br label %204

204:                                              ; preds = %200, %32, %20
  %205 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %206 = bitcast %struct.ib_qp_attr* %205 to %struct.ib_qp_init_attr*
  %207 = call i32 @kfree(%struct.ib_qp_init_attr* %206)
  %208 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %209 = call i32 @kfree(%struct.ib_qp_init_attr* %208)
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %204, %187
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.ib_qp_init_attr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_qp* @ib_alloc_pd(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_qp*) #1

declare dso_local %struct.ib_qp* @ib_alloc_cq(i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.ib_qp* @mlx5_ib_create_qp(%struct.ib_qp*, %struct.ib_qp_init_attr*, i32*) #1

declare dso_local i32 @mlx5_ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_init_attr*, i32, i32*) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mlx5_mr_cache_init(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ib_qp_init_attr*) #1

declare dso_local i32 @mlx5_ib_destroy_qp(%struct.ib_qp*) #1

declare dso_local i32 @ib_free_cq(%struct.ib_qp*) #1

declare dso_local i32 @ib_dealloc_pd(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
