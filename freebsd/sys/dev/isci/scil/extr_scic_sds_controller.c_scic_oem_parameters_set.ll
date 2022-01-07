; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_oem_parameters_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_oem_parameters_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_28__, %struct.TYPE_27__*, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, i64, i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i32 }

@SCI_BASE_CONTROLLER_STATE_RESET = common dso_local global i64 0, align 8
@SCI_BASE_CONTROLLER_STATE_INITIALIZING = common dso_local global i64 0, align 8
@SCI_BASE_CONTROLLER_STATE_INITIALIZED = common dso_local global i64 0, align 8
@SCI_MAX_PORTS = common dso_local global i64 0, align 8
@SCIC_SDS_PARM_PHY_MASK_MAX = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE = common dso_local global i64 0, align 8
@SCIC_PORT_MANUAL_CONFIGURATION_MODE = common dso_local global i64 0, align 8
@MAX_CONCURRENT_DEVICE_SPIN_UP_COUNT = common dso_local global i64 0, align 8
@SCI_OEM_PARAM_VER_1_0 = common dso_local global i64 0, align 8
@SCI_OEM_PARAM_VER_1_1 = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_oem_parameters_set(i64 %0, %struct.TYPE_21__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %8, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = bitcast %struct.TYPE_30__* %17 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SCI_BASE_CONTROLLER_STATE_RESET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SCI_BASE_CONTROLLER_STATE_INITIALIZING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SCI_BASE_CONTROLLER_STATE_INITIALIZED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %273

42:                                               ; preds = %34, %26, %3
  store i64 0, i64* %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %64, %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @SCI_MAX_PORTS, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SCIC_SDS_PARM_PHY_MASK_MAX, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %62, i32* %4, align 4
  br label %275

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %46

67:                                               ; preds = %46
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %99, %67
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @SCI_MAX_PHYS, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %72
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %97, i32* %4, align 4
  br label %275

98:                                               ; preds = %84, %72
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %10, align 8
  br label %68

102:                                              ; preds = %68
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %102
  store i64 0, i64* %10, align 8
  br label %111

111:                                              ; preds = %128, %110
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @SCI_MAX_PHYS, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %126, i32* %4, align 4
  br label %275

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %10, align 8
  br label %111

131:                                              ; preds = %111
  br label %168

132:                                              ; preds = %102
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SCIC_PORT_MANUAL_CONFIGURATION_MODE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %132
  store i64 0, i64* %10, align 8
  br label %141

141:                                              ; preds = %156, %140
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @SCI_MAX_PHYS, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %11, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %11, align 8
  br label %156

156:                                              ; preds = %145
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  br label %141

159:                                              ; preds = %141
  %160 = load i64, i64* %11, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %163, i32* %4, align 4
  br label %275

164:                                              ; preds = %159
  br label %167

165:                                              ; preds = %132
  %166 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %166, i32* %4, align 4
  br label %275

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %167, %131
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @MAX_CONCURRENT_DEVICE_SPIN_UP_COUNT, align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %177, i32* %4, align 4
  br label %275

178:                                              ; preds = %168
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %267

184:                                              ; preds = %178
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @SCI_OEM_PARAM_VER_1_0, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %184
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 1
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %195, i32* %4, align 4
  br label %275

196:                                              ; preds = %188, %184
  %197 = load i64, i64* %7, align 8
  %198 = load i64, i64* @SCI_OEM_PARAM_VER_1_1, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %200, label %266

200:                                              ; preds = %196
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  %203 = bitcast %struct.TYPE_30__* %202 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %203, %struct.TYPE_18__** %12, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %13, align 8
  %208 = load i64, i64* %13, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %224, label %210

210:                                              ; preds = %200
  %211 = load i64, i64* %13, align 8
  %212 = icmp eq i64 %211, 2
  br i1 %212, label %224, label %213

213:                                              ; preds = %210
  %214 = load i64, i64* %13, align 8
  %215 = icmp eq i64 %214, 3
  br i1 %215, label %224, label %216

216:                                              ; preds = %213
  %217 = load i64, i64* %13, align 8
  %218 = icmp eq i64 %217, 6
  br i1 %218, label %224, label %219

219:                                              ; preds = %216
  %220 = load i64, i64* %13, align 8
  %221 = icmp eq i64 %220, 7
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %223, i32* %4, align 4
  br label %275

224:                                              ; preds = %219, %216, %213, %210, %200
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %13, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %224
  %235 = load i64, i64* %13, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %234
  %238 = load i64, i64* %13, align 8
  %239 = icmp eq i64 %238, 2
  br i1 %239, label %245, label %240

240:                                              ; preds = %237
  %241 = load i64, i64* %13, align 8
  %242 = icmp eq i64 %241, 3
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %244, i32* %4, align 4
  br label %275

245:                                              ; preds = %240, %237, %234
  br label %265

246:                                              ; preds = %224
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %264

252:                                              ; preds = %246
  %253 = load i64, i64* %13, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %252
  %256 = load i64, i64* %13, align 8
  %257 = icmp eq i64 %256, 3
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = load i64, i64* %13, align 8
  %260 = icmp eq i64 %259, 6
  br i1 %260, label %263, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %262, i32* %4, align 4
  br label %275

263:                                              ; preds = %258, %255, %252
  br label %264

264:                                              ; preds = %263, %246
  br label %265

265:                                              ; preds = %264, %245
  br label %266

266:                                              ; preds = %265, %196
  br label %267

267:                                              ; preds = %266, %178
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %271 = call i32 @memcpy(i32* %269, %struct.TYPE_21__* %270, i32 32)
  %272 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %272, i32* %4, align 4
  br label %275

273:                                              ; preds = %34
  %274 = load i32, i32* @SCI_FAILURE_INVALID_STATE, align 4
  store i32 %274, i32* %4, align 4
  br label %275

275:                                              ; preds = %273, %267, %261, %243, %222, %194, %176, %165, %162, %125, %96, %61
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local i32 @memcpy(i32*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
