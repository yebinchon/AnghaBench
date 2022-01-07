; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_find_hook_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_find_hook_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }
%struct.nodeinfo = type { i64 }
%struct.linkinfo = type { i64, i64* }
%struct.namelist = type { i64, %struct.linkinfo* }
%struct.ng_mesg = type { i64 }
%struct.hooklist = type { %struct.linkinfo*, %struct.nodeinfo }

@snmp_node = common dso_local global i64 0, align 8
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTNODES = common dso_local global i32 0, align 4
@ncmp = common dso_local global i32 0, align 4
@NGM_LISTHOOKS = common dso_local global i32 0, align 4
@hook_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, %struct.nodeinfo*, %struct.linkinfo*)* @find_hook_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_hook_next(%struct.asn_oid* %0, i64 %1, %struct.nodeinfo* %2, %struct.linkinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nodeinfo*, align 8
  %9 = alloca %struct.linkinfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.namelist*, align 8
  %12 = alloca %struct.ng_mesg*, align 8
  %13 = alloca %struct.hooklist*, align 8
  %14 = alloca %struct.ng_mesg*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.asn_oid, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nodeinfo* %2, %struct.nodeinfo** %8, align 8
  store %struct.linkinfo* %3, %struct.linkinfo** %9, align 8
  %19 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %20 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %21, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* @snmp_node, align 8
  %25 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %26 = load i32, i32* @NGM_LISTNODES, align 4
  %27 = call %struct.ng_mesg* @ng_dialog_id(i64 %24, i32 %25, i32 %26, i32* null, i32 0)
  store %struct.ng_mesg* %27, %struct.ng_mesg** %12, align 8
  %28 = icmp eq %struct.ng_mesg* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %290

30:                                               ; preds = %4
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %32 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.namelist*
  store %struct.namelist* %35, %struct.namelist** %11, align 8
  %36 = load %struct.namelist*, %struct.namelist** %11, align 8
  %37 = getelementptr inbounds %struct.namelist, %struct.namelist* %36, i32 0, i32 1
  %38 = load %struct.linkinfo*, %struct.linkinfo** %37, align 8
  %39 = load %struct.namelist*, %struct.namelist** %11, align 8
  %40 = getelementptr inbounds %struct.namelist, %struct.namelist* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @ncmp, align 4
  %43 = call i32 @qsort(%struct.linkinfo* %38, i64 %41, i32 16, i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  store i64 0, i64* %15, align 8
  br label %225

47:                                               ; preds = %30
  store i64 0, i64* %15, align 8
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.namelist*, %struct.namelist** %11, align 8
  %51 = getelementptr inbounds %struct.namelist, %struct.namelist* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load %struct.namelist*, %struct.namelist** %11, align 8
  %56 = getelementptr inbounds %struct.namelist, %struct.namelist* %55, i32 0, i32 1
  %57 = load %struct.linkinfo*, %struct.linkinfo** %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %57, i64 %58
  %60 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %63 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %61, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %74

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %15, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %15, align 8
  br label %48

74:                                               ; preds = %69, %48
  %75 = load i64, i64* %10, align 8
  %76 = icmp eq i64 %75, 1
  br i1 %76, label %98, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %15, align 8
  %79 = load %struct.namelist*, %struct.namelist** %11, align 8
  %80 = getelementptr inbounds %struct.namelist, %struct.namelist* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp uge i64 %78, %81
  br i1 %82, label %98, label %83

83:                                               ; preds = %77
  %84 = load %struct.namelist*, %struct.namelist** %11, align 8
  %85 = getelementptr inbounds %struct.namelist, %struct.namelist* %84, i32 0, i32 1
  %86 = load %struct.linkinfo*, %struct.linkinfo** %85, align 8
  %87 = load i64, i64* %15, align 8
  %88 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %86, i64 %87
  %89 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %92 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %90, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %83, %77, %74
  br label %225

99:                                               ; preds = %83
  %100 = load %struct.namelist*, %struct.namelist** %11, align 8
  %101 = getelementptr inbounds %struct.namelist, %struct.namelist* %100, i32 0, i32 1
  %102 = load %struct.linkinfo*, %struct.linkinfo** %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %102, i64 %103
  %105 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %108 = load i32, i32* @NGM_LISTHOOKS, align 4
  %109 = call %struct.ng_mesg* @ng_dialog_id(i64 %106, i32 %107, i32 %108, i32* null, i32 0)
  store %struct.ng_mesg* %109, %struct.ng_mesg** %14, align 8
  %110 = icmp eq %struct.ng_mesg* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %113 = call i32 @free(%struct.ng_mesg* %112)
  store i32 -1, i32* %5, align 4
  br label %290

114:                                              ; preds = %99
  %115 = load %struct.ng_mesg*, %struct.ng_mesg** %14, align 8
  %116 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = bitcast i8* %118 to %struct.hooklist*
  store %struct.hooklist* %119, %struct.hooklist** %13, align 8
  %120 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %121 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ugt i64 %123, 0
  br i1 %124, label %125, label %220

125:                                              ; preds = %114
  %126 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %127 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %126, i32 0, i32 0
  %128 = load %struct.linkinfo*, %struct.linkinfo** %127, align 8
  %129 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %130 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @hook_cmp, align 4
  %134 = call i32 @qsort(%struct.linkinfo* %128, i64 %132, i32 16, i32 %133)
  store i64 0, i64* %17, align 8
  br label %135

135:                                              ; preds = %191, %125
  %136 = load i64, i64* %17, align 8
  %137 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %138 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %136, %140
  br i1 %141, label %142, label %194

142:                                              ; preds = %135
  %143 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %144 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %143, i32 0, i32 0
  %145 = load %struct.linkinfo*, %struct.linkinfo** %144, align 8
  %146 = load i64, i64* %17, align 8
  %147 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %145, i64 %146
  %148 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = call i64 @strlen(i64* %149)
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %154, 1
  %156 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  store i64 %155, i64* %158, align 8
  store i64 0, i64* %18, align 8
  br label %159

159:                                              ; preds = %180, %142
  %160 = load i64, i64* %18, align 8
  %161 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %160, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %159
  %165 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %166 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %165, i32 0, i32 0
  %167 = load %struct.linkinfo*, %struct.linkinfo** %166, align 8
  %168 = load i64, i64* %17, align 8
  %169 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %167, i64 %168
  %170 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* %18, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %18, align 8
  %178 = add i64 %177, 1
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  store i64 %174, i64* %179, align 8
  br label %180

180:                                              ; preds = %164
  %181 = load i64, i64* %18, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %18, align 8
  br label %159

183:                                              ; preds = %159
  %184 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %185 = load i64, i64* %7, align 8
  %186 = add i64 %185, 1
  %187 = call i64 @index_compare(%struct.asn_oid* %184, i64 %186, %struct.asn_oid* %16)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %194

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %17, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %17, align 8
  br label %135

194:                                              ; preds = %189, %135
  %195 = load i64, i64* %17, align 8
  %196 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %197 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ult i64 %195, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %194
  %202 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %203 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %204 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %203, i32 0, i32 1
  %205 = bitcast %struct.nodeinfo* %202 to i8*
  %206 = bitcast %struct.nodeinfo* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 8, i1 false)
  %207 = load %struct.linkinfo*, %struct.linkinfo** %9, align 8
  %208 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %209 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %208, i32 0, i32 0
  %210 = load %struct.linkinfo*, %struct.linkinfo** %209, align 8
  %211 = load i64, i64* %17, align 8
  %212 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %210, i64 %211
  %213 = bitcast %struct.linkinfo* %207 to i8*
  %214 = bitcast %struct.linkinfo* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 8 %214, i64 16, i1 false)
  %215 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %216 = call i32 @free(%struct.ng_mesg* %215)
  %217 = load %struct.ng_mesg*, %struct.ng_mesg** %14, align 8
  %218 = call i32 @free(%struct.ng_mesg* %217)
  store i32 0, i32* %5, align 4
  br label %290

219:                                              ; preds = %194
  br label %220

220:                                              ; preds = %219, %114
  %221 = load %struct.ng_mesg*, %struct.ng_mesg** %14, align 8
  %222 = call i32 @free(%struct.ng_mesg* %221)
  %223 = load i64, i64* %15, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %15, align 8
  br label %225

225:                                              ; preds = %220, %98, %46
  br label %226

226:                                              ; preds = %282, %225
  %227 = load i64, i64* %15, align 8
  %228 = load %struct.namelist*, %struct.namelist** %11, align 8
  %229 = getelementptr inbounds %struct.namelist, %struct.namelist* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ult i64 %227, %230
  br i1 %231, label %232, label %287

232:                                              ; preds = %226
  %233 = load %struct.namelist*, %struct.namelist** %11, align 8
  %234 = getelementptr inbounds %struct.namelist, %struct.namelist* %233, i32 0, i32 1
  %235 = load %struct.linkinfo*, %struct.linkinfo** %234, align 8
  %236 = load i64, i64* %15, align 8
  %237 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %235, i64 %236
  %238 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %241 = load i32, i32* @NGM_LISTHOOKS, align 4
  %242 = call %struct.ng_mesg* @ng_dialog_id(i64 %239, i32 %240, i32 %241, i32* null, i32 0)
  store %struct.ng_mesg* %242, %struct.ng_mesg** %14, align 8
  %243 = icmp eq %struct.ng_mesg* %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %232
  br label %287

245:                                              ; preds = %232
  %246 = load %struct.ng_mesg*, %struct.ng_mesg** %14, align 8
  %247 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = inttoptr i64 %248 to i8*
  %250 = bitcast i8* %249 to %struct.hooklist*
  store %struct.hooklist* %250, %struct.hooklist** %13, align 8
  %251 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %252 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ugt i64 %254, 0
  br i1 %255, label %256, label %282

256:                                              ; preds = %245
  %257 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %258 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %257, i32 0, i32 0
  %259 = load %struct.linkinfo*, %struct.linkinfo** %258, align 8
  %260 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %261 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* @hook_cmp, align 4
  %265 = call i32 @qsort(%struct.linkinfo* %259, i64 %263, i32 16, i32 %264)
  %266 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %267 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %268 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %267, i32 0, i32 1
  %269 = bitcast %struct.nodeinfo* %266 to i8*
  %270 = bitcast %struct.nodeinfo* %268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %269, i8* align 8 %270, i64 8, i1 false)
  %271 = load %struct.linkinfo*, %struct.linkinfo** %9, align 8
  %272 = load %struct.hooklist*, %struct.hooklist** %13, align 8
  %273 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %272, i32 0, i32 0
  %274 = load %struct.linkinfo*, %struct.linkinfo** %273, align 8
  %275 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %274, i64 0
  %276 = bitcast %struct.linkinfo* %271 to i8*
  %277 = bitcast %struct.linkinfo* %275 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %276, i8* align 8 %277, i64 16, i1 false)
  %278 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %279 = call i32 @free(%struct.ng_mesg* %278)
  %280 = load %struct.ng_mesg*, %struct.ng_mesg** %14, align 8
  %281 = call i32 @free(%struct.ng_mesg* %280)
  store i32 0, i32* %5, align 4
  br label %290

282:                                              ; preds = %245
  %283 = load %struct.ng_mesg*, %struct.ng_mesg** %14, align 8
  %284 = call i32 @free(%struct.ng_mesg* %283)
  %285 = load i64, i64* %15, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %15, align 8
  br label %226

287:                                              ; preds = %244, %226
  %288 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %289 = call i32 @free(%struct.ng_mesg* %288)
  store i32 -1, i32* %5, align 4
  br label %290

290:                                              ; preds = %287, %256, %201, %111, %29
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local %struct.ng_mesg* @ng_dialog_id(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @qsort(%struct.linkinfo*, i64, i32, i32) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i64 @index_compare(%struct.asn_oid*, i64, %struct.asn_oid*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
