; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_states_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_states_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.nat64lsn_cfg = type { i64, i64 }
%struct.nat64lsn_pg = type { i32 }
%union.nat64lsn_pgidx = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_TLV_OBJDATA = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@LAST_IDX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NAT64_MIN_PORT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nat64lsn_states_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_states_v1(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.nat64lsn_cfg*, align 8
  %12 = alloca %struct.nat64lsn_pg*, align 8
  %13 = alloca %union.nat64lsn_pgidx, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i64 32, i64* %14, align 8
  %18 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %19 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %14, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %287

25:                                               ; preds = %3
  %26 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %27 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %8, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 1
  %32 = bitcast %struct.TYPE_12__* %31 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPFW_TLV_OBJDATA, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %25
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = sub i64 %44, 8
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39, %25
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %4, align 4
  br label %287

49:                                               ; preds = %39
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 1
  %52 = bitcast %struct.TYPE_13__* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  store i64 %53, i64* %54, align 8
  %55 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %49
  %59 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IPPROTO_ICMP, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IPPROTO_TCP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IPPROTO_UDP, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %4, align 4
  br label %287

75:                                               ; preds = %68, %63, %58, %49
  %76 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LAST_IDX, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %4, align 4
  br label %287

82:                                               ; preds = %75
  %83 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %84 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %83)
  %85 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %86 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.nat64lsn_cfg* @nat64lsn_find(i32 %86, i32 %90, i32 %94)
  store %struct.nat64lsn_cfg* %95, %struct.nat64lsn_cfg** %11, align 8
  %96 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %97 = icmp eq %struct.nat64lsn_cfg* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %82
  %99 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %100 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %99)
  %101 = load i32, i32* @ENOENT, align 4
  store i32 %101, i32* %4, align 4
  br label %287

102:                                              ; preds = %82
  %103 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %108 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  store i64 %109, i64* %110, align 8
  %111 = load i64, i64* @IPPROTO_ICMP, align 8
  %112 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  store i64 %111, i64* %112, align 8
  %113 = load i64, i64* @NAT64_MIN_PORT, align 8
  %114 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %106, %102
  %116 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %119 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %115
  %123 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %126 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %124, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %122
  %130 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NAT64_MIN_PORT, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %129, %122, %115
  %135 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %136 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %135)
  %137 = load i32, i32* @EINVAL, align 4
  store i32 %137, i32* %4, align 4
  br label %287

138:                                              ; preds = %129
  store i64 48, i64* %14, align 8
  %139 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %140 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %14, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %146 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %145)
  %147 = load i32, i32* @ENOMEM, align 4
  store i32 %147, i32* %4, align 4
  br label %287

148:                                              ; preds = %138
  %149 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %150 = load i64, i64* %14, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %149, i32 %151)
  %153 = inttoptr i64 %152 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %153, %struct.TYPE_12__** %8, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 1
  %156 = bitcast %struct.TYPE_12__* %155 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %156, %struct.TYPE_13__** %9, align 8
  %157 = load i64, i64* @IPFW_TLV_OBJDATA, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store i64 %157, i64* %160, align 8
  %161 = load i64, i64* %14, align 8
  %162 = sub i64 %161, 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  store i64 %162, i64* %165, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 1
  %168 = bitcast %struct.TYPE_13__* %167 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %168, %struct.TYPE_14__** %10, align 8
  store i32 0, i32* %16, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  %171 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  store i64 %172, i64* %175, align 8
  %176 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %177 = call i32 @CALLOUT_LOCK(%struct.nat64lsn_cfg* %176)
  store i32 0, i32* %17, align 4
  br label %178

178:                                              ; preds = %267, %148
  %179 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %180 = call %struct.nat64lsn_pg* @nat64lsn_get_pg_byidx(%struct.nat64lsn_cfg* %179, %union.nat64lsn_pgidx* %13)
  store %struct.nat64lsn_pg* %180, %struct.nat64lsn_pg** %12, align 8
  %181 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %12, align 8
  %182 = icmp ne %struct.nat64lsn_pg* %181, null
  br i1 %182, label %183, label %223

183:                                              ; preds = %178
  store i32 0, i32* %15, align 4
  %184 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %185 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %12, align 8
  %186 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %187 = call i32 @nat64lsn_export_states_v1(%struct.nat64lsn_cfg* %184, %union.nat64lsn_pgidx* %13, %struct.nat64lsn_pg* %185, %struct.sockopt_data* %186, i32* %15)
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %17, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %270

191:                                              ; preds = %183
  %192 = load i32, i32* %15, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %216

194:                                              ; preds = %191
  %195 = load i32, i32* %15, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 4
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, %205
  store i64 %210, i64* %208, align 8
  %211 = load i32, i32* %15, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 4
  %214 = load i64, i64* %14, align 8
  %215 = add i64 %214, %213
  store i64 %215, i64* %14, align 8
  br label %216

216:                                              ; preds = %194, %191
  %217 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @htonl(i64 %218)
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  br label %223

223:                                              ; preds = %216, %178
  %224 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %225 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %12, align 8
  %226 = call i32 @nat64lsn_next_pgidx(%struct.nat64lsn_cfg* %224, %struct.nat64lsn_pg* %225, %union.nat64lsn_pgidx* %13)
  switch i32 %226, label %261 [
    i32 -1, label %227
    i32 1, label %229
  ]

227:                                              ; preds = %223
  %228 = load i32, i32* @ENOENT, align 4
  store i32 %228, i32* %17, align 4
  br label %261

229:                                              ; preds = %223
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %267

235:                                              ; preds = %229
  %236 = load i64, i64* %14, align 8
  %237 = add i64 %236, 24
  store i64 %237, i64* %14, align 8
  %238 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %239 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %14, align 8
  %242 = icmp ult i64 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = load i32, i32* @ENOMEM, align 4
  store i32 %244, i32* %17, align 4
  br label %261

245:                                              ; preds = %235
  %246 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  store i64 %247, i64* %250, align 8
  %251 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %252 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %251, i32 24)
  %253 = inttoptr i64 %252 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %253, %struct.TYPE_14__** %10, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = add i64 %257, 24
  store i64 %258, i64* %256, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  store i32 0, i32* %260, align 8
  br label %261

261:                                              ; preds = %223, %245, %243, %227
  %262 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  store i64 %263, i64* %266, align 8
  br label %267

267:                                              ; preds = %261, %234
  %268 = load i32, i32* %17, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %178, label %270

270:                                              ; preds = %267, %190
  %271 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %11, align 8
  %272 = call i32 @CALLOUT_UNLOCK(%struct.nat64lsn_cfg* %271)
  %273 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %274 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %273)
  %275 = load i32, i32* %16, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %270
  %278 = bitcast %union.nat64lsn_pgidx* %13 to i64*
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @LAST_IDX, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277, %270
  br label %285

283:                                              ; preds = %277
  %284 = load i32, i32* %17, align 4
  br label %285

285:                                              ; preds = %283, %282
  %286 = phi i32 [ 0, %282 ], [ %284, %283 ]
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %285, %144, %134, %98, %80, %73, %47, %23
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.nat64lsn_cfg* @nat64lsn_find(i32, i32, i32) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @CALLOUT_LOCK(%struct.nat64lsn_cfg*) #1

declare dso_local %struct.nat64lsn_pg* @nat64lsn_get_pg_byidx(%struct.nat64lsn_cfg*, %union.nat64lsn_pgidx*) #1

declare dso_local i32 @nat64lsn_export_states_v1(%struct.nat64lsn_cfg*, %union.nat64lsn_pgidx*, %struct.nat64lsn_pg*, %struct.sockopt_data*, i32*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @nat64lsn_next_pgidx(%struct.nat64lsn_cfg*, %struct.nat64lsn_pg*, %union.nat64lsn_pgidx*) #1

declare dso_local i32 @CALLOUT_UNLOCK(%struct.nat64lsn_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
