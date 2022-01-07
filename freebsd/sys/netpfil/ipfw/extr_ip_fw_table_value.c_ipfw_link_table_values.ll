; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_link_table_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_link_table_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { %struct.table_value* }
%struct.table_value = type { i32 }
%struct.tableop_state = type { i32, i64, %struct.TYPE_5__, %struct.table_config.0*, i32, %struct.tentry_info*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.table_config*, %struct.TYPE_5__*)* }
%struct.table_config = type opaque
%struct.table_config.0 = type { i32 }
%struct.tentry_info = type { i64, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.table_val_link = type { %struct.TYPE_6__, %struct.table_value* }
%struct.TYPE_6__ = type { i32, i8* }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"resize_storage() notify failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_link_table_values(%struct.ip_fw_chain* %0, %struct.tableop_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.tableop_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.namedobj_instance*, align 8
  %10 = alloca %struct.table_config.0*, align 8
  %11 = alloca %struct.tentry_info*, align 8
  %12 = alloca %struct.tentry_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.table_val_link*, align 8
  %17 = alloca %struct.table_value, align 4
  %18 = alloca %struct.table_value*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.tableop_state* %1, %struct.tableop_state** %5, align 8
  %19 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %20 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %19)
  %21 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %22 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %23 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 3
  %24 = load %struct.table_config.0*, %struct.table_config.0** %23, align 8
  %25 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %26 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @get_value_ptrs(%struct.ip_fw_chain* %21, %struct.table_config.0* %24, i32 %27, %struct.table_value** %18, %struct.namedobj_instance** %9)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %29 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %30 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %29, i32 0, i32 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %34 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %35 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %34, i32 0, i32 3
  %36 = load %struct.table_config.0*, %struct.table_config.0** %35, align 8
  store %struct.table_config.0* %36, %struct.table_config.0** %10, align 8
  %37 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %38 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %37, i32 0, i32 5
  %39 = load %struct.tentry_info*, %struct.tentry_info** %38, align 8
  store %struct.tentry_info* %39, %struct.tentry_info** %11, align 8
  %40 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %41 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %95, %2
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %98

47:                                               ; preds = %43
  %48 = load %struct.tentry_info*, %struct.tentry_info** %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %48, i64 %50
  store %struct.tentry_info* %51, %struct.tentry_info** %12, align 8
  %52 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %53 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %55 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %58 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @mask_table_value(i32 %56, %struct.table_value* %17, i32 %59)
  %61 = load %struct.namedobj_instance*, %struct.namedobj_instance** %9, align 8
  %62 = bitcast %struct.table_value* %17 to i8*
  %63 = call i64 @ipfw_objhash_lookup_name(%struct.namedobj_instance* %61, i32 0, i8* %62)
  %64 = inttoptr i64 %63 to %struct.table_val_link*
  store %struct.table_val_link* %64, %struct.table_val_link** %16, align 8
  %65 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %66 = icmp eq %struct.table_val_link* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %47
  br label %95

68:                                               ; preds = %47
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %74 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sle i32 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %95

79:                                               ; preds = %71, %68
  %80 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %81 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %80, i32 0, i32 1
  %82 = load %struct.table_value*, %struct.table_value** %81, align 8
  %83 = getelementptr inbounds %struct.table_value, %struct.table_value* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %87 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %92 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %79, %78, %67
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %43

98:                                               ; preds = %43
  %99 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %100 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %270

105:                                              ; preds = %98
  %106 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %107 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %108 = call i32 @add_toperation_state(%struct.ip_fw_chain* %106, %struct.tableop_state* %107)
  %109 = load %struct.table_config.0*, %struct.table_config.0** %10, align 8
  %110 = call i32 @tc_ref(%struct.table_config.0* %109)
  %111 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %112 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %111)
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %141, %105
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %113
  %118 = load %struct.tentry_info*, %struct.tentry_info** %11, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %118, i64 %120
  store %struct.tentry_info* %121, %struct.tentry_info** %12, align 8
  %122 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %123 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %141

127:                                              ; preds = %117
  %128 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %129 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %141

133:                                              ; preds = %127
  %134 = load i32, i32* @M_IPFW, align 4
  %135 = load i32, i32* @M_WAITOK, align 4
  %136 = load i32, i32* @M_ZERO, align 4
  %137 = or i32 %135, %136
  %138 = call i32* @malloc(i32 24, i32 %134, i32 %137)
  %139 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %140 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %139, i32 0, i32 1
  store i32* %138, i32** %140, align 8
  br label %141

141:                                              ; preds = %133, %132, %126
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %113

144:                                              ; preds = %113
  %145 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %146 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %145)
  %147 = load %struct.table_config.0*, %struct.table_config.0** %10, align 8
  %148 = call i32 @tc_unref(%struct.table_config.0* %147)
  %149 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %150 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %151 = call i32 @del_toperation_state(%struct.ip_fw_chain* %149, %struct.tableop_state* %150)
  %152 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %153 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %270

157:                                              ; preds = %144
  %158 = load %struct.table_value*, %struct.table_value** %18, align 8
  %159 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %160 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %159, i32 0, i32 0
  %161 = load %struct.table_value*, %struct.table_value** %160, align 8
  %162 = icmp eq %struct.table_value* %158, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @KASSERT(i32 %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %266, %157
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %269

169:                                              ; preds = %165
  %170 = load %struct.tentry_info*, %struct.tentry_info** %11, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %170, i64 %172
  store %struct.tentry_info* %173, %struct.tentry_info** %12, align 8
  %174 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %175 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %178 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @mask_table_value(i32 %176, %struct.table_value* %17, i32 %179)
  %181 = load %struct.namedobj_instance*, %struct.namedobj_instance** %9, align 8
  %182 = bitcast %struct.table_value* %17 to i8*
  %183 = call i64 @ipfw_objhash_lookup_name(%struct.namedobj_instance* %181, i32 0, i8* %182)
  %184 = inttoptr i64 %183 to %struct.table_val_link*
  store %struct.table_val_link* %184, %struct.table_val_link** %16, align 8
  %185 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %186 = icmp ne %struct.table_val_link* %185, null
  br i1 %186, label %187, label %201

187:                                              ; preds = %169
  %188 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %189 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %188, i32 0, i32 1
  %190 = load %struct.table_value*, %struct.table_value** %189, align 8
  %191 = getelementptr inbounds %struct.table_value, %struct.table_value* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %195 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %200 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  br label %266

201:                                              ; preds = %169
  %202 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %203 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %204 = load %struct.namedobj_instance*, %struct.namedobj_instance** %9, align 8
  %205 = call i32 @alloc_table_vidx(%struct.ip_fw_chain* %202, %struct.tableop_state* %203, %struct.namedobj_instance* %204, i64* %15)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %201
  %209 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %210 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32 (%struct.table_config*, %struct.TYPE_5__*)*, i32 (%struct.table_config*, %struct.TYPE_5__*)** %211, align 8
  %213 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %214 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %213, i32 0, i32 3
  %215 = load %struct.table_config.0*, %struct.table_config.0** %214, align 8
  %216 = bitcast %struct.table_config.0* %215 to %struct.table_config*
  %217 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %218 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %217, i32 0, i32 2
  %219 = call i32 %212(%struct.table_config* %216, %struct.TYPE_5__* %218)
  %220 = load i32, i32* %6, align 4
  store i32 %220, i32* %3, align 4
  br label %270

221:                                              ; preds = %201
  %222 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %223 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %270

227:                                              ; preds = %221
  %228 = load i64, i64* %15, align 8
  %229 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %230 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %232 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = bitcast i32* %233 to %struct.table_val_link*
  store %struct.table_val_link* %234, %struct.table_val_link** %16, align 8
  %235 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %236 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %235, i32 0, i32 1
  store i32* null, i32** %236, align 8
  %237 = load i64, i64* %15, align 8
  %238 = trunc i64 %237 to i32
  %239 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %240 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  %242 = load %struct.table_value*, %struct.table_value** %18, align 8
  %243 = load i64, i64* %15, align 8
  %244 = getelementptr inbounds %struct.table_value, %struct.table_value* %242, i64 %243
  %245 = bitcast %struct.table_value* %244 to i8*
  %246 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %247 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  store i8* %245, i8** %248, align 8
  %249 = load %struct.table_value*, %struct.table_value** %18, align 8
  %250 = load i64, i64* %15, align 8
  %251 = getelementptr inbounds %struct.table_value, %struct.table_value* %249, i64 %250
  %252 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %253 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %252, i32 0, i32 1
  store %struct.table_value* %251, %struct.table_value** %253, align 8
  %254 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %255 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %254, i32 0, i32 1
  %256 = load %struct.table_value*, %struct.table_value** %255, align 8
  %257 = call i32 @memcpy(%struct.table_value* %256, %struct.table_value* %17, i32 4)
  %258 = load %struct.table_value*, %struct.table_value** %18, align 8
  %259 = load i64, i64* %15, align 8
  %260 = getelementptr inbounds %struct.table_value, %struct.table_value* %258, i64 %259
  %261 = getelementptr inbounds %struct.table_value, %struct.table_value* %260, i32 0, i32 0
  store i32 1, i32* %261, align 4
  %262 = load %struct.namedobj_instance*, %struct.namedobj_instance** %9, align 8
  %263 = load %struct.table_val_link*, %struct.table_val_link** %16, align 8
  %264 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %263, i32 0, i32 0
  %265 = call i32 @ipfw_objhash_add(%struct.namedobj_instance* %262, %struct.TYPE_6__* %264)
  br label %266

266:                                              ; preds = %227, %187
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %165

269:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %269, %226, %208, %156, %104
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @get_value_ptrs(%struct.ip_fw_chain*, %struct.table_config.0*, i32, %struct.table_value**, %struct.namedobj_instance**) #1

declare dso_local i32 @mask_table_value(i32, %struct.table_value*, i32) #1

declare dso_local i64 @ipfw_objhash_lookup_name(%struct.namedobj_instance*, i32, i8*) #1

declare dso_local i32 @add_toperation_state(%struct.ip_fw_chain*, %struct.tableop_state*) #1

declare dso_local i32 @tc_ref(%struct.table_config.0*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @tc_unref(%struct.table_config.0*) #1

declare dso_local i32 @del_toperation_state(%struct.ip_fw_chain*, %struct.tableop_state*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @alloc_table_vidx(%struct.ip_fw_chain*, %struct.tableop_state*, %struct.namedobj_instance*, i64*) #1

declare dso_local i32 @memcpy(%struct.table_value*, %struct.table_value*, i32) #1

declare dso_local i32 @ipfw_objhash_add(%struct.namedobj_instance*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
