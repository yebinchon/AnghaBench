; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_calculate_rto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_calculate_rto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.sctp_association = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.sctp_tcb*, %struct.sctp_nets*, %struct.timeval*)* }
%struct.sctp_nets = type { i32, i64, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }

@SCTP_RTO_UPPER_BOUND = common dso_local global i32 0, align 4
@SCTP_RTT_FROM_DATA = common dso_local global i32 0, align 4
@SCTP_LAN_UNKNOWN = common dso_local global i64 0, align 8
@SCTP_LOCAL_LAN_RTT = common dso_local global i32 0, align 4
@SCTP_LAN_INTERNET = common dso_local global i64 0, align 8
@SCTP_LAN_LOCAL = common dso_local global i64 0, align 8
@SCTP_RTT_SHIFT = common dso_local global i32 0, align 4
@SCTP_RTT_VAR_SHIFT = common dso_local global i32 0, align 4
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_RTTVAR_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_LOG_RTTVAR = common dso_local global i32 0, align 4
@SCTP_LOG_INITIAL_RTT = common dso_local global i32 0, align 4
@SCTP_CLOCK_GRANULARITY = common dso_local global i32 0, align 4
@SCTP_SAT_NETWORK_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_calculate_rto(%struct.sctp_tcb* %0, %struct.sctp_association* %1, %struct.sctp_nets* %2, %struct.timeval* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_tcb*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_nets*, align 8
  %10 = alloca %struct.timeval*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %9, align 8
  store %struct.timeval* %3, %struct.timeval** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %18 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = call i32 @SCTP_GETPTIME_TIMEVAL(%struct.timeval* %12)
  br label %26

24:                                               ; preds = %5
  %25 = call i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval* %12)
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.timeval*, %struct.timeval** %10, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = load %struct.timeval*, %struct.timeval** %10, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.timeval*, %struct.timeval** %10, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %26
  store i32 0, i32* %6, align 4
  br label %261

48:                                               ; preds = %40, %33
  %49 = load %struct.timeval*, %struct.timeval** %10, align 8
  %50 = call i32 @timevalsub(%struct.timeval* %12, %struct.timeval* %49)
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = mul nsw i32 1000000, %53
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = add nsw i32 %54, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @SCTP_RTO_UPPER_BOUND, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %261

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %67 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %69 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sdiv i32 %70, 1000
  store i32 %71, i32* %14, align 4
  %72 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %73 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.sctp_tcb*, %struct.sctp_nets*, %struct.timeval*)*, i32 (%struct.sctp_tcb*, %struct.sctp_nets*, %struct.timeval*)** %74, align 8
  %76 = icmp ne i32 (%struct.sctp_tcb*, %struct.sctp_nets*, %struct.timeval*)* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %64
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @SCTP_RTT_FROM_DATA, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %83 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32 (%struct.sctp_tcb*, %struct.sctp_nets*, %struct.timeval*)*, i32 (%struct.sctp_tcb*, %struct.sctp_nets*, %struct.timeval*)** %84, align 8
  %86 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %88 = call i32 %85(%struct.sctp_tcb* %86, %struct.sctp_nets* %87, %struct.timeval* %12)
  br label %89

89:                                               ; preds = %81, %77, %64
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @SCTP_RTT_FROM_DATA, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %95 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SCTP_LAN_UNKNOWN, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %101 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SCTP_LOCAL_LAN_RTT, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i64, i64* @SCTP_LAN_INTERNET, align 8
  %107 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %108 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %113

109:                                              ; preds = %99
  %110 = load i64, i64* @SCTP_LAN_LOCAL, align 8
  %111 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %112 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %93, %89
  %115 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %116 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %160

119:                                              ; preds = %114
  %120 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %121 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SCTP_RTT_SHIFT, align 4
  %124 = ashr i32 %122, %123
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %129 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = load i32, i32* %14, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %134, %119
  %138 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %139 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SCTP_RTT_VAR_SHIFT, align 4
  %142 = ashr i32 %140, %141
  %143 = load i32, i32* %14, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %147 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* @sctp_logging_level, align 4
  %151 = call i32 @SCTP_BASE_SYSCTL(i32 %150)
  %152 = load i32, i32* @SCTP_RTTVAR_LOGGING_ENABLE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %137
  %156 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %157 = load i32, i32* @SCTP_LOG_RTTVAR, align 4
  %158 = call i32 @rto_logging(%struct.sctp_nets* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %137
  br label %184

160:                                              ; preds = %114
  %161 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %162 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %161, i32 0, i32 2
  store i32 1, i32* %162, align 8
  store i32 1, i32* %16, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @SCTP_RTT_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %167 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %14, align 4
  %169 = sdiv i32 %168, 2
  %170 = load i32, i32* @SCTP_RTT_VAR_SHIFT, align 4
  %171 = shl i32 %169, %170
  %172 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %173 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @sctp_logging_level, align 4
  %175 = call i32 @SCTP_BASE_SYSCTL(i32 %174)
  %176 = load i32, i32* @SCTP_RTTVAR_LOGGING_ENABLE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %160
  %180 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %181 = load i32, i32* @SCTP_LOG_INITIAL_RTT, align 4
  %182 = call i32 @rto_logging(%struct.sctp_nets* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %160
  br label %184

184:                                              ; preds = %183, %159
  %185 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %186 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i32, i32* @SCTP_CLOCK_GRANULARITY, align 4
  %191 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %192 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %191, i32 0, i32 4
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %195 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @SCTP_RTT_SHIFT, align 4
  %198 = ashr i32 %196, %197
  %199 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %200 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %198, %201
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* @SCTP_SAT_NETWORK_MIN, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %193
  %207 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %208 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %214 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  store i32 1, i32* %215, align 4
  br label %233

216:                                              ; preds = %206, %193
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %216
  %220 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %221 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %227 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  store i32 0, i32* %228, align 4
  %229 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %230 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  br label %232

232:                                              ; preds = %225, %219, %216
  br label %233

233:                                              ; preds = %232, %212
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %236 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %234, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %242 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  store i32 %244, i32* %15, align 4
  br label %245

245:                                              ; preds = %240, %233
  %246 = load i32, i32* %15, align 4
  %247 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %248 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = icmp sgt i32 %246, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %245
  %253 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %254 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %15, align 4
  br label %257

257:                                              ; preds = %252, %245
  %258 = load i32, i32* %15, align 4
  %259 = load %struct.sctp_nets*, %struct.sctp_nets** %9, align 8
  %260 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 4
  store i32 1, i32* %6, align 4
  br label %261

261:                                              ; preds = %257, %63, %47
  %262 = load i32, i32* %6, align 4
  ret i32 %262
}

declare dso_local i32 @SCTP_GETPTIME_TIMEVAL(%struct.timeval*) #1

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @rto_logging(%struct.sctp_nets*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
