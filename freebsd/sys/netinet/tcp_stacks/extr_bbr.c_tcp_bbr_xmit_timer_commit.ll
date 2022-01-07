; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_tcp_bbr_xmit_timer_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_tcp_bbr_xmit_timer_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tcpcb = type { i32, i32, i32, i64, i32, i32, i32 }

@USECS_IN_MSEC = common dso_local global i32 0, align 4
@TCP_DELTA_SHIFT = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TCP_RTTVAR_SHIFT = common dso_local global i32 0, align 4
@tcps_rttupdated = common dso_local global i32 0, align 4
@VOI_TCP_RTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.tcpcb*, i64)* @tcp_bbr_xmit_timer_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bbr_xmit_timer_commit(%struct.tcp_bbr* %0, %struct.tcpcb* %1, i64 %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %13 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %301

17:                                               ; preds = %3
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %19 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %23 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %17
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 10
  store i64 0, i64* %32, align 8
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %34 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 10
  %36 = call i64 @get_filter_value_small(i32* %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %42 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 10
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @filter_increase_by_small(i32* %43, i64 %46, i64 %47)
  br label %56

49:                                               ; preds = %30
  %50 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %51 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 10
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @apply_filter_min_small(i32* %52, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %49, %40
  br label %57

57:                                               ; preds = %56, %17
  %58 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %59 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %72 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %70, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %79 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @bbr_log_rtt_sample(%struct.tcp_bbr* %82, i64 %83, i64 %84)
  %86 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %87 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %92 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %91, i32 0, i32 8
  store i64 0, i64* %92, align 8
  %93 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %90, %81
  %96 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %97 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %95
  %101 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %102 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %140

105:                                              ; preds = %100
  %106 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %107 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %105
  %111 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %112 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %117 = call i32 @bbr_make_timestamp_determination(%struct.tcp_bbr* %116)
  br label %135

118:                                              ; preds = %110
  %119 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %120 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %122 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %126 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 8
  store i32 %124, i32* %127, align 4
  %128 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %129 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %133 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 6
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %118, %115
  br label %139

136:                                              ; preds = %105
  %137 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %138 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %137, i32 0, i32 2
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %135
  br label %140

140:                                              ; preds = %139, %100, %95
  %141 = load i64, i64* %8, align 8
  %142 = load i32, i32* @USECS_IN_MSEC, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %141, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @USEC_2_TICKS(i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  store i32 1, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %140
  %152 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %153 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %232

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %162 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %165 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %166 = sub nsw i32 %164, %165
  %167 = ashr i32 %163, %166
  %168 = sub nsw i32 %160, %167
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %171 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %175 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sle i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %156
  %179 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %180 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %179, i32 0, i32 0
  store i32 1, i32* %180, align 8
  br label %181

181:                                              ; preds = %178, %156
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %7, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %189 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %192 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %193 = sub nsw i32 %191, %192
  %194 = ashr i32 %190, %193
  %195 = load i32, i32* %7, align 4
  %196 = sub nsw i32 %195, %194
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %199 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %203 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp sle i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %187
  %207 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %208 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %207, i32 0, i32 1
  store i32 1, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %187
  %210 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %211 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %214 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %217 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %215, %218
  %220 = icmp sgt i32 %212, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %209
  %222 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %223 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %226 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %224, %227
  %229 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %230 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %221, %209
  br label %253

232:                                              ; preds = %151
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %237 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %240 = sub nsw i32 %239, 1
  %241 = shl i32 %238, %240
  %242 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %243 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %245 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %248 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %246, %249
  %251 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %252 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %232, %231
  %254 = load i32, i32* @tcps_rttupdated, align 4
  %255 = call i32 @TCPSTAT_INC(i32 %254)
  %256 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %257 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 8
  %260 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %261 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %264 = call i32 @TCP_REXMTVAL(%struct.tcpcb* %263)
  %265 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %266 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @MSEC_2_TICKS(i64 %268)
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 2
  %272 = call i32 @max(i32 %269, i32 %271)
  %273 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %274 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = mul nsw i64 %275, 1000
  %277 = call i32 @MSEC_2_TICKS(i64 %276)
  %278 = call i32 @TCPT_RANGESET(i32 %262, i32 %264, i32 %272, i32 %277)
  %279 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %280 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %279, i32 0, i32 3
  store i64 0, i64* %280, align 8
  %281 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %282 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %281, i32 0, i32 4
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @TICKS_2_USEC(i32 %285)
  %287 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %288 = ashr i32 %286, %287
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %8, align 8
  %290 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %291 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %8, align 8
  %295 = icmp sgt i64 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %253
  %297 = load i64, i64* %8, align 8
  %298 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %299 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 4
  store i64 %297, i64* %300, align 8
  br label %301

301:                                              ; preds = %16, %296, %253
  ret void
}

declare dso_local i64 @get_filter_value_small(i32*) #1

declare dso_local i32 @filter_increase_by_small(i32*, i64, i64) #1

declare dso_local i32 @apply_filter_min_small(i32*, i64, i64) #1

declare dso_local i32 @bbr_log_rtt_sample(%struct.tcp_bbr*, i64, i64) #1

declare dso_local i32 @bbr_make_timestamp_determination(%struct.tcp_bbr*) #1

declare dso_local i32 @USEC_2_TICKS(i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TCPT_RANGESET(i32, i32, i32, i32) #1

declare dso_local i32 @TCP_REXMTVAL(%struct.tcpcb*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @MSEC_2_TICKS(i64) #1

declare dso_local i32 @TICKS_2_USEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
