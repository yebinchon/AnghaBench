; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_netmap_rxsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_netmap_rxsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.netmap_kring = type { i64, i64, i32, i64, i64, %struct.mbq, %struct.netmap_adapter*, %struct.netmap_ring* }
%struct.mbq = type { i32 }
%struct.netmap_adapter = type { i32 }
%struct.netmap_ring = type { %struct.netmap_slot* }
%struct.netmap_slot = type { i32, i32 }
%struct.mbuf = type { i32 }

@NAF_FORCE_READ = common dso_local global i32 0, align 4
@NKR_PENDINTR = common dso_local global i32 0, align 4
@rate_ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@NS_BUF_CHANGED = common dso_local global i32 0, align 4
@netmap_no_pendintr = common dso_local global i32 0, align 4
@NS_MOREFRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_kring*, i32)* @generic_netmap_rxsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_netmap_rxsync(%struct.netmap_kring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_kring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netmap_ring*, align 8
  %7 = alloca %struct.netmap_adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.mbq, align 4
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.netmap_slot*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.netmap_kring* %0, %struct.netmap_kring** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %24 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %23, i32 0, i32 7
  %25 = load %struct.netmap_ring*, %struct.netmap_ring** %24, align 8
  store %struct.netmap_ring* %25, %struct.netmap_ring** %6, align 8
  %26 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %27 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %26, i32 0, i32 6
  %28 = load %struct.netmap_adapter*, %struct.netmap_adapter** %27, align 8
  store %struct.netmap_adapter* %28, %struct.netmap_adapter** %7, align 8
  %29 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %30 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %10, align 8
  %33 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %34 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NAF_FORCE_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %42 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NKR_PENDINTR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %40, %2
  %48 = phi i1 [ true, %2 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %51 = call i64 @NETMAP_BUF_SIZE(%struct.netmap_adapter* %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %57 = call i32 @netmap_ring_reinit(%struct.netmap_kring* %56)
  store i32 %57, i32* %3, align 4
  br label %289

58:                                               ; preds = %47
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rate_ctx, i32 0, i32 0, i32 1), align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rate_ctx, i32 0, i32 0, i32 1), align 4
  %61 = sext i32 %59 to i64
  %62 = call i32 @IFRATE(i64 %61)
  %63 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %64 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %58
  store i64 0, i64* %9, align 8
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %76 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %75, i32 0, i32 0
  %77 = load %struct.netmap_slot*, %struct.netmap_slot** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %77, i64 %78
  store %struct.netmap_slot* %79, %struct.netmap_slot** %19, align 8
  %80 = load i32, i32* @NS_BUF_CHANGED, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.netmap_slot*, %struct.netmap_slot** %19, align 8
  %83 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i64 @nm_next(i64 %86, i64 %87)
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %74
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %70

92:                                               ; preds = %70
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %95 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %58
  %97 = load i32, i32* @netmap_no_pendintr, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %289

103:                                              ; preds = %99, %96
  %104 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %105 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %8, align 8
  %107 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %108 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @nm_prev(i64 %109, i64 %110)
  %112 = load i64, i64* %8, align 8
  %113 = sub nsw i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %103
  %118 = load i64, i64* %10, align 8
  %119 = add nsw i64 %118, 1
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %117, %103
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %16, align 4
  %130 = call i32 @mbq_init(%struct.mbq* %14)
  %131 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %132 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %131, i32 0, i32 5
  %133 = call i32 @mbq_lock(%struct.mbq* %132)
  store i64 0, i64* %9, align 8
  br label %134

134:                                              ; preds = %198, %124
  %135 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %136 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %135, i32 0, i32 5
  %137 = call %struct.mbuf* @mbq_peek(%struct.mbq* %136)
  store %struct.mbuf* %137, %struct.mbuf** %15, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %139 = icmp ne %struct.mbuf* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  br label %201

141:                                              ; preds = %134
  %142 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %143 = call i32 @MBUF_LEN(%struct.mbuf* %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %201

148:                                              ; preds = %141
  %149 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %150 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %149, i32 0, i32 5
  %151 = call %struct.mbuf* @mbq_dequeue(%struct.mbq* %150)
  br label %152

152:                                              ; preds = %184, %148
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %195

155:                                              ; preds = %152
  %156 = load i64, i64* %13, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* %17, align 4
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %161, %155
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %17, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %17, align 4
  %167 = load i64, i64* %13, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = sub nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %174 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %173, i32 0, i32 0
  %175 = load %struct.netmap_slot*, %struct.netmap_slot** %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %175, i64 %176
  %178 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %177, i32 0, i32 1
  store i32 %172, i32* %178, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %163
  %182 = load i32, i32* @NS_MOREFRAG, align 4
  br label %184

183:                                              ; preds = %163
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 0, %183 ]
  %186 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %187 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %186, i32 0, i32 0
  %188 = load %struct.netmap_slot*, %struct.netmap_slot** %187, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %188, i64 %189
  %191 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %190, i32 0, i32 0
  store i32 %185, i32* %191, align 4
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* %10, align 8
  %194 = call i64 @nm_next(i64 %192, i64 %193)
  store i64 %194, i64* %8, align 8
  br label %152

195:                                              ; preds = %152
  %196 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %197 = call i32 @mbq_enqueue(%struct.mbq* %14, %struct.mbuf* %196)
  br label %198

198:                                              ; preds = %195
  %199 = load i64, i64* %9, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %9, align 8
  br label %134

201:                                              ; preds = %147, %140
  %202 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %203 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %202, i32 0, i32 5
  %204 = call i32 @mbq_unlock(%struct.mbq* %203)
  %205 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %206 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %8, align 8
  br label %208

208:                                              ; preds = %264, %201
  store i32 0, i32* %21, align 4
  %209 = call %struct.mbuf* @mbq_dequeue(%struct.mbq* %14)
  store %struct.mbuf* %209, %struct.mbuf** %15, align 8
  %210 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %211 = icmp ne %struct.mbuf* %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  br label %267

213:                                              ; preds = %208
  br label %214

214:                                              ; preds = %261, %213
  %215 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %216 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %217 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %216, i32 0, i32 0
  %218 = load %struct.netmap_slot*, %struct.netmap_slot** %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %218, i64 %219
  %221 = call i8* @NMB(%struct.netmap_adapter* %215, %struct.netmap_slot* %220)
  store i8* %221, i8** %20, align 8
  %222 = load i8*, i8** %20, align 8
  %223 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %224 = call i8* @NETMAP_BUF_BASE(%struct.netmap_adapter* %223)
  %225 = icmp eq i8* %222, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %214
  %227 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %228 = call i32 @m_freem(%struct.mbuf* %227)
  %229 = call i32 @mbq_purge(%struct.mbq* %14)
  %230 = call i32 @mbq_fini(%struct.mbq* %14)
  %231 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %232 = call i32 @netmap_ring_reinit(%struct.netmap_kring* %231)
  store i32 %232, i32* %3, align 4
  br label %289

233:                                              ; preds = %214
  %234 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %235 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %234, i32 0, i32 0
  %236 = load %struct.netmap_slot*, %struct.netmap_slot** %235, align 8
  %237 = load i64, i64* %8, align 8
  %238 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %236, i64 %237
  %239 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %18, align 4
  %241 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %18, align 4
  %244 = load i8*, i8** %20, align 8
  %245 = call i32 @m_copydata(%struct.mbuf* %241, i32 %242, i32 %243, i8* %244)
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %21, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %21, align 4
  %249 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %250 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %249, i32 0, i32 0
  %251 = load %struct.netmap_slot*, %struct.netmap_slot** %250, align 8
  %252 = load i64, i64* %8, align 8
  %253 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %251, i64 %252
  %254 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @NS_MOREFRAG, align 4
  %257 = and i32 %255, %256
  store i32 %257, i32* %22, align 4
  %258 = load i64, i64* %8, align 8
  %259 = load i64, i64* %10, align 8
  %260 = call i64 @nm_next(i64 %258, i64 %259)
  store i64 %260, i64* %8, align 8
  br label %261

261:                                              ; preds = %233
  %262 = load i32, i32* %22, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %214, label %264

264:                                              ; preds = %261
  %265 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %266 = call i32 @m_freem(%struct.mbuf* %265)
  br label %208

267:                                              ; preds = %212
  %268 = call i32 @mbq_fini(%struct.mbq* %14)
  %269 = load i64, i64* %9, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %267
  %272 = load i64, i64* %8, align 8
  %273 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %274 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %273, i32 0, i32 4
  store i64 %272, i64* %274, align 8
  %275 = load i64, i64* %9, align 8
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rate_ctx, i32 0, i32 0, i32 0), align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %277, %275
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rate_ctx, i32 0, i32 0, i32 0), align 4
  %280 = sext i32 %279 to i64
  %281 = call i32 @IFRATE(i64 %280)
  br label %282

282:                                              ; preds = %271, %267
  %283 = load i32, i32* @NKR_PENDINTR, align 4
  %284 = xor i32 %283, -1
  %285 = load %struct.netmap_kring*, %struct.netmap_kring** %4, align 8
  %286 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = and i32 %287, %284
  store i32 %288, i32* %286, align 8
  store i32 0, i32* %3, align 4
  br label %289

289:                                              ; preds = %282, %226, %102, %55
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i64 @NETMAP_BUF_SIZE(%struct.netmap_adapter*) #1

declare dso_local i32 @netmap_ring_reinit(%struct.netmap_kring*) #1

declare dso_local i32 @IFRATE(i64) #1

declare dso_local i64 @nm_next(i64, i64) #1

declare dso_local i64 @nm_prev(i64, i64) #1

declare dso_local i32 @mbq_init(%struct.mbq*) #1

declare dso_local i32 @mbq_lock(%struct.mbq*) #1

declare dso_local %struct.mbuf* @mbq_peek(%struct.mbq*) #1

declare dso_local i32 @MBUF_LEN(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @mbq_dequeue(%struct.mbq*) #1

declare dso_local i32 @mbq_enqueue(%struct.mbq*, %struct.mbuf*) #1

declare dso_local i32 @mbq_unlock(%struct.mbq*) #1

declare dso_local i8* @NMB(%struct.netmap_adapter*, %struct.netmap_slot*) #1

declare dso_local i8* @NETMAP_BUF_BASE(%struct.netmap_adapter*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mbq_purge(%struct.mbq*) #1

declare dso_local i32 @mbq_fini(%struct.mbq*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
