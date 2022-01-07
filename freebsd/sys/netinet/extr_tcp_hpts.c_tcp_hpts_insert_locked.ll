; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_hpts_insert_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_hpts_insert_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_hpts_entry = type { i64, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.inpcb = type { i64, i32, i32 }
%struct.hpts_diag = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32, i64 }

@HPTS_TICKS_PER_USEC = common dso_local global i32 0, align 4
@HPTS_USEC_IN_SEC = common dso_local global i32 0, align 4
@tcp_hpts_callout_skip_swi = common dso_local global i64 0, align 8
@hpts_timeout_swi = common dso_local global i32 0, align 4
@C_DIRECT_EXEC = common dso_local global i32 0, align 4
@tcp_hpts_precision = common dso_local global i32 0, align 4
@hpts_timeout_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_hpts_entry*, %struct.inpcb*, i32, i32, %struct.hpts_diag*, %struct.timeval*)* @tcp_hpts_insert_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_hpts_insert_locked(%struct.tcp_hpts_entry* %0, %struct.inpcb* %1, i32 %2, i32 %3, %struct.hpts_diag* %4, %struct.timeval* %5) #0 {
  %7 = alloca %struct.tcp_hpts_entry*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpts_diag*, align 8
  %12 = alloca %struct.timeval*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.timeval, align 8
  %23 = alloca i32, align 4
  store %struct.tcp_hpts_entry* %0, %struct.tcp_hpts_entry** %7, align 8
  store %struct.inpcb* %1, %struct.inpcb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.hpts_diag* %4, %struct.hpts_diag** %11, align 8
  store %struct.timeval* %5, %struct.timeval** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %24 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %25 = call i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry* %24)
  %26 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %27 = icmp ne %struct.hpts_diag* %26, null
  br i1 %27, label %28, label %79

28:                                               ; preds = %6
  %29 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %30 = call i32 @memset(%struct.hpts_diag* %29, i32 0, i32 88)
  %31 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %32 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %35 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %37 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %40 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %39, i32 0, i32 18
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %42 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %45 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %44, i32 0, i32 17
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %47 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %50 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %49, i32 0, i32 16
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %52 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %55 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %54, i32 0, i32 15
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %57 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %60 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %59, i32 0, i32 14
  store i32 %58, i32* %60, align 4
  %61 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %65 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %68 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %70 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %73 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %75 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %78 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %28, %6
  %80 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %81 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %317

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %89 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @tcp_queue_to_hpts_immediate_locked(%struct.inpcb* %88, %struct.tcp_hpts_entry* %89, i32 %90, i32 0)
  br label %318

92:                                               ; preds = %84
  %93 = load %struct.timeval*, %struct.timeval** %12, align 8
  %94 = call i32 @tcp_tv_to_hptstick(%struct.timeval* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @tick_to_wheel(i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @max_ticks_available(%struct.tcp_hpts_entry* %97, i32 %98, i32* %15)
  store i32 %99, i32* %17, align 4
  %100 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %101 = icmp ne %struct.hpts_diag* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %92
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %105 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %108 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %111 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %102, %92
  %113 = load i32, i32* %17, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %124 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %127 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %150

128:                                              ; preds = %112
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %134 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %133, i32 0, i32 2
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @hpts_tick(i32 %135, i32 %136)
  %138 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %139 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %149

140:                                              ; preds = %128
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %17, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %145 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %148 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %140, %132
  br label %150

150:                                              ; preds = %149, %121
  %151 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %152 = icmp ne %struct.hpts_diag* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %155 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %158 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 8
  %159 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %160 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %163 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %153, %150
  %165 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %166 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %167 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %168 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %167, i32 0, i32 7
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %171 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @hpts_sane_pace_insert(%struct.tcp_hpts_entry* %165, %struct.inpcb* %166, i32* %174, i32 %175, i32 0)
  %177 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %178 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %234

181:                                              ; preds = %164
  %182 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %183 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %234

186:                                              ; preds = %181
  %187 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %188 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %234

191:                                              ; preds = %186
  %192 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %193 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = call i32 @hpts_ticks_diff(i32 %194, i32 %195)
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %199 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %191
  %203 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %204 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %19, align 4
  %207 = sub nsw i32 %205, %206
  store i32 %207, i32* %20, align 4
  br label %209

208:                                              ; preds = %191
  store i32 0, i32* %20, align 4
  store i32 1, i32* %18, align 4
  br label %209

209:                                              ; preds = %208, %202
  %210 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %211 = icmp ne %struct.hpts_diag* %210, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load i32, i32* %19, align 4
  %214 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %215 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %214, i32 0, i32 9
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %20, align 4
  %217 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %218 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %217, i32 0, i32 10
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %212, %209
  %220 = load i32, i32* %20, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %219
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %229 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @HPTS_TICKS_PER_USEC, align 4
  %232 = mul nsw i32 %230, %231
  store i32 %232, i32* %13, align 4
  br label %233

233:                                              ; preds = %226, %222, %219
  br label %234

234:                                              ; preds = %233, %186, %181, %164
  %235 = load i32, i32* %18, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %234
  %238 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %239 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %238, i32 0, i32 3
  store i32 1, i32* %239, align 4
  %240 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %241 = call i32 @tcp_wakehpts(%struct.tcp_hpts_entry* %240)
  %242 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %243 = icmp ne %struct.hpts_diag* %242, null
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  %245 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %246 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %245, i32 0, i32 11
  store i32 0, i32* %246, align 8
  %247 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %248 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %247, i32 0, i32 12
  store i32 -65536, i32* %248, align 4
  br label %249

249:                                              ; preds = %244, %237
  br label %316

250:                                              ; preds = %234
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %315

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  store i64 0, i64* %254, align 8
  %255 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i32 0, i32* %255, align 8
  br label %256

256:                                              ; preds = %260, %253
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* @HPTS_USEC_IN_SEC, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %267

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %261, align 8
  %264 = load i32, i32* @HPTS_USEC_IN_SEC, align 4
  %265 = load i32, i32* %13, align 4
  %266 = sub nsw i32 %265, %264
  store i32 %266, i32* %13, align 4
  br label %256

267:                                              ; preds = %256
  %268 = load i32, i32* %13, align 4
  %269 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i32 %268, i32* %269, align 8
  %270 = bitcast %struct.timeval* %22 to { i32, i64 }*
  %271 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %270, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @tvtosbt(i32 %272, i64 %274)
  store i32 %275, i32* %23, align 4
  %276 = load i64, i64* @tcp_hpts_callout_skip_swi, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %292

278:                                              ; preds = %267
  %279 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %280 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %279, i32 0, i32 5
  %281 = load i32, i32* %23, align 4
  %282 = load i32, i32* @hpts_timeout_swi, align 4
  %283 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %284 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %285 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @C_DIRECT_EXEC, align 4
  %288 = load i32, i32* @tcp_hpts_precision, align 4
  %289 = call i32 @C_PREL(i32 %288)
  %290 = or i32 %287, %289
  %291 = call i32 @callout_reset_sbt_on(i32* %280, i32 %281, i32 0, i32 %282, %struct.tcp_hpts_entry* %283, i32 %286, i32 %290)
  store i32 %291, i32* %21, align 4
  br label %304

292:                                              ; preds = %267
  %293 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %294 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %293, i32 0, i32 5
  %295 = load i32, i32* %23, align 4
  %296 = load i32, i32* @hpts_timeout_dir, align 4
  %297 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %298 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %299 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @tcp_hpts_precision, align 4
  %302 = call i32 @C_PREL(i32 %301)
  %303 = call i32 @callout_reset_sbt_on(i32* %294, i32 %295, i32 0, i32 %296, %struct.tcp_hpts_entry* %297, i32 %300, i32 %302)
  store i32 %303, i32* %21, align 4
  br label %304

304:                                              ; preds = %292, %278
  %305 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %306 = icmp ne %struct.hpts_diag* %305, null
  br i1 %306, label %307, label %314

307:                                              ; preds = %304
  %308 = load i32, i32* %13, align 4
  %309 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %310 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %309, i32 0, i32 11
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* %21, align 4
  %312 = load %struct.hpts_diag*, %struct.hpts_diag** %11, align 8
  %313 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %312, i32 0, i32 12
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %307, %304
  br label %315

315:                                              ; preds = %314, %250
  br label %316

316:                                              ; preds = %315, %249
  br label %318

317:                                              ; preds = %79
  br label %318

318:                                              ; preds = %87, %317, %316
  ret void
}

declare dso_local i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry*) #1

declare dso_local i32 @memset(%struct.hpts_diag*, i32, i32) #1

declare dso_local i32 @tcp_queue_to_hpts_immediate_locked(%struct.inpcb*, %struct.tcp_hpts_entry*, i32, i32) #1

declare dso_local i32 @tcp_tv_to_hptstick(%struct.timeval*) #1

declare dso_local i32 @tick_to_wheel(i32) #1

declare dso_local i32 @max_ticks_available(%struct.tcp_hpts_entry*, i32, i32*) #1

declare dso_local i32 @hpts_tick(i32, i32) #1

declare dso_local i32 @hpts_sane_pace_insert(%struct.tcp_hpts_entry*, %struct.inpcb*, i32*, i32, i32) #1

declare dso_local i32 @hpts_ticks_diff(i32, i32) #1

declare dso_local i32 @tcp_wakehpts(%struct.tcp_hpts_entry*) #1

declare dso_local i32 @tvtosbt(i32, i64) #1

declare dso_local i32 @callout_reset_sbt_on(i32*, i32, i32, i32, %struct.tcp_hpts_entry*, i32, i32) #1

declare dso_local i32 @C_PREL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
