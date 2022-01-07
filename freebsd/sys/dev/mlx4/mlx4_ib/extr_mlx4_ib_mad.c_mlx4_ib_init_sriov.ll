; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_init_sriov.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_init_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_14__, %struct.TYPE_15__*, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, i32*, i32, i64 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%union.ib_gid = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"multi-function enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"operating in qp1 tunnel mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed init alias guid process.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to register sysfs\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"initializing demux service for %d qp1 clients\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_init_sriov(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.ib_gid, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = call i32 @mlx4_is_mfunc(%struct.TYPE_15__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %224

13:                                               ; preds = %1
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %22 = call i32 @mlx4_ib_cm_paravirt_init(%struct.mlx4_ib_dev* %21)
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 3
  %25 = call i32 (%struct.TYPE_16__*, i8*, ...) @mlx4_ib_warn(%struct.TYPE_16__* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %26, i32 0, i32 2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = call i64 @mlx4_is_slave(%struct.TYPE_15__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %13
  %32 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %32, i32 0, i32 3
  %34 = call i32 (%struct.TYPE_16__*, i8*, ...) @mlx4_ib_warn(%struct.TYPE_16__* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %224

35:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %37, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = call i32 @mlx4_master_func_num(%struct.TYPE_15__* %49)
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mlx4_put_slave_node_guid(%struct.TYPE_15__* %55, i32 %56, i32 %60)
  br label %69

62:                                               ; preds = %45
  %63 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (...) @mlx4_ib_gen_node_guid()
  %68 = call i32 @mlx4_put_slave_node_guid(%struct.TYPE_15__* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %36

73:                                               ; preds = %36
  %74 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %75 = call i32 @mlx4_ib_init_alias_guid_service(%struct.mlx4_ib_dev* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %79, i32 0, i32 3
  %81 = call i32 (%struct.TYPE_16__*, i8*, ...) @mlx4_ib_warn(%struct.TYPE_16__* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %220

82:                                               ; preds = %73
  %83 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %84 = call i32 @mlx4_ib_device_register_sysfs(%struct.mlx4_ib_dev* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %88, i32 0, i32 3
  %90 = call i32 (%struct.TYPE_16__*, i8*, ...) @mlx4_ib_warn(%struct.TYPE_16__* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %217

91:                                               ; preds = %82
  %92 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %92, i32 0, i32 3
  %94 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %94, i32 0, i32 2
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.TYPE_16__*, i8*, ...) @mlx4_ib_warn(%struct.TYPE_16__* %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %177, %91
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %104 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %180

107:                                              ; preds = %101
  %108 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %108, i32 0, i32 3
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @__mlx4_ib_query_gid(%struct.TYPE_16__* %109, i32 %111, i32 0, %union.ib_gid* %6, i32 1)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %192

116:                                              ; preds = %107
  %117 = bitcast %union.ib_gid* %6 to %struct.TYPE_13__*
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %121 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %119, i32* %129, align 4
  %130 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %131 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = bitcast %union.ib_gid* %6 to %struct.TYPE_13__*
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @be64_to_cpu(i32 %140)
  %142 = call i32 @atomic64_set(i32* %137, i32 %141)
  %143 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %144 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %145 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %144, i32 0, i32 2
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = call i32 @mlx4_master_func_num(%struct.TYPE_15__* %146)
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  %150 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %151 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = call i32 @alloc_pv_object(%struct.mlx4_ib_dev* %143, i32 %147, i32 %149, i32* %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %116
  br label %192

161:                                              ; preds = %116
  %162 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %163 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %164 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i64 %168
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  %172 = call i32 @mlx4_ib_alloc_demux_ctx(%struct.mlx4_ib_dev* %162, %struct.TYPE_17__* %169, i32 %171)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  br label %183

176:                                              ; preds = %161
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %101

180:                                              ; preds = %101
  %181 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %182 = call i32 @mlx4_ib_master_tunnels(%struct.mlx4_ib_dev* %181, i32 1)
  store i32 0, i32* %2, align 4
  br label %224

183:                                              ; preds = %175
  %184 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %185 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %185, i32 0, i32 2
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = call i32 @mlx4_master_func_num(%struct.TYPE_15__* %187)
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  %191 = call i32 @free_pv_object(%struct.mlx4_ib_dev* %184, i32 %188, i32 %190)
  br label %192

192:                                              ; preds = %183, %160, %115
  br label %193

193:                                              ; preds = %197, %192
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %4, align 4
  %196 = icmp sge i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %193
  %198 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %199 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %200 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %199, i32 0, i32 2
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = call i32 @mlx4_master_func_num(%struct.TYPE_15__* %201)
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  %205 = call i32 @free_pv_object(%struct.mlx4_ib_dev* %198, i32 %202, i32 %204)
  %206 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %207 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i64 %211
  %213 = call i32 @mlx4_ib_free_demux_ctx(%struct.TYPE_17__* %212)
  br label %193

214:                                              ; preds = %193
  %215 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %216 = call i32 @mlx4_ib_device_unregister_sysfs(%struct.mlx4_ib_dev* %215)
  br label %217

217:                                              ; preds = %214, %87
  %218 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %219 = call i32 @mlx4_ib_destroy_alias_guid_service(%struct.mlx4_ib_dev* %218)
  br label %220

220:                                              ; preds = %217, %78
  %221 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %222 = call i32 @mlx4_ib_cm_paravirt_clean(%struct.mlx4_ib_dev* %221, i32 -1)
  %223 = load i32, i32* %5, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %220, %180, %31, %12
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @mlx4_is_mfunc(%struct.TYPE_15__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mlx4_ib_cm_paravirt_init(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @mlx4_ib_warn(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i64 @mlx4_is_slave(%struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_put_slave_node_guid(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @mlx4_ib_gen_node_guid(...) #1

declare dso_local i32 @mlx4_ib_init_alias_guid_service(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @mlx4_ib_device_register_sysfs(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @__mlx4_ib_query_gid(%struct.TYPE_16__*, i32, i32, %union.ib_gid*, i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @alloc_pv_object(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_alloc_demux_ctx(%struct.mlx4_ib_dev*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mlx4_ib_master_tunnels(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @free_pv_object(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @mlx4_ib_free_demux_ctx(%struct.TYPE_17__*) #1

declare dso_local i32 @mlx4_ib_device_unregister_sysfs(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @mlx4_ib_destroy_alias_guid_service(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @mlx4_ib_cm_paravirt_clean(%struct.mlx4_ib_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
