; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_ib_process_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_ib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.ib_grh = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ib_mad = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64, i32 }
%struct.ib_port_attr = type { i64 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [90 x i8] c"received MAD: slid:%d sqpn:%d dlid_bits:%d dqpn:%d wc_flags:0x%x, cls %x, mtd %x, atr %x\0A\00", align 1
@IB_WC_GRH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"sgid_hi:0x%016llx sgid_lo:0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dgid_hi:0x%016llx dgid_lo:0x%016llx\0A\00", align 1
@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i64 0, align 8
@IB_SMP_ATTR_SM_INFO = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@MLX4_IB_VENDOR_CLASS1 = common dso_local global i64 0, align 8
@MLX4_IB_VENDOR_CLASS2 = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_CONG_MGMT = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PORT_INFO = common dso_local global i64 0, align 8
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_BKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_BKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*)* @ib_process_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ib_port_attr, align 8
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  store i64 0, i64* %17, align 8
  %20 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %21 = icmp ne %struct.ib_wc* %20, null
  br i1 %21, label %22, label %96

22:                                               ; preds = %7
  %23 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %96

29:                                               ; preds = %22
  %30 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %31 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %34 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %38 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %41 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %46 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %49 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %53 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %57 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @be16_to_cpu(i64 %59)
  %61 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %36, i32 %39, i64 %44, i32 %47, i64 %51, i64 %55, i64 %60)
  %62 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %63 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IB_WC_GRH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %29
  %69 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %70 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @be64_to_cpu(i32 %73)
  %75 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %76 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @be64_to_cpu(i32 %79)
  %81 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %80)
  %82 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %83 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @be64_to_cpu(i32 %86)
  %88 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %89 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @be64_to_cpu(i32 %92)
  %94 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %87, i64 %93)
  br label %95

95:                                               ; preds = %68, %29
  br label %96

96:                                               ; preds = %95, %22, %7
  %97 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %98 = icmp ne %struct.ib_wc* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %101 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  br label %106

103:                                              ; preds = %96
  %104 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %105 = call i64 @be16_to_cpu(i64 %104)
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i64 [ %102, %99 ], [ %105, %103 ]
  store i64 %107, i64* %16, align 8
  %108 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %109 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @IB_MGMT_METHOD_TRAP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %106
  %115 = load i64, i64* %16, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %119 = call %struct.TYPE_16__* @to_mdev(%struct.ib_device* %118)
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %122 = call i32 @forward_trap(%struct.TYPE_16__* %119, i32 %120, %struct.ib_mad* %121)
  %123 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %124 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %8, align 4
  br label %343

126:                                              ; preds = %114, %106
  %127 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %128 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %135 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %173

140:                                              ; preds = %133, %126
  %141 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %142 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %140
  %148 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %149 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %156 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %162, i32* %8, align 4
  br label %343

163:                                              ; preds = %154, %147, %140
  %164 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %165 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @IB_SMP_ATTR_SM_INFO, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %171, i32* %8, align 4
  br label %343

172:                                              ; preds = %163
  br label %221

173:                                              ; preds = %133
  %174 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %175 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %201, label %180

180:                                              ; preds = %173
  %181 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %182 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @MLX4_IB_VENDOR_CLASS1, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %201, label %187

187:                                              ; preds = %180
  %188 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %189 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @MLX4_IB_VENDOR_CLASS2, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %201, label %194

194:                                              ; preds = %187
  %195 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %196 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @IB_MGMT_CLASS_CONG_MGMT, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %194, %187, %180, %173
  %202 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %203 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %201
  %209 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %210 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %216, i32* %8, align 4
  br label %343

217:                                              ; preds = %208, %201
  br label %220

218:                                              ; preds = %194
  %219 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %219, i32* %8, align 4
  br label %343

220:                                              ; preds = %217
  br label %221

221:                                              ; preds = %220, %172
  %222 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %223 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %235, label %228

228:                                              ; preds = %221
  %229 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %230 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %257

235:                                              ; preds = %228, %221
  %236 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %237 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %257

242:                                              ; preds = %235
  %243 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %244 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @IB_SMP_ATTR_PORT_INFO, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %242
  %250 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @ib_query_port(%struct.ib_device* %250, i32 %251, %struct.ib_port_attr* %19)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %19, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %17, align 8
  br label %257

257:                                              ; preds = %254, %249, %242, %235, %228
  %258 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %259 = call %struct.TYPE_16__* @to_mdev(%struct.ib_device* %258)
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = load i32, i32* @MLX4_MAD_IFC_IGNORE_MKEY, align 4
  br label %267

266:                                              ; preds = %257
  br label %267

267:                                              ; preds = %266, %264
  %268 = phi i32 [ %265, %264 ], [ 0, %266 ]
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* @IB_MAD_IGNORE_BKEY, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = load i32, i32* @MLX4_MAD_IFC_IGNORE_BKEY, align 4
  br label %276

275:                                              ; preds = %267
  br label %276

276:                                              ; preds = %275, %273
  %277 = phi i32 [ %274, %273 ], [ 0, %275 ]
  %278 = or i32 %268, %277
  %279 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* %11, align 4
  %282 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %283 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %284 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %285 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %286 = call i32 @mlx4_MAD_IFC(%struct.TYPE_16__* %259, i32 %280, i32 %281, %struct.ib_wc* %282, %struct.ib_grh* %283, %struct.ib_mad* %284, %struct.ib_mad* %285)
  store i32 %286, i32* %18, align 4
  %287 = load i32, i32* %18, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %276
  %290 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %290, i32* %8, align 4
  br label %343

291:                                              ; preds = %276
  %292 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %293 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %314, label %297

297:                                              ; preds = %291
  %298 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %299 = load i32, i32* %11, align 4
  %300 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %301 = load i64, i64* %17, align 8
  %302 = call i32 @smp_snoop(%struct.ib_device* %298, i32 %299, %struct.ib_mad* %300, i64 %301)
  %303 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %304 = call %struct.TYPE_16__* @to_mdev(%struct.ib_device* %303)
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @mlx4_is_slave(i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %297
  %310 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %311 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %312 = call i32 @node_desc_override(%struct.ib_device* %310, %struct.ib_mad* %311)
  br label %313

313:                                              ; preds = %309, %297
  br label %314

314:                                              ; preds = %313, %291
  %315 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %316 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %328

321:                                              ; preds = %314
  %322 = call i32 @cpu_to_be16(i32 32768)
  %323 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %324 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %322
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %321, %314
  %329 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %330 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %328
  %336 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %337 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %338 = or i32 %336, %337
  store i32 %338, i32* %8, align 4
  br label %343

339:                                              ; preds = %328
  %340 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %341 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %342 = or i32 %340, %341
  store i32 %342, i32* %8, align 4
  br label %343

343:                                              ; preds = %339, %335, %289, %218, %215, %170, %161, %117
  %344 = load i32, i32* %8, align 4
  ret i32 %344
}

declare dso_local i32 @pr_debug(i8*, i64, i64, ...) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @forward_trap(%struct.TYPE_16__*, i32, %struct.ib_mad*) #1

declare dso_local %struct.TYPE_16__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.TYPE_16__*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @smp_snoop(%struct.ib_device*, i32, %struct.ib_mad*, i64) #1

declare dso_local i32 @mlx4_is_slave(i32) #1

declare dso_local i32 @node_desc_override(%struct.ib_device*, %struct.ib_mad*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
