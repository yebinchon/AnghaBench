; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fw.c_mlx5_query_hca_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fw.c_mlx5_query_hca_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@MLX5_CAP_GENERAL = common dso_local global i32 0, align 4
@eth_net_offloads = common dso_local global i32 0, align 4
@MLX5_CAP_ETHERNET_OFFLOADS = common dso_local global i32 0, align 4
@pg = common dso_local global i32 0, align 4
@MLX5_CAP_ODP = common dso_local global i32 0, align 4
@atomic = common dso_local global i32 0, align 4
@MLX5_CAP_ATOMIC = common dso_local global i32 0, align 4
@roce = common dso_local global i32 0, align 4
@MLX5_CAP_ROCE = common dso_local global i32 0, align 4
@port_type = common dso_local global i32 0, align 4
@MLX5_CMD_HCA_CAP_PORT_TYPE_ETHERNET = common dso_local global i64 0, align 8
@nic_flow_table = common dso_local global i32 0, align 4
@MLX5_CMD_HCA_CAP_PORT_TYPE_IB = common dso_local global i64 0, align 8
@ipoib_enhanced_offloads = common dso_local global i32 0, align 4
@MLX5_CAP_FLOW_TABLE = common dso_local global i32 0, align 4
@eswitch_flow_table = common dso_local global i32 0, align 4
@MLX5_CAP_ESWITCH_FLOW_TABLE = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@MLX5_CAP_ESWITCH = common dso_local global i32 0, align 4
@snapshot = common dso_local global i32 0, align 4
@MLX5_CAP_SNAPSHOT = common dso_local global i32 0, align 4
@MLX5_CAP_EOIB_OFFLOADS = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@MLX5_CAP_DEBUG = common dso_local global i32 0, align 4
@qos = common dso_local global i32 0, align 4
@MLX5_CAP_QOS = common dso_local global i32 0, align 4
@qcam_reg = common dso_local global i32 0, align 4
@mcam_reg = common dso_local global i32 0, align 4
@pcam_reg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_hca_caps(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @MLX5_CAP_GENERAL, align 4
  %7 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %230

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = load i32, i32* @eth_net_offloads, align 4
  %15 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = load i32, i32* @MLX5_CAP_ETHERNET_OFFLOADS, align 4
  %20 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %230

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = load i32, i32* @pg, align 4
  %29 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load i32, i32* @MLX5_CAP_ODP, align 4
  %34 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %230

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %42 = load i32, i32* @atomic, align 4
  %43 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %47 = load i32, i32* @MLX5_CAP_ATOMIC, align 4
  %48 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %230

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %56 = load i32, i32* @roce, align 4
  %57 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %61 = load i32, i32* @MLX5_CAP_ROCE, align 4
  %62 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %230

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %70 = load i32, i32* @port_type, align 4
  %71 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %69, i32 %70)
  %72 = load i64, i64* @MLX5_CMD_HCA_CAP_PORT_TYPE_ETHERNET, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %76 = load i32, i32* @nic_flow_table, align 4
  %77 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %81 = load i32, i32* @port_type, align 4
  %82 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %80, i32 %81)
  %83 = load i64, i64* @MLX5_CMD_HCA_CAP_PORT_TYPE_IB, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %87 = load i32, i32* @ipoib_enhanced_offloads, align 4
  %88 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85, %74
  %91 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %92 = load i32, i32* @MLX5_CAP_FLOW_TABLE, align 4
  %93 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %230

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %85, %79
  %100 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %101 = load i32, i32* @eswitch_flow_table, align 4
  %102 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %106 = load i32, i32* @MLX5_CAP_ESWITCH_FLOW_TABLE, align 4
  %107 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %105, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %230

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %99
  %114 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %115 = load i32, i32* @vport_group_manager, align 4
  %116 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %120 = load i32, i32* @MLX5_CAP_ESWITCH, align 4
  %121 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %119, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %230

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %129 = load i32, i32* @snapshot, align 4
  %130 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %134 = load i32, i32* @MLX5_CAP_SNAPSHOT, align 4
  %135 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %133, i32 %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %230

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %127
  %142 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %143 = load i32, i32* @ipoib_enhanced_offloads, align 4
  %144 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %148 = load i32, i32* @MLX5_CAP_EOIB_OFFLOADS, align 4
  %149 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %147, i32 %148)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* %2, align 4
  br label %230

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %141
  %156 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %157 = load i32, i32* @debug, align 4
  %158 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %162 = load i32, i32* @MLX5_CAP_DEBUG, align 4
  %163 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %161, i32 %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %230

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168, %155
  %170 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %171 = load i32, i32* @qos, align 4
  %172 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %176 = load i32, i32* @MLX5_CAP_QOS, align 4
  %177 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %175, i32 %176)
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %4, align 4
  store i32 %181, i32* %2, align 4
  br label %230

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %169
  %184 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %185 = load i32, i32* @qcam_reg, align 4
  %186 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %190 = call i32 @mlx5_get_qcam_reg(%struct.mlx5_core_dev* %189)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %4, align 4
  store i32 %194, i32* %2, align 4
  br label %230

195:                                              ; preds = %188
  br label %196

196:                                              ; preds = %195, %183
  %197 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %198 = load i32, i32* @mcam_reg, align 4
  %199 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %203 = call i32 @mlx5_get_mcam_reg(%struct.mlx5_core_dev* %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* %4, align 4
  store i32 %207, i32* %2, align 4
  br label %230

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208, %196
  %210 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %211 = load i32, i32* @pcam_reg, align 4
  %212 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %209
  %215 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %216 = call i32 @mlx5_get_pcam_reg(%struct.mlx5_core_dev* %215)
  store i32 %216, i32* %4, align 4
  %217 = load i32, i32* %4, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* %4, align 4
  store i32 %220, i32* %2, align 4
  br label %230

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %209
  %223 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %224 = call i32 @mlx5_core_query_special_contexts(%struct.mlx5_core_dev* %223)
  store i32 %224, i32* %4, align 4
  %225 = load i32, i32* %4, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i32, i32* %4, align 4
  store i32 %228, i32* %2, align 4
  br label %230

229:                                              ; preds = %222
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %229, %227, %219, %206, %193, %180, %166, %152, %138, %124, %110, %96, %65, %51, %37, %23, %10
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @mlx5_core_get_caps(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_get_qcam_reg(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_get_mcam_reg(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_get_pcam_reg(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_query_special_contexts(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
