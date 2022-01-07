; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netsend/extr_netsend.c_timing_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netsend/extr_netsend.c_timing_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._a = type { i64, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i64, %struct.timespec }
%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i64, i32 }
%struct.sockaddr = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"clock_getres\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"warning: interval (%jd.%09ld) less than resolution (%jd.%09ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"calling time every %d cycles\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"connect (ipv6)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"connect (ipv4)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"start:             %jd.%09ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"finish:            %jd.%09ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"send calls:        %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"send errors:       %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"approx send rate:  %ld pps\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"time/packet:       %u ns\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"approx error rate: %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"waited:            %lld\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"approx waits/sec:  %lld\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"approx wait rate:  %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._a*)* @timing_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timing_loop(%struct._a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._a*, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct._a* %0, %struct._a** %3, align 8
  store i64 200000, i64* %12, align 8
  %19 = load i32, i32* @CLOCK_REALTIME, align 4
  %20 = call i32 @clock_getres(i32 %19, %struct.timespec* %6)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %332

24:                                               ; preds = %1
  %25 = load %struct._a*, %struct._a** %3, align 8
  %26 = getelementptr inbounds %struct._a, %struct._a* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %17, align 8
  %29 = load %struct._a*, %struct._a** %3, align 8
  %30 = getelementptr inbounds %struct._a, %struct._a* %29, i32 0, i32 9
  %31 = call i64 @timespec_ge(%struct.timespec* %6, %struct.timespec* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load i32, i32* @stderr, align 4
  %35 = load %struct._a*, %struct._a** %3, align 8
  %36 = getelementptr inbounds %struct._a, %struct._a* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct._a*, %struct._a** %3, align 8
  %40 = getelementptr inbounds %struct._a, %struct._a* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %42, i32 %44, i64 %46)
  br label %48

48:                                               ; preds = %33, %24
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* %12, align 8
  %51 = sdiv i64 %50, 100
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 100, i32* %14, align 4
  br label %59

54:                                               ; preds = %48
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %17, align 8
  %57 = sdiv i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %54, %53
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @CLOCK_REALTIME, align 4
  %64 = call i32 @clock_gettime(i32 %63, %struct.timespec* %5)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %332

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i32 2, i32* %69, align 8
  %70 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = call i32 @timespec_add(%struct.timespec* %5, %struct.timespec* %6)
  %72 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = bitcast %struct.timespec* %5 to { i64, i32 }*
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %73, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @wait_time(i64 %75, i32 %77, %struct.timespec* null, i64* null)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store i32 -1, i32* %2, align 4
  br label %332

81:                                               ; preds = %68
  %82 = bitcast %struct.timespec* %4 to i8*
  %83 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load %struct._a*, %struct._a** %3, align 8
  %88 = getelementptr inbounds %struct._a, %struct._a* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  store i64 %90, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %13, align 4
  %92 = load %struct._a*, %struct._a** %3, align 8
  %93 = getelementptr inbounds %struct._a, %struct._a* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %15, align 4
  %95 = load %struct._a*, %struct._a** %3, align 8
  %96 = getelementptr inbounds %struct._a, %struct._a* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct._a*, %struct._a** %3, align 8
  %99 = getelementptr inbounds %struct._a, %struct._a* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %81
  %103 = load %struct._a*, %struct._a** %3, align 8
  %104 = getelementptr inbounds %struct._a, %struct._a* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct._a*, %struct._a** %3, align 8
  %109 = getelementptr inbounds %struct._a, %struct._a* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct._a*, %struct._a** %3, align 8
  %112 = getelementptr inbounds %struct._a, %struct._a* %111, i32 0, i32 7
  %113 = bitcast i32* %112 to %struct.sockaddr*
  %114 = call i64 @connect(i32 %110, %struct.sockaddr* %113, i32 4)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %332

118:                                              ; preds = %107
  br label %131

119:                                              ; preds = %102
  %120 = load %struct._a*, %struct._a** %3, align 8
  %121 = getelementptr inbounds %struct._a, %struct._a* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = load %struct._a*, %struct._a** %3, align 8
  %124 = getelementptr inbounds %struct._a, %struct._a* %123, i32 0, i32 4
  %125 = bitcast %struct.TYPE_2__* %124 to %struct.sockaddr*
  %126 = call i64 @connect(i32 %122, %struct.sockaddr* %125, i32 4)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %332

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %118
  br label %132

132:                                              ; preds = %131, %81
  br label %133

133:                                              ; preds = %132, %259
  %134 = load %struct._a*, %struct._a** %3, align 8
  %135 = getelementptr inbounds %struct._a, %struct._a* %134, i32 0, i32 9
  %136 = call i32 @timespec_add(%struct.timespec* %4, %struct.timespec* %135)
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %13, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %13, align 4
  %142 = bitcast %struct.timespec* %4 to { i64, i32 }*
  %143 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %142, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @wait_time(i64 %144, i32 %146, %struct.timespec* %6, i64* %7)
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  store i32 -1, i32* %2, align 4
  br label %332

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %133
  %152 = load i32, i32* %15, align 4
  %153 = load %struct._a*, %struct._a** %3, align 8
  %154 = getelementptr inbounds %struct._a, %struct._a* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %152, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %151
  %158 = load %struct._a*, %struct._a** %3, align 8
  %159 = getelementptr inbounds %struct._a, %struct._a* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp sge i32 %160, 4
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load %struct._a*, %struct._a** %3, align 8
  %164 = getelementptr inbounds %struct._a, %struct._a* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @be32enc(i32 %165, i64 %166)
  %168 = load i64, i64* %8, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %8, align 8
  br label %170

170:                                              ; preds = %162, %157, %151
  %171 = load %struct._a*, %struct._a** %3, align 8
  %172 = getelementptr inbounds %struct._a, %struct._a* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct._a*, %struct._a** %3, align 8
  %175 = getelementptr inbounds %struct._a, %struct._a* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %173, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %170
  %179 = load %struct._a*, %struct._a** %3, align 8
  %180 = getelementptr inbounds %struct._a, %struct._a* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = load %struct._a*, %struct._a** %3, align 8
  %183 = getelementptr inbounds %struct._a, %struct._a* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = load %struct._a*, %struct._a** %3, align 8
  %186 = getelementptr inbounds %struct._a, %struct._a* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @send(i32 %181, i32 %184, i32 %187, i32 0)
  store i32 %188, i32* %18, align 4
  br label %239

189:                                              ; preds = %170
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  %192 = call i32 @htons(i32 %190)
  %193 = load %struct._a*, %struct._a** %3, align 8
  %194 = getelementptr inbounds %struct._a, %struct._a* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load %struct._a*, %struct._a** %3, align 8
  %198 = getelementptr inbounds %struct._a, %struct._a* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %196, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %189
  %202 = load %struct._a*, %struct._a** %3, align 8
  %203 = getelementptr inbounds %struct._a, %struct._a* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %15, align 4
  br label %205

205:                                              ; preds = %201, %189
  %206 = load %struct._a*, %struct._a** %3, align 8
  %207 = getelementptr inbounds %struct._a, %struct._a* %206, i32 0, i32 8
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load %struct._a*, %struct._a** %3, align 8
  %212 = getelementptr inbounds %struct._a, %struct._a* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load %struct._a*, %struct._a** %3, align 8
  %215 = getelementptr inbounds %struct._a, %struct._a* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load %struct._a*, %struct._a** %3, align 8
  %218 = getelementptr inbounds %struct._a, %struct._a* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load %struct._a*, %struct._a** %3, align 8
  %221 = getelementptr inbounds %struct._a, %struct._a* %220, i32 0, i32 7
  %222 = bitcast i32* %221 to %struct.sockaddr*
  %223 = call i32 @sendto(i32 %213, i32 %216, i32 %219, i32 0, %struct.sockaddr* %222, i32 4)
  store i32 %223, i32* %18, align 4
  br label %238

224:                                              ; preds = %205
  %225 = load %struct._a*, %struct._a** %3, align 8
  %226 = getelementptr inbounds %struct._a, %struct._a* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 4
  %228 = load %struct._a*, %struct._a** %3, align 8
  %229 = getelementptr inbounds %struct._a, %struct._a* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = load %struct._a*, %struct._a** %3, align 8
  %232 = getelementptr inbounds %struct._a, %struct._a* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load %struct._a*, %struct._a** %3, align 8
  %235 = getelementptr inbounds %struct._a, %struct._a* %234, i32 0, i32 4
  %236 = bitcast %struct.TYPE_2__* %235 to %struct.sockaddr*
  %237 = call i32 @sendto(i32 %227, i32 %230, i32 %233, i32 0, %struct.sockaddr* %236, i32 4)
  store i32 %237, i32* %18, align 4
  br label %238

238:                                              ; preds = %224, %210
  br label %239

239:                                              ; preds = %238, %178
  %240 = load i32, i32* %18, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i64, i64* %10, align 8
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %10, align 8
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i64, i64* %11, align 8
  %247 = add nsw i64 %246, 1
  store i64 %247, i64* %11, align 8
  %248 = load %struct._a*, %struct._a** %3, align 8
  %249 = getelementptr inbounds %struct._a, %struct._a* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* %9, align 8
  %257 = icmp sge i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  br label %260

259:                                              ; preds = %252, %245
  br label %133

260:                                              ; preds = %258
  %261 = load i32, i32* @CLOCK_REALTIME, align 4
  %262 = call i32 @clock_gettime(i32 %261, %struct.timespec* %6)
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %332

266:                                              ; preds = %260
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %268 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %269, i64 %271)
  %273 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %274, i64 %276)
  %278 = load i64, i64* %11, align 8
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %278)
  %280 = load i64, i64* %10, align 8
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 %280)
  %282 = load i64, i64* %11, align 8
  %283 = load i64, i64* %10, align 8
  %284 = sub nsw i64 %282, %283
  %285 = load %struct._a*, %struct._a** %3, align 8
  %286 = getelementptr inbounds %struct._a, %struct._a* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = sdiv i64 %284, %287
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i64 %288)
  %290 = load i64, i64* %11, align 8
  %291 = load i64, i64* %10, align 8
  %292 = sub nsw i64 %290, %291
  store i64 %292, i64* %16, align 8
  %293 = load i64, i64* %16, align 8
  %294 = icmp sgt i64 %293, 0
  br i1 %294, label %295, label %312

295:                                              ; preds = %266
  %296 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = sub nsw i32 %297, %299
  %301 = sext i32 %300 to i64
  %302 = mul i64 %301, 1000000000
  %303 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = sub nsw i64 %304, %306
  %308 = add i64 %302, %307
  store i64 %308, i64* %17, align 8
  %309 = load i64, i64* %17, align 8
  %310 = load i64, i64* %16, align 8
  %311 = sdiv i64 %309, %310
  store i64 %311, i64* %16, align 8
  br label %312

312:                                              ; preds = %295, %266
  %313 = load i64, i64* %16, align 8
  %314 = trunc i64 %313 to i32
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %314)
  %316 = load i64, i64* %10, align 8
  %317 = load i64, i64* %11, align 8
  %318 = sdiv i64 %316, %317
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i64 %318)
  %320 = load i64, i64* %7, align 8
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i64 %320)
  %322 = load i64, i64* %7, align 8
  %323 = load %struct._a*, %struct._a** %3, align 8
  %324 = getelementptr inbounds %struct._a, %struct._a* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = sdiv i64 %322, %325
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i64 %326)
  %328 = load i64, i64* %7, align 8
  %329 = load i64, i64* %11, align 8
  %330 = sdiv i64 %328, %329
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i64 %330)
  store i32 0, i32* %2, align 4
  br label %332

332:                                              ; preds = %312, %264, %149, %128, %116, %80, %66, %22
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @clock_getres(i32, %struct.timespec*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @timespec_ge(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @timespec_add(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @wait_time(i64, i32, %struct.timespec*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @be32enc(i32, i64) #1

declare dso_local i32 @send(i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
