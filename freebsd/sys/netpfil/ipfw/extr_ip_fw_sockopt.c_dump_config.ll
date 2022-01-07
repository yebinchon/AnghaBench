; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, %struct.ip_fw** }
%struct.ip_fw = type { i32 }
%struct.sockopt_data = type { i64 }
%struct.dump_args = type { i32*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_CFG_GET_STATIC = common dso_local global i32 0, align 4
@IPFW_CFG_GET_STATES = common dso_local global i32 0, align 4
@IPFW_TABLES_MAX = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IPFW_DEFAULT_RULE = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@IPFW_CFG_GET_COUNTERS = common dso_local global i32 0, align 4
@V_set_disable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @dump_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_config(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.dump_args, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.ip_fw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %17 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %18 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %17, i32 40)
  %19 = inttoptr i64 %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %9, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %21 = icmp eq %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %246

24:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  store i32* null, i32** %14, align 8
  %25 = call i32 @memset(%struct.dump_args* %8, i32 0, i32 40)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IPFW_CFG_GET_STATIC, align 4
  %30 = load i32, i32* @IPFW_CFG_GET_STATES, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load i32, i32* @IPFW_TABLES_MAX, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = mul i64 %37, 2
  %39 = udiv i64 %38, 32
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @M_TEMP, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i32* @malloc(i32 %40, i32 %41, i32 %44)
  store i32* %45, i32** %14, align 8
  %46 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 0
  store i32* %45, i32** %46, align 8
  br label %47

47:                                               ; preds = %34, %24
  %48 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %49 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %48)
  store i64 40, i64* %11, align 8
  %50 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %51 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %47
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* @IPFW_DEFAULT_RULE, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i64, i64* @IPFW_DEFAULT_RULE, align 8
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %64, %58
  %67 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @ipfw_find_rule(%struct.ip_fw_chain* %67, i64 %68, i32 0)
  %70 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IPFW_DEFAULT_RULE, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  br label %83

81:                                               ; preds = %66
  %82 = load i64, i64* @IPFW_DEFAULT_RULE, align 8
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i64 [ %80, %76 ], [ %82, %81 ]
  store i64 %84, i64* %12, align 8
  %85 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* @UINT32_MAX, align 4
  %88 = call i32 @ipfw_find_rule(%struct.ip_fw_chain* %85, i64 %86, i32 %87)
  %89 = add nsw i32 %88, 1
  %90 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  br label %91

91:                                               ; preds = %83, %47
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IPFW_CFG_GET_STATIC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %151

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %126, %98
  %102 = load i32, i32* %16, align 4
  %103 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %101
  %107 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %108 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %107, i32 0, i32 1
  %109 = load %struct.ip_fw**, %struct.ip_fw*** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %109, i64 %111
  %113 = load %struct.ip_fw*, %struct.ip_fw** %112, align 8
  store %struct.ip_fw* %113, %struct.ip_fw** %10, align 8
  %114 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %115 = call i64 @RULEUSIZE1(%struct.ip_fw* %114)
  %116 = add i64 %115, 4
  %117 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, %116
  store i64 %119, i64* %117, align 8
  %120 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %124 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %125 = call i32 @mark_rule_objects(%struct.ip_fw_chain* %123, %struct.ip_fw* %124, %struct.dump_args* %8)
  br label %126

126:                                              ; preds = %106
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %16, align 4
  br label %101

129:                                              ; preds = %101
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IPFW_CFG_GET_COUNTERS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = mul i64 4, %139
  %141 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, %140
  store i64 %143, i64* %141, align 8
  %144 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 4
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %136, %129
  %146 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 4
  %149 = load i64, i64* %11, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %11, align 8
  br label %151

151:                                              ; preds = %145, %91
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @IPFW_CFG_GET_STATES, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %151
  %159 = load i32*, i32** %14, align 8
  %160 = call i32 @ipfw_dyn_get_count(i32* %159, i32* %16)
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = add i64 4, %162
  %164 = load i64, i64* %11, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %11, align 8
  %166 = load i32, i32* %16, align 4
  %167 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, %166
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %158, %151
  %171 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 4
  %179 = add i64 %178, 4
  %180 = load i64, i64* %11, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %11, align 8
  br label %182

182:                                              ; preds = %174, %170
  %183 = load i64, i64* %11, align 8
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  %186 = load i32, i32* @V_set_disable, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %13, align 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %9, align 8
  %193 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %194 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %11, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %182
  %199 = load i32, i32* @ENOMEM, align 4
  store i32 %199, i32* %15, align 4
  br label %235

200:                                              ; preds = %182
  %201 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %8, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %206 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %207 = call i32 @dump_named_objects(%struct.ip_fw_chain* %205, %struct.dump_args* %8, %struct.sockopt_data* %206)
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %235

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211, %200
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @IPFW_CFG_GET_STATIC, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %219 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %220 = call i32 @dump_static_rules(%struct.ip_fw_chain* %218, %struct.dump_args* %8, %struct.sockopt_data* %219)
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %235

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224, %212
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @IPFW_CFG_GET_STATES, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %232 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %233 = call i32 @ipfw_dump_states(%struct.ip_fw_chain* %231, %struct.sockopt_data* %232)
  store i32 %233, i32* %15, align 4
  br label %234

234:                                              ; preds = %230, %225
  br label %235

235:                                              ; preds = %234, %223, %210, %198
  %236 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %237 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %236)
  %238 = load i32*, i32** %14, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i32*, i32** %14, align 8
  %242 = load i32, i32* @M_TEMP, align 4
  %243 = call i32 @free(i32* %241, i32 %242)
  br label %244

244:                                              ; preds = %240, %235
  %245 = load i32, i32* %15, align 4
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %244, %22
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @memset(%struct.dump_args*, i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_find_rule(%struct.ip_fw_chain*, i64, i32) #1

declare dso_local i64 @RULEUSIZE1(%struct.ip_fw*) #1

declare dso_local i32 @mark_rule_objects(%struct.ip_fw_chain*, %struct.ip_fw*, %struct.dump_args*) #1

declare dso_local i32 @ipfw_dyn_get_count(i32*, i32*) #1

declare dso_local i32 @dump_named_objects(%struct.ip_fw_chain*, %struct.dump_args*, %struct.sockopt_data*) #1

declare dso_local i32 @dump_static_rules(%struct.ip_fw_chain*, %struct.dump_args*, %struct.sockopt_data*) #1

declare dso_local i32 @ipfw_dump_states(%struct.ip_fw_chain*, %struct.sockopt_data*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
