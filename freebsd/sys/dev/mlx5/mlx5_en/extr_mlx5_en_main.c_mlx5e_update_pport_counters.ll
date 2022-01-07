; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_update_pport_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_update_pport_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { %struct.mlx5e_port_stats_debug, %struct.mlx5e_pport_stats }
%struct.mlx5e_port_stats_debug = type { i8** }
%struct.mlx5e_pport_stats = type { i8** }
%struct.mlx5_core_dev = type { i32 }

@ppcnt_reg = common dso_local global i32 0, align 4
@counter_set = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@grp = common dso_local global i32 0, align 4
@MLX5_IEEE_802_3_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5_REG_PPCNT = common dso_local global i32 0, align 4
@MLX5E_PPORT_PER_PRIO_STATS_NUM = common dso_local global i32 0, align 4
@MLX5E_PPORT_IEEE802_3_STATS_NUM = common dso_local global i32 0, align 4
@MLX5_RFC_2819_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5E_PPORT_RFC2819_STATS_NUM = common dso_local global i32 0, align 4
@MLX5E_PPORT_RFC2819_STATS_DEBUG_NUM = common dso_local global i32 0, align 4
@MLX5_RFC_2863_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5E_PPORT_RFC2863_STATS_DEBUG_NUM = common dso_local global i32 0, align 4
@MLX5_PHYSICAL_LAYER_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5E_PPORT_PHYSICAL_LAYER_STATS_DEBUG_NUM = common dso_local global i32 0, align 4
@MLX5_ETHERNET_EXTENDED_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5E_PPORT_ETHERNET_EXTENDED_STATS_DEBUG_NUM = common dso_local global i32 0, align 4
@pcam_reg = common dso_local global i32 0, align 4
@ppcnt_statistical_group = common dso_local global i32 0, align 4
@per_lane_error_counters = common dso_local global i32 0, align 4
@MLX5_PHYSICAL_LAYER_STATISTICAL_GROUP = common dso_local global i32 0, align 4
@MLX5E_PPORT_STATISTICAL_DEBUG_NUM = common dso_local global i32 0, align 4
@MLX5_PER_PRIORITY_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO = common dso_local global i32 0, align 4
@prio_tc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_update_pport_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_update_pport_counters(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5e_pport_stats*, align 8
  %5 = alloca %struct.mlx5e_port_stats_debug*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %3, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.mlx5e_pport_stats* %18, %struct.mlx5e_pport_stats** %4, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.mlx5e_port_stats_debug* %21, %struct.mlx5e_port_stats_debug** %5, align 8
  %22 = load i32, i32* @ppcnt_reg, align 4
  %23 = call i32 @MLX5_ST_SZ_BYTES(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @mlx5_vzalloc(i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @mlx5_vzalloc(i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %1
  br label %349

34:                                               ; preds = %30
  %35 = load i32, i32* @ppcnt_reg, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @counter_set, align 4
  %38 = call i64 @MLX5_ADDR_OF(i32 %35, i32* %36, i32 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* @ppcnt_reg, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @local_port, align 4
  %43 = call i32 @MLX5_SET(i32 %40, i32* %41, i32 %42, i32 1)
  %44 = load i32, i32* @ppcnt_reg, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @grp, align 4
  %47 = load i32, i32* @MLX5_IEEE_802_3_COUNTERS_GROUP, align 4
  %48 = call i32 @MLX5_SET(i32 %44, i32* %45, i32 %46, i32 %47)
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %55 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %49, i32* %50, i32 %51, i32* %52, i32 %53, i32 %54, i32 0, i32 0)
  store i32 0, i32* %10, align 4
  %56 = load i32, i32* @MLX5E_PPORT_PER_PRIO_STATS_NUM, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %74, %34
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MLX5E_PPORT_IEEE802_3_STATS_NUM, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be64toh(i32 %66)
  %68 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %4, align 8
  %69 = getelementptr inbounds %struct.mlx5e_pport_stats, %struct.mlx5e_pport_stats* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %67, i8** %73, align 8
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %10, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load i32, i32* @ppcnt_reg, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @grp, align 4
  %83 = load i32, i32* @MLX5_RFC_2819_COUNTERS_GROUP, align 4
  %84 = call i32 @MLX5_SET(i32 %80, i32* %81, i32 %82, i32 %83)
  %85 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %91 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %85, i32* %86, i32 %87, i32* %88, i32 %89, i32 %90, i32 0, i32 0)
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %109, %79
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @MLX5E_PPORT_RFC2819_STATS_NUM, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @be64toh(i32 %101)
  %103 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %4, align 8
  %104 = getelementptr inbounds %struct.mlx5e_pport_stats, %struct.mlx5e_pport_stats* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  br label %109

109:                                              ; preds = %96
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %92

114:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %134, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @MLX5E_PPORT_RFC2819_STATS_NUM, align 4
  %118 = load i32, i32* @MLX5E_PPORT_RFC2819_STATS_DEBUG_NUM, align 4
  %119 = add i32 %117, %118
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %115
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @be64toh(i32 %126)
  %128 = load %struct.mlx5e_port_stats_debug*, %struct.mlx5e_port_stats_debug** %5, align 8
  %129 = getelementptr inbounds %struct.mlx5e_port_stats_debug, %struct.mlx5e_port_stats_debug* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* %127, i8** %133, align 8
  br label %134

134:                                              ; preds = %121
  %135 = load i32, i32* %10, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %115

139:                                              ; preds = %115
  %140 = load i32, i32* @ppcnt_reg, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* @grp, align 4
  %143 = load i32, i32* @MLX5_RFC_2863_COUNTERS_GROUP, align 4
  %144 = call i32 @MLX5_SET(i32 %140, i32* %141, i32 %142, i32 %143)
  %145 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %151 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %145, i32* %146, i32 %147, i32* %148, i32 %149, i32 %150, i32 0, i32 0)
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %169, %139
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @MLX5E_PPORT_RFC2863_STATS_DEBUG_NUM, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %174

156:                                              ; preds = %152
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %10, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @be64toh(i32 %161)
  %163 = load %struct.mlx5e_port_stats_debug*, %struct.mlx5e_port_stats_debug** %5, align 8
  %164 = getelementptr inbounds %struct.mlx5e_port_stats_debug, %struct.mlx5e_port_stats_debug* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  store i8* %162, i8** %168, align 8
  br label %169

169:                                              ; preds = %156
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %152

174:                                              ; preds = %152
  %175 = load i32, i32* @ppcnt_reg, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* @grp, align 4
  %178 = load i32, i32* @MLX5_PHYSICAL_LAYER_COUNTERS_GROUP, align 4
  %179 = call i32 @MLX5_SET(i32 %175, i32* %176, i32 %177, i32 %178)
  %180 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %186 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %180, i32* %181, i32 %182, i32* %183, i32 %184, i32 %185, i32 0, i32 0)
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %204, %174
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @MLX5E_PPORT_PHYSICAL_LAYER_STATS_DEBUG_NUM, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %10, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @be64toh(i32 %196)
  %198 = load %struct.mlx5e_port_stats_debug*, %struct.mlx5e_port_stats_debug** %5, align 8
  %199 = getelementptr inbounds %struct.mlx5e_port_stats_debug, %struct.mlx5e_port_stats_debug* %198, i32 0, i32 0
  %200 = load i8**, i8*** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %197, i8** %203, align 8
  br label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %10, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %11, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %187

209:                                              ; preds = %187
  %210 = load i32, i32* @ppcnt_reg, align 4
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* @grp, align 4
  %213 = load i32, i32* @MLX5_ETHERNET_EXTENDED_COUNTERS_GROUP, align 4
  %214 = call i32 @MLX5_SET(i32 %210, i32* %211, i32 %212, i32 %213)
  %215 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %221 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %215, i32* %216, i32 %217, i32* %218, i32 %219, i32 %220, i32 0, i32 0)
  store i32 0, i32* %10, align 4
  br label %222

222:                                              ; preds = %239, %209
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @MLX5E_PPORT_ETHERNET_EXTENDED_STATS_DEBUG_NUM, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %244

226:                                              ; preds = %222
  %227 = load i32*, i32** %8, align 8
  %228 = load i32, i32* %10, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @be64toh(i32 %231)
  %233 = load %struct.mlx5e_port_stats_debug*, %struct.mlx5e_port_stats_debug** %5, align 8
  %234 = getelementptr inbounds %struct.mlx5e_port_stats_debug, %struct.mlx5e_port_stats_debug* %233, i32 0, i32 0
  %235 = load i8**, i8*** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  store i8* %232, i8** %238, align 8
  br label %239

239:                                              ; preds = %226
  %240 = load i32, i32* %10, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* %11, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %11, align 4
  br label %222

244:                                              ; preds = %222
  %245 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %246 = load i32, i32* @pcam_reg, align 4
  %247 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %295

249:                                              ; preds = %244
  %250 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %251 = load i32, i32* @ppcnt_statistical_group, align 4
  %252 = call i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev* %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %295

254:                                              ; preds = %249
  %255 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %256 = load i32, i32* @per_lane_error_counters, align 4
  %257 = call i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev* %255, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %295

259:                                              ; preds = %254
  %260 = load i32, i32* @ppcnt_reg, align 4
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* @grp, align 4
  %263 = load i32, i32* @MLX5_PHYSICAL_LAYER_STATISTICAL_GROUP, align 4
  %264 = call i32 @MLX5_SET(i32 %260, i32* %261, i32 %262, i32 %263)
  %265 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %9, align 4
  %268 = load i32*, i32** %7, align 8
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %271 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %265, i32* %266, i32 %267, i32* %268, i32 %269, i32 %270, i32 0, i32 0)
  store i32 0, i32* %10, align 4
  br label %272

272:                                              ; preds = %289, %259
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @MLX5E_PPORT_STATISTICAL_DEBUG_NUM, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %294

276:                                              ; preds = %272
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* %10, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @be64toh(i32 %281)
  %283 = load %struct.mlx5e_port_stats_debug*, %struct.mlx5e_port_stats_debug** %5, align 8
  %284 = getelementptr inbounds %struct.mlx5e_port_stats_debug, %struct.mlx5e_port_stats_debug* %283, i32 0, i32 0
  %285 = load i8**, i8*** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %285, i64 %287
  store i8* %282, i8** %288, align 8
  br label %289

289:                                              ; preds = %276
  %290 = load i32, i32* %10, align 4
  %291 = add i32 %290, 1
  store i32 %291, i32* %10, align 4
  %292 = load i32, i32* %11, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %11, align 4
  br label %272

294:                                              ; preds = %272
  br label %295

295:                                              ; preds = %294, %254, %249, %244
  %296 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %297 = call i32 @mlx5e_update_pcie_counters(%struct.mlx5e_priv* %296)
  %298 = load i32, i32* @ppcnt_reg, align 4
  %299 = load i32*, i32** %6, align 8
  %300 = load i32, i32* @grp, align 4
  %301 = load i32, i32* @MLX5_PER_PRIORITY_COUNTERS_GROUP, align 4
  %302 = call i32 @MLX5_SET(i32 %298, i32* %299, i32 %300, i32 %301)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %303

303:                                              ; preds = %345, %295
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* @MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %348

307:                                              ; preds = %303
  %308 = load i32, i32* @ppcnt_reg, align 4
  %309 = load i32*, i32** %6, align 8
  %310 = load i32, i32* @prio_tc, align 4
  %311 = load i32, i32* %12, align 4
  %312 = call i32 @MLX5_SET(i32 %308, i32* %309, i32 %310, i32 %311)
  %313 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %314 = load i32*, i32** %6, align 8
  %315 = load i32, i32* %9, align 4
  %316 = load i32*, i32** %7, align 8
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %319 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %313, i32* %314, i32 %315, i32* %316, i32 %317, i32 %318, i32 0, i32 0)
  store i32 0, i32* %10, align 4
  br label %320

320:                                              ; preds = %339, %307
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* @MLX5E_PPORT_PER_PRIO_STATS_NUM, align 4
  %323 = load i32, i32* @MLX5E_PPORT_PER_PRIO_STATS_NUM_PRIO, align 4
  %324 = udiv i32 %322, %323
  %325 = icmp ne i32 %321, %324
  br i1 %325, label %326, label %344

326:                                              ; preds = %320
  %327 = load i32*, i32** %8, align 8
  %328 = load i32, i32* %10, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = call i8* @be64toh(i32 %331)
  %333 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %4, align 8
  %334 = getelementptr inbounds %struct.mlx5e_pport_stats, %struct.mlx5e_pport_stats* %333, i32 0, i32 0
  %335 = load i8**, i8*** %334, align 8
  %336 = load i32, i32* %11, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i8*, i8** %335, i64 %337
  store i8* %332, i8** %338, align 8
  br label %339

339:                                              ; preds = %326
  %340 = load i32, i32* %10, align 4
  %341 = add i32 %340, 1
  store i32 %341, i32* %10, align 4
  %342 = load i32, i32* %11, align 4
  %343 = add i32 %342, 1
  store i32 %343, i32* %11, align 4
  br label %320

344:                                              ; preds = %320
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %12, align 4
  %347 = add i32 %346, 1
  store i32 %347, i32* %12, align 4
  br label %303

348:                                              ; preds = %303
  br label %349

349:                                              ; preds = %348, %33
  %350 = load i32*, i32** %6, align 8
  %351 = call i32 @kvfree(i32* %350)
  %352 = load i32*, i32** %7, align 8
  %353 = call i32 @kvfree(i32* %352)
  ret void
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i64 @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @be64toh(i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5e_update_pcie_counters(%struct.mlx5e_priv*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
