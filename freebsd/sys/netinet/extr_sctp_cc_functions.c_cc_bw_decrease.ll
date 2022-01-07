; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_cc_bw_decrease.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_cc_bw_decrease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i64, i32, i32, i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i64, i64 }

@SCTP_INST_LOOSING = common dso_local global i64 0, align 8
@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@rttvar = common dso_local global i32 0, align 4
@rttstep = common dso_local global i32 0, align 4
@SCTP_INST_GAINING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32, i32, i64)* @cc_bw_decrease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_bw_decrease(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
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
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 32
  store i32 %20, i32* %15, align 4
  %21 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %22 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %25 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp sgt i32 %23, %30
  br i1 %31, label %32, label %218

32:                                               ; preds = %6
  %33 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %34 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %37 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %35, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %32
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @SCTP_INST_LOOSING, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %42
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, 65537
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @sctp, align 4
  %50 = load i32, i32* @cwnd, align 4
  %51 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %52 = load i32, i32* @rttvar, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %55 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %58, 32
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %63 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 32
  %68 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %69 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %67, %70
  %72 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %73 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @SDT_PROBE5(i32 %49, i32 %50, %struct.sctp_nets* %51, i32 %52, i32 %53, i32 %61, i32 %71, i32 %74, i32 %75)
  %77 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %78 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %46
  %84 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %85 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 1
  %88 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %89 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %91 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %90, i32 0, i32 6
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %83, %46
  store i32 1, i32* %7, align 4
  br label %506

93:                                               ; preds = %42, %32
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, 131072
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* @sctp, align 4
  %97 = load i32, i32* @cwnd, align 4
  %98 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %99 = load i32, i32* @rttvar, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %102 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 32
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %110 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %113, 32
  %115 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %116 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %114, %117
  %119 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %120 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @SDT_PROBE5(i32 %96, i32 %97, %struct.sctp_nets* %98, i32 %99, i32 %100, i32 %108, i32 %118, i32 %121, i32 %122)
  %124 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %125 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %217

130:                                              ; preds = %93
  %131 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %132 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = shl i32 %136, 16
  store i32 %137, i32* %14, align 4
  %138 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %139 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = shl i32 %145, 16
  store i32 %146, i32* %14, align 4
  %147 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %148 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %14, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* @sctp, align 4
  %155 = load i32, i32* @cwnd, align 4
  %156 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %157 = load i32, i32* @rttstep, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %160 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = shl i32 %163, 32
  %165 = load i32, i32* %10, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %168 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = shl i32 %171, 32
  %173 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %174 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %172, %175
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @SDT_PROBE5(i32 %154, i32 %155, %struct.sctp_nets* %156, i32 %157, i32 %158, i32 %166, i32 %176, i32 %177, i32 %178)
  %180 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %181 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %130
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* @SCTP_INST_GAINING, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %186
  %191 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %192 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %195 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %193
  store i64 %197, i64* %195, align 8
  %198 = load %struct.sctp_tcb*, %struct.sctp_tcb** %8, align 8
  %199 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %198, i32 0, i32 0
  %200 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %201 = call i32 @sctp_enforce_cwnd_limit(i32* %199, %struct.sctp_nets* %200)
  %202 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %203 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %190, %186, %130
  %209 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %210 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 5
  store i32 2, i32* %212, align 4
  %213 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %214 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 4
  store i32 0, i32* %216, align 8
  br label %217

217:                                              ; preds = %208, %93
  br label %481

218:                                              ; preds = %6
  %219 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %220 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %223 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sub nsw i32 %226, %227
  %229 = icmp slt i32 %221, %228
  br i1 %229, label %230, label %355

230:                                              ; preds = %218
  %231 = load i32, i32* %15, align 4
  %232 = or i32 %231, 196608
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* @sctp, align 4
  %234 = load i32, i32* @cwnd, align 4
  %235 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %236 = load i32, i32* @rttvar, align 4
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %239 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = shl i32 %242, 32
  %244 = load i32, i32* %10, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %247 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = shl i32 %250, 32
  %252 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %253 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %251, %254
  %256 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %257 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @SDT_PROBE5(i32 %233, i32 %234, %struct.sctp_nets* %235, i32 %236, i32 %237, i32 %245, i32 %255, i32 %258, i32 %259)
  %261 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %262 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %354

267:                                              ; preds = %230
  %268 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %269 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = shl i32 %273, 16
  store i32 %274, i32* %14, align 4
  %275 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %276 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %14, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %14, align 4
  %282 = load i32, i32* %14, align 4
  %283 = shl i32 %282, 16
  store i32 %283, i32* %14, align 4
  %284 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %285 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %14, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %14, align 4
  %291 = load i32, i32* @sctp, align 4
  %292 = load i32, i32* @cwnd, align 4
  %293 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %294 = load i32, i32* @rttstep, align 4
  %295 = load i32, i32* %12, align 4
  %296 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %297 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = shl i32 %300, 32
  %302 = load i32, i32* %10, align 4
  %303 = or i32 %301, %302
  %304 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %305 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = shl i32 %308, 32
  %310 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %311 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = or i32 %309, %312
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @SDT_PROBE5(i32 %291, i32 %292, %struct.sctp_nets* %293, i32 %294, i32 %295, i32 %303, i32 %313, i32 %314, i32 %315)
  %317 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %318 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %317, i32 0, i32 5
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %345

323:                                              ; preds = %267
  %324 = load i64, i64* %13, align 8
  %325 = load i64, i64* @SCTP_INST_GAINING, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %345

327:                                              ; preds = %323
  %328 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %329 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %328, i32 0, i32 4
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %332 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = add nsw i64 %333, %330
  store i64 %334, i64* %332, align 8
  %335 = load %struct.sctp_tcb*, %struct.sctp_tcb** %8, align 8
  %336 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %335, i32 0, i32 0
  %337 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %338 = call i32 @sctp_enforce_cwnd_limit(i32* %336, %struct.sctp_nets* %337)
  %339 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %340 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %339, i32 0, i32 5
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %343, -1
  store i32 %344, i32* %342, align 4
  br label %345

345:                                              ; preds = %327, %323, %267
  %346 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %347 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %346, i32 0, i32 5
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 5
  store i32 3, i32* %349, align 4
  %350 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %351 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 4
  store i32 0, i32* %353, align 8
  br label %354

354:                                              ; preds = %345, %230
  br label %481

355:                                              ; preds = %218
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %15, align 4
  %358 = or i32 %357, 262144
  store i32 %358, i32* %15, align 4
  %359 = load i32, i32* @sctp, align 4
  %360 = load i32, i32* @cwnd, align 4
  %361 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %362 = load i32, i32* @rttvar, align 4
  %363 = load i32, i32* %12, align 4
  %364 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %365 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = shl i32 %368, 32
  %370 = load i32, i32* %10, align 4
  %371 = or i32 %369, %370
  %372 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %373 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = shl i32 %376, 32
  %378 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %379 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %377, %380
  %382 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %383 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* %15, align 4
  %386 = call i32 @SDT_PROBE5(i32 %359, i32 %360, %struct.sctp_nets* %361, i32 %362, i32 %363, i32 %371, i32 %381, i32 %384, i32 %385)
  %387 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %388 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 6
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %480

393:                                              ; preds = %356
  %394 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %395 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  store i32 %398, i32* %14, align 4
  %399 = load i32, i32* %14, align 4
  %400 = shl i32 %399, 16
  store i32 %400, i32* %14, align 4
  %401 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %402 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 4
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* %14, align 4
  %407 = or i32 %406, %405
  store i32 %407, i32* %14, align 4
  %408 = load i32, i32* %14, align 4
  %409 = shl i32 %408, 16
  store i32 %409, i32* %14, align 4
  %410 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %411 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %410, i32 0, i32 5
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %14, align 4
  %416 = or i32 %415, %414
  store i32 %416, i32* %14, align 4
  %417 = load i32, i32* @sctp, align 4
  %418 = load i32, i32* @cwnd, align 4
  %419 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %420 = load i32, i32* @rttstep, align 4
  %421 = load i32, i32* %12, align 4
  %422 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %423 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = shl i32 %426, 32
  %428 = load i32, i32* %10, align 4
  %429 = or i32 %427, %428
  %430 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %431 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %430, i32 0, i32 5
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = shl i32 %434, 32
  %436 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %437 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = or i32 %435, %438
  %440 = load i32, i32* %14, align 4
  %441 = load i32, i32* %15, align 4
  %442 = call i32 @SDT_PROBE5(i32 %417, i32 %418, %struct.sctp_nets* %419, i32 %420, i32 %421, i32 %429, i32 %439, i32 %440, i32 %441)
  %443 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %444 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %471

449:                                              ; preds = %393
  %450 = load i64, i64* %13, align 8
  %451 = load i64, i64* @SCTP_INST_GAINING, align 8
  %452 = icmp ne i64 %450, %451
  br i1 %452, label %453, label %471

453:                                              ; preds = %449
  %454 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %455 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %454, i32 0, i32 4
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %458 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = add nsw i64 %459, %456
  store i64 %460, i64* %458, align 8
  %461 = load %struct.sctp_tcb*, %struct.sctp_tcb** %8, align 8
  %462 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %461, i32 0, i32 0
  %463 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %464 = call i32 @sctp_enforce_cwnd_limit(i32* %462, %struct.sctp_nets* %463)
  %465 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %466 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %465, i32 0, i32 5
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = add nsw i32 %469, -1
  store i32 %470, i32* %468, align 4
  br label %471

471:                                              ; preds = %453, %449, %393
  %472 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %473 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %472, i32 0, i32 5
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 5
  store i32 4, i32* %475, align 4
  %476 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %477 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 4
  store i32 0, i32* %479, align 8
  br label %480

480:                                              ; preds = %471, %356
  br label %481

481:                                              ; preds = %480, %354, %217
  %482 = load i32, i32* %10, align 4
  %483 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %484 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %483, i32 0, i32 5
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 2
  store i32 %482, i32* %486, align 8
  %487 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %488 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %491 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %490, i32 0, i32 5
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %492, i32 0, i32 0
  store i32 %489, i32* %493, align 8
  %494 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %495 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %498 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %497, i32 0, i32 5
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i32 0, i32 1
  store i64 %496, i64* %500, align 8
  %501 = load i64, i64* %13, align 8
  %502 = load i64, i64* @SCTP_INST_GAINING, align 8
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %481
  store i32 1, i32* %7, align 4
  br label %506

505:                                              ; preds = %481
  store i32 0, i32* %7, align 4
  br label %506

506:                                              ; preds = %505, %504, %92
  %507 = load i32, i32* %7, align 4
  ret i32 %507
}

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_enforce_cwnd_limit(i32*, %struct.sctp_nets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
