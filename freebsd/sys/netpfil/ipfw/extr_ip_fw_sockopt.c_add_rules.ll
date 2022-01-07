; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_add_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_add_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ip_fw_rule = type { i32 }
%struct.rule_check_info = type { i32, i64, %struct.TYPE_8__* }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_TLV_TBLNAME_LIST = common dso_local global i64 0, align 8
@IPFW_TLV_RULE_LIST = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"rulenum %d idx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @add_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_rules(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ip_fw_rule*, align 8
  %18 = alloca %struct.rule_check_info, align 8
  %19 = alloca %struct.rule_check_info*, align 8
  %20 = alloca %struct.rule_check_info*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %23 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %24 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %25 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %23, i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = bitcast i32* %30 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %8, align 8
  store i32 4, i32* %16, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  store %struct.rule_check_info* null, %struct.rule_check_info** %20, align 8
  %32 = call i32 @memset(%struct.rule_check_info* %18, i32 0, i32 24)
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 24
  %36 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %37 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %438

43:                                               ; preds = %3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IPFW_TLV_TBLNAME_LIST, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %153

50:                                               ; preds = %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %57 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %62, 24
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %50
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %438

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = urem i64 %68, 4
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %4, align 4
  br label %438

73:                                               ; preds = %66
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 24
  %80 = udiv i64 %79, 12
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %73
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %91, 12
  br i1 %92, label %93, label %95

93:                                               ; preds = %87, %73
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %4, align 4
  br label %438

95:                                               ; preds = %87
  store i32 -1, i32* %14, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 1
  %98 = bitcast %struct.TYPE_8__* %97 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %11, align 8
  br label %99

99:                                               ; preds = %128, %95
  %100 = load i32, i32* %15, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %99
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ne i64 %107, 12
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %4, align 4
  br label %438

111:                                              ; preds = %102
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ipfw_check_object_name_generic(i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %4, align 4
  br label %438

120:                                              ; preds = %111
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @EINVAL, align 4
  store i32 %127, i32* %4, align 4
  br label %438

128:                                              ; preds = %120
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %15, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 1
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %11, align 8
  br label %99

136:                                              ; preds = %99
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %10, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %16, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = ptrtoint %struct.TYPE_8__* %144 to i64
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %145, %150
  %152 = inttoptr i64 %151 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %152, %struct.TYPE_8__** %8, align 8
  br label %153

153:                                              ; preds = %136, %43
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %155, 24
  %157 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %158 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp ugt i64 %156, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %153
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %4, align 4
  br label %438

164:                                              ; preds = %153
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @IPFW_TLV_RULE_LIST, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %347

171:                                              ; preds = %164
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %176, %177
  %179 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %180 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %171
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp ult i64 %185, 24
  br i1 %186, label %187, label %189

187:                                              ; preds = %183, %171
  %188 = load i32, i32* @EINVAL, align 4
  store i32 %188, i32* %4, align 4
  br label %438

189:                                              ; preds = %183
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = urem i64 %191, 4
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* @EINVAL, align 4
  store i32 %195, i32* %4, align 4
  br label %438

196:                                              ; preds = %189
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 1
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load i32, i32* @ENOTSUP, align 4
  store i32 %202, i32* %4, align 4
  br label %438

203:                                              ; preds = %196
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = sub i64 %205, 24
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %12, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = udiv i64 %213, 4
  %215 = icmp ugt i64 %211, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %203
  %217 = load i32, i32* @EINVAL, align 4
  store i32 %217, i32* %4, align 4
  br label %438

218:                                              ; preds = %203
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = call i32 @memset(%struct.rule_check_info* %18, i32 0, i32 24)
  store %struct.rule_check_info* %18, %struct.rule_check_info** %20, align 8
  br label %237

225:                                              ; preds = %218
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = mul i64 %229, 24
  %231 = trunc i64 %230 to i32
  %232 = load i32, i32* @M_TEMP, align 4
  %233 = load i32, i32* @M_WAITOK, align 4
  %234 = load i32, i32* @M_ZERO, align 4
  %235 = or i32 %233, %234
  %236 = call %struct.rule_check_info* @malloc(i32 %231, i32 %232, i32 %235)
  store %struct.rule_check_info* %236, %struct.rule_check_info** %20, align 8
  br label %237

237:                                              ; preds = %225, %223
  %238 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  store %struct.rule_check_info* %238, %struct.rule_check_info** %19, align 8
  store i32 0, i32* %14, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 1
  %241 = bitcast %struct.TYPE_8__* %240 to %struct.ip_fw_rule*
  store %struct.ip_fw_rule* %241, %struct.ip_fw_rule** %17, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %242

242:                                              ; preds = %289, %237
  %243 = load i32, i32* %12, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %312

245:                                              ; preds = %242
  %246 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %17, align 8
  %247 = call i32 @RULESIZE(%struct.ip_fw_rule* %246)
  %248 = call i32 @roundup2(i32 %247, i32 4)
  store i32 %248, i32* %22, align 4
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %258, label %252

252:                                              ; preds = %245
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %15, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %252, %245
  %259 = load i32, i32* @EINVAL, align 4
  store i32 %259, i32* %13, align 4
  br label %312

260:                                              ; preds = %252
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %262 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %263 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %262, i32 0, i32 2
  store %struct.TYPE_8__* %261, %struct.TYPE_8__** %263, align 8
  %264 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %17, align 8
  %265 = load i32, i32* %22, align 4
  %266 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %267 = call i32 @check_ipfw_rule1(%struct.ip_fw_rule* %264, i32 %265, %struct.rule_check_info* %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %260
  br label %312

271:                                              ; preds = %260
  %272 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %17, align 8
  %273 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %271
  %277 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %17, align 8
  %278 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %14, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %17, align 8
  %284 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %14, align 4
  %287 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %285, i32 %286)
  %288 = load i32, i32* @EINVAL, align 4
  store i32 %288, i32* %13, align 4
  br label %312

289:                                              ; preds = %276, %271
  %290 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %17, align 8
  %291 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %14, align 4
  %293 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %17, align 8
  %294 = ptrtoint %struct.ip_fw_rule* %293 to i64
  %295 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %296 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %295, i32 0, i32 1
  store i64 %294, i64* %296, align 8
  %297 = load i32, i32* %22, align 4
  %298 = call i32 @roundup2(i32 %297, i32 4)
  store i32 %298, i32* %22, align 4
  %299 = load i32, i32* %22, align 4
  %300 = load i32, i32* %12, align 4
  %301 = sub nsw i32 %300, %299
  store i32 %301, i32* %12, align 4
  %302 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %17, align 8
  %303 = ptrtoint %struct.ip_fw_rule* %302 to i64
  %304 = load i32, i32* %22, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %303, %305
  %307 = inttoptr i64 %306 to %struct.ip_fw_rule*
  store %struct.ip_fw_rule* %307, %struct.ip_fw_rule** %17, align 8
  %308 = load i32, i32* %15, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %15, align 4
  %310 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %311 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %310, i32 1
  store %struct.rule_check_info* %311, %struct.rule_check_info** %19, align 8
  br label %242

312:                                              ; preds = %282, %270, %258, %242
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* %15, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %321, label %318

318:                                              ; preds = %312
  %319 = load i32, i32* %13, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %318, %312
  %322 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %323 = icmp ne %struct.rule_check_info* %322, %18
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %326 = load i32, i32* @M_TEMP, align 4
  %327 = call i32 @free(%struct.rule_check_info* %325, i32 %326)
  br label %328

328:                                              ; preds = %324, %321
  %329 = load i32, i32* @EINVAL, align 4
  store i32 %329, i32* %4, align 4
  br label %438

330:                                              ; preds = %318
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %331, %struct.TYPE_8__** %9, align 8
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %16, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %16, align 4
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %339 = ptrtoint %struct.TYPE_8__* %338 to i64
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %339, %344
  %346 = inttoptr i64 %345 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %346, %struct.TYPE_8__** %8, align 8
  br label %347

347:                                              ; preds = %330, %164
  %348 = load i32, i32* %16, align 4
  %349 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %350 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %348, %351
  br i1 %352, label %361, label %353

353:                                              ; preds = %347
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %355 = icmp eq %struct.TYPE_8__* %354, null
  br i1 %355, label %361, label %356

356:                                              ; preds = %353
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %373

361:                                              ; preds = %356, %353, %347
  %362 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %363 = icmp ne %struct.rule_check_info* %362, null
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %366 = icmp ne %struct.rule_check_info* %365, %18
  br i1 %366, label %367, label %371

367:                                              ; preds = %364
  %368 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %369 = load i32, i32* @M_TEMP, align 4
  %370 = call i32 @free(%struct.rule_check_info* %368, i32 %369)
  br label %371

371:                                              ; preds = %367, %364, %361
  %372 = load i32, i32* @EINVAL, align 4
  store i32 %372, i32* %4, align 4
  br label %438

373:                                              ; preds = %356
  store i32 0, i32* %21, align 4
  %374 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  store %struct.rule_check_info* %374, %struct.rule_check_info** %19, align 8
  br label %375

375:                                              ; preds = %394, %373
  %376 = load i32, i32* %21, align 4
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp slt i32 %376, %379
  br i1 %380, label %381, label %399

381:                                              ; preds = %375
  %382 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %383 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = inttoptr i64 %384 to %struct.ip_fw_rule*
  %386 = call i32 @RULEKSIZE1(%struct.ip_fw_rule* %385)
  store i32 %386, i32* %12, align 4
  %387 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %388 = load i32, i32* %12, align 4
  %389 = call i32 @ipfw_alloc_rule(%struct.ip_fw_chain* %387, i32 %388)
  %390 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %391 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %390, i32 0, i32 0
  store i32 %389, i32* %391, align 8
  %392 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %393 = call i32 @import_rule1(%struct.rule_check_info* %392)
  br label %394

394:                                              ; preds = %381
  %395 = load i32, i32* %21, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %21, align 4
  %397 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %398 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %397, i32 1
  store %struct.rule_check_info* %398, %struct.rule_check_info** %19, align 8
  br label %375

399:                                              ; preds = %375
  %400 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %401 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = call i32 @commit_rules(%struct.ip_fw_chain* %400, %struct.rule_check_info* %401, i32 %404)
  store i32 %405, i32* %13, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %426

407:                                              ; preds = %399
  store i32 0, i32* %21, align 4
  %408 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  store %struct.rule_check_info* %408, %struct.rule_check_info** %19, align 8
  br label %409

409:                                              ; preds = %420, %407
  %410 = load i32, i32* %21, align 4
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp slt i32 %410, %413
  br i1 %414, label %415, label %425

415:                                              ; preds = %409
  %416 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %417 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @ipfw_free_rule(i32 %418)
  br label %420

420:                                              ; preds = %415
  %421 = load i32, i32* %21, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %21, align 4
  %423 = load %struct.rule_check_info*, %struct.rule_check_info** %19, align 8
  %424 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %423, i32 1
  store %struct.rule_check_info* %424, %struct.rule_check_info** %19, align 8
  br label %409

425:                                              ; preds = %409
  br label %426

426:                                              ; preds = %425, %399
  %427 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %428 = icmp ne %struct.rule_check_info* %427, null
  br i1 %428, label %429, label %436

429:                                              ; preds = %426
  %430 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %431 = icmp ne %struct.rule_check_info* %430, %18
  br i1 %431, label %432, label %436

432:                                              ; preds = %429
  %433 = load %struct.rule_check_info*, %struct.rule_check_info** %20, align 8
  %434 = load i32, i32* @M_TEMP, align 4
  %435 = call i32 @free(%struct.rule_check_info* %433, i32 %434)
  br label %436

436:                                              ; preds = %432, %429, %426
  %437 = load i32, i32* %13, align 4
  store i32 %437, i32* %4, align 4
  br label %438

438:                                              ; preds = %436, %371, %328, %216, %201, %194, %187, %162, %126, %118, %109, %93, %71, %64, %41
  %439 = load i32, i32* %4, align 4
  ret i32 %439
}

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @memset(%struct.rule_check_info*, i32, i32) #1

declare dso_local i32 @ipfw_check_object_name_generic(i32) #1

declare dso_local %struct.rule_check_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @RULESIZE(%struct.ip_fw_rule*) #1

declare dso_local i32 @check_ipfw_rule1(%struct.ip_fw_rule*, i32, %struct.rule_check_info*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @free(%struct.rule_check_info*, i32) #1

declare dso_local i32 @RULEKSIZE1(%struct.ip_fw_rule*) #1

declare dso_local i32 @ipfw_alloc_rule(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @import_rule1(%struct.rule_check_info*) #1

declare dso_local i32 @commit_rules(%struct.ip_fw_chain*, %struct.rule_check_info*, i32) #1

declare dso_local i32 @ipfw_free_rule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
