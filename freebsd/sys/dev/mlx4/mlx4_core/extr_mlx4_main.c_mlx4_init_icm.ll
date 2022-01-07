; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_init_icm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_init_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_init_hca_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_13__, %struct.TYPE_17__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_15__, %struct.TYPE_16__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"SET_ICM_SIZE command failed, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%lld KB of HCA context requires %lld KB aux memory\0A\00", align 1
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't allocate aux memory, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"MAP_ICM_AUX command failed, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to map cMPT context memory, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to map EQ context memory, aborting\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to map MTT context memory, aborting\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to map dMPT context memory, aborting\0A\00", align 1
@MLX4_QP_REGION_FW = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [43 x i8] c"Failed to map QP context memory, aborting\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Failed to map AUXC context memory, aborting\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Failed to map ALTC context memory, aborting\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Failed to map RDMARC context memory, aborting\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Failed to map CQ context memory, aborting\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Failed to map SRQ context memory, aborting\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Failed to map MCG context memory, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_dev_cap*, %struct.mlx4_init_hca_param*, i64)* @mlx4_init_icm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_icm(%struct.mlx4_dev* %0, %struct.mlx4_dev_cap* %1, %struct.mlx4_init_hca_param* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_dev_cap*, align 8
  %8 = alloca %struct.mlx4_init_hca_param*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_dev_cap* %1, %struct.mlx4_dev_cap** %7, align 8
  store %struct.mlx4_init_hca_param* %2, %struct.mlx4_init_hca_param** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %10, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @mlx4_SET_ICM_SIZE(%struct.mlx4_dev* %16, i64 %17, i64* %11)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %23 = call i32 @mlx4_err(%struct.mlx4_dev* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %458

25:                                               ; preds = %4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = lshr i64 %27, 10
  %29 = load i64, i64* %11, align 8
  %30 = shl i64 %29, 2
  %31 = call i32 @mlx4_dbg(%struct.mlx4_dev* %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %30)
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* @GFP_HIGHUSER, align 4
  %35 = load i32, i32* @__GFP_NOWARN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @mlx4_alloc_icm(%struct.mlx4_dev* %32, i64 %33, i32 %36, i32 0)
  %38 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %39 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %42 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %25
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %48 = call i32 @mlx4_err(%struct.mlx4_dev* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %458

51:                                               ; preds = %25
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %53 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlx4_MAP_ICM_AUX(%struct.mlx4_dev* %52, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %62 = call i32 @mlx4_err(%struct.mlx4_dev* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %450

63:                                               ; preds = %51
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %65 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %66 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mlx4_init_cmpt_table(%struct.mlx4_dev* %64, i32 %67, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %76 = call i32 @mlx4_err(%struct.mlx4_dev* %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %447

77:                                               ; preds = %63
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %12, align 4
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %83 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %84 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %87 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %90 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %82, i32* %85, i32 %88, i32 %91, i32 %92, i32 %93, i32 0, i32 0)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %77
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %99 = call i32 @mlx4_err(%struct.mlx4_dev* %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %426

100:                                              ; preds = %77
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %102 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %106 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %104, %108
  %110 = call i32 (...) @dma_get_cache_alignment()
  %111 = call i32 @ALIGN(i32 %109, i32 %110)
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %113 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %111, %115
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %118 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %121 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %122 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %125 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %128 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %132 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %136 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %120, i32* %123, i32 %126, i32 %130, i32 %134, i32 %138, i32 1, i32 0)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %100
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %144 = call i32 @mlx4_err(%struct.mlx4_dev* %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %420

145:                                              ; preds = %100
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %147 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %148 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %151 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %154 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %157 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %161 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %146, i32* %149, i32 %152, i32 %155, i32 %159, i32 %163, i32 1, i32 1)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %145
  %168 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %169 = call i32 @mlx4_err(%struct.mlx4_dev* %168, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %414

170:                                              ; preds = %145
  %171 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %172 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %173 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  %175 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %176 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %179 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %182 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %186 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %171, i32* %174, i32 %177, i32 %180, i32 %184, i32 %191, i32 0, i32 0)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %170
  %196 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %197 = call i32 @mlx4_err(%struct.mlx4_dev* %196, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %408

198:                                              ; preds = %170
  %199 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %200 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %201 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 3
  %203 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %204 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %207 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %210 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %214 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %199, i32* %202, i32 %205, i32 %208, i32 %212, i32 %219, i32 0, i32 0)
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %198
  %224 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %225 = call i32 @mlx4_err(%struct.mlx4_dev* %224, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %402

226:                                              ; preds = %198
  %227 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %228 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %229 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 4
  %231 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %232 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %235 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %238 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %242 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 6
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %227, i32* %230, i32 %233, i32 %236, i32 %240, i32 %247, i32 0, i32 0)
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %226
  %252 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %253 = call i32 @mlx4_err(%struct.mlx4_dev* %252, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %396

254:                                              ; preds = %226
  %255 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %256 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %257 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 5
  %259 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %260 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %263 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %266 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %264, %268
  %270 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %271 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %275 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 6
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %255, i32* %258, i32 %261, i32 %269, i32 %273, i32 %280, i32 0, i32 0)
  store i32 %281, i32* %13, align 4
  %282 = load i32, i32* %13, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %254
  %285 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %286 = call i32 @mlx4_err(%struct.mlx4_dev* %285, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  br label %390

287:                                              ; preds = %254
  %288 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %289 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %290 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 1
  %292 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %293 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %296 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %299 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %303 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %288, i32* %291, i32 %294, i32 %297, i32 %301, i32 %305, i32 0, i32 0)
  store i32 %306, i32* %13, align 4
  %307 = load i32, i32* %13, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %287
  %310 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %311 = call i32 @mlx4_err(%struct.mlx4_dev* %310, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %384

312:                                              ; preds = %287
  %313 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %314 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %315 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 1
  %317 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %318 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %321 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %324 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %328 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 10
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %313, i32* %316, i32 %319, i32 %322, i32 %326, i32 %330, i32 0, i32 0)
  store i32 %331, i32* %13, align 4
  %332 = load i32, i32* %13, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %312
  %335 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %336 = call i32 @mlx4_err(%struct.mlx4_dev* %335, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  br label %378

337:                                              ; preds = %312
  %338 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %339 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %340 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %339, i32 0, i32 6
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %343 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %346 = call i32 @mlx4_get_mgm_entry_size(%struct.mlx4_dev* %345)
  %347 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %348 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 11
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %352 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 12
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %350, %354
  %356 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %357 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 11
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %361 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 12
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %359, %363
  %365 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %338, i32* %341, i32 %344, i32 %346, i32 %355, i32 %364, i32 0, i32 0)
  store i32 %365, i32* %13, align 4
  %366 = load i32, i32* %13, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %337
  %369 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %370 = call i32 @mlx4_err(%struct.mlx4_dev* %369, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0))
  br label %372

371:                                              ; preds = %337
  store i32 0, i32* %5, align 4
  br label %458

372:                                              ; preds = %368
  %373 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %374 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %375 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 1
  %377 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %373, i32* %376)
  br label %378

378:                                              ; preds = %372, %334
  %379 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %380 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %381 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 1
  %383 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %379, i32* %382)
  br label %384

384:                                              ; preds = %378, %309
  %385 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %386 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %387 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 5
  %389 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %385, i32* %388)
  br label %390

390:                                              ; preds = %384, %284
  %391 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %392 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %393 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 4
  %395 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %391, i32* %394)
  br label %396

396:                                              ; preds = %390, %251
  %397 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %398 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %399 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 3
  %401 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %397, i32* %400)
  br label %402

402:                                              ; preds = %396, %223
  %403 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %404 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %405 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 2
  %407 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %403, i32* %406)
  br label %408

408:                                              ; preds = %402, %195
  %409 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %410 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %411 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %410, i32 0, i32 5
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 1
  %413 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %409, i32* %412)
  br label %414

414:                                              ; preds = %408, %167
  %415 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %416 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %417 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %416, i32 0, i32 5
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 0
  %419 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %415, i32* %418)
  br label %420

420:                                              ; preds = %414, %142
  %421 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %422 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %423 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %422, i32 0, i32 4
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 1
  %425 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %421, i32* %424)
  br label %426

426:                                              ; preds = %420, %97
  %427 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %428 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %429 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %428, i32 0, i32 4
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %429, i32 0, i32 0
  %431 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %427, i32* %430)
  %432 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %433 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %434 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %433, i32 0, i32 3
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 0
  %436 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %432, i32* %435)
  %437 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %438 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %439 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %439, i32 0, i32 0
  %441 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %437, i32* %440)
  %442 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %443 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %444 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 1
  %446 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %442, i32* %445)
  br label %447

447:                                              ; preds = %426, %74
  %448 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %449 = call i32 @mlx4_UNMAP_ICM_AUX(%struct.mlx4_dev* %448)
  br label %450

450:                                              ; preds = %447, %60
  %451 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %452 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %453 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %451, i32 %455, i32 0)
  %457 = load i32, i32* %13, align 4
  store i32 %457, i32* %5, align 4
  br label %458

458:                                              ; preds = %450, %371, %46, %21
  %459 = load i32, i32* %5, align 4
  ret i32 %459
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_SET_ICM_SIZE(%struct.mlx4_dev*, i64, i64*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i64, i64) #1

declare dso_local i32 @mlx4_alloc_icm(%struct.mlx4_dev*, i64, i32, i32) #1

declare dso_local i32 @mlx4_MAP_ICM_AUX(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_init_cmpt_table(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_init_icm_table(%struct.mlx4_dev*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i32 @mlx4_get_mgm_entry_size(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_UNMAP_ICM_AUX(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
