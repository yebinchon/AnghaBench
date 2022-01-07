; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_cc_bw_same.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_cc_bw_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@rttvar = common dso_local global i32 0, align 4
@SCTP_INST_LOOSING = common dso_local global i64 0, align 8
@rttstep = common dso_local global i32 0, align 4
@SCTP_INST_GAINING = common dso_local global i64 0, align 8
@SCTP_INST_NEUTRAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32, i32, i64)* @cc_bw_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_bw_same(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_tcb*, align 8
  %9 = alloca %struct.sctp_nets*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %8, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %17 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %21 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %24 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp sgt i32 %22, %29
  br i1 %30, label %31, label %212

31:                                               ; preds = %6
  %32 = load i32, i32* %15, align 4
  %33 = or i32 %32, 327681
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* @sctp, align 4
  %35 = load i32, i32* @cwnd, align 4
  %36 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %37 = load i32, i32* @rttvar, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %40 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 32
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %48 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 32
  %53 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %54 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %58 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @SDT_PROBE5(i32 %34, i32 %35, %struct.sctp_nets* %36, i32 %37, i32 %38, i32 %46, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %63 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %211

68:                                               ; preds = %31
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @SCTP_INST_LOOSING, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %211

72:                                               ; preds = %68
  %73 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %74 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 5
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %81 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %91

86:                                               ; preds = %72
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %88 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %93 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store i32 5, i32* %95, align 4
  %96 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %97 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %102 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %100, %105
  br i1 %106, label %132, label %107

107:                                              ; preds = %91
  %108 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %109 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %114 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %112, %117
  br i1 %118, label %119, label %210

119:                                              ; preds = %107
  %120 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %121 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %126 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = srem i32 %124, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %210

132:                                              ; preds = %119, %91
  %133 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %134 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = shl i32 %138, 16
  store i32 %139, i32* %14, align 4
  %140 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %141 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %14, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = shl i32 %147, 16
  store i32 %148, i32* %14, align 4
  %149 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %150 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %14, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* @sctp, align 4
  %157 = load i32, i32* @cwnd, align 4
  %158 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %159 = load i32, i32* @rttstep, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %162 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 32
  %167 = load i32, i32* %10, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %170 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 32
  %175 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %176 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %174, %177
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @SDT_PROBE5(i32 %156, i32 %157, %struct.sctp_nets* %158, i32 %159, i32 %160, i32 %168, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %183 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %186 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 4, %187
  %189 = icmp sgt i32 %184, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %132
  %191 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %192 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %195 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %199 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  br label %209

204:                                              ; preds = %132
  %205 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %206 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 4
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %204, %190
  br label %210

210:                                              ; preds = %209, %119, %107
  br label %211

211:                                              ; preds = %210, %68, %31
  store i32 1, i32* %7, align 4
  br label %527

212:                                              ; preds = %6
  %213 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %214 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %217 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %11, align 4
  %222 = sub nsw i32 %220, %221
  %223 = icmp slt i32 %215, %222
  br i1 %223, label %224, label %374

224:                                              ; preds = %212
  %225 = load i32, i32* %15, align 4
  %226 = or i32 %225, 393216
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* @sctp, align 4
  %228 = load i32, i32* @cwnd, align 4
  %229 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %230 = load i32, i32* @rttvar, align 4
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %233 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = shl i32 %236, 32
  %238 = load i32, i32* %10, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %241 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 32
  %246 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %247 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %245, %248
  %250 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %251 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %15, align 4
  %254 = call i32 @SDT_PROBE5(i32 %227, i32 %228, %struct.sctp_nets* %229, i32 %230, i32 %231, i32 %239, i32 %249, i32 %252, i32 %253)
  %255 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %256 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %344

261:                                              ; preds = %224
  %262 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %263 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %14, align 4
  %267 = load i32, i32* %14, align 4
  %268 = shl i32 %267, 16
  store i32 %268, i32* %14, align 4
  %269 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %270 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %14, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %14, align 4
  %277 = shl i32 %276, 16
  store i32 %277, i32* %14, align 4
  %278 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %279 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %14, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %14, align 4
  %285 = load i32, i32* @sctp, align 4
  %286 = load i32, i32* @cwnd, align 4
  %287 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %288 = load i32, i32* @rttstep, align 4
  %289 = load i32, i32* %12, align 4
  %290 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %291 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 32
  %296 = load i32, i32* %10, align 4
  %297 = or i32 %295, %296
  %298 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %299 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = shl i32 %302, 32
  %304 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %305 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %303, %306
  %308 = load i32, i32* %14, align 4
  %309 = load i32, i32* %15, align 4
  %310 = call i32 @SDT_PROBE5(i32 %285, i32 %286, %struct.sctp_nets* %287, i32 %288, i32 %289, i32 %297, i32 %307, i32 %308, i32 %309)
  %311 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %312 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 5
  br i1 %316, label %317, label %334

317:                                              ; preds = %261
  %318 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %319 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %324 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = icmp sgt i32 %322, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %317
  %330 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %331 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %330, i32 0, i32 4
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 4
  store i32 0, i32* %333, align 4
  store i32 1, i32* %7, align 4
  br label %527

334:                                              ; preds = %317, %261
  %335 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %336 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %335, i32 0, i32 4
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 3
  store i32 6, i32* %338, align 4
  %339 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %340 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 4
  store i32 0, i32* %342, align 4
  br label %343

343:                                              ; preds = %334
  br label %344

344:                                              ; preds = %343, %224
  %345 = load i32, i32* %10, align 4
  %346 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %347 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %346, i32 0, i32 4
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 1
  store i32 %345, i32* %349, align 4
  %350 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %351 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %354 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 0
  store i32 %352, i32* %356, align 4
  %357 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %358 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %361 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 6
  store i32 %359, i32* %363, align 4
  %364 = load i64, i64* %13, align 8
  %365 = load i64, i64* @SCTP_INST_GAINING, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %344
  store i32 1, i32* %7, align 4
  br label %527

368:                                              ; preds = %344
  %369 = load i64, i64* %13, align 8
  %370 = load i64, i64* @SCTP_INST_NEUTRAL, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %368
  store i32 1, i32* %7, align 4
  br label %527

373:                                              ; preds = %368
  store i32 0, i32* %7, align 4
  br label %527

374:                                              ; preds = %212
  %375 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %376 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 4
  %380 = or i32 458752, %379
  %381 = load i32, i32* %15, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %15, align 4
  %383 = load i32, i32* @sctp, align 4
  %384 = load i32, i32* @cwnd, align 4
  %385 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %386 = load i32, i32* @rttvar, align 4
  %387 = load i32, i32* %12, align 4
  %388 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %389 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %388, i32 0, i32 4
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = shl i32 %392, 32
  %394 = load i32, i32* %10, align 4
  %395 = or i32 %393, %394
  %396 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %397 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %396, i32 0, i32 4
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = shl i32 %400, 32
  %402 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %403 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = or i32 %401, %404
  %406 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %407 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %15, align 4
  %410 = call i32 @SDT_PROBE5(i32 %383, i32 %384, %struct.sctp_nets* %385, i32 %386, i32 %387, i32 %395, i32 %405, i32 %408, i32 %409)
  %411 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %412 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %411, i32 0, i32 4
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %511

417:                                              ; preds = %374
  %418 = load i64, i64* %13, align 8
  %419 = load i64, i64* @SCTP_INST_LOOSING, align 8
  %420 = icmp ne i64 %418, %419
  br i1 %420, label %421, label %511

421:                                              ; preds = %417
  %422 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %423 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %422, i32 0, i32 4
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = icmp eq i32 %426, 5
  br i1 %427, label %428, label %435

428:                                              ; preds = %421
  %429 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %430 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %429, i32 0, i32 4
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %432, align 4
  br label %440

435:                                              ; preds = %421
  %436 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %437 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %436, i32 0, i32 4
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 4
  store i32 1, i32* %439, align 4
  br label %440

440:                                              ; preds = %435, %428
  %441 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %442 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %441, i32 0, i32 4
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 3
  store i32 5, i32* %444, align 4
  %445 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %446 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %445, i32 0, i32 4
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %451 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %450, i32 0, i32 4
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = icmp eq i32 %449, %454
  br i1 %455, label %481, label %456

456:                                              ; preds = %440
  %457 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %458 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %457, i32 0, i32 4
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %459, i32 0, i32 4
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %463 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %462, i32 0, i32 4
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 4
  %467 = icmp sgt i32 %461, %466
  br i1 %467, label %468, label %510

468:                                              ; preds = %456
  %469 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %470 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %469, i32 0, i32 4
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %475 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %474, i32 0, i32 4
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 4
  %479 = srem i32 %473, %478
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %510

481:                                              ; preds = %468, %440
  %482 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %483 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %486 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %485, i32 0, i32 3
  %487 = load i32, i32* %486, align 4
  %488 = mul nsw i32 4, %487
  %489 = icmp sgt i32 %484, %488
  br i1 %489, label %490, label %504

490:                                              ; preds = %481
  %491 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %492 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %495 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = sub nsw i32 %496, %493
  store i32 %497, i32* %495, align 4
  %498 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %499 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %498, i32 0, i32 4
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i32 0, i32 5
  %502 = load i32, i32* %501, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %501, align 4
  store i32 1, i32* %7, align 4
  br label %527

504:                                              ; preds = %481
  %505 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %506 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %505, i32 0, i32 4
  %507 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %507, i32 0, i32 4
  store i32 0, i32* %508, align 4
  br label %509

509:                                              ; preds = %504
  br label %510

510:                                              ; preds = %509, %468, %456
  br label %511

511:                                              ; preds = %510, %417, %374
  %512 = load i64, i64* %13, align 8
  %513 = load i64, i64* @SCTP_INST_GAINING, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %515, label %516

515:                                              ; preds = %511
  store i32 1, i32* %7, align 4
  br label %527

516:                                              ; preds = %511
  %517 = load i64, i64* %13, align 8
  %518 = load i64, i64* @SCTP_INST_NEUTRAL, align 8
  %519 = icmp eq i64 %517, %518
  br i1 %519, label %520, label %521

520:                                              ; preds = %516
  store i32 1, i32* %7, align 4
  br label %527

521:                                              ; preds = %516
  %522 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %523 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %522, i32 0, i32 4
  %524 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %524, i32 0, i32 7
  %526 = load i32, i32* %525, align 4
  store i32 %526, i32* %7, align 4
  br label %527

527:                                              ; preds = %521, %520, %515, %490, %373, %372, %367, %329, %211
  %528 = load i32, i32* %7, align 4
  ret i32 %528
}

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
