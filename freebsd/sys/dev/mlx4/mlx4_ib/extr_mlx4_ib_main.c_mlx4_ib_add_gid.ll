; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_add_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_add_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_gid_attr = type { i64 }
%struct.mlx4_ib_dev = type { %struct.mlx4_ib_iboe }
%struct.mlx4_ib_iboe = type { i32, %struct.mlx4_port_gid_table* }
%struct.mlx4_port_gid_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %union.ib_gid, %struct.gid_cache_context* }
%struct.gid_cache_context = type { i32, i32 }
%struct.gid_entry = type { i64, %union.ib_gid }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@MLX4_MAX_PORT_GIDS = common dso_local global i32 0, align 4
@zgid = common dso_local global %union.ib_gid zeroinitializer, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*, i8**)* @mlx4_ib_add_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_add_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3, %struct.ib_gid_attr* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ib_gid*, align 8
  %12 = alloca %struct.ib_gid_attr*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.mlx4_ib_dev*, align 8
  %15 = alloca %struct.mlx4_ib_iboe*, align 8
  %16 = alloca %struct.mlx4_port_gid_table*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.gid_entry*, align 8
  %23 = alloca %struct.gid_cache_context*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %union.ib_gid* %3, %union.ib_gid** %11, align 8
  store %struct.ib_gid_attr* %4, %struct.ib_gid_attr** %12, align 8
  store i8** %5, i8*** %13, align 8
  %24 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %25 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %24)
  store %struct.mlx4_ib_dev* %25, %struct.mlx4_ib_dev** %14, align 8
  %26 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %26, i32 0, i32 0
  store %struct.mlx4_ib_iboe* %27, %struct.mlx4_ib_iboe** %15, align 8
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store %struct.gid_entry* null, %struct.gid_entry** %22, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @rdma_cap_roce_gid_table(%struct.ib_device* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %281

35:                                               ; preds = %6
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %281

42:                                               ; preds = %35
  %43 = load i8**, i8*** %13, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %281

48:                                               ; preds = %42
  %49 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %15, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %49, i32 0, i32 1
  %51 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %51, i64 %54
  store %struct.mlx4_port_gid_table* %55, %struct.mlx4_port_gid_table** %16, align 8
  %56 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %15, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_bh(i32* %57)
  store i32 0, i32* %21, align 4
  br label %59

59:                                               ; preds = %105, %48
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %59
  %64 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %65 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %21, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %72 = call i32 @memcmp(%union.ib_gid* %70, %union.ib_gid* %71, i32 4)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %63
  %75 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %76 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %84 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %21, align 4
  store i32 %88, i32* %18, align 4
  br label %108

89:                                               ; preds = %74, %63
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %94 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = call i32 @memcmp(%union.ib_gid* %99, %union.ib_gid* @zgid, i32 4)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %21, align 4
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %102, %92, %89
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %21, align 4
  br label %59

108:                                              ; preds = %87, %59
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %191

111:                                              ; preds = %108
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @ENOSPC, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %19, align 4
  br label %190

117:                                              ; preds = %111
  %118 = load i32, i32* @GFP_ATOMIC, align 4
  %119 = call i8* @kmalloc(i32 8, i32 %118)
  %120 = bitcast i8* %119 to %struct.gid_cache_context*
  %121 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %122 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store %struct.gid_cache_context* %120, %struct.gid_cache_context** %127, align 8
  %128 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %129 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load %struct.gid_cache_context*, %struct.gid_cache_context** %134, align 8
  %136 = icmp ne %struct.gid_cache_context* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %117
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %19, align 4
  br label %189

140:                                              ; preds = %117
  %141 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %142 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load %struct.gid_cache_context*, %struct.gid_cache_context** %147, align 8
  %149 = bitcast %struct.gid_cache_context* %148 to i8*
  %150 = load i8**, i8*** %13, align 8
  store i8* %149, i8** %150, align 8
  %151 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %152 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %159 = call i32 @memcpy(%union.ib_gid* %157, %union.ib_gid* %158, i32 4)
  %160 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %161 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %164 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i64 %162, i64* %169, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %172 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 2
  %178 = load %struct.gid_cache_context*, %struct.gid_cache_context** %177, align 8
  %179 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %178, i32 0, i32 0
  store i32 %170, i32* %179, align 4
  %180 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %181 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = load %struct.gid_cache_context*, %struct.gid_cache_context** %186, align 8
  %188 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %187, i32 0, i32 1
  store i32 1, i32* %188, align 4
  store i32 1, i32* %20, align 4
  br label %189

189:                                              ; preds = %140, %137
  br label %190

190:                                              ; preds = %189, %114
  br label %207

191:                                              ; preds = %108
  %192 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %193 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %192, i32 0, i32 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32, i32* %18, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load %struct.gid_cache_context*, %struct.gid_cache_context** %198, align 8
  store %struct.gid_cache_context* %199, %struct.gid_cache_context** %23, align 8
  %200 = load %struct.gid_cache_context*, %struct.gid_cache_context** %23, align 8
  %201 = bitcast %struct.gid_cache_context* %200 to i8*
  %202 = load i8**, i8*** %13, align 8
  store i8* %201, i8** %202, align 8
  %203 = load %struct.gid_cache_context*, %struct.gid_cache_context** %23, align 8
  %204 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %191, %190
  %208 = load i32, i32* %19, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %263, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %20, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %263

213:                                              ; preds = %210
  %214 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 16, %215
  %217 = trunc i64 %216 to i32
  %218 = load i32, i32* @GFP_ATOMIC, align 4
  %219 = call i8* @kmalloc(i32 %217, i32 %218)
  %220 = bitcast i8* %219 to %struct.gid_entry*
  store %struct.gid_entry* %220, %struct.gid_entry** %22, align 8
  %221 = load %struct.gid_entry*, %struct.gid_entry** %22, align 8
  %222 = icmp ne %struct.gid_entry* %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %213
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %19, align 4
  br label %262

226:                                              ; preds = %213
  store i32 0, i32* %21, align 4
  br label %227

227:                                              ; preds = %258, %226
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %261

231:                                              ; preds = %227
  %232 = load %struct.gid_entry*, %struct.gid_entry** %22, align 8
  %233 = load i32, i32* %21, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %232, i64 %234
  %236 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %235, i32 0, i32 1
  %237 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %238 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %237, i32 0, i32 0
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = call i32 @memcpy(%union.ib_gid* %236, %union.ib_gid* %243, i32 4)
  %245 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %16, align 8
  %246 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %245, i32 0, i32 0
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = load i32, i32* %21, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.gid_entry*, %struct.gid_entry** %22, align 8
  %254 = load i32, i32* %21, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %253, i64 %255
  %257 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %256, i32 0, i32 0
  store i64 %252, i64* %257, align 8
  br label %258

258:                                              ; preds = %231
  %259 = load i32, i32* %21, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %21, align 4
  br label %227

261:                                              ; preds = %227
  br label %262

262:                                              ; preds = %261, %223
  br label %263

263:                                              ; preds = %262, %210, %207
  %264 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %15, align 8
  %265 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %264, i32 0, i32 0
  %266 = call i32 @spin_unlock_bh(i32* %265)
  %267 = load i32, i32* %19, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %279, label %269

269:                                              ; preds = %263
  %270 = load i32, i32* %20, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %269
  %273 = load %struct.gid_entry*, %struct.gid_entry** %22, align 8
  %274 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %275 = load i32, i32* %9, align 4
  %276 = call i32 @mlx4_ib_update_gids(%struct.gid_entry* %273, %struct.mlx4_ib_dev* %274, i32 %275)
  store i32 %276, i32* %19, align 4
  %277 = load %struct.gid_entry*, %struct.gid_entry** %22, align 8
  %278 = call i32 @kfree(%struct.gid_entry* %277)
  br label %279

279:                                              ; preds = %272, %269, %263
  %280 = load i32, i32* %19, align 4
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %279, %45, %39, %32
  %282 = load i32, i32* %7, align 4
  ret i32 %282
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @rdma_cap_roce_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcmp(%union.ib_gid*, %union.ib_gid*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%union.ib_gid*, %union.ib_gid*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mlx4_ib_update_gids(%struct.gid_entry*, %struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @kfree(%struct.gid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
