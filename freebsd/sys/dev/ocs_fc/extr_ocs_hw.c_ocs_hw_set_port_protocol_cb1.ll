; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_port_protocol_cb1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_port_protocol_cb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_30__, i32, i32 (i64, i32)*, i64 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@SLI4_RESOURCE_DESCRIPTOR_TYPE_PCIE = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate DMA buffer\0A\00", align 1
@SLI4_PROTOCOL_FC = common dso_local global i64 0, align 8
@SLI4_PROTOCOL_FCOE = common dso_local global i64 0, align 8
@SLI4_PROTOCOL_ISCSI = common dso_local global i64 0, align 8
@SLI4_PROTOCOL_DEFAULT = common dso_local global i64 0, align 8
@SLI4_RESOURCE_DESCRIPTOR_TYPE_ISAP = common dso_local global i32 0, align 4
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_set_port_protocol_cb2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Error posting COMMON_SET_PROFILE_CONFIG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_29__*, i64, %struct.TYPE_23__*, i8*)* @ocs_hw_set_port_protocol_cb1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_set_port_protocol_cb1(%struct.TYPE_29__* %0, i64 %1, %struct.TYPE_23__* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca %struct.TYPE_28__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i8* %3, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %10, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  store %struct.TYPE_30__* %29, %struct.TYPE_30__** %11, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %12, align 8
  %34 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %34, i64* %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %18, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  store i32 0, i32* %22, align 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %45, %struct.TYPE_24__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %68, %4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SLI4_RESOURCE_DESCRIPTOR_TYPE_PCIE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %22, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %22, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %61 = bitcast %struct.TYPE_24__* %60 to %struct.TYPE_23__*
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i64 %65
  %67 = bitcast %struct.TYPE_23__* %66 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %67, %struct.TYPE_24__** %14, align 8
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %76 = load i32, i32* @OCS_M_ZERO, align 4
  %77 = load i32, i32* @OCS_M_NOWAIT, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.TYPE_23__* @ocs_malloc(i32 %74, i32 %75, i32 %78)
  store %struct.TYPE_23__* %79, %struct.TYPE_23__** %21, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %81 = icmp eq %struct.TYPE_23__* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ocs_log_err(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %87 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %87, i64* %5, align 8
  br label %336

88:                                               ; preds = %71
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @OCS_M_NOWAIT, align 4
  %93 = call %struct.TYPE_23__* @ocs_malloc(i32 %91, i32 40, i32 %92)
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %17, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %95 = icmp eq %struct.TYPE_23__* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ocs_log_err(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %105 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %106 = call i32 @ocs_free(i32 %103, %struct.TYPE_23__* %104, i32 %105)
  %107 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %107, i64* %5, align 8
  br label %336

108:                                              ; preds = %88
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 3
  %111 = load i32 (i64, i32)*, i32 (i64, i32)** %110, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 3
  store i32 (i64, i32)* %111, i32 (i64, i32)** %113, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = load i32, i32* %22, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 16
  %127 = add i64 4, %126
  %128 = add i64 %127, 32
  %129 = trunc i64 %128 to i32
  %130 = call i64 @ocs_dma_alloc(i32 %121, %struct.TYPE_30__* %123, i32 %129, i32 4)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %108
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ocs_log_err(i32 %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %141 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %142 = call i32 @ocs_free(i32 %139, %struct.TYPE_23__* %140, i32 %141)
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %147 = call i32 @ocs_free(i32 %145, %struct.TYPE_23__* %146, i32 40)
  %148 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %148, i64* %5, align 8
  br label %336

149:                                              ; preds = %108
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %153 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load i32, i32* %22, align 4
  %157 = add nsw i32 %156, 1
  %158 = call i32 @sli_cmd_common_set_profile_config(i32* %151, %struct.TYPE_23__* %152, i32 %153, %struct.TYPE_30__* %155, i32 0, i32 %157, i32 1)
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.TYPE_26__*
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = bitcast i32* %164 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %165, %struct.TYPE_23__** %19, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %169, %struct.TYPE_24__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %170

170:                                              ; preds = %242, %149
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %245

174:                                              ; preds = %170
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SLI4_RESOURCE_DESCRIPTOR_TYPE_PCIE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %233

180:                                              ; preds = %174
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %182 = bitcast %struct.TYPE_24__* %181 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %182, %struct.TYPE_27__** %15, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %185, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %180
  %191 = load i32, i32* %18, align 4
  switch i32 %191, label %204 [
    i32 130, label %192
    i32 129, label %196
    i32 128, label %200
  ]

192:                                              ; preds = %190
  %193 = load i64, i64* @SLI4_PROTOCOL_FC, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 1
  store i64 %193, i64* %195, align 8
  br label %208

196:                                              ; preds = %190
  %197 = load i64, i64* @SLI4_PROTOCOL_FCOE, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  br label %208

200:                                              ; preds = %190
  %201 = load i64, i64* @SLI4_PROTOCOL_ISCSI, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  br label %208

204:                                              ; preds = %190
  %205 = load i64, i64* @SLI4_PROTOCOL_DEFAULT, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %204, %200, %196, %192
  br label %209

209:                                              ; preds = %208, %180
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @SLI4_PROTOCOL_FCOE, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i32, i32* %24, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %24, align 4
  br label %218

218:                                              ; preds = %215, %209
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @SLI4_PROTOCOL_ISCSI, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* %25, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %25, align 4
  br label %227

227:                                              ; preds = %224, %218
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %230 = call i32 @ocs_memcpy(%struct.TYPE_23__* %228, %struct.TYPE_27__* %229, i32 16)
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i64 16
  store %struct.TYPE_23__* %232, %struct.TYPE_23__** %19, align 8
  br label %233

233:                                              ; preds = %227, %174
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %235 = bitcast %struct.TYPE_24__* %234 to %struct.TYPE_23__*
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i64 %239
  %241 = bitcast %struct.TYPE_23__* %240 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %241, %struct.TYPE_24__** %14, align 8
  br label %242

242:                                              ; preds = %233
  %243 = load i32, i32* %16, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %16, align 4
  br label %170

245:                                              ; preds = %170
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %247 = bitcast %struct.TYPE_23__* %246 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %247, %struct.TYPE_28__** %20, align 8
  %248 = load i32, i32* @SLI4_RESOURCE_DESCRIPTOR_TYPE_ISAP, align 4
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 7
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 0
  store i32 32, i32* %252, align 4
  %253 = load i32, i32* %25, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %245
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 1
  store i32 1, i32* %257, align 4
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 2
  store i32 1, i32* %259, align 4
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 3
  store i32 1, i32* %261, align 4
  br label %262

262:                                              ; preds = %255, %245
  %263 = load i32, i32* %24, align 4
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 4
  store i32 1, i32* %267, align 4
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 5
  store i32 1, i32* %269, align 4
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 6
  store i32 1, i32* %271, align 4
  br label %272

272:                                              ; preds = %265, %262
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 1
  %278 = call i32 @ocs_dma_free(i32 %275, %struct.TYPE_30__* %277)
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %283 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %284 = call i32 @ocs_free(i32 %281, %struct.TYPE_23__* %282, i32 %283)
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %289 = call i32 @ocs_free(i32 %287, %struct.TYPE_23__* %288, i32 40)
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %292 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %293 = load i32, i32* @ocs_hw_set_port_protocol_cb2, align 4
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %295 = call i64 @ocs_hw_command(%struct.TYPE_29__* %290, %struct.TYPE_23__* %291, i32 %292, i32 %293, %struct.TYPE_23__* %294)
  store i64 %295, i64* %23, align 8
  %296 = load i64, i64* %23, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %334

298:                                              ; preds = %272
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @ocs_log_err(i32 %301, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 3
  %305 = load i32 (i64, i32)*, i32 (i64, i32)** %304, align 8
  %306 = icmp ne i32 (i64, i32)* %305, null
  br i1 %306, label %307, label %316

307:                                              ; preds = %298
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 3
  %310 = load i32 (i64, i32)*, i32 (i64, i32)** %309, align 8
  %311 = load i64, i64* %23, align 8
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call i32 %310(i64 %311, i32 %314)
  br label %316

316:                                              ; preds = %307, %298
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 1
  %322 = call i32 @ocs_dma_free(i32 %319, %struct.TYPE_30__* %321)
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %327 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %328 = call i32 @ocs_free(i32 %325, %struct.TYPE_23__* %326, i32 %327)
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %333 = call i32 @ocs_free(i32 %331, %struct.TYPE_23__* %332, i32 40)
  br label %334

334:                                              ; preds = %316, %272
  %335 = load i64, i64* %23, align 8
  store i64 %335, i64* %5, align 8
  br label %336

336:                                              ; preds = %334, %132, %96, %82
  %337 = load i64, i64* %5, align 8
  ret i64 %337
}

declare dso_local %struct.TYPE_23__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @ocs_dma_alloc(i32, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @sli_cmd_common_set_profile_config(i32*, %struct.TYPE_23__*, i32, %struct.TYPE_30__*, i32, i32, i32) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_23__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @ocs_dma_free(i32, %struct.TYPE_30__*) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_29__*, %struct.TYPE_23__*, i32, i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
