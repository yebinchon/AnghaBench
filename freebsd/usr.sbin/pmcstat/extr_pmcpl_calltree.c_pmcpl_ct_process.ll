; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_process = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.pmcpl_ct_node = type { %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.pmcstat_pmcrecord = type { i32, i32 }
%struct.pmcstat_image = type { i64, i64 }
%struct.pmcstat_symbol = type { i64 }
%struct.pmcstat_pcmap = type { %struct.pmcstat_image*, i64 }

@PMC_CALLCHAIN_DEPTH_MAX = common dso_local global i32 0, align 4
@pmcstat_kernproc = common dso_local global %struct.pmcstat_process* null, align 8
@pmcstat_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@pmcpl_ct_callid = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@pmcpl_ct_root = common dso_local global %struct.pmcpl_ct_node* null, align 8
@args = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcpl_ct_process(%struct.pmcstat_process* %0, %struct.pmcstat_pmcrecord* %1, i64 %2, i64* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.pmcstat_process*, align 8
  %8 = alloca %struct.pmcstat_pmcrecord*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.pmcstat_image*, align 8
  %19 = alloca %struct.pmcstat_symbol*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.pmcstat_process*, align 8
  %23 = alloca %struct.pmcpl_ct_node*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.pmcstat_process* %0, %struct.pmcstat_process** %7, align 8
  store %struct.pmcstat_pmcrecord* %1, %struct.pmcstat_pmcrecord** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %26 = load i32, i32* @PMC_CALLCHAIN_DEPTH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %20, align 8
  %29 = alloca %struct.pmcstat_pcmap*, i64 %27, align 16
  store i64 %27, i64* %21, align 8
  %30 = load i32, i32* @PMC_CALLCHAIN_DEPTH_MAX, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca %struct.pmcpl_ct_node*, i64 %32, align 16
  store i64 %32, i64* %24, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %6
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @PMC_CALLCHAIN_DEPTH_MAX, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp sle i64 %38, %40
  br label %42

42:                                               ; preds = %37, %6
  %43 = phi i1 [ false, %6 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %8, align 8
  %47 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = load %struct.pmcstat_process*, %struct.pmcstat_process** @pmcstat_kernproc, align 8
  store %struct.pmcstat_process* %49, %struct.pmcstat_process** %22, align 8
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %109, %42
  %51 = load i32, i32* %14, align 4
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %112

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  br label %62

60:                                               ; preds = %55
  %61 = load %struct.pmcstat_process*, %struct.pmcstat_process** %22, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi %struct.pmcstat_process* [ %59, %58 ], [ %61, %60 ]
  %64 = load i64*, i64** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process* %63, i64 %68)
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 %71
  store %struct.pmcstat_pcmap* %69, %struct.pmcstat_pcmap** %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 %74
  %76 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %75, align 8
  %77 = icmp eq %struct.pmcstat_pcmap* %76, null
  br i1 %77, label %78, label %101

78:                                               ; preds = %62
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %78
  %82 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process* %82, i64 %87)
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 %90
  store %struct.pmcstat_pcmap* %88, %struct.pmcstat_pcmap** %91, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 %93
  %95 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %94, align 8
  %96 = icmp ne %struct.pmcstat_pcmap* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %81
  %98 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  store %struct.pmcstat_process* %98, %struct.pmcstat_process** %22, align 8
  br label %99

99:                                               ; preds = %97, %81
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100, %62
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 %103
  %105 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %104, align 8
  %106 = icmp eq %struct.pmcstat_pcmap* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %112

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %50

112:                                              ; preds = %107, %50
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %14, align 4
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pmcstat_stats, i32 0, i32 0), align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pmcstat_stats, i32 0, i32 0), align 4
  %119 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %8, align 8
  %120 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  store i32 1, i32* %25, align 4
  br label %275

123:                                              ; preds = %112
  %124 = call i32 @pmcpl_ct_samples_grow(%struct.TYPE_6__* @pmcpl_ct_callid)
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pmcpl_ct_callid, i32 0, i32 0), align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** @pmcpl_ct_root, align 8
  %132 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %33, i64 0
  store %struct.pmcpl_ct_node* %131, %struct.pmcpl_ct_node** %132, align 16
  store i32 1, i32* %13, align 4
  br label %133

133:                                              ; preds = %191, %123
  %134 = load i32, i32* %14, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %194

136:                                              ; preds = %133
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 %138
  %140 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %139, align 8
  %141 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %140, i32 0, i32 0
  %142 = load %struct.pmcstat_image*, %struct.pmcstat_image** %141, align 8
  store %struct.pmcstat_image* %142, %struct.pmcstat_image** %18, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 %144
  %146 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %145, align 8
  %147 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.pmcstat_image*, %struct.pmcstat_image** %18, align 8
  %150 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %148, %151
  %153 = load %struct.pmcstat_image*, %struct.pmcstat_image** %18, align 8
  %154 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  store i64 %156, i64* %17, align 8
  %157 = load i64*, i64** %10, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %17, align 8
  %163 = sub nsw i64 %161, %162
  store i64 %163, i64* %16, align 8
  %164 = load %struct.pmcstat_image*, %struct.pmcstat_image** %18, align 8
  %165 = load i64, i64* %16, align 8
  %166 = call %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image* %164, i64 %165)
  store %struct.pmcstat_symbol* %166, %struct.pmcstat_symbol** %19, align 8
  %167 = icmp ne %struct.pmcstat_symbol* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %136
  %169 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %19, align 8
  %170 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %16, align 8
  br label %175

172:                                              ; preds = %136
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pmcstat_stats, i32 0, i32 1), align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pmcstat_stats, i32 0, i32 1), align 4
  br label %175

175:                                              ; preds = %172, %168
  %176 = load %struct.pmcstat_image*, %struct.pmcstat_image** %18, align 8
  %177 = load i64, i64* %16, align 8
  %178 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %19, align 8
  %179 = call %struct.pmcpl_ct_node* @pmcpl_ct_node_hash_lookup(%struct.pmcstat_image* %176, i64 %177, %struct.pmcstat_symbol* %178, i32* null, i32* null)
  store %struct.pmcpl_ct_node* %179, %struct.pmcpl_ct_node** %23, align 8
  %180 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %23, align 8
  %181 = icmp eq %struct.pmcpl_ct_node* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pmcstat_stats, i32 0, i32 0), align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pmcstat_stats, i32 0, i32 0), align 4
  br label %191

185:                                              ; preds = %175
  %186 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %23, align 8
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %33, i64 %189
  store %struct.pmcpl_ct_node* %186, %struct.pmcpl_ct_node** %190, align 8
  br label %191

191:                                              ; preds = %185, %182
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %14, align 4
  br label %133

194:                                              ; preds = %133
  %195 = load i32, i32* %13, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 1, i32* %25, align 4
  br label %275

198:                                              ; preds = %194
  %199 = load i32, i32* %13, align 4
  store i32 %199, i32* %14, align 4
  %200 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %33, i64 0
  %201 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %200, align 16
  store %struct.pmcpl_ct_node* %201, %struct.pmcpl_ct_node** %23, align 8
  store i32 1, i32* %13, align 4
  br label %202

202:                                              ; preds = %218, %198
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %221

206:                                              ; preds = %202
  %207 = load i32, i32* %13, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %33, i64 %209
  %211 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %33, i64 %213
  %215 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %214, align 8
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @pmcpl_ct_node_update(%struct.pmcpl_ct_node* %211, %struct.pmcpl_ct_node* %215, i32 %216, i32 1, i32 1)
  br label %218

218:                                              ; preds = %206
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  br label %202

221:                                              ; preds = %202
  %222 = load i32, i32* %14, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %33, i64 %224
  %226 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %225, align 8
  %227 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %226, i32 0, i32 0
  %228 = call i32 @pmcpl_ct_samples_grow(%struct.TYPE_6__* %227)
  %229 = load i32, i32* %14, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %33, i64 %231
  %233 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %232, align 8
  %234 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @args, i32 0, i32 0), align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %274

244:                                              ; preds = %221
  %245 = load i32, i32* %14, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %33, i64 %247
  %249 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %248, align 8
  %250 = load i32, i32* %15, align 4
  %251 = load i64*, i64** %10, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 0
  %255 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %254, align 16
  %256 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 0
  %259 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %258, align 16
  %260 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %259, i32 0, i32 0
  %261 = load %struct.pmcstat_image*, %struct.pmcstat_image** %260, align 8
  %262 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = add nsw i64 %257, %263
  %265 = getelementptr inbounds %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %29, i64 0
  %266 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %265, align 16
  %267 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %266, i32 0, i32 0
  %268 = load %struct.pmcstat_image*, %struct.pmcstat_image** %267, align 8
  %269 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = sub nsw i64 %264, %270
  %272 = sub nsw i64 %253, %271
  %273 = call i32 @pmcpl_ct_instr_add(%struct.pmcpl_ct_node* %249, i32 %250, i64 %272, i32 1)
  br label %274

274:                                              ; preds = %244, %221
  store i32 0, i32* %25, align 4
  br label %275

275:                                              ; preds = %274, %197, %116
  %276 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %276)
  %277 = load i32, i32* %25, align 4
  switch i32 %277, label %279 [
    i32 0, label %278
    i32 1, label %278
  ]

278:                                              ; preds = %275, %275
  ret void

279:                                              ; preds = %275
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process*, i64) #2

declare dso_local i32 @pmcpl_ct_samples_grow(%struct.TYPE_6__*) #2

declare dso_local %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image*, i64) #2

declare dso_local %struct.pmcpl_ct_node* @pmcpl_ct_node_hash_lookup(%struct.pmcstat_image*, i64, %struct.pmcstat_symbol*, i32*, i32*) #2

declare dso_local i32 @pmcpl_ct_node_update(%struct.pmcpl_ct_node*, %struct.pmcpl_ct_node*, i32, i32, i32) #2

declare dso_local i32 @pmcpl_ct_instr_add(%struct.pmcpl_ct_node*, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
