; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_register_mad_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_register_mad_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, i64, i64, i64, i8*, i64, i64, %struct.ib_device*, i64 }
%struct.ib_device = type { i32 }
%struct.ib_mad_reg_req = type { i32, i64, %struct.ib_mad_agent, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_mad_reg_req*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ib_mad_port_private = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_class_table* }
%struct.ib_mad_mgmt_vendor_class_table = type { %struct.ib_mad_mgmt_vendor_class** }
%struct.ib_mad_mgmt_vendor_class = type { i32 }
%struct.ib_mad_mgmt_class_table = type { %struct.ib_mad_mgmt_method_table** }
%struct.ib_mad_mgmt_method_table = type { i32 }
%struct.ib_mad_agent_private = type { i32, i64, %struct.ib_mad_agent, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_mad_agent_private*, %struct.TYPE_4__*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ib_register_mad_agent: invalid QP Type %d\0A\00", align 1
@IB_MGMT_RMPP_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"ib_register_mad_agent: invalid RMPP Version %u\0A\00", align 1
@MAX_MGMT_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"ib_register_mad_agent: invalid Class Version %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ib_register_mad_agent: no recv_handler\0A\00", align 1
@MAX_MGMT_CLASS = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"ib_register_mad_agent: Invalid Mgmt Class 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"ib_register_mad_agent: Invalid Mgmt Class 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"ib_register_mad_agent: No OUI specified for class 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"ib_register_mad_agent: RMPP version for non-RMPP class 0x%x\0A\00", align 1
@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [55 x i8] c"ib_register_mad_agent: Invalid SM QP type: class 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"ib_register_mad_agent: Invalid GS QP type: class 0x%x\0A\00", align 1
@IB_MAD_USER_RMPP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"ib_register_mad_agent: Invalid port\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"ib_register_mad_agent: QP %d not supported\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@timeout_sends = common dso_local global i32 0, align 4
@local_completions = common dso_local global i32 0, align 4
@ib_mad_client_id = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mad_agent* @ib_register_mad_agent(%struct.ib_device* %0, i64 %1, i32 %2, %struct.ib_mad_reg_req* %3, i64 %4, i64 %5, i64 %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.ib_mad_agent*, align 8
  %11 = alloca %struct.ib_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_mad_reg_req*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ib_mad_port_private*, align 8
  %21 = alloca %struct.ib_mad_agent*, align 8
  %22 = alloca %struct.ib_mad_agent_private*, align 8
  %23 = alloca %struct.ib_mad_reg_req*, align 8
  %24 = alloca %struct.ib_mad_mgmt_class_table*, align 8
  %25 = alloca %struct.ib_mad_mgmt_vendor_class_table*, align 8
  %26 = alloca %struct.ib_mad_mgmt_vendor_class*, align 8
  %27 = alloca %struct.ib_mad_mgmt_method_table*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.ib_mad_reg_req* %3, %struct.ib_mad_reg_req** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.ib_mad_agent* @ERR_PTR(i32 %34)
  store %struct.ib_mad_agent* %35, %struct.ib_mad_agent** %21, align 8
  store %struct.ib_mad_reg_req* null, %struct.ib_mad_reg_req** %23, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @get_spl_qp_index(i32 %36)
  store i32 %37, i32* %29, align 4
  %38 = load i32, i32* %29, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %9
  %41 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %42 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %41, i32 0, i32 0
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_notice(i32* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %466

45:                                               ; preds = %9
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @IB_MGMT_RMPP_VERSION, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %54 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %53, i32 0, i32 0
  %55 = load i64, i64* %15, align 8
  %56 = call i32 (i32*, i8*, ...) @dev_notice(i32* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %466

57:                                               ; preds = %48, %45
  %58 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %59 = icmp ne %struct.ib_mad_reg_req* %58, null
  br i1 %59, label %60, label %194

60:                                               ; preds = %57
  %61 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %62 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MAX_MGMT_VERSION, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %68 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %67, i32 0, i32 0
  %69 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %70 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32*, i8*, ...) @dev_notice(i32* %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %466

73:                                               ; preds = %60
  %74 = load i64, i64* %17, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %78 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %77, i32 0, i32 0
  %79 = call i32 (i32*, i8*, ...) @dev_notice(i32* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %466

80:                                               ; preds = %73
  %81 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %82 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MAX_MGMT_CLASS, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %88 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %94 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %93, i32 0, i32 0
  %95 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %96 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32*, i8*, ...) @dev_notice(i32* %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  br label %466

99:                                               ; preds = %86
  br label %131

100:                                              ; preds = %80
  %101 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %102 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %107 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_notice(i32* %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %466

109:                                              ; preds = %100
  %110 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %111 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @is_vendor_class(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %117 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %116, i32 0, i32 16
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @is_vendor_oui(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %115
  %122 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %123 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %122, i32 0, i32 0
  %124 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %125 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i32*, i8*, ...) @dev_notice(i32* %123, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i64 %126)
  br label %466

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %109
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130, %99
  %132 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %133 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @ib_is_mad_class_rmpp(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %131
  %139 = load i64, i64* %15, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %143 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %142, i32 0, i32 0
  %144 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %145 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32*, i8*, ...) @dev_notice(i32* %143, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %146)
  br label %466

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %131
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @IB_QPT_SMI, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %149
  %154 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %155 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  %160 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %161 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %167 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %166, i32 0, i32 0
  %168 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %169 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32*, i8*, ...) @dev_notice(i32* %167, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i64 %170)
  br label %466

172:                                              ; preds = %159, %153
  br label %193

173:                                              ; preds = %149
  %174 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %175 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %181 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %179, %173
  %186 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %187 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %186, i32 0, i32 0
  %188 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %189 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (i32*, i8*, ...) @dev_notice(i32* %187, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i64 %190)
  br label %466

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192, %172
  br label %205

194:                                              ; preds = %57
  %195 = load i64, i64* %16, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %194
  br label %466

198:                                              ; preds = %194
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* @IB_MAD_USER_RMPP, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %466

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %193
  %206 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %207 = load i64, i64* %12, align 8
  %208 = call %struct.ib_mad_port_private* @ib_get_mad_port(%struct.ib_device* %206, i64 %207)
  store %struct.ib_mad_port_private* %208, %struct.ib_mad_port_private** %20, align 8
  %209 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %210 = icmp ne %struct.ib_mad_port_private* %209, null
  br i1 %210, label %218, label %211

211:                                              ; preds = %205
  %212 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %213 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %212, i32 0, i32 0
  %214 = call i32 (i32*, i8*, ...) @dev_notice(i32* %213, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %215 = load i32, i32* @ENODEV, align 4
  %216 = sub nsw i32 0, %215
  %217 = call %struct.ib_mad_agent* @ERR_PTR(i32 %216)
  store %struct.ib_mad_agent* %217, %struct.ib_mad_agent** %21, align 8
  br label %466

218:                                              ; preds = %205
  %219 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %220 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %219, i32 0, i32 3
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i32, i32* %29, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %218
  %229 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %230 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %229, i32 0, i32 0
  %231 = load i32, i32* %29, align 4
  %232 = call i32 (i32*, i8*, ...) @dev_notice(i32* %230, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @EPROTONOSUPPORT, align 4
  %234 = sub nsw i32 0, %233
  %235 = call %struct.ib_mad_agent* @ERR_PTR(i32 %234)
  store %struct.ib_mad_agent* %235, %struct.ib_mad_agent** %21, align 8
  br label %466

236:                                              ; preds = %218
  %237 = load i32, i32* @GFP_KERNEL, align 4
  %238 = call %struct.ib_mad_reg_req* @kzalloc(i32 160, i32 %237)
  %239 = bitcast %struct.ib_mad_reg_req* %238 to %struct.ib_mad_agent_private*
  store %struct.ib_mad_agent_private* %239, %struct.ib_mad_agent_private** %22, align 8
  %240 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %241 = icmp ne %struct.ib_mad_agent_private* %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = sub nsw i32 0, %243
  %245 = call %struct.ib_mad_agent* @ERR_PTR(i32 %244)
  store %struct.ib_mad_agent* %245, %struct.ib_mad_agent** %21, align 8
  br label %466

246:                                              ; preds = %236
  %247 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %248 = icmp ne %struct.ib_mad_reg_req* %247, null
  br i1 %248, label %249, label %260

249:                                              ; preds = %246
  %250 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = call %struct.ib_mad_reg_req* @kmemdup(%struct.ib_mad_reg_req* %250, i32 160, i32 %251)
  store %struct.ib_mad_reg_req* %252, %struct.ib_mad_reg_req** %23, align 8
  %253 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %23, align 8
  %254 = icmp ne %struct.ib_mad_reg_req* %253, null
  br i1 %254, label %259, label %255

255:                                              ; preds = %249
  %256 = load i32, i32* @ENOMEM, align 4
  %257 = sub nsw i32 0, %256
  %258 = call %struct.ib_mad_agent* @ERR_PTR(i32 %257)
  store %struct.ib_mad_agent* %258, %struct.ib_mad_agent** %21, align 8
  br label %462

259:                                              ; preds = %249
  br label %260

260:                                              ; preds = %259, %246
  %261 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %262 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %261, i32 0, i32 3
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = load i32, i32* %29, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 %265
  %267 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %268 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %267, i32 0, i32 15
  store %struct.TYPE_4__* %266, %struct.TYPE_4__** %268, align 8
  %269 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %23, align 8
  %270 = bitcast %struct.ib_mad_reg_req* %269 to %struct.ib_mad_agent_private*
  %271 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %272 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %271, i32 0, i32 14
  store %struct.ib_mad_agent_private* %270, %struct.ib_mad_agent_private** %272, align 8
  %273 = load i64, i64* %15, align 8
  %274 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %275 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %275, i32 0, i32 8
  store i64 %273, i64* %276, align 8
  %277 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %278 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %279 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %279, i32 0, i32 7
  store %struct.ib_device* %277, %struct.ib_device** %280, align 8
  %281 = load i64, i64* %17, align 8
  %282 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %283 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %283, i32 0, i32 6
  store i64 %281, i64* %284, align 8
  %285 = load i64, i64* %16, align 8
  %286 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %287 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %287, i32 0, i32 5
  store i64 %285, i64* %288, align 8
  %289 = load i8*, i8** %18, align 8
  %290 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %291 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %291, i32 0, i32 4
  store i8* %289, i8** %292, align 8
  %293 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %294 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %293, i32 0, i32 3
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = load i32, i32* %29, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %302 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %302, i32 0, i32 3
  store i64 %300, i64* %303, align 8
  %304 = load i64, i64* %12, align 8
  %305 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %306 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %306, i32 0, i32 2
  store i64 %304, i64* %307, align 8
  %308 = load i32, i32* %19, align 4
  %309 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %310 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %310, i32 0, i32 0
  store i32 %308, i32* %311, align 8
  %312 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %313 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %312, i32 0, i32 13
  %314 = call i32 @spin_lock_init(i32* %313)
  %315 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %316 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %315, i32 0, i32 12
  %317 = call i32 @INIT_LIST_HEAD(i32* %316)
  %318 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %319 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %318, i32 0, i32 11
  %320 = call i32 @INIT_LIST_HEAD(i32* %319)
  %321 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %322 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %321, i32 0, i32 10
  %323 = call i32 @INIT_LIST_HEAD(i32* %322)
  %324 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %325 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %324, i32 0, i32 9
  %326 = call i32 @INIT_LIST_HEAD(i32* %325)
  %327 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %328 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %327, i32 0, i32 8
  %329 = load i32, i32* @timeout_sends, align 4
  %330 = call i32 @INIT_DELAYED_WORK(i32* %328, i32 %329)
  %331 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %332 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %331, i32 0, i32 7
  %333 = call i32 @INIT_LIST_HEAD(i32* %332)
  %334 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %335 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %334, i32 0, i32 6
  %336 = load i32, i32* @local_completions, align 4
  %337 = call i32 @INIT_WORK(i32* %335, i32 %336)
  %338 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %339 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %338, i32 0, i32 5
  %340 = call i32 @atomic_set(i32* %339, i32 1)
  %341 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %342 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %341, i32 0, i32 4
  %343 = call i32 @init_completion(i32* %342)
  %344 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %345 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %344, i32 0, i32 0
  %346 = load i64, i64* %30, align 8
  %347 = call i32 @spin_lock_irqsave(i32* %345, i64 %346)
  %348 = load i64, i64* @ib_mad_client_id, align 8
  %349 = add nsw i64 %348, 1
  store i64 %349, i64* @ib_mad_client_id, align 8
  %350 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %351 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %351, i32 0, i32 1
  store i64 %349, i64* %352, align 8
  %353 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %354 = icmp ne %struct.ib_mad_reg_req* %353, null
  br i1 %354, label %355, label %443

355:                                              ; preds = %260
  %356 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %357 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = call i64 @convert_mgmt_class(i32 %359)
  store i64 %360, i64* %31, align 8
  %361 = load i64, i64* %31, align 8
  %362 = call i64 @is_vendor_class(i64 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %399, label %364

364:                                              ; preds = %355
  %365 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %366 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %365, i32 0, i32 2
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %366, align 8
  %368 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %369 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 1
  %374 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %373, align 8
  store %struct.ib_mad_mgmt_class_table* %374, %struct.ib_mad_mgmt_class_table** %24, align 8
  %375 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %24, align 8
  %376 = icmp ne %struct.ib_mad_mgmt_class_table* %375, null
  br i1 %376, label %377, label %393

377:                                              ; preds = %364
  %378 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %24, align 8
  %379 = getelementptr inbounds %struct.ib_mad_mgmt_class_table, %struct.ib_mad_mgmt_class_table* %378, i32 0, i32 0
  %380 = load %struct.ib_mad_mgmt_method_table**, %struct.ib_mad_mgmt_method_table*** %379, align 8
  %381 = load i64, i64* %31, align 8
  %382 = getelementptr inbounds %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %380, i64 %381
  %383 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %382, align 8
  store %struct.ib_mad_mgmt_method_table* %383, %struct.ib_mad_mgmt_method_table** %27, align 8
  %384 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %27, align 8
  %385 = icmp ne %struct.ib_mad_mgmt_method_table* %384, null
  br i1 %385, label %386, label %392

386:                                              ; preds = %377
  %387 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %388 = call i64 @method_in_use(%struct.ib_mad_mgmt_method_table** %27, %struct.ib_mad_reg_req* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %386
  br label %455

391:                                              ; preds = %386
  br label %392

392:                                              ; preds = %391, %377
  br label %393

393:                                              ; preds = %392, %364
  %394 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %395 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %396 = bitcast %struct.ib_mad_agent_private* %395 to %struct.ib_mad_reg_req*
  %397 = load i64, i64* %31, align 8
  %398 = call i32 @add_nonoui_reg_req(%struct.ib_mad_reg_req* %394, %struct.ib_mad_reg_req* %396, i64 %397)
  store i32 %398, i32* %28, align 4
  br label %436

399:                                              ; preds = %355
  %400 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %401 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %400, i32 0, i32 2
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** %401, align 8
  %403 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %404 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 0
  %409 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %408, align 8
  store %struct.ib_mad_mgmt_vendor_class_table* %409, %struct.ib_mad_mgmt_vendor_class_table** %25, align 8
  %410 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %25, align 8
  %411 = icmp ne %struct.ib_mad_mgmt_vendor_class_table* %410, null
  br i1 %411, label %412, label %431

412:                                              ; preds = %399
  %413 = load i64, i64* %31, align 8
  %414 = call i64 @vendor_class_index(i64 %413)
  store i64 %414, i64* %32, align 8
  %415 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %25, align 8
  %416 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class_table, %struct.ib_mad_mgmt_vendor_class_table* %415, i32 0, i32 0
  %417 = load %struct.ib_mad_mgmt_vendor_class**, %struct.ib_mad_mgmt_vendor_class*** %416, align 8
  %418 = load i64, i64* %32, align 8
  %419 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %417, i64 %418
  %420 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %419, align 8
  store %struct.ib_mad_mgmt_vendor_class* %420, %struct.ib_mad_mgmt_vendor_class** %26, align 8
  %421 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %26, align 8
  %422 = icmp ne %struct.ib_mad_mgmt_vendor_class* %421, null
  br i1 %422, label %423, label %430

423:                                              ; preds = %412
  %424 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %26, align 8
  %425 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %426 = call i64 @is_vendor_method_in_use(%struct.ib_mad_mgmt_vendor_class* %424, %struct.ib_mad_reg_req* %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %423
  br label %455

429:                                              ; preds = %423
  br label %430

430:                                              ; preds = %429, %412
  br label %431

431:                                              ; preds = %430, %399
  %432 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %14, align 8
  %433 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %434 = bitcast %struct.ib_mad_agent_private* %433 to %struct.ib_mad_reg_req*
  %435 = call i32 @add_oui_reg_req(%struct.ib_mad_reg_req* %432, %struct.ib_mad_reg_req* %434)
  store i32 %435, i32* %28, align 4
  br label %436

436:                                              ; preds = %431, %393
  %437 = load i32, i32* %28, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %436
  %440 = load i32, i32* %28, align 4
  %441 = call %struct.ib_mad_agent* @ERR_PTR(i32 %440)
  store %struct.ib_mad_agent* %441, %struct.ib_mad_agent** %21, align 8
  br label %455

442:                                              ; preds = %436
  br label %443

443:                                              ; preds = %442, %260
  %444 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %445 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %444, i32 0, i32 3
  %446 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %447 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %446, i32 0, i32 1
  %448 = call i32 @list_add_tail(i32* %445, i32* %447)
  %449 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %450 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %449, i32 0, i32 0
  %451 = load i64, i64* %30, align 8
  %452 = call i32 @spin_unlock_irqrestore(i32* %450, i64 %451)
  %453 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %454 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %453, i32 0, i32 2
  store %struct.ib_mad_agent* %454, %struct.ib_mad_agent** %10, align 8
  br label %468

455:                                              ; preds = %439, %428, %390
  %456 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %20, align 8
  %457 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %456, i32 0, i32 0
  %458 = load i64, i64* %30, align 8
  %459 = call i32 @spin_unlock_irqrestore(i32* %457, i64 %458)
  %460 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %23, align 8
  %461 = call i32 @kfree(%struct.ib_mad_reg_req* %460)
  br label %462

462:                                              ; preds = %455, %255
  %463 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %22, align 8
  %464 = bitcast %struct.ib_mad_agent_private* %463 to %struct.ib_mad_reg_req*
  %465 = call i32 @kfree(%struct.ib_mad_reg_req* %464)
  br label %466

466:                                              ; preds = %462, %242, %228, %211, %203, %197, %185, %165, %141, %121, %105, %92, %76, %66, %52, %40
  %467 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %21, align 8
  store %struct.ib_mad_agent* %467, %struct.ib_mad_agent** %10, align 8
  br label %468

468:                                              ; preds = %466, %443
  %469 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %10, align 8
  ret %struct.ib_mad_agent* %469
}

declare dso_local %struct.ib_mad_agent* @ERR_PTR(i32) #1

declare dso_local i32 @get_spl_qp_index(i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, ...) #1

declare dso_local i64 @is_vendor_class(i64) #1

declare dso_local i32 @is_vendor_oui(i32) #1

declare dso_local i32 @ib_is_mad_class_rmpp(i32) #1

declare dso_local %struct.ib_mad_port_private* @ib_get_mad_port(%struct.ib_device*, i64) #1

declare dso_local %struct.ib_mad_reg_req* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mad_reg_req* @kmemdup(%struct.ib_mad_reg_req*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @convert_mgmt_class(i32) #1

declare dso_local i64 @method_in_use(%struct.ib_mad_mgmt_method_table**, %struct.ib_mad_reg_req*) #1

declare dso_local i32 @add_nonoui_reg_req(%struct.ib_mad_reg_req*, %struct.ib_mad_reg_req*, i64) #1

declare dso_local i64 @vendor_class_index(i64) #1

declare dso_local i64 @is_vendor_method_in_use(%struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_reg_req*) #1

declare dso_local i32 @add_oui_reg_req(%struct.ib_mad_reg_req*, %struct.ib_mad_reg_req*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ib_mad_reg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
