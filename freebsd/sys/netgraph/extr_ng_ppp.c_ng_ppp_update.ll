; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32**, %struct.TYPE_6__, %struct.ng_ppp_link*, i8*, i8* }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i64, i64 }
%struct.ng_ppp_link = type { i64, i8*, i32*, i64, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64 }

@HOOK_INDEX_VJC_IP = common dso_local global i64 0, align 8
@HOOK_INDEX_VJC_COMP = common dso_local global i64 0, align 8
@HOOK_INDEX_VJC_UNCOMP = common dso_local global i64 0, align 8
@HOOK_INDEX_VJC_VJIP = common dso_local global i64 0, align 8
@NG_PPP_MAX_LINKS = common dso_local global i32 0, align 4
@MP_AVERAGE_LINK_OVERHEAD = common dso_local global i32 0, align 4
@MP_NOSEQ = common dso_local global i8* null, align 8
@MP_INITIAL_SEQ = common dso_local global i8* null, align 8
@HOOK_INDEX_INET = common dso_local global i64 0, align 8
@ng_ppp_rcvdata_inet_fast = common dso_local global i32 0, align 4
@ng_ppp_rcvdata_inet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ng_ppp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_ppp_update(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ng_ppp_link*, align 8
  %9 = alloca %struct.ng_ppp_link*, align 8
  %10 = alloca %struct.ng_ppp_link*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = load i32**, i32*** %14, align 8
  %16 = load i64, i64* @HOOK_INDEX_VJC_IP, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* @HOOK_INDEX_VJC_COMP, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* @HOOK_INDEX_VJC_UNCOMP, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* @HOOK_INDEX_VJC_VJIP, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br label %44

44:                                               ; preds = %36, %28, %20, %2
  %45 = phi i1 [ false, %28 ], [ false, %20 ], [ false, %2 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %139

51:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %135, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %138

56:                                               ; preds = %52
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 6
  %59 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %59, i64 %61
  %63 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %135

68:                                               ; preds = %56
  %69 = load i32, i32* @MP_AVERAGE_LINK_OVERHEAD, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %72, i64 %74
  %76 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 0, i32 2
  %82 = add nsw i32 %69, %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 6
  %85 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %85, i64 %87
  %89 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 2
  %95 = add nsw i32 %82, %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 2, i32 4
  %103 = add nsw i32 %95, %102
  store i32 %103, i32* %7, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 6
  %106 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %106, i64 %108
  %110 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 6
  %116 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %116, i64 %118
  %120 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %113, %122
  %124 = add nsw i32 %123, 50
  %125 = sdiv i32 %124, 100
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %112, %126
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 6
  %130 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %130, i64 %132
  %134 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %133, i32 0, i32 0
  store i64 %127, i64* %134, align 8
  br label %135

135:                                              ; preds = %68, %67
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %52

138:                                              ; preds = %52
  br label %139

139:                                              ; preds = %138, %44
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = call i32 @bzero(i32** %141, i32 8)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  store i32 1, i32* %146, align 4
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %235, %139
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %238

151:                                              ; preds = %147
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 6
  %154 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %154, i64 %156
  store %struct.ng_ppp_link* %157, %struct.ng_ppp_link** %8, align 8
  %158 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %8, align 8
  %159 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %230

163:                                              ; preds = %151
  %164 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %8, align 8
  %165 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %230

168:                                              ; preds = %163
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %172, i64 %177
  store i32 %169, i32* %178, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 6
  %181 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %180, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %181, i64 %187
  store %struct.ng_ppp_link* %188, %struct.ng_ppp_link** %9, align 8
  %189 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %8, align 8
  %190 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %9, align 8
  %193 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %191, %194
  br i1 %195, label %206, label %196

196:                                              ; preds = %168
  %197 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %8, align 8
  %198 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %9, align 8
  %202 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %200, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %196, %168
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 3
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %196
  %210 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %8, align 8
  %211 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** @MP_NOSEQ, align 8
  %214 = icmp eq i8* %212, %213
  br i1 %214, label %215, label %229

215:                                              ; preds = %209
  %216 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %8, align 8
  %217 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %9, align 8
  %218 = icmp eq %struct.ng_ppp_link* %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i8*, i8** @MP_INITIAL_SEQ, align 8
  br label %225

221:                                              ; preds = %215
  %222 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %9, align 8
  %223 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  br label %225

225:                                              ; preds = %221, %219
  %226 = phi i8* [ %220, %219 ], [ %224, %221 ]
  %227 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %8, align 8
  %228 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %225, %209
  br label %234

230:                                              ; preds = %163, %151
  %231 = load i8*, i8** @MP_NOSEQ, align 8
  %232 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %8, align 8
  %233 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %232, i32 0, i32 1
  store i8* %231, i8** %233, align 8
  br label %234

234:                                              ; preds = %230, %229
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %147

238:                                              ; preds = %147
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %238
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i32, i32* %3, align 4
  %251 = call i32 @ng_ppp_start_frag_timer(i32 %250)
  br label %286

252:                                              ; preds = %244, %238
  %253 = load i32, i32* %3, align 4
  %254 = call i32 @ng_ppp_stop_frag_timer(i32 %253)
  %255 = load i32, i32* %3, align 4
  %256 = call i32 @ng_ppp_frag_reset(i32 %255)
  %257 = load i8*, i8** @MP_INITIAL_SEQ, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 8
  store i8* %257, i8** %259, align 8
  %260 = load i8*, i8** @MP_INITIAL_SEQ, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 7
  store i8* %260, i8** %262, align 8
  store i32 0, i32* %6, align 4
  br label %263

263:                                              ; preds = %282, %252
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %285

267:                                              ; preds = %263
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 6
  %270 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %270, i64 %272
  store %struct.ng_ppp_link* %273, %struct.ng_ppp_link** %10, align 8
  %274 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %10, align 8
  %275 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %274, i32 0, i32 2
  %276 = call i32 @bzero(i32** %275, i32 8)
  %277 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %10, align 8
  %278 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %277, i32 0, i32 3
  store i64 0, i64* %278, align 8
  %279 = load i8*, i8** @MP_NOSEQ, align 8
  %280 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %10, align 8
  %281 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  br label %282

282:                                              ; preds = %267
  %283 = load i32, i32* %6, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %6, align 4
  br label %263

285:                                              ; preds = %263
  br label %286

286:                                              ; preds = %285, %249
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 4
  %289 = load i32**, i32*** %288, align 8
  %290 = load i64, i64* @HOOK_INDEX_INET, align 8
  %291 = getelementptr inbounds i32*, i32** %289, i64 %290
  %292 = load i32*, i32** %291, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %348

294:                                              ; preds = %286
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 5
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %300, label %338

300:                                              ; preds = %294
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %338

305:                                              ; preds = %300
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %338

311:                                              ; preds = %305
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %338

317:                                              ; preds = %311
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %338

323:                                              ; preds = %317
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %323
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 4
  %332 = load i32**, i32*** %331, align 8
  %333 = load i64, i64* @HOOK_INDEX_INET, align 8
  %334 = getelementptr inbounds i32*, i32** %332, i64 %333
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* @ng_ppp_rcvdata_inet_fast, align 4
  %337 = call i32 @NG_HOOK_SET_RCVDATA(i32* %335, i32 %336)
  br label %347

338:                                              ; preds = %323, %317, %311, %305, %300, %294
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 4
  %341 = load i32**, i32*** %340, align 8
  %342 = load i64, i64* @HOOK_INDEX_INET, align 8
  %343 = getelementptr inbounds i32*, i32** %341, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* @ng_ppp_rcvdata_inet, align 4
  %346 = call i32 @NG_HOOK_SET_RCVDATA(i32* %344, i32 %345)
  br label %347

347:                                              ; preds = %338, %329
  br label %348

348:                                              ; preds = %347, %286
  ret void
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @bzero(i32**, i32) #1

declare dso_local i32 @ng_ppp_start_frag_timer(i32) #1

declare dso_local i32 @ng_ppp_stop_frag_timer(i32) #1

declare dso_local i32 @ng_ppp_frag_reset(i32) #1

declare dso_local i32 @NG_HOOK_SET_RCVDATA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
