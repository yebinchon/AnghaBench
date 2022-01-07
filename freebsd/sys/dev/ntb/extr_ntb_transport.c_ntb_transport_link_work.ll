; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_link_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_link_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, i32, i32, i32, i32, i64, %struct.ntb_transport_ctx*, i32, %struct.ntb_transport_mw*, i64 }
%struct.ntb_transport_mw = type { i32, i32, i32, i32, i32 }
%struct.ntb_transport_qp = type { i32, i32, i32, i32, i32, i32, i64, %struct.ntb_transport_qp*, i32, %struct.ntb_transport_mw*, i64 }

@UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"size too big (%jx)\00", align 1
@NTBTC_MW0_SZ = common dso_local global i64 0, align 8
@NTBTC_QP_LINKS = common dso_local global i64 0, align 8
@NTBTC_PARAMS = common dso_local global i64 0, align 8
@NTB_TRANSPORT_VERSION = common dso_local global i32 0, align 4
@NTBT_MW0_SZ_HIGH = common dso_local global i64 0, align 8
@NTBT_MW0_SZ_LOW = common dso_local global i64 0, align 8
@NTBT_NUM_MWS = common dso_local global i64 0, align 8
@NTBT_NUM_QPS = common dso_local global i64 0, align 8
@NTBT_QP_LINKS = common dso_local global i64 0, align 8
@NTBT_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"link up set mw%d fails, rc %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"link up mw%d xlat fails, rc %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"transport link up\0A\00", align 1
@NTB_LINK_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_transport_link_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_link_work(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca %struct.ntb_transport_mw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.ntb_transport_ctx*
  store %struct.ntb_transport_ctx* %13, %struct.ntb_transport_ctx** %3, align 8
  %14 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %52, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %22
  %29 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %29, i32 0, i32 9
  %31 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %31, i64 %33
  %35 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @UINT32_MAX, align 4
  %39 = icmp sle i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %40, i8* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* @NTBTC_MW0_SZ, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ntb_peer_spad_write(i32 %45, i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load i32, i32* %5, align 4
  %57 = load i64, i64* @NTBTC_QP_LINKS, align 8
  %58 = call i32 @ntb_peer_spad_write(i32 %56, i64 %57, i32 0)
  %59 = load i32, i32* %5, align 4
  %60 = load i64, i64* @NTBTC_PARAMS, align 8
  %61 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 24
  %65 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 16
  %69 = or i32 %64, %68
  %70 = load i32, i32* @NTB_TRANSPORT_VERSION, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @ntb_peer_spad_write(i32 %59, i64 %60, i32 %71)
  br label %129

73:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %106, %73
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %74
  %81 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %81, i32 0, i32 9
  %83 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %83, i64 %85
  %87 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i64, i64* @NTBT_MW0_SZ_HIGH, align 8
  %91 = load i32, i32* %10, align 4
  %92 = mul i32 %91, 2
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 %95, 32
  %97 = call i32 @ntb_peer_spad_write(i32 %89, i64 %94, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i64, i64* @NTBT_MW0_SZ_LOW, align 8
  %100 = load i32, i32* %10, align 4
  %101 = mul i32 %100, 2
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @ntb_peer_spad_write(i32 %98, i64 %103, i32 %104)
  br label %106

106:                                              ; preds = %80
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %74

109:                                              ; preds = %74
  %110 = load i32, i32* %5, align 4
  %111 = load i64, i64* @NTBT_NUM_MWS, align 8
  %112 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ntb_peer_spad_write(i32 %110, i64 %111, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = load i64, i64* @NTBT_NUM_QPS, align 8
  %118 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %119 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ntb_peer_spad_write(i32 %116, i64 %117, i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = load i64, i64* @NTBT_QP_LINKS, align 8
  %124 = call i32 @ntb_peer_spad_write(i32 %122, i64 %123, i32 0)
  %125 = load i32, i32* %5, align 4
  %126 = load i64, i64* @NTBT_VERSION, align 8
  %127 = load i32, i32* @NTB_TRANSPORT_VERSION, align 4
  %128 = call i32 @ntb_peer_spad_write(i32 %125, i64 %126, i32 %127)
  br label %129

129:                                              ; preds = %109, %55
  store i32 0, i32* %9, align 4
  %130 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %131 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %129
  %135 = load i32, i32* %5, align 4
  %136 = load i64, i64* @NTBTC_PARAMS, align 8
  %137 = call i32 @ntb_spad_read(i32 %135, i64 %136, i32* %9)
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %140 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 24
  %143 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %145, 16
  %147 = or i32 %142, %146
  %148 = load i32, i32* @NTB_TRANSPORT_VERSION, align 4
  %149 = or i32 %147, %148
  %150 = icmp ne i32 %138, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  br label %329

152:                                              ; preds = %134
  br label %182

153:                                              ; preds = %129
  %154 = load i32, i32* %5, align 4
  %155 = load i64, i64* @NTBT_VERSION, align 8
  %156 = call i32 @ntb_spad_read(i32 %154, i64 %155, i32* %9)
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @NTB_TRANSPORT_VERSION, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %329

161:                                              ; preds = %153
  %162 = load i32, i32* %5, align 4
  %163 = load i64, i64* @NTBT_NUM_QPS, align 8
  %164 = call i32 @ntb_spad_read(i32 %162, i64 %163, i32* %9)
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %167 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %329

171:                                              ; preds = %161
  %172 = load i32, i32* %5, align 4
  %173 = load i64, i64* @NTBT_NUM_MWS, align 8
  %174 = call i32 @ntb_spad_read(i32 %172, i64 %173, i32* %9)
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %177 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %175, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %329

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181, %152
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %274, %182
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %186 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ult i32 %184, %187
  br i1 %188, label %189, label %277

189:                                              ; preds = %183
  %190 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %191 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %190, i32 0, i32 10
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load i32, i32* %5, align 4
  %196 = load i64, i64* @NTBTC_MW0_SZ, align 8
  %197 = load i32, i32* %10, align 4
  %198 = zext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  %200 = call i32 @ntb_spad_read(i32 %195, i64 %199, i32* %9)
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %7, align 4
  br label %222

202:                                              ; preds = %189
  %203 = load i32, i32* %5, align 4
  %204 = load i64, i64* @NTBT_MW0_SZ_HIGH, align 8
  %205 = load i32, i32* %10, align 4
  %206 = mul i32 %205, 2
  %207 = zext i32 %206 to i64
  %208 = add nsw i64 %204, %207
  %209 = call i32 @ntb_spad_read(i32 %203, i64 %208, i32* %9)
  %210 = load i32, i32* %9, align 4
  %211 = shl i32 %210, 32
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %5, align 4
  %213 = load i64, i64* @NTBT_MW0_SZ_LOW, align 8
  %214 = load i32, i32* %10, align 4
  %215 = mul i32 %214, 2
  %216 = zext i32 %215 to i64
  %217 = add nsw i64 %213, %216
  %218 = call i32 @ntb_spad_read(i32 %212, i64 %217, i32* %9)
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %7, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %202, %194
  %223 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %224 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %223, i32 0, i32 9
  %225 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %225, i64 %227
  store %struct.ntb_transport_mw* %228, %struct.ntb_transport_mw** %4, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %4, align 8
  %231 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %4, align 8
  %234 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @roundup(i32 %232, i32 %235)
  store i32 %236, i32* %7, align 4
  %237 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %4, align 8
  %238 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %7, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %273

242:                                              ; preds = %222
  %243 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %244 = bitcast %struct.ntb_transport_ctx* %243 to %struct.ntb_transport_qp*
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @ntb_set_mw(%struct.ntb_transport_qp* %244, i32 %245, i32 %246)
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %242
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %11, align 4
  %253 = call i32 (i32, i8*, ...) @ntb_printf(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %251, i32 %252)
  br label %313

254:                                              ; preds = %242
  %255 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %256 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %4, align 8
  %260 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %4, align 8
  %263 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @ntb_mw_set_trans(i32 %257, i32 %258, i32 %261, i32 %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %254
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* %11, align 4
  %271 = call i32 (i32, i8*, ...) @ntb_printf(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %269, i32 %270)
  br label %313

272:                                              ; preds = %254
  br label %273

273:                                              ; preds = %272, %222
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %10, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %183

277:                                              ; preds = %183
  %278 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %279 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %278, i32 0, i32 2
  store i32 1, i32* %279, align 8
  %280 = call i32 (i32, i8*, ...) @ntb_printf(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %281

281:                                              ; preds = %309, %277
  %282 = load i32, i32* %10, align 4
  %283 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %284 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp ult i32 %282, %285
  br i1 %286, label %287, label %312

287:                                              ; preds = %281
  %288 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %289 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %288, i32 0, i32 7
  %290 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %290, i64 %292
  %294 = bitcast %struct.ntb_transport_ctx* %293 to %struct.ntb_transport_qp*
  store %struct.ntb_transport_qp* %294, %struct.ntb_transport_qp** %6, align 8
  %295 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %296 = bitcast %struct.ntb_transport_ctx* %295 to %struct.ntb_transport_qp*
  %297 = load i32, i32* %10, align 4
  %298 = call i32 @ntb_transport_setup_qp_mw(%struct.ntb_transport_qp* %296, i32 %297)
  %299 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %300 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %299, i32 0, i32 6
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %287
  %304 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %305 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %304, i32 0, i32 3
  %306 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %307 = call i32 @callout_reset(i32* %305, i32 0, void (i8*)* @ntb_qp_link_work, %struct.ntb_transport_qp* %306)
  br label %308

308:                                              ; preds = %303, %287
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %10, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %10, align 4
  br label %281

312:                                              ; preds = %281
  br label %347

313:                                              ; preds = %268, %250
  store i32 0, i32* %10, align 4
  br label %314

314:                                              ; preds = %325, %313
  %315 = load i32, i32* %10, align 4
  %316 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %317 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %320, label %328

320:                                              ; preds = %314
  %321 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %322 = bitcast %struct.ntb_transport_ctx* %321 to %struct.ntb_transport_qp*
  %323 = load i32, i32* %10, align 4
  %324 = call i32 @ntb_free_mw(%struct.ntb_transport_qp* %322, i32 %323)
  br label %325

325:                                              ; preds = %320
  %326 = load i32, i32* %10, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %10, align 4
  br label %314

328:                                              ; preds = %314
  br label %329

329:                                              ; preds = %328, %180, %170, %160, %151
  %330 = load i32, i32* %5, align 4
  %331 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %332 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %331, i32 0, i32 5
  %333 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %334 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %333, i32 0, i32 4
  %335 = call i64 @ntb_link_is_up(i32 %330, i32* %332, i32* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %329
  %338 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %339 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %338, i32 0, i32 3
  %340 = load i32, i32* @NTB_LINK_DOWN_TIMEOUT, align 4
  %341 = load i32, i32* @hz, align 4
  %342 = mul nsw i32 %340, %341
  %343 = sdiv i32 %342, 1000
  %344 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %345 = bitcast %struct.ntb_transport_ctx* %344 to %struct.ntb_transport_qp*
  %346 = call i32 @callout_reset(i32* %339, i32 %343, void (i8*)* @ntb_transport_link_work, %struct.ntb_transport_qp* %345)
  br label %347

347:                                              ; preds = %312, %337, %329
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ntb_peer_spad_write(i32, i64, i32) #1

declare dso_local i32 @ntb_spad_read(i32, i64, i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @ntb_set_mw(%struct.ntb_transport_qp*, i32, i32) #1

declare dso_local i32 @ntb_printf(i32, i8*, ...) #1

declare dso_local i32 @ntb_mw_set_trans(i32, i32, i32, i32) #1

declare dso_local i32 @ntb_transport_setup_qp_mw(%struct.ntb_transport_qp*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ntb_transport_qp*) #1

declare dso_local void @ntb_qp_link_work(i8*) #1

declare dso_local i32 @ntb_free_mw(%struct.ntb_transport_qp*, i32) #1

declare dso_local i64 @ntb_link_is_up(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
