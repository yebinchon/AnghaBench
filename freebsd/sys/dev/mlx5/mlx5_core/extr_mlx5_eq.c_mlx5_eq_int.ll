; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_mlx5_eq_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_mlx5_eq_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 (%struct.mlx5_core_dev*, i32, i64)*, i32 }
%struct.mlx5_eq = type { i32, i64, %struct.mlx5_core_dev* }
%struct.mlx5_eqe = type { i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, %struct.mlx5_eqe_vport_change, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.mlx5_eqe_vport_change = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"eqn %d, eqe type %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"event %s(%d) arrived on resource 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SRQ event %s(%d): srqn 0x%x\0A\00", align 1
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MLX5_CMD_MODE_EVENTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Port event with unrecognized subtype: port %d, sub_type %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"dcbx event with unrecognized subtype: port %d, sub_type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"CQ error on CQN 0x%x, syndrom 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"page request for func 0x%x, npages %d\0A\00", align 1
@MLX5_DEV_EVENT_VPORT_CHANGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Unhandled event 0x%x on EQ 0x%x\0A\00", align 1
@MLX5_NUM_SPARE_EQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_eq*)* @mlx5_eq_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_eq_int(%struct.mlx5_core_dev* %0, %struct.mlx5_eq* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eq*, align 8
  %5 = alloca %struct.mlx5_eqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_eqe_vport_change*, align 8
  %14 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_eq* %1, %struct.mlx5_eq** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %295, %2
  %16 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %17 = call %struct.mlx5_eqe* @next_eqe_sw(%struct.mlx5_eq* %16)
  store %struct.mlx5_eqe* %17, %struct.mlx5_eqe** %5, align 8
  %18 = icmp ne %struct.mlx5_eqe* %17, null
  br i1 %18, label %19, label %296

19:                                               ; preds = %15
  %20 = call i32 (...) @rmb()
  %21 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %21, i32 0, i32 2
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  %24 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @eqe_type_str(i32 %30)
  %32 = call i32 (%struct.mlx5_core_dev*, i8*, i32, i32, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %270 [
    i32 151, label %36
    i32 145, label %47
    i32 152, label %47
    i32 142, label %47
    i32 140, label %47
    i32 136, label %47
    i32 144, label %47
    i32 135, label %47
    i32 137, label %47
    i32 139, label %71
    i32 141, label %71
    i32 156, label %95
    i32 143, label %112
    i32 155, label %149
    i32 154, label %184
    i32 150, label %188
    i32 146, label %210
    i32 153, label %232
    i32 147, label %236
    i32 149, label %257
    i32 148, label %257
    i32 138, label %266
  ]

36:                                               ; preds = %19
  %37 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = and i32 %42, 16777215
  store i32 %43, i32* %8, align 4
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mlx5_cq_completion(%struct.mlx5_core_dev* %44, i32 %45)
  br label %279

47:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %48 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = and i32 %53, 16777215
  store i32 %54, i32* %9, align 4
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %56 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @eqe_type_str(i32 %58)
  %60 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (%struct.mlx5_core_dev*, i8*, i32, i32, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62, i32 %63)
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @mlx5_rsc_event(%struct.mlx5_core_dev* %65, i32 %66, i32 %69)
  br label %279

71:                                               ; preds = %19, %19
  %72 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %73 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @be32_to_cpu(i32 %76)
  %78 = and i32 %77, 16777215
  store i32 %78, i32* %9, align 4
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %80 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %81 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @eqe_type_str(i32 %82)
  %84 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (%struct.mlx5_core_dev*, i8*, i32, i32, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %86, i32 %87)
  %89 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %92 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @mlx5_srq_event(%struct.mlx5_core_dev* %89, i32 %90, i32 %93)
  br label %279

95:                                               ; preds = %19
  %96 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %103 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %104 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = load i32, i32* @MLX5_CMD_MODE_EVENTS, align 4
  %110 = call i32 @mlx5_cmd_comp_handler(%struct.mlx5_core_dev* %102, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %101, %95
  br label %279

112:                                              ; preds = %19
  %113 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %114 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = ashr i32 %117, 4
  %119 = and i32 %118, 15
  store i32 %119, i32* %10, align 4
  %120 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %121 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  switch i64 %122, label %141 [
    i64 132, label %123
    i64 134, label %123
    i64 129, label %123
    i64 128, label %123
    i64 131, label %123
    i64 133, label %123
    i64 130, label %123
  ]

123:                                              ; preds = %112, %112, %112, %112, %112, %112, %112
  %124 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %125 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %124, i32 0, i32 0
  %126 = load i32 (%struct.mlx5_core_dev*, i32, i64)*, i32 (%struct.mlx5_core_dev*, i32, i64)** %125, align 8
  %127 = icmp ne i32 (%struct.mlx5_core_dev*, i32, i64)* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %130 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %129, i32 0, i32 0
  %131 = load i32 (%struct.mlx5_core_dev*, i32, i64)*, i32 (%struct.mlx5_core_dev*, i32, i64)** %130, align 8
  %132 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %133 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %134 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @port_subtype_event(i64 %135)
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = call i32 %131(%struct.mlx5_core_dev* %132, i32 %136, i64 %138)
  br label %140

140:                                              ; preds = %128, %123
  br label %148

141:                                              ; preds = %112
  %142 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %145 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %142, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %143, i64 %146)
  br label %148

148:                                              ; preds = %141, %140
  br label %279

149:                                              ; preds = %19
  %150 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %151 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = ashr i32 %154, 4
  %156 = and i32 %155, 15
  store i32 %156, i32* %10, align 4
  %157 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %158 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  switch i64 %159, label %176 [
    i64 160, label %160
    i64 157, label %160
    i64 159, label %160
    i64 158, label %160
  ]

160:                                              ; preds = %149, %149, %149, %149
  %161 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %161, i32 0, i32 0
  %163 = load i32 (%struct.mlx5_core_dev*, i32, i64)*, i32 (%struct.mlx5_core_dev*, i32, i64)** %162, align 8
  %164 = icmp ne i32 (%struct.mlx5_core_dev*, i32, i64)* %163, null
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %167 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %166, i32 0, i32 0
  %168 = load i32 (%struct.mlx5_core_dev*, i32, i64)*, i32 (%struct.mlx5_core_dev*, i32, i64)** %167, align 8
  %169 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %170 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %171 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @dcbx_subevent(i64 %172)
  %174 = call i32 %168(%struct.mlx5_core_dev* %169, i32 %173, i64 0)
  br label %175

175:                                              ; preds = %165, %160
  br label %183

176:                                              ; preds = %149
  %177 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %180 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %177, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %178, i64 %181)
  br label %183

183:                                              ; preds = %176, %175
  br label %279

184:                                              ; preds = %19
  %185 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %186 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %187 = call i32 @mlx5_port_general_notification_event(%struct.mlx5_core_dev* %185, %struct.mlx5_eqe* %186)
  br label %279

188:                                              ; preds = %19
  %189 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %190 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @be32_to_cpu(i32 %193)
  %195 = and i32 %194, 16777215
  store i32 %195, i32* %8, align 4
  %196 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %199 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %197, i64 %202)
  %204 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %207 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @mlx5_cq_event(%struct.mlx5_core_dev* %204, i32 %205, i32 %208)
  br label %279

210:                                              ; preds = %19
  %211 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %212 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @be16_to_cpu(i32 %215)
  store i64 %216, i64* %11, align 8
  %217 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %218 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @be32_to_cpu(i32 %221)
  store i32 %222, i32* %12, align 4
  %223 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %224 = load i64, i64* %11, align 8
  %225 = trunc i64 %224 to i32
  %226 = load i32, i32* %12, align 4
  %227 = call i32 (%struct.mlx5_core_dev*, i8*, i32, i32, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %223, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %225, i32 %226)
  %228 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %229 = load i64, i64* %11, align 8
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @mlx5_core_req_pages_handler(%struct.mlx5_core_dev* %228, i64 %229, i32 %230)
  br label %279

232:                                              ; preds = %19
  %233 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %234 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %235 = call i32 @mlx5_port_module_event(%struct.mlx5_core_dev* %233, %struct.mlx5_eqe* %234)
  br label %279

236:                                              ; preds = %19
  %237 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %238 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  store %struct.mlx5_eqe_vport_change* %239, %struct.mlx5_eqe_vport_change** %13, align 8
  %240 = load %struct.mlx5_eqe_vport_change*, %struct.mlx5_eqe_vport_change** %13, align 8
  %241 = getelementptr inbounds %struct.mlx5_eqe_vport_change, %struct.mlx5_eqe_vport_change* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @be16_to_cpu(i32 %242)
  store i64 %243, i64* %14, align 8
  %244 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %245 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %244, i32 0, i32 0
  %246 = load i32 (%struct.mlx5_core_dev*, i32, i64)*, i32 (%struct.mlx5_core_dev*, i32, i64)** %245, align 8
  %247 = icmp ne i32 (%struct.mlx5_core_dev*, i32, i64)* %246, null
  br i1 %247, label %248, label %256

248:                                              ; preds = %236
  %249 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %250 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %249, i32 0, i32 0
  %251 = load i32 (%struct.mlx5_core_dev*, i32, i64)*, i32 (%struct.mlx5_core_dev*, i32, i64)** %250, align 8
  %252 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %253 = load i32, i32* @MLX5_DEV_EVENT_VPORT_CHANGE, align 4
  %254 = load i64, i64* %14, align 8
  %255 = call i32 %251(%struct.mlx5_core_dev* %252, i32 %253, i64 %254)
  br label %256

256:                                              ; preds = %248, %236
  br label %279

257:                                              ; preds = %19, %19
  %258 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %259 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %260 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %263 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  %265 = call i32 @mlx5_fpga_event(%struct.mlx5_core_dev* %258, i32 %261, i32* %264)
  br label %279

266:                                              ; preds = %19
  %267 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %268 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %269 = call i32 @mlx5_temp_warning_event(%struct.mlx5_core_dev* %267, %struct.mlx5_eqe* %268)
  br label %279

270:                                              ; preds = %19
  %271 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %272 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %273 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %276 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %271, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %274, i64 %277)
  br label %279

279:                                              ; preds = %270, %266, %257, %256, %232, %210, %188, %184, %183, %148, %111, %71, %47, %36
  %280 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %281 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 8
  store i32 1, i32* %6, align 4
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @MLX5_NUM_SPARE_EQE, align 4
  %288 = icmp sge i32 %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i64 @unlikely(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %279
  %293 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %294 = call i32 @eq_update_ci(%struct.mlx5_eq* %293, i32 0)
  store i32 0, i32* %7, align 4
  br label %295

295:                                              ; preds = %292, %279
  br label %15

296:                                              ; preds = %15
  %297 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %298 = call i32 @eq_update_ci(%struct.mlx5_eq* %297, i32 1)
  %299 = load i32, i32* %6, align 4
  ret i32 %299
}

declare dso_local %struct.mlx5_eqe* @next_eqe_sw(%struct.mlx5_eq*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32, ...) #1

declare dso_local i32 @eqe_type_str(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx5_cq_completion(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_rsc_event(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_srq_event(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_comp_handler(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @port_subtype_event(i64) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i64) #1

declare dso_local i32 @dcbx_subevent(i64) #1

declare dso_local i32 @mlx5_port_general_notification_event(%struct.mlx5_core_dev*, %struct.mlx5_eqe*) #1

declare dso_local i32 @mlx5_cq_event(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx5_core_req_pages_handler(%struct.mlx5_core_dev*, i64, i32) #1

declare dso_local i32 @mlx5_port_module_event(%struct.mlx5_core_dev*, %struct.mlx5_eqe*) #1

declare dso_local i32 @mlx5_fpga_event(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i32 @mlx5_temp_warning_event(%struct.mlx5_core_dev*, %struct.mlx5_eqe*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eq_update_ci(%struct.mlx5_eq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
