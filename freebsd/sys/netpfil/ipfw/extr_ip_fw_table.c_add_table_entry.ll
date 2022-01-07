; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_add_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_add_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32 }
%struct.tentry_info = type { i32 }
%struct.table_config = type { i32, i32, %struct.table_algo*, %struct.TYPE_4__, i32, i32 }
%struct.table_algo = type { i32 (i32, i32, %struct.tentry_info*, i8*, i32*)*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tableop_state = type { i64, i32, %struct.tentry_info*, %struct.table_algo*, i32, i32, %struct.table_config*, %struct.TYPE_3__, %struct.ip_fw_chain* }
%struct.TYPE_3__ = type { i32 }

@TA_BUF_SZ = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@rollback_add_entry = common dso_local global i32 0, align 4
@IPFW_CTF_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_table_entry(%struct.ip_fw_chain* %0, %struct.tid_info* %1, %struct.tentry_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca %struct.tid_info*, align 8
  %9 = alloca %struct.tentry_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.table_config*, align 8
  %13 = alloca %struct.table_algo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.tentry_info*, align 8
  %22 = alloca %struct.tableop_state, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store %struct.tid_info* %1, %struct.tid_info** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %28 = load i32, i32* @TA_BUF_SZ, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %23, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %24, align 8
  %32 = call i32 @memset(%struct.tableop_state* %22, i32 0, i32 64)
  store %struct.table_algo* null, %struct.table_algo** %13, align 8
  %33 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %34 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %33)
  br label %35

35:                                               ; preds = %147, %127, %116, %5
  %36 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %41 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %40)
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %43 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %44 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i8*, i8** %25, align 8
  %48 = call i32 @flush_batch_buffer(%struct.ip_fw_chain* %42, %struct.table_algo* %43, %struct.tentry_info* %44, i32 %45, i32 %46, i8* %47, i8* %31)
  %49 = call i32 @memset(%struct.tableop_state* %22, i32 0, i32 64)
  store %struct.table_algo* null, %struct.table_algo** %13, align 8
  %50 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %51 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %50)
  br label %52

52:                                               ; preds = %39, %35
  %53 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %54 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %55 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @OP_ADD, align 4
  %58 = call i32 @find_ref_table(%struct.ip_fw_chain* %53, %struct.tid_info* %54, %struct.tentry_info* %55, i32 %56, i32 %57, %struct.table_config** %12)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %63 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %62)
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %264

65:                                               ; preds = %52
  %66 = load %struct.table_config*, %struct.table_config** %12, align 8
  %67 = getelementptr inbounds %struct.table_config, %struct.table_config* %66, i32 0, i32 2
  %68 = load %struct.table_algo*, %struct.table_algo** %67, align 8
  store %struct.table_algo* %68, %struct.table_algo** %13, align 8
  %69 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %70 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 8
  store %struct.ip_fw_chain* %69, %struct.ip_fw_chain** %70, align 8
  %71 = load i32, i32* @rollback_add_entry, align 4
  %72 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.table_config*, %struct.table_config** %12, align 8
  %75 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 6
  store %struct.table_config* %74, %struct.table_config** %75, align 8
  %76 = load %struct.table_config*, %struct.table_config** %12, align 8
  %77 = getelementptr inbounds %struct.table_config, %struct.table_config* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 5
  store i32 %78, i32* %79, align 4
  %80 = load %struct.table_config*, %struct.table_config** %12, align 8
  %81 = getelementptr inbounds %struct.table_config, %struct.table_config* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  %84 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %85 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 3
  store %struct.table_algo* %84, %struct.table_algo** %85, align 8
  %86 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %87 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 2
  store %struct.tentry_info* %86, %struct.tentry_info** %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  store i32 0, i32* %18, align 4
  %90 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %91 = call i32 @add_toperation_state(%struct.ip_fw_chain* %90, %struct.tableop_state* %22)
  %92 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %93 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %92)
  store i8* %31, i8** %25, align 8
  %94 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %95 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %96 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @OP_ADD, align 4
  %99 = call i32 @prepare_batch_buffer(%struct.ip_fw_chain* %94, %struct.table_algo* %95, %struct.tentry_info* %96, i32 %97, i32 %98, i8** %25)
  store i32 %99, i32* %15, align 4
  %100 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %101 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %100)
  %102 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %103 = call i32 @del_toperation_state(%struct.ip_fw_chain* %102, %struct.tableop_state* %22)
  %104 = load %struct.table_config*, %struct.table_config** %12, align 8
  %105 = getelementptr inbounds %struct.table_config, %struct.table_config* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %65
  br label %253

112:                                              ; preds = %65
  %113 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %35

117:                                              ; preds = %112
  %118 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %119 = call i32 @ipfw_link_table_values(%struct.ip_fw_chain* %118, %struct.tableop_state* %22)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %253

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %35

128:                                              ; preds = %123
  %129 = load %struct.table_config*, %struct.table_config** %12, align 8
  %130 = getelementptr inbounds %struct.table_config, %struct.table_config* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %14, align 4
  %133 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %134 = load %struct.table_config*, %struct.table_config** %12, align 8
  %135 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %135, i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @check_table_space(%struct.ip_fw_chain* %133, %struct.tableop_state* %22, %struct.table_config* %134, i32 %137, i32 %138)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  br label %253

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %22, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %35

148:                                              ; preds = %143
  %149 = load %struct.table_config*, %struct.table_config** %12, align 8
  %150 = getelementptr inbounds %struct.table_config, %struct.table_config* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %14, align 4
  %153 = load %struct.table_config*, %struct.table_config** %12, align 8
  %154 = getelementptr inbounds %struct.table_config, %struct.table_config* %153, i32 0, i32 2
  %155 = load %struct.table_algo*, %struct.table_algo** %154, align 8
  store %struct.table_algo* %155, %struct.table_algo** %13, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %16, align 4
  %156 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %157 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %156)
  %158 = load i8*, i8** %25, align 8
  store i8* %158, i8** %26, align 8
  store i32 0, i32* %17, align 4
  br label %159

159:                                              ; preds = %224, %148
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %233

163:                                              ; preds = %159
  %164 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %164, i64 %166
  store %struct.tentry_info* %167, %struct.tentry_info** %21, align 8
  store i32 0, i32* %19, align 4
  %168 = load %struct.table_config*, %struct.table_config** %12, align 8
  %169 = load %struct.tentry_info*, %struct.tentry_info** %21, align 8
  %170 = call i32 @check_table_limit(%struct.table_config* %168, %struct.tentry_info* %169)
  store i32 %170, i32* %15, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %163
  %173 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %174 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %173, i32 0, i32 0
  %175 = load i32 (i32, i32, %struct.tentry_info*, i8*, i32*)*, i32 (i32, i32, %struct.tentry_info*, i8*, i32*)** %174, align 8
  %176 = load %struct.table_config*, %struct.table_config** %12, align 8
  %177 = getelementptr inbounds %struct.table_config, %struct.table_config* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %179, i32 %180)
  %182 = load %struct.tentry_info*, %struct.tentry_info** %21, align 8
  %183 = load i8*, i8** %26, align 8
  %184 = call i32 %175(i32 %178, i32 %181, %struct.tentry_info* %182, i8* %183, i32* %19)
  store i32 %184, i32* %15, align 4
  %185 = load %struct.tentry_info*, %struct.tentry_info** %21, align 8
  %186 = load i32, i32* @OP_ADD, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @store_tei_result(%struct.tentry_info* %185, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %172, %163
  %191 = load i32, i32* %15, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load i32, i32* %19, align 4
  %195 = load %struct.table_config*, %struct.table_config** %12, align 8
  %196 = getelementptr inbounds %struct.table_config, %struct.table_config* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %20, align 4
  br label %224

202:                                              ; preds = %190
  %203 = load i32, i32* %16, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* %15, align 4
  store i32 %206, i32* %16, align 4
  br label %207

207:                                              ; preds = %205, %202
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @IPFW_CTF_ATOMIC, align 4
  %210 = and i32 %208, %209
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %224

213:                                              ; preds = %207
  %214 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %215 = load %struct.table_config*, %struct.table_config** %12, align 8
  %216 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %216, i32 %217)
  %219 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %220 = load i8*, i8** %25, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %17, align 4
  %223 = call i32 @rollback_added_entries(%struct.ip_fw_chain* %214, %struct.table_config* %215, i32 %218, %struct.tentry_info* %219, i8* %220, i32 %221, i32 %222)
  store i32 1, i32* %18, align 4
  br label %233

224:                                              ; preds = %212, %193
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %17, align 4
  %227 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %228 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i8*, i8** %26, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %26, align 8
  br label %159

233:                                              ; preds = %213, %159
  %234 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %235 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %234)
  %236 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %237 = load %struct.table_config*, %struct.table_config** %12, align 8
  %238 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %18, align 4
  %241 = call i32 @ipfw_garbage_table_values(%struct.ip_fw_chain* %236, %struct.table_config* %237, %struct.tentry_info* %238, i32 %239, i32 %240)
  %242 = load i32, i32* %20, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %233
  %245 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %246 = load %struct.table_config*, %struct.table_config** %12, align 8
  %247 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %248 = load i32, i32* %14, align 4
  %249 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %247, i32 %248)
  %250 = call i32 @check_table_space(%struct.ip_fw_chain* %245, %struct.tableop_state* null, %struct.table_config* %246, i32 %249, i32 0)
  br label %251

251:                                              ; preds = %244, %233
  %252 = load i32, i32* %16, align 4
  store i32 %252, i32* %15, align 4
  br label %253

253:                                              ; preds = %251, %142, %122, %111
  %254 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %255 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %254)
  %256 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %257 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %258 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %18, align 4
  %261 = load i8*, i8** %25, align 8
  %262 = call i32 @flush_batch_buffer(%struct.ip_fw_chain* %256, %struct.table_algo* %257, %struct.tentry_info* %258, i32 %259, i32 %260, i8* %261, i8* %31)
  %263 = load i32, i32* %15, align 4
  store i32 %263, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %264

264:                                              ; preds = %253, %61
  %265 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %265)
  %266 = load i32, i32* %6, align 4
  ret i32 %266
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.tableop_state*, i32, i32) #2

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @flush_batch_buffer(%struct.ip_fw_chain*, %struct.table_algo*, %struct.tentry_info*, i32, i32, i8*, i8*) #2

declare dso_local i32 @find_ref_table(%struct.ip_fw_chain*, %struct.tid_info*, %struct.tentry_info*, i32, i32, %struct.table_config**) #2

declare dso_local i32 @add_toperation_state(%struct.ip_fw_chain*, %struct.tableop_state*) #2

declare dso_local i32 @prepare_batch_buffer(%struct.ip_fw_chain*, %struct.table_algo*, %struct.tentry_info*, i32, i32, i8**) #2

declare dso_local i32 @del_toperation_state(%struct.ip_fw_chain*, %struct.tableop_state*) #2

declare dso_local i32 @ipfw_link_table_values(%struct.ip_fw_chain*, %struct.tableop_state*) #2

declare dso_local i32 @check_table_space(%struct.ip_fw_chain*, %struct.tableop_state*, %struct.table_config*, i32, i32) #2

declare dso_local i32 @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #2

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @check_table_limit(%struct.table_config*, %struct.tentry_info*) #2

declare dso_local i32 @store_tei_result(%struct.tentry_info*, i32, i32, i32) #2

declare dso_local i32 @rollback_added_entries(%struct.ip_fw_chain*, %struct.table_config*, i32, %struct.tentry_info*, i8*, i32, i32) #2

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @ipfw_garbage_table_values(%struct.ip_fw_chain*, %struct.table_config*, %struct.tentry_info*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
