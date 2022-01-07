; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_init_resource_tracker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_init_resource_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_7__, %struct.TYPE_12__* }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.resource_allocator*, i32, i32*, %struct.TYPE_8__* }
%struct.resource_allocator = type { i32*, i32*, i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.mlx4_active_ports = type { i32 }
%struct.mlx4_slaves_pport = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NUM_OF_RESOURCE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Started init_resource_tracker: %ld slaves\0A\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@MLX4_MAX_MAC_NUM = common dso_local global i8* null, align 8
@MLX4_MAX_VLAN_NUM = common dso_local global i32 0, align 4
@MLX4_PF_COUNTERS_PER_PORT = common dso_local global i32 0, align 4
@MLX4_VF_COUNTERS_PER_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_resource_tracker(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource_allocator*, align 8
  %10 = alloca %struct.mlx4_active_ports, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_slaves_pport, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %4, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %17 = call i32 @get_max_gauranteed_vfs_counter(%struct.mlx4_dev* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_8__*
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %31, align 8
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %665

42:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %85, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %75 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @mutex_init(i32* %83)
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %43

88:                                               ; preds = %43
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @mlx4_dbg(%struct.mlx4_dev* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %109, %88
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load i32, i32* @RB_ROOT, align 4
  %100 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %101 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %99, i32* %108, align 4
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %94

112:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %577, %112
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %580

117:                                              ; preds = %113
  %118 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %119 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.resource_allocator*, %struct.resource_allocator** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %123, i64 %125
  store %struct.resource_allocator* %126, %struct.resource_allocator** %9, align 8
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %128 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %127, i32 0, i32 2
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @kmalloc(i32 %135, i32 %136)
  %138 = bitcast i8* %137 to i32*
  %139 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %140 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %139, i32 0, i32 0
  store i32* %138, i32** %140, align 8
  %141 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %142 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %141, i32 0, i32 2
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i8* @kmalloc(i32 %149, i32 %150)
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %154 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %153, i32 0, i32 1
  store i32* %152, i32** %154, align 8
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %155, 133
  br i1 %156, label %160, label %157

157:                                              ; preds = %117
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 128
  br i1 %159, label %160, label %177

160:                                              ; preds = %157, %117
  %161 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %162 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %163 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %162, i32 0, i32 2
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  %168 = mul nsw i32 %161, %167
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i8* @kzalloc(i32 %171, i32 %172)
  %174 = bitcast i8* %173 to i32*
  %175 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %176 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %175, i32 0, i32 2
  store i32* %174, i32** %176, align 8
  br label %192

177:                                              ; preds = %157
  %178 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %179 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %178, i32 0, i32 2
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call i8* @kzalloc(i32 %186, i32 %187)
  %189 = bitcast i8* %188 to i32*
  %190 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %191 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %190, i32 0, i32 2
  store i32* %189, i32** %191, align 8
  br label %192

192:                                              ; preds = %177, %160
  %193 = load i32, i32* %5, align 4
  %194 = icmp eq i32 %193, 135
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %197 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %199, 1
  %201 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %202 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %195, %192
  %204 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %205 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %210 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %215 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %213, %208, %203
  br label %587

219:                                              ; preds = %213
  %220 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %221 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %220, i32 0, i32 7
  %222 = call i32 @spin_lock_init(i32* %221)
  store i32 0, i32* %7, align 4
  br label %223

223:                                              ; preds = %573, %219
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %226 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %225, i32 0, i32 2
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  %231 = icmp slt i32 %224, %230
  br i1 %231, label %232, label %576

232:                                              ; preds = %223
  %233 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %233, i32 %234)
  %236 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %10, i32 0, i32 0
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* %5, align 4
  switch i32 %237, label %518 [
    i32 130, label %238
    i32 134, label %255
    i32 129, label %269
    i32 132, label %283
    i32 131, label %297
    i32 133, label %311
    i32 128, label %400
    i32 135, label %459
  ]

238:                                              ; preds = %232
  %239 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %240 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %241 = load i32, i32* %7, align 4
  %242 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %243 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 11
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %247 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 10
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %245, %249
  %251 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %252 = call i64 @mlx4_num_reserved_sqps(%struct.mlx4_dev* %251)
  %253 = sub nsw i64 %250, %252
  %254 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %239, %struct.resource_allocator* %240, i32 130, i32 %241, i64 %253)
  br label %519

255:                                              ; preds = %232
  %256 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %257 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %260 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 9
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %264 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 8
  %266 = load i64, i64* %265, align 8
  %267 = sub nsw i64 %262, %266
  %268 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %256, %struct.resource_allocator* %257, i32 134, i32 %258, i64 %267)
  br label %519

269:                                              ; preds = %232
  %270 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %271 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %274 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %278 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 6
  %280 = load i64, i64* %279, align 8
  %281 = sub nsw i64 %276, %280
  %282 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %270, %struct.resource_allocator* %271, i32 129, i32 %272, i64 %281)
  br label %519

283:                                              ; preds = %232
  %284 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %285 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %286 = load i32, i32* %7, align 4
  %287 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %288 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 5
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %292 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = sub nsw i64 %290, %294
  %296 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %284, %struct.resource_allocator* %285, i32 132, i32 %286, i64 %295)
  br label %519

297:                                              ; preds = %232
  %298 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %299 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %302 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %306 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = sub nsw i64 %304, %308
  %310 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %298, %struct.resource_allocator* %299, i32 131, i32 %300, i64 %309)
  br label %519

311:                                              ; preds = %232
  %312 = load i32, i32* %7, align 4
  %313 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %314 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %313)
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %316, label %384

316:                                              ; preds = %311
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %317

317:                                              ; preds = %344, %316
  %318 = load i32, i32* %6, align 4
  %319 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %320 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = icmp slt i32 %318, %322
  br i1 %323, label %324, label %347

324:                                              ; preds = %317
  %325 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %326 = load i32, i32* %6, align 4
  %327 = add nsw i32 %326, 1
  %328 = call i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev* %325, i32 %327)
  %329 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %12, i32 0, i32 0
  store i32 %328, i32* %329, align 4
  %330 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %12, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %333 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @bitmap_weight(i32 %331, i32 %335)
  %337 = sub nsw i32 %336, 1
  store i32 %337, i32* %13, align 4
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %13, align 4
  %340 = icmp ult i32 %338, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %324
  %342 = load i32, i32* %13, align 4
  store i32 %342, i32* %11, align 4
  br label %343

343:                                              ; preds = %341, %324
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %6, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %6, align 4
  br label %317

347:                                              ; preds = %317
  %348 = load i8*, i8** @MLX4_MAX_MAC_NUM, align 8
  %349 = load i32, i32* %11, align 4
  %350 = mul nsw i32 2, %349
  %351 = sext i32 %350 to i64
  %352 = sub i64 0, %351
  %353 = getelementptr i8, i8* %348, i64 %352
  %354 = ptrtoint i8* %353 to i32
  %355 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %356 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %7, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  store i32 %354, i32* %360, align 4
  %361 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %362 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  store i32 2, i32* %366, align 4
  store i32 0, i32* %6, align 4
  br label %367

367:                                              ; preds = %380, %347
  %368 = load i32, i32* %6, align 4
  %369 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %383

371:                                              ; preds = %367
  %372 = load i8*, i8** @MLX4_MAX_MAC_NUM, align 8
  %373 = ptrtoint i8* %372 to i32
  %374 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %375 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %374, i32 0, i32 4
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %6, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  store i32 %373, i32* %379, align 4
  br label %380

380:                                              ; preds = %371
  %381 = load i32, i32* %6, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %6, align 4
  br label %367

383:                                              ; preds = %367
  br label %399

384:                                              ; preds = %311
  %385 = load i8*, i8** @MLX4_MAX_MAC_NUM, align 8
  %386 = ptrtoint i8* %385 to i32
  %387 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %388 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %7, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  store i32 %386, i32* %392, align 4
  %393 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %394 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %393, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %7, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  store i32 2, i32* %398, align 4
  br label %399

399:                                              ; preds = %384, %383
  br label %519

400:                                              ; preds = %232
  %401 = load i32, i32* %7, align 4
  %402 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %403 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %402)
  %404 = icmp eq i32 %401, %403
  br i1 %404, label %405, label %443

405:                                              ; preds = %400
  %406 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %407 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %408 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %406, i32* %412, align 4
  %413 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %414 = sdiv i32 %413, 2
  %415 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %416 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %415, i32 0, i32 1
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %7, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  store i32 %414, i32* %420, align 4
  store i32 0, i32* %6, align 4
  br label %421

421:                                              ; preds = %439, %405
  %422 = load i32, i32* %6, align 4
  %423 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %442

425:                                              ; preds = %421
  %426 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %427 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %426, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %7, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %434 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %433, i32 0, i32 4
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %6, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  store i32 %432, i32* %438, align 4
  br label %439

439:                                              ; preds = %425
  %440 = load i32, i32* %6, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %6, align 4
  br label %421

442:                                              ; preds = %421
  br label %458

443:                                              ; preds = %400
  %444 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %445 = sdiv i32 %444, 2
  %446 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %447 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %7, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  store i32 %445, i32* %451, align 4
  %452 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %453 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %452, i32 0, i32 1
  %454 = load i32*, i32** %453, align 8
  %455 = load i32, i32* %7, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  store i32 0, i32* %457, align 4
  br label %458

458:                                              ; preds = %443, %442
  br label %519

459:                                              ; preds = %232
  %460 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %461 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %465 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %464, i32 0, i32 0
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %7, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  store i32 %463, i32* %469, align 4
  %470 = load i32, i32* %7, align 4
  %471 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %472 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %471)
  %473 = icmp eq i32 %470, %472
  br i1 %473, label %474, label %484

474:                                              ; preds = %459
  %475 = load i32, i32* @MLX4_PF_COUNTERS_PER_PORT, align 4
  %476 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %477 = mul nsw i32 %475, %476
  %478 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %479 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %478, i32 0, i32 1
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %7, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  store i32 %477, i32* %483, align 4
  br label %506

484:                                              ; preds = %459
  %485 = load i32, i32* %7, align 4
  %486 = load i32, i32* %8, align 4
  %487 = icmp sle i32 %485, %486
  br i1 %487, label %488, label %498

488:                                              ; preds = %484
  %489 = load i32, i32* @MLX4_VF_COUNTERS_PER_PORT, align 4
  %490 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %491 = mul nsw i32 %489, %490
  %492 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %493 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %492, i32 0, i32 1
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %7, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  store i32 %491, i32* %497, align 4
  br label %505

498:                                              ; preds = %484
  %499 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %500 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %499, i32 0, i32 1
  %501 = load i32*, i32** %500, align 8
  %502 = load i32, i32* %7, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %501, i64 %503
  store i32 0, i32* %504, align 4
  br label %505

505:                                              ; preds = %498, %488
  br label %506

506:                                              ; preds = %505, %474
  %507 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %508 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %507, i32 0, i32 1
  %509 = load i32*, i32** %508, align 8
  %510 = load i32, i32* %7, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %509, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %515 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %514, i32 0, i32 3
  %516 = load i32, i32* %515, align 8
  %517 = sub nsw i32 %516, %513
  store i32 %517, i32* %515, align 8
  br label %519

518:                                              ; preds = %232
  br label %519

519:                                              ; preds = %518, %506, %458, %399, %297, %283, %269, %255, %238
  %520 = load i32, i32* %5, align 4
  %521 = icmp eq i32 %520, 133
  br i1 %521, label %525, label %522

522:                                              ; preds = %519
  %523 = load i32, i32* %5, align 4
  %524 = icmp eq i32 %523, 128
  br i1 %524, label %525, label %560

525:                                              ; preds = %522, %519
  store i32 0, i32* %6, align 4
  br label %526

526:                                              ; preds = %556, %525
  %527 = load i32, i32* %6, align 4
  %528 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %529 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = icmp slt i32 %527, %531
  br i1 %532, label %533, label %559

533:                                              ; preds = %526
  %534 = load i32, i32* %6, align 4
  %535 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %10, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = call i64 @test_bit(i32 %534, i32 %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %555

539:                                              ; preds = %533
  %540 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %541 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %540, i32 0, i32 1
  %542 = load i32*, i32** %541, align 8
  %543 = load i32, i32* %7, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32, i32* %542, i64 %544
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %548 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %547, i32 0, i32 6
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %6, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = add nsw i32 %553, %546
  store i32 %554, i32* %552, align 4
  br label %555

555:                                              ; preds = %539, %533
  br label %556

556:                                              ; preds = %555
  %557 = load i32, i32* %6, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %6, align 4
  br label %526

559:                                              ; preds = %526
  br label %572

560:                                              ; preds = %522
  %561 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %562 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %561, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %7, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32, i32* %563, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = load %struct.resource_allocator*, %struct.resource_allocator** %9, align 8
  %569 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %568, i32 0, i32 5
  %570 = load i32, i32* %569, align 8
  %571 = add nsw i32 %570, %567
  store i32 %571, i32* %569, align 8
  br label %572

572:                                              ; preds = %560, %559
  br label %573

573:                                              ; preds = %572
  %574 = load i32, i32* %7, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %7, align 4
  br label %223

576:                                              ; preds = %223
  br label %577

577:                                              ; preds = %576
  %578 = load i32, i32* %5, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %5, align 4
  br label %113

580:                                              ; preds = %113
  %581 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %582 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 1
  %586 = call i32 @spin_lock_init(i32* %585)
  store i32 0, i32* %2, align 4
  br label %665

587:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  br label %588

588:                                              ; preds = %659, %587
  %589 = load i32, i32* %5, align 4
  %590 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %591 = icmp slt i32 %589, %590
  br i1 %591, label %592, label %662

592:                                              ; preds = %588
  %593 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %594 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %596, i32 0, i32 0
  %598 = load %struct.resource_allocator*, %struct.resource_allocator** %597, align 8
  %599 = load i32, i32* %5, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %598, i64 %600
  %602 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %601, i32 0, i32 2
  %603 = load i32*, i32** %602, align 8
  %604 = call i32 @kfree(i32* %603)
  %605 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %606 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %608, i32 0, i32 0
  %610 = load %struct.resource_allocator*, %struct.resource_allocator** %609, align 8
  %611 = load i32, i32* %5, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %610, i64 %612
  %614 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %613, i32 0, i32 2
  store i32* null, i32** %614, align 8
  %615 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %616 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %617, i32 0, i32 0
  %619 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %618, i32 0, i32 0
  %620 = load %struct.resource_allocator*, %struct.resource_allocator** %619, align 8
  %621 = load i32, i32* %5, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %620, i64 %622
  %624 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %623, i32 0, i32 1
  %625 = load i32*, i32** %624, align 8
  %626 = call i32 @kfree(i32* %625)
  %627 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %628 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %628, i32 0, i32 0
  %630 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i32 0, i32 0
  %632 = load %struct.resource_allocator*, %struct.resource_allocator** %631, align 8
  %633 = load i32, i32* %5, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %632, i64 %634
  %636 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %635, i32 0, i32 1
  store i32* null, i32** %636, align 8
  %637 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %638 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %638, i32 0, i32 0
  %640 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %639, i32 0, i32 0
  %641 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %640, i32 0, i32 0
  %642 = load %struct.resource_allocator*, %struct.resource_allocator** %641, align 8
  %643 = load i32, i32* %5, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %642, i64 %644
  %646 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %645, i32 0, i32 0
  %647 = load i32*, i32** %646, align 8
  %648 = call i32 @kfree(i32* %647)
  %649 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %650 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %650, i32 0, i32 0
  %652 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %651, i32 0, i32 0
  %653 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %652, i32 0, i32 0
  %654 = load %struct.resource_allocator*, %struct.resource_allocator** %653, align 8
  %655 = load i32, i32* %5, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %654, i64 %656
  %658 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %657, i32 0, i32 0
  store i32* null, i32** %658, align 8
  br label %659

659:                                              ; preds = %592
  %660 = load i32, i32* %5, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %5, align 4
  br label %588

662:                                              ; preds = %588
  %663 = load i32, i32* @ENOMEM, align 4
  %664 = sub nsw i32 0, %663
  store i32 %664, i32* %2, align 4
  br label %665

665:                                              ; preds = %662, %580, %39
  %666 = load i32, i32* %2, align 4
  ret i32 %666
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @get_max_gauranteed_vfs_counter(%struct.mlx4_dev*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @initialize_res_quotas(%struct.mlx4_dev*, %struct.resource_allocator*, i32, i32, i64) #1

declare dso_local i64 @mlx4_num_reserved_sqps(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
