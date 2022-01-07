; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sack_doack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sack_doack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tcpopt = type { i32, i32, i64 }
%struct.sackhole = type { i64, i64, i64 }
%struct.sackblk = type { i64, i64 }

@TCP_MAX_SACK = common dso_local global i32 0, align 4
@TOF_SACK = common dso_local global i32 0, align 4
@TCPOLEN_SACK = common dso_local global i32 0, align 4
@sackhole_head = common dso_local global i32 0, align 4
@scblink = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sackhint bytes rtx >= 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_sack_doack(%struct.tcpcb* %0, %struct.tcpopt* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcpopt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sackhole*, align 8
  %9 = alloca %struct.sackhole*, align 8
  %10 = alloca %struct.sackblk, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sackblk*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i32, i32* @TCP_MAX_SACK, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.sackblk, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @INP_WLOCK_ASSERT(i32 %26)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %28 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @SEQ_LT(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %3
  %35 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 4
  %37 = call i64 @TAILQ_EMPTY(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %44
  %46 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %45, i32 0, i32 0
  store i64 %42, i64* %46, align 16
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %16, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %50
  %52 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %51, i32 0, i32 1
  store i64 %47, i64* %52, align 8
  br label %53

53:                                               ; preds = %39, %34, %3
  %54 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %55 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TOF_SACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %156

60:                                               ; preds = %53
  %61 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %152, %60
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %67 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %155

70:                                               ; preds = %64
  %71 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %72 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @TCPOLEN_SACK, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %73, %77
  %79 = call i32 @bcopy(i64 %78, %struct.sackblk* %10, i32 16)
  %80 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @ntohl(i64 %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @ntohl(i64 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @SEQ_GT(i64 %91, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %151

96:                                               ; preds = %70
  %97 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %100 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @SEQ_GT(i64 %98, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %151

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i64 @SEQ_GT(i64 %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %151

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %114 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @SEQ_LT(i64 %112, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @SEQ_GT(i64 %120, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %130 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @SEQ_LEQ(i64 %128, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %126
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %16, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %137
  %139 = bitcast %struct.sackblk* %138 to i8*
  %140 = bitcast %struct.sackblk* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %139, i8* align 8 %140, i64 16, i1 false)
  %141 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %10, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %142, %144
  %146 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %147 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %145
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %134, %126, %118, %110, %104, %96, %70
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %64

155:                                              ; preds = %64
  br label %156

156:                                              ; preds = %155, %53
  %157 = load i32, i32* %16, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %535

161:                                              ; preds = %156
  store i32 0, i32* %14, align 4
  br label %162

162:                                              ; preds = %210, %161
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %162
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %206, %166
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %16, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %209

173:                                              ; preds = %169
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %175
  %177 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %180
  %182 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @SEQ_GT(i64 %178, i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %173
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %188
  %190 = bitcast %struct.sackblk* %10 to i8*
  %191 = bitcast %struct.sackblk* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 16 %191, i64 16, i1 false)
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %193
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %196
  %198 = bitcast %struct.sackblk* %194 to i8*
  %199 = bitcast %struct.sackblk* %197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %198, i8* align 16 %199, i64 16, i1 false)
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %201
  %203 = bitcast %struct.sackblk* %202 to i8*
  %204 = bitcast %struct.sackblk* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %203, i8* align 8 %204, i64 16, i1 false)
  br label %205

205:                                              ; preds = %186, %173
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %169

209:                                              ; preds = %169
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %162

213:                                              ; preds = %162
  %214 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 4
  %216 = call i64 @TAILQ_EMPTY(i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %213
  %219 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %220 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %7, align 8
  %223 = call i8* @SEQ_MAX(i64 %221, i64 %222)
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %226 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %225, i32 0, i32 2
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %218, %213
  %228 = load i32, i32* %16, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %23, i64 %230
  store %struct.sackblk* %231, %struct.sackblk** %13, align 8
  %232 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %233 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %236 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 1
  store i64 %234, i64* %237, align 8
  %238 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %239 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %242 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i64 @SEQ_LT(i64 %240, i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %303

246:                                              ; preds = %227
  %247 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %248 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %249 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %252 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb* %247, i64 %250, i64 %253, %struct.sackhole* null)
  store %struct.sackhole* %254, %struct.sackhole** %9, align 8
  %255 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %256 = icmp ne %struct.sackhole* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %246
  %258 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %259 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %262 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %261, i32 0, i32 2
  store i64 %260, i64* %262, align 8
  %263 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %264 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %263, i32 -1
  store %struct.sackblk* %264, %struct.sackblk** %13, align 8
  store i32 1, i32* %17, align 4
  br label %302

265:                                              ; preds = %246
  br label %266

266:                                              ; preds = %280, %265
  %267 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %268 = icmp uge %struct.sackblk* %267, %23
  br i1 %268, label %269, label %278

269:                                              ; preds = %266
  %270 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %271 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %274 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @SEQ_LT(i64 %272, i64 %275)
  %277 = icmp ne i64 %276, 0
  br label %278

278:                                              ; preds = %269, %266
  %279 = phi i1 [ false, %266 ], [ %277, %269 ]
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %282 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %281, i32 -1
  store %struct.sackblk* %282, %struct.sackblk** %13, align 8
  br label %266

283:                                              ; preds = %278
  %284 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %285 = icmp uge %struct.sackblk* %284, %23
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  %287 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %288 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %291 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = call i64 @SEQ_LT(i64 %289, i64 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %286
  %296 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %297 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %300 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %299, i32 0, i32 2
  store i64 %298, i64* %300, align 8
  br label %301

301:                                              ; preds = %295, %286, %283
  br label %302

302:                                              ; preds = %301, %257
  br label %319

303:                                              ; preds = %227
  %304 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %305 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %308 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = call i64 @SEQ_LT(i64 %306, i64 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %303
  %313 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %314 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %317 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %316, i32 0, i32 2
  store i64 %315, i64* %317, align 8
  store i32 1, i32* %17, align 4
  br label %318

318:                                              ; preds = %312, %303
  br label %319

319:                                              ; preds = %318, %302
  %320 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %321 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %320, i32 0, i32 4
  %322 = load i32, i32* @sackhole_head, align 4
  %323 = call %struct.sackhole* @TAILQ_LAST(i32* %321, i32 %322)
  store %struct.sackhole* %323, %struct.sackhole** %8, align 8
  br label %324

324:                                              ; preds = %532, %395, %353, %341, %319
  %325 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %326 = icmp uge %struct.sackblk* %325, %23
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %329 = icmp ne %struct.sackhole* %328, null
  br label %330

330:                                              ; preds = %327, %324
  %331 = phi i1 [ false, %324 ], [ %329, %327 ]
  br i1 %331, label %332, label %533

332:                                              ; preds = %330
  %333 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %334 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %337 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = call i64 @SEQ_GEQ(i64 %335, i64 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %332
  %342 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %343 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %342, i32 -1
  store %struct.sackblk* %343, %struct.sackblk** %13, align 8
  br label %324

344:                                              ; preds = %332
  %345 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %346 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %349 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = call i64 @SEQ_LEQ(i64 %347, i64 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %344
  %354 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %355 = load i32, i32* @sackhole_head, align 4
  %356 = load i32, i32* @scblink, align 4
  %357 = call %struct.sackhole* @TAILQ_PREV(%struct.sackhole* %354, i32 %355, i32 %356)
  store %struct.sackhole* %357, %struct.sackhole** %8, align 8
  br label %324

358:                                              ; preds = %344
  %359 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %360 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %363 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = sub nsw i64 %361, %364
  %366 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %367 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = sub nsw i64 %369, %365
  store i64 %370, i64* %368, align 8
  %371 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %372 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = icmp sge i64 %374, 0
  %376 = zext i1 %375 to i32
  %377 = call i32 @KASSERT(i32 %376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  %378 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %379 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %382 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = call i64 @SEQ_LEQ(i64 %380, i64 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %421

386:                                              ; preds = %358
  %387 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %388 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %391 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = call i64 @SEQ_GEQ(i64 %389, i64 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %386
  %396 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  store %struct.sackhole* %396, %struct.sackhole** %9, align 8
  %397 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %398 = load i32, i32* @sackhole_head, align 4
  %399 = load i32, i32* @scblink, align 4
  %400 = call %struct.sackhole* @TAILQ_PREV(%struct.sackhole* %397, i32 %398, i32 %399)
  store %struct.sackhole* %400, %struct.sackhole** %8, align 8
  %401 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %402 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %403 = call i32 @tcp_sackhole_remove(%struct.tcpcb* %401, %struct.sackhole* %402)
  br label %324

404:                                              ; preds = %386
  %405 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %406 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %409 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %408, i32 0, i32 1
  store i64 %407, i64* %409, align 8
  %410 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %411 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %410, i32 0, i32 2
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %414 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = call i8* @SEQ_MAX(i64 %412, i64 %415)
  %417 = ptrtoint i8* %416 to i64
  %418 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %419 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %418, i32 0, i32 2
  store i64 %417, i64* %419, align 8
  br label %420

420:                                              ; preds = %404
  br label %503

421:                                              ; preds = %358
  %422 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %423 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %426 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = call i64 @SEQ_GEQ(i64 %424, i64 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %446

430:                                              ; preds = %421
  %431 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %432 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %435 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %434, i32 0, i32 0
  store i64 %433, i64* %435, align 8
  %436 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %437 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %440 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = call i8* @SEQ_MIN(i64 %438, i64 %441)
  %443 = ptrtoint i8* %442 to i64
  %444 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %445 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %444, i32 0, i32 2
  store i64 %443, i64* %445, align 8
  br label %502

446:                                              ; preds = %421
  %447 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %448 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %449 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %452 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %455 = call %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb* %447, i64 %450, i64 %453, %struct.sackhole* %454)
  store %struct.sackhole* %455, %struct.sackhole** %9, align 8
  %456 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %457 = icmp ne %struct.sackhole* %456, null
  br i1 %457, label %458, label %501

458:                                              ; preds = %446
  %459 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %460 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %459, i32 0, i32 2
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %463 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %462, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = call i64 @SEQ_GT(i64 %461, i64 %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %485

467:                                              ; preds = %458
  %468 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %469 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %468, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %472 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %471, i32 0, i32 2
  store i64 %470, i64* %472, align 8
  %473 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %474 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %473, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %477 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %476, i32 0, i32 1
  %478 = load i64, i64* %477, align 8
  %479 = sub nsw i64 %475, %478
  %480 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %481 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %481, i32 0, i32 2
  %483 = load i64, i64* %482, align 8
  %484 = add nsw i64 %483, %479
  store i64 %484, i64* %482, align 8
  br label %485

485:                                              ; preds = %467, %458
  %486 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %487 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %490 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %489, i32 0, i32 0
  store i64 %488, i64* %490, align 8
  %491 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %492 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %491, i32 0, i32 2
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %495 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = call i8* @SEQ_MIN(i64 %493, i64 %496)
  %498 = ptrtoint i8* %497 to i64
  %499 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %500 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %499, i32 0, i32 2
  store i64 %498, i64* %500, align 8
  br label %501

501:                                              ; preds = %485, %446
  br label %502

502:                                              ; preds = %501, %430
  br label %503

503:                                              ; preds = %502, %420
  %504 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %505 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %504, i32 0, i32 2
  %506 = load i64, i64* %505, align 8
  %507 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %508 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %507, i32 0, i32 1
  %509 = load i64, i64* %508, align 8
  %510 = sub nsw i64 %506, %509
  %511 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %512 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %511, i32 0, i32 3
  %513 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %512, i32 0, i32 2
  %514 = load i64, i64* %513, align 8
  %515 = add nsw i64 %514, %510
  store i64 %515, i64* %513, align 8
  %516 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %517 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %520 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %519, i32 0, i32 1
  %521 = load i64, i64* %520, align 8
  %522 = call i64 @SEQ_LEQ(i64 %518, i64 %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %529

524:                                              ; preds = %503
  %525 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %526 = load i32, i32* @sackhole_head, align 4
  %527 = load i32, i32* @scblink, align 4
  %528 = call %struct.sackhole* @TAILQ_PREV(%struct.sackhole* %525, i32 %526, i32 %527)
  store %struct.sackhole* %528, %struct.sackhole** %8, align 8
  br label %532

529:                                              ; preds = %503
  %530 = load %struct.sackblk*, %struct.sackblk** %13, align 8
  %531 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %530, i32 -1
  store %struct.sackblk* %531, %struct.sackblk** %13, align 8
  br label %532

532:                                              ; preds = %529, %524
  br label %324

533:                                              ; preds = %330
  %534 = load i32, i32* %17, align 4
  store i32 %534, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %535

535:                                              ; preds = %533, %159
  %536 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %536)
  %537 = load i32, i32* %4, align 4
  ret i32 %537
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #2

declare dso_local i64 @SEQ_LT(i64, i64) #2

declare dso_local i64 @TAILQ_EMPTY(i32*) #2

declare dso_local i32 @bcopy(i64, %struct.sackblk*, i32) #2

declare dso_local i8* @ntohl(i64) #2

declare dso_local i64 @SEQ_GT(i64, i64) #2

declare dso_local i64 @SEQ_LEQ(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @SEQ_MAX(i64, i64) #2

declare dso_local %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb*, i64, i64, %struct.sackhole*) #2

declare dso_local %struct.sackhole* @TAILQ_LAST(i32*, i32) #2

declare dso_local i64 @SEQ_GEQ(i64, i64) #2

declare dso_local %struct.sackhole* @TAILQ_PREV(%struct.sackhole*, i32, i32) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @tcp_sackhole_remove(%struct.tcpcb*, %struct.sackhole*) #2

declare dso_local i8* @SEQ_MIN(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
