; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_initial_discover_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_initial_discover_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64, i64, %struct.TYPE_32__, %struct.TYPE_36__*, i32, %struct.TYPE_37__* }
%struct.TYPE_32__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_34__, %struct.TYPE_38__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_38__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_45__, i32, %struct.TYPE_42__, %struct.TYPE_40__, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32, i64, i64, i64 }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i64, i64 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"scif_sas_smp_remote_device_decode_initial_discover_response(0x%x, 0x%x) enter\0A\00", align 1
@SMP_RESULT_PHY_VACANT = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SMP_RESULT_FUNCTION_ACCEPTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Discover function result(0x%x)\0A\00", align 1
@SCI_FAILURE = common dso_local global i32 0, align 4
@SMP_NO_DEVICE_ATTACHED = common dso_local global i64 0, align 8
@SCI_INVALID_HANDLE = common dso_local global %struct.TYPE_36__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER = common dso_local global i32 0, align 4
@SMP_FUNCTION_REPORT_PHY_SATA = common dso_local global i32 0, align 4
@SCI_SATA_SPINUP_HOLD = common dso_local global i64 0, align 8
@SMP_FUNCTION_PHY_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_smp_remote_device_decode_initial_discover_response(%struct.TYPE_36__* %0, %struct.TYPE_33__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  %11 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  store %struct.TYPE_37__* %13, %struct.TYPE_37__** %6, align 8
  %14 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %15, i32 0, i32 0
  store %struct.TYPE_35__* %16, %struct.TYPE_35__** %9, align 8
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  store %struct.TYPE_34__* %18, %struct.TYPE_34__** %10, align 8
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %20 = call i32 @sci_base_object_get_logger(%struct.TYPE_36__* %19)
  %21 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %22 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %26 = ptrtoint %struct.TYPE_33__* %25 to i32
  %27 = call i32 @SCIF_LOG_TRACE(i32 %26)
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SMP_RESULT_PHY_VACANT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %34, i32* %3, align 4
  br label %295

35:                                               ; preds = %2
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SMP_RESULT_FUNCTION_ACCEPTED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %43 = call i32 @sci_base_object_get_logger(%struct.TYPE_36__* %42)
  %44 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %45 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @SCIF_LOG_ERROR(i32 %50)
  %52 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %52, i32* %3, align 4
  br label %295

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SMP_NO_DEVICE_ATTACHED, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %223

62:                                               ; preds = %54
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %62
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %70
  %79 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %223

94:                                               ; preds = %86, %78, %70, %62
  %95 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %7, align 4
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %99 = call i64 @scif_domain_get_device_by_sas_address(%struct.TYPE_37__* %98, i32* %7)
  %100 = inttoptr i64 %99 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %100, %struct.TYPE_36__** %8, align 8
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** @SCI_INVALID_HANDLE, align 8
  %103 = icmp ne %struct.TYPE_36__* %101, %102
  br i1 %103, label %104, label %169

104:                                              ; preds = %94
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TRUE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %113, align 8
  %115 = icmp ne %struct.TYPE_36__* %111, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  br label %125

121:                                              ; preds = %110, %104
  %122 = load i64, i64* @TRUE, align 8
  %123 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @scic_remote_device_get_port_width(i32 %131)
  %133 = icmp ne i64 %128, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %125
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @scif_sas_remote_device_update_port_width(%struct.TYPE_36__* %143, i64 %146)
  br label %148

148:                                              ; preds = %142, %134, %125
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %148
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %159, align 8
  %161 = icmp ne %struct.TYPE_36__* %157, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER, align 4
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %162, %156, %148
  br label %222

169:                                              ; preds = %94
  %170 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %176 = call i32 @scif_cb_domain_ea_device_added(i32 %172, %struct.TYPE_37__* %173, %struct.TYPE_36__* %174, %struct.TYPE_35__* %175)
  %177 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %169
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184, %169
  br label %221

193:                                              ; preds = %184
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %193
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %201, %193
  %210 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  %215 = load i32, i32* @SMP_FUNCTION_REPORT_PHY_SATA, align 4
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 8
  br label %220

220:                                              ; preds = %209, %201
  br label %221

221:                                              ; preds = %220, %192
  br label %222

222:                                              ; preds = %221, %168
  br label %291

223:                                              ; preds = %86, %54
  %224 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @SCI_SATA_SPINUP_HOLD, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %239, label %231

231:                                              ; preds = %223
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @SCI_SATA_SPINUP_HOLD, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %290

239:                                              ; preds = %231, %223
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %255, label %247

247:                                              ; preds = %239
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %290

255:                                              ; preds = %247, %239
  %256 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %257 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call %struct.TYPE_36__* @scif_sas_domain_get_device_by_containing_device(%struct.TYPE_37__* %256, %struct.TYPE_36__* %257, i32 %260)
  store %struct.TYPE_36__* %261, %struct.TYPE_36__** %8, align 8
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %263 = load %struct.TYPE_36__*, %struct.TYPE_36__** @SCI_INVALID_HANDLE, align 8
  %264 = icmp ne %struct.TYPE_36__* %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %255
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %270 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %271 = call i32 @scif_cb_domain_device_removed(i32 %268, %struct.TYPE_37__* %269, %struct.TYPE_36__* %270)
  br label %272

272:                                              ; preds = %265, %255
  %273 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %276, i32 0, i32 0
  store i32 1, i32* %277, align 8
  %278 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %283 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %284 = call i32 @scif_cb_domain_ea_device_added(i32 %280, %struct.TYPE_37__* %281, %struct.TYPE_36__* %282, %struct.TYPE_35__* %283)
  %285 = load i32, i32* @SMP_FUNCTION_PHY_CONTROL, align 4
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %288, i32 0, i32 0
  store i32 %285, i32* %289, align 8
  br label %290

290:                                              ; preds = %272, %247, %231
  br label %291

291:                                              ; preds = %290, %222
  %292 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %294 = call i32 @scif_sas_smp_remote_device_save_smp_phy_info(%struct.TYPE_36__* %292, %struct.TYPE_35__* %293)
  store i32 %294, i32* %3, align 4
  br label %295

295:                                              ; preds = %291, %41, %33
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_36__*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

declare dso_local i64 @scif_domain_get_device_by_sas_address(%struct.TYPE_37__*, i32*) #1

declare dso_local i64 @scic_remote_device_get_port_width(i32) #1

declare dso_local i32 @scif_sas_remote_device_update_port_width(%struct.TYPE_36__*, i64) #1

declare dso_local i32 @scif_cb_domain_ea_device_added(i32, %struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_36__* @scif_sas_domain_get_device_by_containing_device(%struct.TYPE_37__*, %struct.TYPE_36__*, i32) #1

declare dso_local i32 @scif_cb_domain_device_removed(i32, %struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_save_smp_phy_info(%struct.TYPE_36__*, %struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
