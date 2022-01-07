; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_continue_current_activity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_continue_current_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { %struct.TYPE_35__, %struct.TYPE_34__*, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64, i64, i64, %struct.TYPE_37__*, %struct.TYPE_37__*, i32, i32* }
%struct.TYPE_37__ = type { i64, i32, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_40__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER = common dso_local global i64 0, align 8
@SCI_FAILURE_RETRY_REQUIRED = common dso_local global i64 0, align 8
@SCIF_DOMAIN_DISCOVER_TIMEOUT = common dso_local global i32 0, align 4
@SCIF_SAS_IO_RETRY_LIMIT = common dso_local global i32 0, align 4
@SCI_FAILURE_ILLEGAL_ROUTING_ATTRIBUTE_CONFIGURATION = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET = common dso_local global i64 0, align 8
@scif_sas_smp_external_request_retry = common dso_local global i64 0, align 8
@SMP_REQUEST_RETRY_WAIT_DURATION = common dso_local global i32 0, align 4
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE = common dso_local global i64 0, align 8
@SCI_FAILURE_EXCEED_MAX_ROUTE_INDEX = common dso_local global i64 0, align 8
@SCIF_SAS_CONFIG_ROUTE_TABLE_ALL_PHYS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAN_ROUTE_TABLE = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_smp_remote_device_continue_current_activity(%struct.TYPE_39__* %0, %struct.TYPE_38__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_39__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %4, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %16 = bitcast %struct.TYPE_38__* %15 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %16, %struct.TYPE_40__** %7, align 8
  %17 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %31 = bitcast %struct.TYPE_38__* %30 to i32*
  %32 = load i64, i64* @SCI_SUCCESS, align 8
  %33 = call i32 @scif_sas_internal_io_request_complete(i64 %29, i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %24, %3
  %35 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %34
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @SCI_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %48 = call i32 @scif_sas_smp_remote_device_continue_discover(%struct.TYPE_39__* %47)
  br label %89

49:                                               ; preds = %42
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @SCI_FAILURE_RETRY_REQUIRED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i32, i32* @SCIF_DOMAIN_DISCOVER_TIMEOUT, align 4
  %55 = sdiv i32 %54, 2
  %56 = load i32, i32* @SCIF_SAS_IO_RETRY_LIMIT, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SCIF_SAS_IO_RETRY_LIMIT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @scif_sas_smp_remote_device_retry_internal_io(%struct.TYPE_39__* %62, i32 %63, i32 %64)
  br label %69

66:                                               ; preds = %53
  %67 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %68 = call i32 @scif_sas_smp_remote_device_fail_discover(%struct.TYPE_39__* %67)
  br label %69

69:                                               ; preds = %66, %61
  br label %88

70:                                               ; preds = %49
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @SCI_FAILURE_ILLEGAL_ROUTING_ATTRIBUTE_CONFIGURATION, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_34__*, %struct.TYPE_34__** %76, align 8
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %79 = call i32 @scif_sas_domain_remove_expander_device(%struct.TYPE_34__* %77, %struct.TYPE_39__* %78)
  %80 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %81, align 8
  %83 = call i32 @scif_sas_domain_continue_discover(%struct.TYPE_34__* %82)
  br label %87

84:                                               ; preds = %70
  %85 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %86 = call i32 @scif_sas_smp_remote_device_fail_discover(%struct.TYPE_39__* %85)
  br label %87

87:                                               ; preds = %84, %74
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %46
  br label %397

90:                                               ; preds = %34
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %164

98:                                               ; preds = %90
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @SCI_SUCCESS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %104 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %105 = call i32 @scif_sas_smp_remote_device_continue_target_reset(%struct.TYPE_39__* %103, %struct.TYPE_38__* %104)
  br label %163

106:                                              ; preds = %98
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @SCI_FAILURE_RETRY_REQUIRED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %158

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @SCIF_SAS_IO_RETRY_LIMIT, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %110
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %137

121:                                              ; preds = %114
  %122 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i32*
  %128 = load i64, i64* @scif_sas_smp_external_request_retry, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %131 = bitcast %struct.TYPE_38__* %130 to i8*
  %132 = call i32* @scif_cb_timer_create(i32* %127, i32 %129, i8* %131)
  %133 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 6
  store i32* %132, i32** %136, align 8
  br label %139

137:                                              ; preds = %114
  %138 = call i32 @ASSERT(i32 0)
  br label %139

139:                                              ; preds = %137, %121
  %140 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @SMP_REQUEST_RETRY_WAIT_DURATION, align 4
  %152 = call i32 @scif_cb_timer_start(i32 %145, i32* %150, i32 %151)
  br label %157

153:                                              ; preds = %110
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %155 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %156 = call i32 @scif_sas_smp_remote_device_fail_target_reset(%struct.TYPE_39__* %154, %struct.TYPE_38__* %155)
  br label %157

157:                                              ; preds = %153, %139
  br label %162

158:                                              ; preds = %106
  %159 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %160 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %161 = call i32 @scif_sas_smp_remote_device_fail_target_reset(%struct.TYPE_39__* %159, %struct.TYPE_38__* %160)
  br label %162

162:                                              ; preds = %158, %157
  br label %163

163:                                              ; preds = %162, %102
  br label %396

164:                                              ; preds = %90
  %165 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %219

172:                                              ; preds = %164
  %173 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_34__*, %struct.TYPE_34__** %174, align 8
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = call %struct.TYPE_39__* @scif_sas_domain_get_device_by_containing_device(%struct.TYPE_34__* %175, %struct.TYPE_39__* %176, i32 %181)
  store %struct.TYPE_39__* %182, %struct.TYPE_39__** %10, align 8
  %183 = load i64, i64* %6, align 8
  %184 = load i64, i64* @SCI_SUCCESS, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %172
  %187 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %188 = call i32 @scif_sas_smp_remote_device_sata_spinup_hold_release(%struct.TYPE_39__* %187)
  br label %218

189:                                              ; preds = %172
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* @SCI_FAILURE_RETRY_REQUIRED, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  %194 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @scic_remote_device_get_suggested_reset_timeout(i32 %196)
  %198 = load i32, i32* @SCIF_SAS_IO_RETRY_LIMIT, align 4
  %199 = sdiv i32 %197, %198
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @SCIF_SAS_IO_RETRY_LIMIT, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %193
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @scif_sas_smp_remote_device_retry_internal_io(%struct.TYPE_39__* %204, i32 %205, i32 %206)
  br label %212

208:                                              ; preds = %193
  %209 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %210 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %211 = call i32 @scif_sas_smp_remote_device_fail_target_spinup_hold_release(%struct.TYPE_39__* %209, %struct.TYPE_39__* %210)
  br label %212

212:                                              ; preds = %208, %203
  br label %217

213:                                              ; preds = %189
  %214 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %215 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %216 = call i32 @scif_sas_smp_remote_device_fail_target_spinup_hold_release(%struct.TYPE_39__* %214, %struct.TYPE_39__* %215)
  br label %217

217:                                              ; preds = %213, %212
  br label %218

218:                                              ; preds = %217, %186
  br label %395

219:                                              ; preds = %164
  %220 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %370

227:                                              ; preds = %219
  %228 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 2
  %234 = call i32* @sci_fast_list_get_next(%struct.TYPE_36__* %233)
  store i32* %234, i32** %12, align 8
  %235 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_37__*, %struct.TYPE_37__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  store i32* %242, i32** %13, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %14, align 8
  %243 = load i32*, i32** %12, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %276

245:                                              ; preds = %227
  %246 = load i64, i64* %6, align 8
  %247 = load i64, i64* @SCI_FAILURE_EXCEED_MAX_ROUTE_INDEX, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %276

249:                                              ; preds = %245
  %250 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %253, align 8
  %256 = load i32*, i32** %12, align 8
  %257 = call i64 @sci_fast_list_get_object(i32* %256)
  %258 = inttoptr i64 %257 to %struct.TYPE_37__*
  %259 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %261, i32 0, i32 4
  store %struct.TYPE_37__* %258, %struct.TYPE_37__** %262, align 8
  %263 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 3
  %272 = load %struct.TYPE_37__*, %struct.TYPE_37__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %272, i32 0, i32 0
  store i64 %267, i64* %273, align 8
  %274 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %275 = call i32 @scif_sas_smp_remote_device_configure_route_table(%struct.TYPE_39__* %274)
  br label %369

276:                                              ; preds = %245, %227
  %277 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %278 = call i64 @scif_sas_smp_remote_device_get_config_route_table_method(%struct.TYPE_39__* %277)
  %279 = load i64, i64* @SCIF_SAS_CONFIG_ROUTE_TABLE_ALL_PHYS, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %341

281:                                              ; preds = %276
  %282 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %284, i32 0, i32 3
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %285, align 8
  %287 = call %struct.TYPE_37__* @scif_sas_smp_phy_find_next_phy_in_wide_port(%struct.TYPE_37__* %286)
  store %struct.TYPE_37__* %287, %struct.TYPE_37__** %14, align 8
  %288 = icmp ne %struct.TYPE_37__* %287, null
  br i1 %288, label %289, label %341

289:                                              ; preds = %281
  %290 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %291 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 3
  store %struct.TYPE_37__* %290, %struct.TYPE_37__** %294, align 8
  %295 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_37__*, %struct.TYPE_37__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %304, i32 0, i32 5
  store i32 %301, i32* %305, align 8
  %306 = load i32*, i32** %13, align 8
  %307 = call %struct.TYPE_37__* @sci_fast_list_get_head(i32* %306)
  %308 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %310, i32 0, i32 4
  store %struct.TYPE_37__* %307, %struct.TYPE_37__** %311, align 8
  %312 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 3
  %316 = load %struct.TYPE_37__*, %struct.TYPE_37__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %289
  %321 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %323, i32 0, i32 3
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add nsw i64 %327, 1
  %329 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %331, i32 0, i32 1
  store i64 %328, i64* %332, align 8
  br label %338

333:                                              ; preds = %289
  %334 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %336, i32 0, i32 1
  store i64 0, i64* %337, align 8
  br label %338

338:                                              ; preds = %333, %320
  %339 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %340 = call i32 @scif_sas_smp_remote_device_configure_route_table(%struct.TYPE_39__* %339)
  br label %368

341:                                              ; preds = %281, %276
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @FALSE, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %357

349:                                              ; preds = %341
  %350 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAN_ROUTE_TABLE, align 8
  %351 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %353, i32 0, i32 0
  store i64 %350, i64* %354, align 8
  %355 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %356 = call i32 @scif_sas_smp_remote_device_clean_route_table(%struct.TYPE_39__* %355)
  br label %367

357:                                              ; preds = %341
  %358 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE, align 8
  %359 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %361, i32 0, i32 0
  store i64 %358, i64* %362, align 8
  %363 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_34__*, %struct.TYPE_34__** %364, align 8
  %366 = call i32 @scif_sas_domain_continue_discover(%struct.TYPE_34__* %365)
  br label %367

367:                                              ; preds = %357, %349
  br label %368

368:                                              ; preds = %367, %338
  br label %369

369:                                              ; preds = %368, %249
  br label %394

370:                                              ; preds = %219
  %371 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAN_ROUTE_TABLE, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %370
  %379 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %380 = call i32 @scif_sas_smp_remote_device_clean_route_table(%struct.TYPE_39__* %379)
  br label %393

381:                                              ; preds = %370
  %382 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %392

389:                                              ; preds = %381
  %390 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %391 = call i32 @scif_sas_smp_remote_device_continue_clear_affiliation(%struct.TYPE_39__* %390)
  br label %392

392:                                              ; preds = %389, %381
  br label %393

393:                                              ; preds = %392, %378
  br label %394

394:                                              ; preds = %393, %369
  br label %395

395:                                              ; preds = %394, %218
  br label %396

396:                                              ; preds = %395, %163
  br label %397

397:                                              ; preds = %396, %89
  ret void
}

declare dso_local i32 @scif_sas_internal_io_request_complete(i64, i32*, i64) #1

declare dso_local i32 @scif_sas_smp_remote_device_continue_discover(%struct.TYPE_39__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_retry_internal_io(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_fail_discover(%struct.TYPE_39__*) #1

declare dso_local i32 @scif_sas_domain_remove_expander_device(%struct.TYPE_34__*, %struct.TYPE_39__*) #1

declare dso_local i32 @scif_sas_domain_continue_discover(%struct.TYPE_34__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_continue_target_reset(%struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local i32* @scif_cb_timer_create(i32*, i32, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @scif_cb_timer_start(i32, i32*, i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_fail_target_reset(%struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_39__* @scif_sas_domain_get_device_by_containing_device(%struct.TYPE_34__*, %struct.TYPE_39__*, i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_sata_spinup_hold_release(%struct.TYPE_39__*) #1

declare dso_local i32 @scic_remote_device_get_suggested_reset_timeout(i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_fail_target_spinup_hold_release(%struct.TYPE_39__*, %struct.TYPE_39__*) #1

declare dso_local i32* @sci_fast_list_get_next(%struct.TYPE_36__*) #1

declare dso_local i64 @sci_fast_list_get_object(i32*) #1

declare dso_local i32 @scif_sas_smp_remote_device_configure_route_table(%struct.TYPE_39__*) #1

declare dso_local i64 @scif_sas_smp_remote_device_get_config_route_table_method(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_37__* @scif_sas_smp_phy_find_next_phy_in_wide_port(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @sci_fast_list_get_head(i32*) #1

declare dso_local i32 @scif_sas_smp_remote_device_clean_route_table(%struct.TYPE_39__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_continue_clear_affiliation(%struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
