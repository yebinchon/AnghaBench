; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mad.c_mthca_process_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mad.c_mthca_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i64 }
%struct.ib_grh = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.ib_port_attr = type { i64 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i64 0, align 8
@IB_SMP_ATTR_SM_INFO = common dso_local global i32 0, align 4
@IB_SMP_ATTR_VENDOR_MASK = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@MTHCA_VENDOR_CLASS1 = common dso_local global i64 0, align 8
@MTHCA_VENDOR_CLASS2 = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_BKEY = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MAD_IFC returned %d\0A\00", align 1
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad_hdr* %5, i64 %6, %struct.ib_mad_hdr* %7, i64* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_wc*, align 8
  %16 = alloca %struct.ib_grh*, align 8
  %17 = alloca %struct.ib_mad_hdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ib_mad_hdr*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.ib_port_attr, align 8
  %26 = alloca %struct.ib_mad*, align 8
  %27 = alloca %struct.ib_mad*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %15, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %16, align 8
  store %struct.ib_mad_hdr* %5, %struct.ib_mad_hdr** %17, align 8
  store i64 %6, i64* %18, align 8
  store %struct.ib_mad_hdr* %7, %struct.ib_mad_hdr** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  %28 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %29 = icmp ne %struct.ib_wc* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %10
  %31 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %37

34:                                               ; preds = %10
  %35 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %36 = call i64 @be16_to_cpu(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i64 [ %33, %30 ], [ %36, %34 ]
  store i64 %38, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %39 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %40 = bitcast %struct.ib_mad_hdr* %39 to %struct.ib_mad*
  store %struct.ib_mad* %40, %struct.ib_mad** %26, align 8
  %41 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %19, align 8
  %42 = bitcast %struct.ib_mad_hdr* %41 to %struct.ib_mad*
  store %struct.ib_mad* %42, %struct.ib_mad** %27, align 8
  %43 = load i64, i64* %18, align 8
  %44 = icmp ne i64 %43, 24
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i64*, i64** %20, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 24
  br label %49

49:                                               ; preds = %45, %37
  %50 = phi i1 [ true, %37 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON_ONCE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %55, i32* %11, align 4
  br label %283

56:                                               ; preds = %49
  %57 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %58 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IB_MGMT_METHOD_TRAP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load i64, i64* %23, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %68 = call i32 @to_mdev(%struct.ib_device* %67)
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %71 = call i32 @forward_trap(i32 %68, i32 %69, %struct.ib_mad* %70)
  %72 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %73 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %11, align 4
  br label %283

75:                                               ; preds = %63, %56
  %76 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %77 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %84 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %82, %75
  %90 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %91 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %98 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %105 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %111, i32* %11, align 4
  br label %283

112:                                              ; preds = %103, %96, %89
  %113 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %114 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IB_SMP_ATTR_SM_INFO, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %128, label %119

119:                                              ; preds = %112
  %120 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %121 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IB_SMP_ATTR_VENDOR_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @IB_SMP_ATTR_VENDOR_MASK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %119, %112
  %129 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %129, i32* %11, align 4
  br label %283

130:                                              ; preds = %119
  br label %172

131:                                              ; preds = %82
  %132 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %133 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %152, label %138

138:                                              ; preds = %131
  %139 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %140 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MTHCA_VENDOR_CLASS1, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %152, label %145

145:                                              ; preds = %138
  %146 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %147 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @MTHCA_VENDOR_CLASS2, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %145, %138, %131
  %153 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %154 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %161 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %167, i32* %11, align 4
  br label %283

168:                                              ; preds = %159, %152
  br label %171

169:                                              ; preds = %145
  %170 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %170, i32* %11, align 4
  br label %283

171:                                              ; preds = %168
  br label %172

172:                                              ; preds = %171, %130
  %173 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %174 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %186, label %179

179:                                              ; preds = %172
  %180 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %181 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %179, %172
  %187 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %188 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %186
  %194 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %195 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %193
  %201 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @ib_query_port(%struct.ib_device* %201, i32 %202, %struct.ib_port_attr* %25)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %25, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %24, align 8
  br label %208

208:                                              ; preds = %205, %200, %193, %186, %179
  %209 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %210 = call i32 @to_mdev(%struct.ib_device* %209)
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %213 = and i32 %211, %212
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* @IB_MAD_IGNORE_BKEY, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* %14, align 4
  %218 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %219 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %220 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %221 = load %struct.ib_mad*, %struct.ib_mad** %27, align 8
  %222 = call i32 @mthca_MAD_IFC(i32 %210, i32 %213, i32 %216, i32 %217, %struct.ib_wc* %218, %struct.ib_grh* %219, %struct.ib_mad* %220, %struct.ib_mad* %221)
  store i32 %222, i32* %22, align 4
  %223 = load i32, i32* %22, align 4
  %224 = load i32, i32* @EBADMSG, align 4
  %225 = sub nsw i32 0, %224
  %226 = icmp eq i32 %223, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %208
  %228 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %228, i32* %11, align 4
  br label %283

229:                                              ; preds = %208
  %230 = load i32, i32* %22, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %234 = call i32 @to_mdev(%struct.ib_device* %233)
  %235 = load i32, i32* %22, align 4
  %236 = call i32 @mthca_err(i32 %234, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %237, i32* %11, align 4
  br label %283

238:                                              ; preds = %229
  br label %239

239:                                              ; preds = %238
  %240 = load %struct.ib_mad*, %struct.ib_mad** %27, align 8
  %241 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %239
  %246 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %247 = load i32, i32* %14, align 4
  %248 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %249 = load i64, i64* %24, align 8
  %250 = call i32 @smp_snoop(%struct.ib_device* %246, i32 %247, %struct.ib_mad* %248, i64 %249)
  %251 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %252 = load %struct.ib_mad*, %struct.ib_mad** %27, align 8
  %253 = call i32 @node_desc_override(%struct.ib_device* %251, %struct.ib_mad* %252)
  br label %254

254:                                              ; preds = %245, %239
  %255 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %256 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %254
  %262 = call i32 @cpu_to_be16(i32 32768)
  %263 = load %struct.ib_mad*, %struct.ib_mad** %27, align 8
  %264 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %262
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %261, %254
  %269 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %270 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %268
  %276 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %277 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %278 = or i32 %276, %277
  store i32 %278, i32* %11, align 4
  br label %283

279:                                              ; preds = %268
  %280 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %281 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %282 = or i32 %280, %281
  store i32 %282, i32* %11, align 4
  br label %283

283:                                              ; preds = %279, %275, %232, %227, %169, %166, %128, %110, %66, %54
  %284 = load i32, i32* %11, align 4
  ret i32 %284
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @forward_trap(i32, i32, %struct.ib_mad*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mthca_MAD_IFC(i32, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @mthca_err(i32, i8*, i32) #1

declare dso_local i32 @smp_snoop(%struct.ib_device*, i32, %struct.ib_mad*, i64) #1

declare dso_local i32 @node_desc_override(%struct.ib_device*, %struct.ib_mad*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
