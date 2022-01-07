; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sched.c_set_sched_class_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sched.c_set_sched_class_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64*, i32, %struct.TYPE_5__*, %struct.port_info** }
%struct.TYPE_5__ = type { i32, i32 }
%struct.port_info = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.tx_cl_rl_params* }
%struct.tx_cl_rl_params = type { i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.t4_sched_class_params = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@SCHED_CLASS_LEVEL_CL_RL = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_LEVEL_CL_RL = common dso_local global i32 0, align 4
@SCHED_CLASS_LEVEL_CL_WRR = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_LEVEL_CL_WRR = common dso_local global i32 0, align 4
@SCHED_CLASS_LEVEL_CH_RL = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_LEVEL_CH_RL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCHED_CLASS_MODE_CLASS = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_MODE_CLASS = common dso_local global i32 0, align 4
@SCHED_CLASS_MODE_FLOW = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_MODE_FLOW = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SCHED_CLASS_RATEUNIT_BITS = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_UNIT_BITRATE = common dso_local global i32 0, align 4
@SCHED_CLASS_RATEMODE_REL = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_RATE_REL = common dso_local global i32 0, align 4
@SCHED_CLASS_RATEMODE_ABS = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_RATE_ABS = common dso_local global i32 0, align 4
@SCHED_CLASS_RATEUNIT_PKTS = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_UNIT_PKTRATE = common dso_local global i32 0, align 4
@CLRL_SYNC = common dso_local global i32 0, align 4
@CLRL_ASYNC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CLRL_USER = common dso_local global i32 0, align 4
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@HOLD_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4sscp\00", align 1
@FW_SCHED_TYPE_PKTSCHED = common dso_local global i32 0, align 4
@LOCK_HELD = common dso_local global i32 0, align 4
@CLRL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_sched_class_params*, i32)* @set_sched_class_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sched_class_params(%struct.adapter* %0, %struct.t4_sched_class_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.t4_sched_class_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.port_info*, align 8
  %15 = alloca %struct.tx_cl_rl_params*, align 8
  %16 = alloca %struct.tx_cl_rl_params, align 8
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.t4_sched_class_params* %1, %struct.t4_sched_class_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %19 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCHED_CLASS_LEVEL_CL_RL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @FW_SCHED_PARAMS_LEVEL_CL_RL, align 4
  store i32 %24, i32* %10, align 4
  br label %45

25:                                               ; preds = %3
  %26 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %27 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCHED_CLASS_LEVEL_CL_WRR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @FW_SCHED_PARAMS_LEVEL_CL_WRR, align 4
  store i32 %32, i32* %10, align 4
  br label %44

33:                                               ; preds = %25
  %34 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %35 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SCHED_CLASS_LEVEL_CH_RL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @FW_SCHED_PARAMS_LEVEL_CH_RL, align 4
  store i32 %40, i32* %10, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %500

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %47 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SCHED_CLASS_LEVEL_CL_RL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %53 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SCHED_CLASS_MODE_CLASS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @FW_SCHED_PARAMS_MODE_CLASS, align 4
  store i32 %58, i32* %11, align 4
  br label %70

59:                                               ; preds = %51
  %60 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %61 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SCHED_CLASS_MODE_FLOW, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  store i32 1, i32* %17, align 4
  %66 = load i32, i32* @FW_SCHED_PARAMS_MODE_FLOW, align 4
  store i32 %66, i32* %11, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %4, align 4
  br label %500

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %57
  br label %72

71:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %74 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %4, align 4
  br label %500

79:                                               ; preds = %72
  %80 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %81 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.adapter*, %struct.adapter** %5, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @in_range(i64 %82, i32 0, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* @ERANGE, align 4
  store i32 %92, i32* %4, align 4
  br label %500

93:                                               ; preds = %79
  %94 = load %struct.adapter*, %struct.adapter** %5, align 8
  %95 = getelementptr inbounds %struct.adapter, %struct.adapter* %94, i32 0, i32 3
  %96 = load %struct.port_info**, %struct.port_info*** %95, align 8
  %97 = load %struct.adapter*, %struct.adapter** %5, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %101 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.port_info*, %struct.port_info** %96, i64 %104
  %106 = load %struct.port_info*, %struct.port_info** %105, align 8
  store %struct.port_info* %106, %struct.port_info** %14, align 8
  %107 = load %struct.port_info*, %struct.port_info** %14, align 8
  %108 = icmp eq %struct.port_info* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %4, align 4
  br label %500

111:                                              ; preds = %93
  %112 = load %struct.port_info*, %struct.port_info** %14, align 8
  %113 = getelementptr inbounds %struct.port_info, %struct.port_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %116 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @MPASS(i32 %119)
  %121 = load %struct.port_info*, %struct.port_info** %14, align 8
  %122 = call i32 @port_top_speed(%struct.port_info* %121)
  %123 = mul nsw i32 %122, 1000000
  store i32 %123, i32* %9, align 4
  %124 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %125 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SCHED_CLASS_LEVEL_CL_RL, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %111
  %130 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %131 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SCHED_CLASS_LEVEL_CH_RL, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %219

135:                                              ; preds = %129, %111
  %136 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %137 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %142 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %145 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ult i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %4, align 4
  br label %500

150:                                              ; preds = %143
  %151 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %152 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SCHED_CLASS_RATEUNIT_BITS, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %207

156:                                              ; preds = %150
  %157 = load i32, i32* @FW_SCHED_PARAMS_UNIT_BITRATE, align 4
  store i32 %157, i32* %12, align 4
  %158 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %159 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SCHED_CLASS_RATEMODE_REL, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %156
  %164 = load i32, i32* @FW_SCHED_PARAMS_RATE_REL, align 4
  store i32 %164, i32* %13, align 4
  %165 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %166 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @in_range(i64 %167, i32 0, i32 100)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %172 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @in_range(i64 %173, i32 0, i32 100)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %170, %163
  %177 = load i32, i32* @ERANGE, align 4
  store i32 %177, i32* %4, align 4
  br label %500

178:                                              ; preds = %170
  br label %206

179:                                              ; preds = %156
  %180 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %181 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SCHED_CLASS_RATEMODE_ABS, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %179
  %186 = load i32, i32* @FW_SCHED_PARAMS_RATE_ABS, align 4
  store i32 %186, i32* %13, align 4
  %187 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %188 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @in_range(i64 %189, i32 0, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %185
  %194 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %195 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @in_range(i64 %196, i32 0, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %193, %185
  %201 = load i32, i32* @ERANGE, align 4
  store i32 %201, i32* %4, align 4
  br label %500

202:                                              ; preds = %193
  br label %205

203:                                              ; preds = %179
  %204 = load i32, i32* @EINVAL, align 4
  store i32 %204, i32* %4, align 4
  br label %500

205:                                              ; preds = %202
  br label %206

206:                                              ; preds = %205, %178
  br label %218

207:                                              ; preds = %150
  %208 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %209 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @SCHED_CLASS_RATEUNIT_PKTS, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  store i32 1, i32* %17, align 4
  %214 = load i32, i32* @FW_SCHED_PARAMS_UNIT_PKTRATE, align 4
  store i32 %214, i32* %12, align 4
  br label %217

215:                                              ; preds = %207
  %216 = load i32, i32* @EINVAL, align 4
  store i32 %216, i32* %4, align 4
  br label %500

217:                                              ; preds = %213
  br label %218

218:                                              ; preds = %217, %206
  br label %242

219:                                              ; preds = %129
  %220 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %221 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @SCHED_CLASS_LEVEL_CL_WRR, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @MPASS(i32 %225)
  %227 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %228 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %227, i32 0, i32 7
  %229 = load i64, i64* %228, align 8
  %230 = icmp ult i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %219
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* %4, align 4
  br label %500

233:                                              ; preds = %219
  %234 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %235 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %234, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @in_range(i64 %236, i32 1, i32 99)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %233
  %240 = load i32, i32* @ERANGE, align 4
  store i32 %240, i32* %4, align 4
  br label %500

241:                                              ; preds = %233
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %242

242:                                              ; preds = %241, %218
  %243 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %244 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @SCHED_CLASS_LEVEL_CL_RL, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %250 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @SCHED_CLASS_LEVEL_CL_WRR, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %276

254:                                              ; preds = %248, %242
  %255 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %256 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %255, i32 0, i32 8
  %257 = load i64, i64* %256, align 8
  %258 = icmp ult i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = load i32, i32* @EINVAL, align 4
  store i32 %260, i32* %4, align 4
  br label %500

261:                                              ; preds = %254
  %262 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %263 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %262, i32 0, i32 8
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.adapter*, %struct.adapter** %5, align 8
  %266 = getelementptr inbounds %struct.adapter, %struct.adapter* %265, i32 0, i32 2
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %269, 1
  %271 = call i32 @in_range(i64 %264, i32 0, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %261
  %274 = load i32, i32* @ERANGE, align 4
  store i32 %274, i32* %4, align 4
  br label %500

275:                                              ; preds = %261
  br label %276

276:                                              ; preds = %275, %248
  %277 = load i32, i32* %17, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %303

279:                                              ; preds = %276
  %280 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %281 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %280, i32 0, i32 9
  %282 = load i64, i64* %281, align 8
  %283 = icmp ult i64 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = load i32, i32* @EINVAL, align 4
  store i32 %285, i32* %4, align 4
  br label %500

286:                                              ; preds = %279
  %287 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %288 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %287, i32 0, i32 9
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.port_info*, %struct.port_info** %14, align 8
  %291 = getelementptr inbounds %struct.port_info, %struct.port_info* %290, i32 0, i32 2
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i64 0
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @in_range(i64 %289, i32 64, i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %286
  %301 = load i32, i32* @ERANGE, align 4
  store i32 %301, i32* %4, align 4
  br label %500

302:                                              ; preds = %286
  br label %303

303:                                              ; preds = %302, %276
  %304 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %305 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @SCHED_CLASS_LEVEL_CL_RL, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %376

309:                                              ; preds = %303
  %310 = load %struct.port_info*, %struct.port_info** %14, align 8
  %311 = getelementptr inbounds %struct.port_info, %struct.port_info* %310, i32 0, i32 1
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %313, align 8
  %315 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %316 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %315, i32 0, i32 8
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %314, i64 %317
  store %struct.tx_cl_rl_params* %318, %struct.tx_cl_rl_params** %15, align 8
  %319 = load %struct.adapter*, %struct.adapter** %5, align 8
  %320 = getelementptr inbounds %struct.adapter, %struct.adapter* %319, i32 0, i32 1
  %321 = call i32 @mtx_lock(i32* %320)
  %322 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %323 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp sgt i64 %324, 0
  br i1 %325, label %335, label %326

326:                                              ; preds = %309
  %327 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %328 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @CLRL_SYNC, align 4
  %331 = load i32, i32* @CLRL_ASYNC, align 4
  %332 = or i32 %330, %331
  %333 = and i32 %329, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %326, %309
  %336 = load i32, i32* @EBUSY, align 4
  store i32 %336, i32* %8, align 4
  br label %367

337:                                              ; preds = %326
  %338 = load i32, i32* @CLRL_SYNC, align 4
  %339 = load i32, i32* @CLRL_USER, align 4
  %340 = or i32 %338, %339
  %341 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %342 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  %345 = load i32, i32* %13, align 4
  %346 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %347 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %346, i32 0, i32 2
  store i32 %345, i32* %347, align 4
  %348 = load i32, i32* %12, align 4
  %349 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %350 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %349, i32 0, i32 3
  store i32 %348, i32* %350, align 8
  %351 = load i32, i32* %11, align 4
  %352 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %353 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %352, i32 0, i32 4
  store i32 %351, i32* %353, align 4
  %354 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %355 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %358 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %357, i32 0, i32 5
  store i64 %356, i64* %358, align 8
  %359 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %360 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %359, i32 0, i32 9
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %363 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %362, i32 0, i32 6
  store i64 %361, i64* %363, align 8
  store i32 0, i32* %8, align 4
  %364 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %365 = bitcast %struct.tx_cl_rl_params* %16 to i8*
  %366 = bitcast %struct.tx_cl_rl_params* %364 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %365, i8* align 8 %366, i64 40, i1 false)
  br label %367

367:                                              ; preds = %337, %335
  %368 = load %struct.adapter*, %struct.adapter** %5, align 8
  %369 = getelementptr inbounds %struct.adapter, %struct.adapter* %368, i32 0, i32 1
  %370 = call i32 @mtx_unlock(i32* %369)
  %371 = load i32, i32* %8, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %367
  %374 = load i32, i32* %8, align 4
  store i32 %374, i32* %4, align 4
  br label %500

375:                                              ; preds = %367
  br label %376

376:                                              ; preds = %375, %303
  %377 = load %struct.adapter*, %struct.adapter** %5, align 8
  %378 = load i32, i32* %7, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %376
  %381 = load i32, i32* @SLEEP_OK, align 4
  %382 = load i32, i32* @INTR_OK, align 4
  %383 = or i32 %381, %382
  br label %386

384:                                              ; preds = %376
  %385 = load i32, i32* @HOLD_LOCK, align 4
  br label %386

386:                                              ; preds = %384, %380
  %387 = phi i32 [ %383, %380 ], [ %385, %384 ]
  %388 = call i32 @begin_synchronized_op(%struct.adapter* %377, i32* null, i32 %387, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %388, i32* %8, align 4
  %389 = load i32, i32* %8, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %409

391:                                              ; preds = %386
  %392 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %393 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @SCHED_CLASS_LEVEL_CL_RL, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %407

397:                                              ; preds = %391
  %398 = load %struct.adapter*, %struct.adapter** %5, align 8
  %399 = getelementptr inbounds %struct.adapter, %struct.adapter* %398, i32 0, i32 1
  %400 = call i32 @mtx_lock(i32* %399)
  %401 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %402 = bitcast %struct.tx_cl_rl_params* %401 to i8*
  %403 = bitcast %struct.tx_cl_rl_params* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %402, i8* align 8 %403, i64 40, i1 false)
  %404 = load %struct.adapter*, %struct.adapter** %5, align 8
  %405 = getelementptr inbounds %struct.adapter, %struct.adapter* %404, i32 0, i32 1
  %406 = call i32 @mtx_unlock(i32* %405)
  br label %407

407:                                              ; preds = %397, %391
  %408 = load i32, i32* %8, align 4
  store i32 %408, i32* %4, align 4
  br label %500

409:                                              ; preds = %386
  %410 = load %struct.adapter*, %struct.adapter** %5, align 8
  %411 = load i32, i32* @FW_SCHED_TYPE_PKTSCHED, align 4
  %412 = load i32, i32* %10, align 4
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* %12, align 4
  %415 = load i32, i32* %13, align 4
  %416 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %417 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %420 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %419, i32 0, i32 8
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %423 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %422, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %426 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %425, i32 0, i32 4
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %429 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %428, i32 0, i32 7
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %432 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %431, i32 0, i32 9
  %433 = load i64, i64* %432, align 8
  %434 = load i32, i32* %7, align 4
  %435 = call i32 @t4_sched_params(%struct.adapter* %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415, i64 %418, i64 %421, i64 %424, i64 %427, i64 %430, i64 %433, i32 0, i32 %434)
  %436 = sub nsw i32 0, %435
  store i32 %436, i32* %8, align 4
  %437 = load %struct.adapter*, %struct.adapter** %5, align 8
  %438 = load i32, i32* %7, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %409
  br label %443

441:                                              ; preds = %409
  %442 = load i32, i32* @LOCK_HELD, align 4
  br label %443

443:                                              ; preds = %441, %440
  %444 = phi i32 [ 0, %440 ], [ %442, %441 ]
  %445 = call i32 @end_synchronized_op(%struct.adapter* %437, i32 %444)
  %446 = load %struct.t4_sched_class_params*, %struct.t4_sched_class_params** %6, align 8
  %447 = getelementptr inbounds %struct.t4_sched_class_params, %struct.t4_sched_class_params* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @SCHED_CLASS_LEVEL_CL_RL, align 8
  %450 = icmp eq i64 %448, %449
  br i1 %450, label %451, label %498

451:                                              ; preds = %443
  %452 = load %struct.adapter*, %struct.adapter** %5, align 8
  %453 = getelementptr inbounds %struct.adapter, %struct.adapter* %452, i32 0, i32 1
  %454 = call i32 @mtx_lock(i32* %453)
  %455 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %456 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @CLRL_SYNC, align 4
  %459 = and i32 %457, %458
  %460 = call i32 @MPASS(i32 %459)
  %461 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %462 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @CLRL_USER, align 4
  %465 = and i32 %463, %464
  %466 = call i32 @MPASS(i32 %465)
  %467 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %468 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = icmp eq i64 %469, 0
  %471 = zext i1 %470 to i32
  %472 = call i32 @MPASS(i32 %471)
  %473 = load i32, i32* @CLRL_SYNC, align 4
  %474 = xor i32 %473, -1
  %475 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %476 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = and i32 %477, %474
  store i32 %478, i32* %476, align 8
  %479 = load i32, i32* %8, align 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %488

481:                                              ; preds = %451
  %482 = load i32, i32* @CLRL_ERR, align 4
  %483 = xor i32 %482, -1
  %484 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %485 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  %487 = and i32 %486, %483
  store i32 %487, i32* %485, align 8
  br label %494

488:                                              ; preds = %451
  %489 = load i32, i32* @CLRL_ERR, align 4
  %490 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %491 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 8
  %493 = or i32 %492, %489
  store i32 %493, i32* %491, align 8
  br label %494

494:                                              ; preds = %488, %481
  %495 = load %struct.adapter*, %struct.adapter** %5, align 8
  %496 = getelementptr inbounds %struct.adapter, %struct.adapter* %495, i32 0, i32 1
  %497 = call i32 @mtx_unlock(i32* %496)
  br label %498

498:                                              ; preds = %494, %443
  %499 = load i32, i32* %8, align 4
  store i32 %499, i32* %4, align 4
  br label %500

500:                                              ; preds = %498, %407, %373, %300, %284, %273, %259, %239, %231, %215, %203, %200, %176, %148, %109, %91, %77, %67, %41
  %501 = load i32, i32* %4, align 4
  ret i32 %501
}

declare dso_local i32 @in_range(i64, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @port_top_speed(%struct.port_info*) #1

declare dso_local i32 @mtx_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @t4_sched_params(%struct.adapter*, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
