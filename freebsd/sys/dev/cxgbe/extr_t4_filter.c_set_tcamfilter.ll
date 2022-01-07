; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_tcamfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_tcamfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i32, i32, i32, i32, %struct.filter_entry*, %struct.filter_entry* }
%struct.filter_entry = type { i32, i32, i32, %struct.TYPE_12__, %struct.l2t_entry*, %struct.smt_entry*, i64 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.t4_filter = type { i64, %struct.TYPE_12__ }
%struct.l2t_entry = type { i32 }
%struct.smt_entry = type { i32 }
%struct.fw_filter2_wr = type { i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct.fw_filter2_wr*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wrq_cookie = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_FILTER2_WR = common dso_local global i32 0, align 4
@FW_FILTER_WR = common dso_local global i32 0, align 4
@FILTER_DROP = common dso_local global i64 0, align 8
@FILTER_SWITCH = common dso_local global i64 0, align 8
@VLAN_INSERT = common dso_local global i64 0, align 8
@VLAN_REWRITE = common dso_local global i64 0, align 8
@VLAN_REMOVE = common dso_local global i64 0, align 8
@ULP_MODE_TCPDDP = common dso_local global i32 0, align 4
@ULP_MODE_NONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_filter*, %struct.l2t_entry*, %struct.smt_entry*)* @set_tcamfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tcamfilter(%struct.adapter* %0, %struct.t4_filter* %1, %struct.l2t_entry* %2, %struct.smt_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.t4_filter*, align 8
  %8 = alloca %struct.l2t_entry*, align 8
  %9 = alloca %struct.smt_entry*, align 8
  %10 = alloca %struct.filter_entry*, align 8
  %11 = alloca %struct.fw_filter2_wr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wrq_cookie, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.t4_filter* %1, %struct.t4_filter** %7, align 8
  store %struct.l2t_entry* %2, %struct.l2t_entry** %8, align 8
  store %struct.smt_entry* %3, %struct.smt_entry** %9, align 8
  %22 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %23 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 22
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 4, i32 1
  store i32 %28, i32* %20, align 4
  %29 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %30 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 23
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @MPASS(i32 %35)
  %37 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %38 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %43 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %41, %46
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @MPASS(i32 %49)
  %51 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %52 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 10
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %57 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %55, %60
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @MPASS(i32 %63)
  %65 = load %struct.adapter*, %struct.adapter** %6, align 8
  %66 = call i64 @separate_hpfilter_region(%struct.adapter* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %4
  %69 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %70 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 12
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %68
  %75 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %76 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.adapter*, %struct.adapter** %6, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %77, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @MPASS(i32 %83)
  %85 = load %struct.adapter*, %struct.adapter** %6, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 9
  %88 = load %struct.filter_entry*, %struct.filter_entry** %87, align 8
  %89 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %90 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %88, i64 %91
  store %struct.filter_entry* %92, %struct.filter_entry** %10, align 8
  %93 = load %struct.adapter*, %struct.adapter** %6, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %99 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %97, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %19, align 4
  br label %132

103:                                              ; preds = %68, %4
  %104 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %105 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.adapter*, %struct.adapter** %6, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %106, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @MPASS(i32 %112)
  %114 = load %struct.adapter*, %struct.adapter** %6, align 8
  %115 = getelementptr inbounds %struct.adapter, %struct.adapter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 8
  %117 = load %struct.filter_entry*, %struct.filter_entry** %116, align 8
  %118 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %119 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %117, i64 %120
  store %struct.filter_entry* %121, %struct.filter_entry** %10, align 8
  %122 = load %struct.adapter*, %struct.adapter** %6, align 8
  %123 = getelementptr inbounds %struct.adapter, %struct.adapter* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %128 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %126, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %103, %74
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %133 = load %struct.adapter*, %struct.adapter** %6, align 8
  %134 = getelementptr inbounds %struct.adapter, %struct.adapter* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 4
  %136 = call i32 @mtx_lock(i32* %135)
  store i32 0, i32* %15, align 4
  br label %137

137:                                              ; preds = %167, %132
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %137
  %142 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %142, i64 %144
  %146 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %148, i64 %150
  %152 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %147, %153
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %17, align 4
  %157 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %157, i64 %159
  %161 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %18, align 4
  br label %167

167:                                              ; preds = %141
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %137

170:                                              ; preds = %137
  %171 = load i32, i32* %18, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* @EPERM, align 4
  store i32 %174, i32* %16, align 4
  br label %232

175:                                              ; preds = %170
  %176 = load i32, i32* %17, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* @EBUSY, align 4
  store i32 %179, i32* %16, align 4
  br label %231

180:                                              ; preds = %175
  %181 = load %struct.adapter*, %struct.adapter** %6, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = call i32 @howmany(i32 224, i32 16)
  store i32 %187, i32* %21, align 4
  br label %190

188:                                              ; preds = %180
  %189 = call i32 @howmany(i32 4, i32 16)
  store i32 %189, i32* %21, align 4
  br label %190

190:                                              ; preds = %188, %186
  %191 = load %struct.adapter*, %struct.adapter** %6, align 8
  %192 = getelementptr inbounds %struct.adapter, %struct.adapter* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %21, align 4
  %197 = call %struct.fw_filter2_wr* @start_wrq_wr(i32* %195, i32 %196, %struct.wrq_cookie* %14)
  store %struct.fw_filter2_wr* %197, %struct.fw_filter2_wr** %11, align 8
  %198 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %199 = icmp eq %struct.fw_filter2_wr* %198, null
  %200 = zext i1 %199 to i32
  %201 = call i64 @__predict_false(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %190
  %204 = load i32, i32* @ENOMEM, align 4
  store i32 %204, i32* %16, align 4
  br label %230

205:                                              ; preds = %190
  %206 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %207 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  %208 = load %struct.adapter*, %struct.adapter** %6, align 8
  %209 = call i64 @separate_hpfilter_region(%struct.adapter* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %205
  %212 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %213 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 12
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = load %struct.adapter*, %struct.adapter** %6, align 8
  %219 = getelementptr inbounds %struct.adapter, %struct.adapter* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  br label %229

223:                                              ; preds = %211, %205
  %224 = load %struct.adapter*, %struct.adapter** %6, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %217
  br label %230

230:                                              ; preds = %229, %203
  br label %231

231:                                              ; preds = %230, %178
  br label %232

232:                                              ; preds = %231, %173
  %233 = load %struct.adapter*, %struct.adapter** %6, align 8
  %234 = getelementptr inbounds %struct.adapter, %struct.adapter* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 4
  %236 = call i32 @mtx_unlock(i32* %235)
  %237 = load i32, i32* %16, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = load i32, i32* %16, align 4
  store i32 %240, i32* %5, align 4
  br label %835

241:                                              ; preds = %232
  %242 = load i32, i32* %19, align 4
  %243 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %244 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %246 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %245, i32 0, i32 3
  %247 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %248 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %247, i32 0, i32 1
  %249 = bitcast %struct.TYPE_12__* %246 to i8*
  %250 = bitcast %struct.TYPE_12__* %248 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %249, i8* align 8 %250, i64 256, i1 false)
  %251 = load %struct.l2t_entry*, %struct.l2t_entry** %8, align 8
  %252 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %253 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %252, i32 0, i32 4
  store %struct.l2t_entry* %251, %struct.l2t_entry** %253, align 8
  %254 = load %struct.smt_entry*, %struct.smt_entry** %9, align 8
  %255 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %256 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %255, i32 0, i32 5
  store %struct.smt_entry* %254, %struct.smt_entry** %256, align 8
  %257 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %258 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 11
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %241
  %264 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %265 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 11
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %263, %241
  store i32 1, i32* %12, align 4
  br label %272

271:                                              ; preds = %263
  store i32 0, i32* %12, align 4
  br label %272

272:                                              ; preds = %271, %270
  %273 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %274 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 10
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %286, label %279

279:                                              ; preds = %272
  %280 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %281 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 10
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %279, %272
  store i32 1, i32* %13, align 4
  br label %288

287:                                              ; preds = %279
  store i32 0, i32* %13, align 4
  br label %288

288:                                              ; preds = %287, %286
  %289 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %290 = call i32 @bzero(%struct.fw_filter2_wr* %289, i32 224)
  %291 = load %struct.adapter*, %struct.adapter** %6, align 8
  %292 = getelementptr inbounds %struct.adapter, %struct.adapter* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %288
  %297 = load i32, i32* @FW_FILTER2_WR, align 4
  %298 = call i32 @V_FW_WR_OP(i32 %297)
  %299 = call i8* @htobe32(i32 %298)
  %300 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %301 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %300, i32 0, i32 33
  store i8* %299, i8** %301, align 8
  br label %308

302:                                              ; preds = %288
  %303 = load i32, i32* @FW_FILTER_WR, align 4
  %304 = call i32 @V_FW_WR_OP(i32 %303)
  %305 = call i8* @htobe32(i32 %304)
  %306 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %307 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %306, i32 0, i32 33
  store i8* %305, i8** %307, align 8
  br label %308

308:                                              ; preds = %302, %296
  %309 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %310 = call i32 @FW_LEN16(%struct.fw_filter2_wr* byval(%struct.fw_filter2_wr) align 8 %309)
  %311 = call i8* @htobe32(i32 %310)
  %312 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %313 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %312, i32 0, i32 32
  store i8* %311, i8** %313, align 8
  %314 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %315 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @V_FW_FILTER_WR_TID(i32 %316)
  %318 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %319 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 22
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @V_FW_FILTER_WR_RQTYPE(i64 %321)
  %323 = or i32 %317, %322
  %324 = call i32 @V_FW_FILTER_WR_NOREPLY(i32 0)
  %325 = or i32 %323, %324
  %326 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %327 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 21
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @V_FW_FILTER_WR_IQ(i32 %329)
  %331 = or i32 %325, %330
  %332 = call i8* @htobe32(i32 %331)
  %333 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %334 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %333, i32 0, i32 31
  store i8* %332, i8** %334, align 8
  %335 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %336 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 20
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @V_FW_FILTER_WR_RPTTID(i32 %338)
  %340 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %341 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @FILTER_DROP, align 8
  %345 = icmp eq i64 %343, %344
  %346 = zext i1 %345 to i32
  %347 = call i32 @V_FW_FILTER_WR_DROP(i32 %346)
  %348 = or i32 %339, %347
  %349 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %350 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 19
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @V_FW_FILTER_WR_DIRSTEER(i32 %352)
  %354 = or i32 %348, %353
  %355 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %356 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 18
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @V_FW_FILTER_WR_MASKHASH(i32 %358)
  %360 = or i32 %354, %359
  %361 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %362 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 17
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @V_FW_FILTER_WR_DIRSTEERHASH(i32 %364)
  %366 = or i32 %360, %365
  %367 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %368 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @FILTER_SWITCH, align 8
  %372 = icmp eq i64 %370, %371
  %373 = zext i1 %372 to i32
  %374 = call i32 @V_FW_FILTER_WR_LPBK(i32 %373)
  %375 = or i32 %366, %374
  %376 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %377 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 16
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @V_FW_FILTER_WR_DMAC(i32 %379)
  %381 = or i32 %375, %380
  %382 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %383 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 15
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @V_FW_FILTER_WR_SMAC(i32 %385)
  %387 = or i32 %381, %386
  %388 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %389 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @VLAN_INSERT, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %401, label %394

394:                                              ; preds = %308
  %395 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %396 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @VLAN_REWRITE, align 8
  %400 = icmp eq i64 %398, %399
  br label %401

401:                                              ; preds = %394, %308
  %402 = phi i1 [ true, %308 ], [ %400, %394 ]
  %403 = zext i1 %402 to i32
  %404 = call i32 @V_FW_FILTER_WR_INSVLAN(i32 %403)
  %405 = or i32 %387, %404
  %406 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %407 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @VLAN_REMOVE, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %419, label %412

412:                                              ; preds = %401
  %413 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %414 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %413, i32 0, i32 3
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @VLAN_REWRITE, align 8
  %418 = icmp eq i64 %416, %417
  br label %419

419:                                              ; preds = %412, %401
  %420 = phi i1 [ true, %401 ], [ %418, %412 ]
  %421 = zext i1 %420 to i32
  %422 = call i32 @V_FW_FILTER_WR_RMVLAN(i32 %421)
  %423 = or i32 %405, %422
  %424 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %425 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %424, i32 0, i32 3
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 14
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @V_FW_FILTER_WR_HITCNTS(i32 %427)
  %429 = or i32 %423, %428
  %430 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %431 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %430, i32 0, i32 3
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 13
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @V_FW_FILTER_WR_TXCHAN(i32 %433)
  %435 = or i32 %429, %434
  %436 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %437 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %436, i32 0, i32 3
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 12
  %439 = load i64, i64* %438, align 8
  %440 = call i32 @V_FW_FILTER_WR_PRIO(i64 %439)
  %441 = or i32 %435, %440
  %442 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %443 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %442, i32 0, i32 4
  %444 = load %struct.l2t_entry*, %struct.l2t_entry** %443, align 8
  %445 = icmp ne %struct.l2t_entry* %444, null
  br i1 %445, label %446, label %452

446:                                              ; preds = %419
  %447 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %448 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %447, i32 0, i32 4
  %449 = load %struct.l2t_entry*, %struct.l2t_entry** %448, align 8
  %450 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  br label %453

452:                                              ; preds = %419
  br label %453

453:                                              ; preds = %452, %446
  %454 = phi i32 [ %451, %446 ], [ 0, %452 ]
  %455 = call i32 @V_FW_FILTER_WR_L2TIX(i32 %454)
  %456 = or i32 %441, %455
  %457 = call i8* @htobe32(i32 %456)
  %458 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %459 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %458, i32 0, i32 30
  store i8* %457, i8** %459, align 8
  %460 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %461 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %460, i32 0, i32 3
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 11
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 4
  %465 = call i8* @htobe16(i32 %464)
  %466 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %467 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %466, i32 0, i32 29
  store i8* %465, i8** %467, align 8
  %468 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %469 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %468, i32 0, i32 3
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 10
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = call i8* @htobe16(i32 %472)
  %474 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %475 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %474, i32 0, i32 28
  store i8* %473, i8** %475, align 8
  %476 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %477 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 11
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 16
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @V_FW_FILTER_WR_FRAG(i32 %480)
  %482 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %483 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %482, i32 0, i32 3
  %484 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %483, i32 0, i32 10
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 16
  %486 = load i32, i32* %485, align 8
  %487 = call i32 @V_FW_FILTER_WR_FRAGM(i32 %486)
  %488 = or i32 %481, %487
  %489 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %490 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %489, i32 0, i32 3
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 11
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 15
  %493 = load i32, i32* %492, align 4
  %494 = call i32 @V_FW_FILTER_WR_IVLAN_VLD(i32 %493)
  %495 = or i32 %488, %494
  %496 = load i32, i32* %12, align 4
  %497 = call i32 @V_FW_FILTER_WR_OVLAN_VLD(i32 %496)
  %498 = or i32 %495, %497
  %499 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %500 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %499, i32 0, i32 3
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i32 0, i32 10
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 15
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @V_FW_FILTER_WR_IVLAN_VLDM(i32 %503)
  %505 = or i32 %498, %504
  %506 = load i32, i32* %13, align 4
  %507 = call i32 @V_FW_FILTER_WR_OVLAN_VLDM(i32 %506)
  %508 = or i32 %505, %507
  %509 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %510 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %509, i32 0, i32 0
  store i32 %508, i32* %510, align 8
  %511 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %512 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %511, i32 0, i32 27
  store i64 0, i64* %512, align 8
  %513 = call i32 @V_FW_FILTER_WR_RX_CHAN(i32 0)
  %514 = load %struct.adapter*, %struct.adapter** %6, align 8
  %515 = getelementptr inbounds %struct.adapter, %struct.adapter* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %515, i32 0, i32 1
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = call i32 @V_FW_FILTER_WR_RX_RPL_IQ(i32 %518)
  %520 = or i32 %513, %519
  %521 = call i8* @htobe16(i32 %520)
  %522 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %523 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %522, i32 0, i32 26
  store i8* %521, i8** %523, align 8
  %524 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %525 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %524, i32 0, i32 3
  %526 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %525, i32 0, i32 11
  %527 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %526, i32 0, i32 14
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @V_FW_FILTER_WR_MACI(i32 %528)
  %530 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %531 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %530, i32 0, i32 3
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 10
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 14
  %534 = load i32, i32* %533, align 8
  %535 = call i32 @V_FW_FILTER_WR_MACIM(i32 %534)
  %536 = or i32 %529, %535
  %537 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %538 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %537, i32 0, i32 3
  %539 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %538, i32 0, i32 11
  %540 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %539, i32 0, i32 13
  %541 = load i32, i32* %540, align 4
  %542 = call i32 @V_FW_FILTER_WR_FCOE(i32 %541)
  %543 = or i32 %536, %542
  %544 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %545 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %544, i32 0, i32 3
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %545, i32 0, i32 10
  %547 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %546, i32 0, i32 13
  %548 = load i32, i32* %547, align 4
  %549 = call i32 @V_FW_FILTER_WR_FCOEM(i32 %548)
  %550 = or i32 %543, %549
  %551 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %552 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %551, i32 0, i32 3
  %553 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %552, i32 0, i32 11
  %554 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %553, i32 0, i32 12
  %555 = load i32, i32* %554, align 4
  %556 = call i32 @V_FW_FILTER_WR_PORT(i32 %555)
  %557 = or i32 %550, %556
  %558 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %559 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %558, i32 0, i32 3
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i32 0, i32 10
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %560, i32 0, i32 12
  %562 = load i32, i32* %561, align 8
  %563 = call i32 @V_FW_FILTER_WR_PORTM(i32 %562)
  %564 = or i32 %557, %563
  %565 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %566 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %565, i32 0, i32 3
  %567 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %566, i32 0, i32 11
  %568 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %567, i32 0, i32 11
  %569 = load i32, i32* %568, align 4
  %570 = call i32 @V_FW_FILTER_WR_MATCHTYPE(i32 %569)
  %571 = or i32 %564, %570
  %572 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %573 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %572, i32 0, i32 3
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %573, i32 0, i32 10
  %575 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %574, i32 0, i32 11
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @V_FW_FILTER_WR_MATCHTYPEM(i32 %576)
  %578 = or i32 %571, %577
  %579 = call i8* @htobe32(i32 %578)
  %580 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %581 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %580, i32 0, i32 25
  store i8* %579, i8** %581, align 8
  %582 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %583 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %582, i32 0, i32 3
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 11
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 10
  %586 = load i32, i32* %585, align 4
  %587 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %588 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %587, i32 0, i32 24
  store i32 %586, i32* %588, align 4
  %589 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %590 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %589, i32 0, i32 3
  %591 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %590, i32 0, i32 10
  %592 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %591, i32 0, i32 10
  %593 = load i32, i32* %592, align 8
  %594 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %595 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %594, i32 0, i32 23
  store i32 %593, i32* %595, align 8
  %596 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %597 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %596, i32 0, i32 3
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 11
  %599 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %598, i32 0, i32 9
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %602 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %601, i32 0, i32 22
  store i32 %600, i32* %602, align 4
  %603 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %604 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %603, i32 0, i32 3
  %605 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %604, i32 0, i32 10
  %606 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %605, i32 0, i32 9
  %607 = load i32, i32* %606, align 4
  %608 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %609 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %608, i32 0, i32 21
  store i32 %607, i32* %609, align 8
  %610 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %611 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %610, i32 0, i32 3
  %612 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %611, i32 0, i32 11
  %613 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %612, i32 0, i32 3
  %614 = load i32, i32* %613, align 4
  %615 = call i8* @htobe16(i32 %614)
  %616 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %617 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %616, i32 0, i32 20
  store i8* %615, i8** %617, align 8
  %618 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %619 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %618, i32 0, i32 3
  %620 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %619, i32 0, i32 10
  %621 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %620, i32 0, i32 3
  %622 = load i32, i32* %621, align 4
  %623 = call i8* @htobe16(i32 %622)
  %624 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %625 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %624, i32 0, i32 19
  store i8* %623, i8** %625, align 8
  %626 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %627 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %626, i32 0, i32 3
  %628 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %627, i32 0, i32 11
  %629 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %628, i32 0, i32 4
  %630 = load i32, i32* %629, align 4
  %631 = call i8* @htobe16(i32 %630)
  %632 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %633 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %632, i32 0, i32 18
  store i8* %631, i8** %633, align 8
  %634 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %635 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %634, i32 0, i32 3
  %636 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %635, i32 0, i32 10
  %637 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %636, i32 0, i32 4
  %638 = load i32, i32* %637, align 8
  %639 = call i8* @htobe16(i32 %638)
  %640 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %641 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %640, i32 0, i32 17
  store i8* %639, i8** %641, align 8
  %642 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %643 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %642, i32 0, i32 3
  %644 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %643, i32 0, i32 11
  %645 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %644, i32 0, i32 8
  %646 = load i32, i32* %645, align 4
  %647 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %648 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %647, i32 0, i32 16
  %649 = load i32, i32* %648, align 4
  %650 = call i32 @bcopy(i32 %646, i32 %649, i32 4)
  %651 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %652 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %651, i32 0, i32 3
  %653 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %652, i32 0, i32 10
  %654 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %653, i32 0, i32 8
  %655 = load i32, i32* %654, align 8
  %656 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %657 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %656, i32 0, i32 15
  %658 = load i32, i32* %657, align 8
  %659 = call i32 @bcopy(i32 %655, i32 %658, i32 4)
  %660 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %661 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %660, i32 0, i32 3
  %662 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %661, i32 0, i32 11
  %663 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %662, i32 0, i32 7
  %664 = load i32, i32* %663, align 4
  %665 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %666 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %665, i32 0, i32 14
  %667 = load i32, i32* %666, align 4
  %668 = call i32 @bcopy(i32 %664, i32 %667, i32 4)
  %669 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %670 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %669, i32 0, i32 3
  %671 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %670, i32 0, i32 10
  %672 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %671, i32 0, i32 7
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %675 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %674, i32 0, i32 13
  %676 = load i32, i32* %675, align 8
  %677 = call i32 @bcopy(i32 %673, i32 %676, i32 4)
  %678 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %679 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %678, i32 0, i32 3
  %680 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %679, i32 0, i32 11
  %681 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %680, i32 0, i32 5
  %682 = load i32, i32* %681, align 4
  %683 = call i8* @htobe16(i32 %682)
  %684 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %685 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %684, i32 0, i32 12
  store i8* %683, i8** %685, align 8
  %686 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %687 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %686, i32 0, i32 3
  %688 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %687, i32 0, i32 10
  %689 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %688, i32 0, i32 5
  %690 = load i32, i32* %689, align 4
  %691 = call i8* @htobe16(i32 %690)
  %692 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %693 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %692, i32 0, i32 11
  store i8* %691, i8** %693, align 8
  %694 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %695 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %694, i32 0, i32 3
  %696 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %695, i32 0, i32 11
  %697 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %696, i32 0, i32 6
  %698 = load i32, i32* %697, align 4
  %699 = call i8* @htobe16(i32 %698)
  %700 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %701 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %700, i32 0, i32 10
  store i8* %699, i8** %701, align 8
  %702 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %703 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %702, i32 0, i32 3
  %704 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %703, i32 0, i32 10
  %705 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %704, i32 0, i32 6
  %706 = load i32, i32* %705, align 8
  %707 = call i8* @htobe16(i32 %706)
  %708 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %709 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %708, i32 0, i32 9
  store i8* %707, i8** %709, align 8
  %710 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %711 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %710, i32 0, i32 8
  %712 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %711, align 8
  %713 = call i32 @bzero(%struct.fw_filter2_wr* %712, i32 8)
  %714 = load %struct.adapter*, %struct.adapter** %6, align 8
  %715 = getelementptr inbounds %struct.adapter, %struct.adapter* %714, i32 0, i32 2
  %716 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %715, i32 0, i32 0
  %717 = load i64, i64* %716, align 8
  %718 = icmp ne i64 %717, 0
  br i1 %718, label %719, label %790

719:                                              ; preds = %453
  %720 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %721 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %720, i32 0, i32 3
  %722 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %721, i32 0, i32 9
  %723 = load i32, i32* %722, align 4
  %724 = call i32 @V_FW_FILTER2_WR_SWAPMAC(i32 %723)
  %725 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %726 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %725, i32 0, i32 7
  store i32 %724, i32* %726, align 8
  %727 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %728 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %727, i32 0, i32 3
  %729 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %728, i32 0, i32 7
  %730 = load i64, i64* %729, align 8
  %731 = icmp ne i64 %730, 0
  br i1 %731, label %732, label %734

732:                                              ; preds = %719
  %733 = load i32, i32* @ULP_MODE_TCPDDP, align 4
  br label %736

734:                                              ; preds = %719
  %735 = load i32, i32* @ULP_MODE_NONE, align 4
  br label %736

736:                                              ; preds = %734, %732
  %737 = phi i32 [ %733, %732 ], [ %735, %734 ]
  %738 = call i32 @V_FW_FILTER2_WR_ULP_TYPE(i32 %737)
  %739 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %740 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %739, i32 0, i32 3
  %741 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %740, i32 0, i32 8
  %742 = load i32, i32* %741, align 8
  %743 = call i32 @V_FW_FILTER2_WR_NATFLAGCHECK(i32 %742)
  %744 = or i32 %738, %743
  %745 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %746 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %745, i32 0, i32 3
  %747 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %746, i32 0, i32 7
  %748 = load i64, i64* %747, align 8
  %749 = call i32 @V_FW_FILTER2_WR_NATMODE(i64 %748)
  %750 = or i32 %744, %749
  %751 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %752 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %751, i32 0, i32 1
  store i32 %750, i32* %752, align 4
  %753 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %754 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %753, i32 0, i32 6
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %757 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %756, i32 0, i32 3
  %758 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %757, i32 0, i32 6
  %759 = load i32, i32* %758, align 8
  %760 = call i32 @memcpy(i32 %755, i32 %759, i32 4)
  %761 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %762 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %761, i32 0, i32 5
  %763 = load i32, i32* %762, align 8
  %764 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %765 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %764, i32 0, i32 3
  %766 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %765, i32 0, i32 5
  %767 = load i32, i32* %766, align 4
  %768 = call i32 @memcpy(i32 %763, i32 %767, i32 4)
  %769 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %770 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %769, i32 0, i32 3
  %771 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %770, i32 0, i32 2
  %772 = load i32, i32* %771, align 8
  %773 = call i8* @htobe16(i32 %772)
  %774 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %775 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %774, i32 0, i32 4
  store i8* %773, i8** %775, align 8
  %776 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %777 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %776, i32 0, i32 3
  %778 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %777, i32 0, i32 3
  %779 = load i32, i32* %778, align 4
  %780 = call i8* @htobe16(i32 %779)
  %781 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %782 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %781, i32 0, i32 3
  store i8* %780, i8** %782, align 8
  %783 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %784 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %783, i32 0, i32 3
  %785 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %784, i32 0, i32 4
  %786 = load i32, i32* %785, align 8
  %787 = call i8* @htobe32(i32 %786)
  %788 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %789 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %788, i32 0, i32 2
  store i8* %787, i8** %789, align 8
  br label %790

790:                                              ; preds = %736, %453
  %791 = load %struct.adapter*, %struct.adapter** %6, align 8
  %792 = getelementptr inbounds %struct.adapter, %struct.adapter* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %792, i32 0, i32 0
  %794 = load i32*, i32** %793, align 8
  %795 = getelementptr inbounds i32, i32* %794, i64 0
  %796 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %11, align 8
  %797 = call i32 @commit_wrq_wr(i32* %795, %struct.fw_filter2_wr* %796, %struct.wrq_cookie* %14)
  %798 = load %struct.adapter*, %struct.adapter** %6, align 8
  %799 = getelementptr inbounds %struct.adapter, %struct.adapter* %798, i32 0, i32 0
  %800 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %799, i32 0, i32 4
  %801 = call i32 @mtx_lock(i32* %800)
  br label %802

802:                                              ; preds = %828, %790
  %803 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %804 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 8
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %817

807:                                              ; preds = %802
  %808 = load %struct.filter_entry*, %struct.filter_entry** %10, align 8
  %809 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %808, i32 0, i32 1
  %810 = load i32, i32* %809, align 4
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %813

812:                                              ; preds = %807
  br label %815

813:                                              ; preds = %807
  %814 = load i32, i32* @EIO, align 4
  br label %815

815:                                              ; preds = %813, %812
  %816 = phi i32 [ 0, %812 ], [ %814, %813 ]
  store i32 %816, i32* %16, align 4
  br label %829

817:                                              ; preds = %802
  %818 = load %struct.adapter*, %struct.adapter** %6, align 8
  %819 = getelementptr inbounds %struct.adapter, %struct.adapter* %818, i32 0, i32 0
  %820 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %819, i32 0, i32 5
  %821 = load %struct.adapter*, %struct.adapter** %6, align 8
  %822 = getelementptr inbounds %struct.adapter, %struct.adapter* %821, i32 0, i32 0
  %823 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %822, i32 0, i32 4
  %824 = call i64 @cv_wait_sig(i32* %820, i32* %823)
  %825 = icmp ne i64 %824, 0
  br i1 %825, label %826, label %828

826:                                              ; preds = %817
  %827 = load i32, i32* @EINPROGRESS, align 4
  store i32 %827, i32* %16, align 4
  br label %829

828:                                              ; preds = %817
  br label %802

829:                                              ; preds = %826, %815
  %830 = load %struct.adapter*, %struct.adapter** %6, align 8
  %831 = getelementptr inbounds %struct.adapter, %struct.adapter* %830, i32 0, i32 0
  %832 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %831, i32 0, i32 4
  %833 = call i32 @mtx_unlock(i32* %832)
  %834 = load i32, i32* %16, align 4
  store i32 %834, i32* %5, align 4
  br label %835

835:                                              ; preds = %829, %239
  %836 = load i32, i32* %5, align 4
  ret i32 %836
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @separate_hpfilter_region(%struct.adapter*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local %struct.fw_filter2_wr* @start_wrq_wr(i32*, i32, %struct.wrq_cookie*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bzero(%struct.fw_filter2_wr*, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @V_FW_WR_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_filter2_wr* byval(%struct.fw_filter2_wr) align 8) #1

declare dso_local i32 @V_FW_FILTER_WR_TID(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_RQTYPE(i64) #1

declare dso_local i32 @V_FW_FILTER_WR_NOREPLY(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_IQ(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_RPTTID(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_DROP(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_DIRSTEER(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_MASKHASH(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_DIRSTEERHASH(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_LPBK(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_DMAC(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_SMAC(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_INSVLAN(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_RMVLAN(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_HITCNTS(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_TXCHAN(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_PRIO(i64) #1

declare dso_local i32 @V_FW_FILTER_WR_L2TIX(i32) #1

declare dso_local i8* @htobe16(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_FRAG(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_FRAGM(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_IVLAN_VLD(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_OVLAN_VLD(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_IVLAN_VLDM(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_OVLAN_VLDM(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_RX_CHAN(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_RX_RPL_IQ(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_MACI(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_MACIM(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_FCOE(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_FCOEM(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_PORT(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_PORTM(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_MATCHTYPE(i32) #1

declare dso_local i32 @V_FW_FILTER_WR_MATCHTYPEM(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @V_FW_FILTER2_WR_SWAPMAC(i32) #1

declare dso_local i32 @V_FW_FILTER2_WR_ULP_TYPE(i32) #1

declare dso_local i32 @V_FW_FILTER2_WR_NATFLAGCHECK(i32) #1

declare dso_local i32 @V_FW_FILTER2_WR_NATMODE(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @commit_wrq_wr(i32*, %struct.fw_filter2_wr*, %struct.wrq_cookie*) #1

declare dso_local i64 @cv_wait_sig(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
