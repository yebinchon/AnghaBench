; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_process_segment_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_process_segment_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_14__*, %struct.sctp_tmit_chunk*)* }
%struct.TYPE_14__ = type { i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sctp_tmit_chunk = type { i64, i32, %struct.TYPE_13__, i32*, i64, %struct.TYPE_14__*, i64, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }

@SCTP_DATAGRAM_RESEND = common dso_local global i64 0, align 8
@SCTP_DATAGRAM_UNSENT = common dso_local global i64 0, align 8
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_SACK_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_LOG_TSN_ACKED = common dso_local global i32 0, align 4
@SCTP_CWND_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_SACK = common dso_local global i32 0, align 4
@SCTP_FLIGHT_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_FLIGHT_LOG_DOWN_GAP = common dso_local global i32 0, align 4
@SCTP_RTT_FROM_DATA = common dso_local global i32 0, align 4
@SCTP_FORWARD_TSN_SKIP = common dso_local global i64 0, align 8
@SCTP_DATAGRAM_NR_ACKED = common dso_local global i64 0, align 8
@SCTP_DATAGRAM_MARKED = common dso_local global i64 0, align 8
@SCTP_STREAM_RESET_PENDING = common dso_local global i64 0, align 8
@sctp_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_tmit_chunk**, i32, i32, i32, i32, i32*, i32*, i32*, i32*)* @sctp_process_segment_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_process_segment_range(%struct.sctp_tcb* %0, %struct.sctp_tmit_chunk** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.sctp_tcb*, align 8
  %12 = alloca %struct.sctp_tmit_chunk**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.sctp_tmit_chunk*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %11, align 8
  store %struct.sctp_tmit_chunk** %1, %struct.sctp_tmit_chunk*** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %26 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %12, align 8
  %27 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %26, align 8
  store %struct.sctp_tmit_chunk* %27, %struct.sctp_tmit_chunk** %21, align 8
  %28 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %29 = icmp eq %struct.sctp_tmit_chunk* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %10
  %31 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %32 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = call %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32* %33)
  store %struct.sctp_tmit_chunk* %34, %struct.sctp_tmit_chunk** %21, align 8
  br label %35

35:                                               ; preds = %30, %10
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %23, align 4
  br label %37

37:                                               ; preds = %671, %35
  %38 = load i32, i32* %23, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %674

41:                                               ; preds = %37
  %42 = load i32, i32* %23, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %22, align 4
  br label %45

45:                                               ; preds = %661, %41
  %46 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %47 = icmp ne %struct.sctp_tmit_chunk* %46, null
  br i1 %47, label %48, label %662

48:                                               ; preds = %45
  %49 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %50 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %61 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SCTP_DATAGRAM_RESEND, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %67 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %66, i32 0, i32 5
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %91

72:                                               ; preds = %65
  %73 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %74 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %79 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %84 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %83, i32 0, i32 5
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i64 %82, i64* %86, align 8
  %87 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %88 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %87, i32 0, i32 5
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %77, %72, %65, %59
  %92 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %93 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SCTP_DATAGRAM_RESEND, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %91
  %98 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %99 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %98, i32 0, i32 5
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %123

104:                                              ; preds = %97
  %105 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %106 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %111 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %116 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %115, i32 0, i32 5
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 3
  store i64 %114, i64* %118, align 8
  %119 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %120 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %119, i32 0, i32 5
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %109, %104, %97, %91
  %124 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %125 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %22, align 4
  %130 = zext i32 %129 to i64
  %131 = icmp eq i64 %128, %130
  br i1 %131, label %132, label %634

132:                                              ; preds = %123
  %133 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %134 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SCTP_DATAGRAM_UNSENT, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %633

138:                                              ; preds = %132
  %139 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %140 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SCTP_DATAGRAM_RESEND, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %444

144:                                              ; preds = %138
  %145 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %146 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @SCTP_TSN_GT(i32 %150, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %144
  %156 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %157 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i32*, i32** %18, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %155, %144
  %164 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %165 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %172 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %171, i32 0, i32 5
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  store i32 1, i32* %174, align 8
  br label %175

175:                                              ; preds = %170, %163
  %176 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %177 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %183 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %182, i32 0, i32 5
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @SCTP_TSN_GT(i32 %181, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %175
  %190 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %191 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %197 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %196, i32 0, i32 5
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 5
  store i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %175
  %201 = load i32*, i32** %19, align 8
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %230

204:                                              ; preds = %200
  %205 = load i32, i32* @sctp_logging_level, align 4
  %206 = call i32 @SCTP_BASE_SYSCTL(i32 %205)
  %207 = load i32, i32* @SCTP_SACK_LOGGING_ENABLE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %204
  %211 = load i32*, i32** %19, align 8
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %215 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = trunc i64 %218 to i32
  %220 = load i32, i32* @SCTP_LOG_TSN_ACKED, align 4
  %221 = call i32 @sctp_log_sack(i32 %212, i32 %213, i32 %219, i32 0, i32 0, i32 %220)
  br label %222

222:                                              ; preds = %210, %204
  %223 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %224 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = load i32*, i32** %19, align 8
  store i32 %228, i32* %229, align 4
  br label %230

230:                                              ; preds = %222, %200
  %231 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %232 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %237 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %236, i32 0, i32 5
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %235, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %230
  %243 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %244 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %242
  %250 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %251 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %250, i32 0, i32 5
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 6
  store i32 1, i32* %253, align 8
  br label %254

254:                                              ; preds = %249, %242
  %255 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %256 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %255, i32 0, i32 5
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  br label %259

259:                                              ; preds = %254, %230
  %260 = load i32, i32* @sctp_logging_level, align 4
  %261 = call i32 @SCTP_BASE_SYSCTL(i32 %260)
  %262 = load i32, i32* @SCTP_CWND_LOGGING_ENABLE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %259
  %266 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %267 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %268 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %267, i32 0, i32 5
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %271 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @SCTP_CWND_LOG_FROM_SACK, align 4
  %276 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %266, %struct.TYPE_14__* %269, i64 %274, i32 %275)
  br label %277

277:                                              ; preds = %265, %259
  %278 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %279 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %284 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %283, i32 0, i32 5
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %282, %287
  br i1 %288, label %289, label %306

289:                                              ; preds = %277
  %290 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %291 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %289
  %297 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %298 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %297, i32 0, i32 5
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 6
  store i32 1, i32* %300, align 8
  br label %301

301:                                              ; preds = %296, %289
  %302 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %303 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %302, i32 0, i32 5
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 2
  store i32 1, i32* %305, align 8
  br label %306

306:                                              ; preds = %301, %277
  %307 = load i32, i32* @sctp_logging_level, align 4
  %308 = call i32 @SCTP_BASE_SYSCTL(i32 %307)
  %309 = load i32, i32* @SCTP_SACK_LOGGING_ENABLE, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %326

312:                                              ; preds = %306
  %313 = load i32*, i32** %18, align 8
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %13, align 4
  %316 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %317 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = trunc i64 %320 to i32
  %322 = load i32, i32* %14, align 4
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* @SCTP_LOG_TSN_ACKED, align 4
  %325 = call i32 @sctp_log_sack(i32 %314, i32 %315, i32 %321, i32 %322, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %312, %306
  %327 = load i32, i32* @sctp_logging_level, align 4
  %328 = call i32 @SCTP_BASE_SYSCTL(i32 %327)
  %329 = load i32, i32* @SCTP_FLIGHT_LOGGING_ENABLE, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %354

332:                                              ; preds = %326
  %333 = load i32, i32* @SCTP_FLIGHT_LOG_DOWN_GAP, align 4
  %334 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %335 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %334, i32 0, i32 5
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 11
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %340 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %343 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %342, i32 0, i32 5
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %343, align 8
  %345 = ptrtoint %struct.TYPE_14__* %344 to i64
  %346 = trunc i64 %345 to i32
  %347 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %348 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = trunc i64 %351 to i32
  %353 = call i32 @sctp_misc_ints(i32 %333, i32 %338, i64 %341, i32 %346, i32 %352)
  br label %354

354:                                              ; preds = %332, %326
  %355 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %356 = call i32 @sctp_flight_size_decrease(%struct.sctp_tmit_chunk* %355)
  %357 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %358 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 5
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 0
  %361 = load i32 (%struct.TYPE_14__*, %struct.sctp_tmit_chunk*)*, i32 (%struct.TYPE_14__*, %struct.sctp_tmit_chunk*)** %360, align 8
  %362 = icmp ne i32 (%struct.TYPE_14__*, %struct.sctp_tmit_chunk*)* %361, null
  br i1 %362, label %363, label %374

363:                                              ; preds = %354
  %364 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %365 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 0
  %368 = load i32 (%struct.TYPE_14__*, %struct.sctp_tmit_chunk*)*, i32 (%struct.TYPE_14__*, %struct.sctp_tmit_chunk*)** %367, align 8
  %369 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %370 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %369, i32 0, i32 5
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %370, align 8
  %372 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %373 = call i32 %368(%struct.TYPE_14__* %371, %struct.sctp_tmit_chunk* %372)
  br label %374

374:                                              ; preds = %363, %354
  %375 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %376 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %377 = call i32 @sctp_total_flight_decrease(%struct.sctp_tcb* %375, %struct.sctp_tmit_chunk* %376)
  %378 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %379 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %378, i32 0, i32 8
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %382 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %381, i32 0, i32 5
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 10
  %385 = load i32, i32* %384, align 8
  %386 = sext i32 %385 to i64
  %387 = add nsw i64 %386, %380
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %384, align 8
  %389 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %390 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = icmp slt i32 %391, 2
  br i1 %392, label %393, label %443

393:                                              ; preds = %374
  %394 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %395 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %394, i32 0, i32 8
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %398 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %397, i32 0, i32 5
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 9
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = add nsw i64 %402, %396
  %404 = trunc i64 %403 to i32
  store i32 %404, i32* %400, align 4
  %405 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %406 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %405, i32 0, i32 6
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %442

409:                                              ; preds = %393
  %410 = load i32*, i32** %20, align 8
  %411 = load i32, i32* %410, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %427

413:                                              ; preds = %409
  %414 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %415 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %416 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %415, i32 0, i32 0
  %417 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %418 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %417, i32 0, i32 5
  %419 = load %struct.TYPE_14__*, %struct.TYPE_14__** %418, align 8
  %420 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %421 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %420, i32 0, i32 7
  %422 = load i32, i32* @SCTP_RTT_FROM_DATA, align 4
  %423 = call i64 @sctp_calculate_rto(%struct.sctp_tcb* %414, %struct.TYPE_15__* %416, %struct.TYPE_14__* %419, i32* %421, i32 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %413
  %426 = load i32*, i32** %20, align 8
  store i32 0, i32* %426, align 4
  br label %427

427:                                              ; preds = %425, %413, %409
  %428 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %429 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %428, i32 0, i32 5
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 7
  %432 = load i32, i32* %431, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %427
  %435 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %436 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %435, i32 0, i32 5
  %437 = load %struct.TYPE_14__*, %struct.TYPE_14__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 7
  store i32 1, i32* %438, align 4
  br label %439

439:                                              ; preds = %434, %427
  %440 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %441 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %440, i32 0, i32 6
  store i64 0, i64* %441, align 8
  br label %442

442:                                              ; preds = %439, %393
  br label %443

443:                                              ; preds = %442, %374
  br label %444

444:                                              ; preds = %443, %138
  %445 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %446 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @SCTP_DATAGRAM_RESEND, align 8
  %449 = icmp sle i64 %447, %448
  br i1 %449, label %450, label %486

450:                                              ; preds = %444
  %451 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %452 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = trunc i64 %455 to i32
  %457 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %458 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = call i64 @SCTP_TSN_GT(i32 %456, i32 %460)
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %473

463:                                              ; preds = %450
  %464 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %465 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = trunc i64 %468 to i32
  %470 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %471 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 0
  store i32 %469, i32* %472, align 8
  br label %473

473:                                              ; preds = %463, %450
  %474 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %475 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @SCTP_DATAGRAM_RESEND, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %479, label %485

479:                                              ; preds = %473
  %480 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %481 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @sctp_ucount_decr(i32 %483)
  br label %485

485:                                              ; preds = %479, %473
  br label %486

486:                                              ; preds = %485, %444
  %487 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %488 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = load i64, i64* @SCTP_FORWARD_TSN_SKIP, align 8
  %491 = icmp ne i64 %489, %490
  br i1 %491, label %492, label %502

492:                                              ; preds = %486
  %493 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %494 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = load i64, i64* @SCTP_DATAGRAM_NR_ACKED, align 8
  %497 = icmp ne i64 %495, %496
  br i1 %497, label %498, label %502

498:                                              ; preds = %492
  %499 = load i64, i64* @SCTP_DATAGRAM_MARKED, align 8
  %500 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %501 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %500, i32 0, i32 0
  store i64 %499, i64* %501, align 8
  br label %502

502:                                              ; preds = %498, %492, %486
  %503 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %504 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 1
  %507 = load i64, i64* %506, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %525

509:                                              ; preds = %502
  %510 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %511 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %510, i32 0, i32 4
  %512 = load i64, i64* %511, align 8
  %513 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %514 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %513, i32 0, i32 5
  %515 = load %struct.TYPE_14__*, %struct.TYPE_14__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %515, i32 0, i32 8
  %517 = load i32, i32* %516, align 8
  %518 = sext i32 %517 to i64
  %519 = sub nsw i64 %518, %512
  %520 = trunc i64 %519 to i32
  store i32 %520, i32* %516, align 8
  %521 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %522 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %521, i32 0, i32 2
  %523 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 1
  store i64 0, i64* %524, align 8
  br label %525

525:                                              ; preds = %509, %502
  %526 = load i32, i32* %16, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %632

528:                                              ; preds = %525
  %529 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %530 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @SCTP_DATAGRAM_NR_ACKED, align 8
  %533 = icmp ne i64 %531, %532
  br i1 %533, label %534, label %632

534:                                              ; preds = %528
  %535 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %536 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %536, i32 0, i32 4
  %538 = load %struct.TYPE_11__*, %struct.TYPE_11__** %537, align 8
  %539 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %540 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %541, i32 0, i32 2
  %543 = load i64, i64* %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %538, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 0
  %546 = load i64, i64* %545, align 8
  %547 = icmp sgt i64 %546, 0
  br i1 %547, label %548, label %562

548:                                              ; preds = %534
  %549 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %550 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %550, i32 0, i32 4
  %552 = load %struct.TYPE_11__*, %struct.TYPE_11__** %551, align 8
  %553 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %554 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %553, i32 0, i32 2
  %555 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %555, i32 0, i32 2
  %557 = load i64, i64* %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %552, i64 %557
  %559 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = add nsw i64 %560, -1
  store i64 %561, i64* %559, align 8
  br label %562

562:                                              ; preds = %548, %534
  %563 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %564 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %563, i32 0, i32 0
  %565 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %564, i32 0, i32 4
  %566 = load %struct.TYPE_11__*, %struct.TYPE_11__** %565, align 8
  %567 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %568 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %567, i32 0, i32 2
  %569 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %569, i32 0, i32 2
  %571 = load i64, i64* %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %572, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %576, label %609

576:                                              ; preds = %562
  %577 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %578 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %578, i32 0, i32 4
  %580 = load %struct.TYPE_11__*, %struct.TYPE_11__** %579, align 8
  %581 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %582 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %581, i32 0, i32 2
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 2
  %585 = load i64, i64* %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %580, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %586, i32 0, i32 1
  %588 = load i64, i64* %587, align 8
  %589 = load i64, i64* @SCTP_STREAM_RESET_PENDING, align 8
  %590 = icmp eq i64 %588, %589
  br i1 %590, label %591, label %609

591:                                              ; preds = %576
  %592 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %593 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %593, i32 0, i32 4
  %595 = load %struct.TYPE_11__*, %struct.TYPE_11__** %594, align 8
  %596 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %597 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %597, i32 0, i32 0
  %599 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %598, i32 0, i32 2
  %600 = load i64, i64* %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %595, i64 %600
  %602 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %601, i32 0, i32 2
  %603 = call i64 @TAILQ_EMPTY(i32* %602)
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %609

605:                                              ; preds = %591
  %606 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %607 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %607, i32 0, i32 2
  store i32 1, i32* %608, align 8
  br label %609

609:                                              ; preds = %605, %591, %576, %562
  %610 = load i64, i64* @SCTP_DATAGRAM_NR_ACKED, align 8
  %611 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %612 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %611, i32 0, i32 0
  store i64 %610, i64* %612, align 8
  %613 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %614 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %613, i32 0, i32 3
  %615 = load i32*, i32** %614, align 8
  %616 = icmp ne i32* %615, null
  br i1 %616, label %617, label %629

617:                                              ; preds = %609
  %618 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %619 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %620 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %619, i32 0, i32 0
  %621 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %622 = call i32 @sctp_free_bufspace(%struct.sctp_tcb* %618, %struct.TYPE_15__* %620, %struct.sctp_tmit_chunk* %621, i32 1)
  %623 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %624 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %623, i32 0, i32 3
  %625 = load i32*, i32** %624, align 8
  %626 = call i32 @sctp_m_freem(i32* %625)
  %627 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %628 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %627, i32 0, i32 3
  store i32* null, i32** %628, align 8
  br label %629

629:                                              ; preds = %617, %609
  %630 = load i32, i32* %24, align 4
  %631 = add nsw i32 %630, 1
  store i32 %631, i32* %24, align 4
  br label %632

632:                                              ; preds = %629, %528, %525
  br label %633

633:                                              ; preds = %632, %132
  br label %662

634:                                              ; preds = %123
  %635 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %636 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %635, i32 0, i32 2
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %637, i32 0, i32 0
  %639 = load i64, i64* %638, align 8
  %640 = trunc i64 %639 to i32
  %641 = load i32, i32* %22, align 4
  %642 = call i64 @SCTP_TSN_GT(i32 %640, i32 %641)
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %645

644:                                              ; preds = %634
  br label %662

645:                                              ; preds = %634
  %646 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %647 = load i32, i32* @sctp_next, align 4
  %648 = call %struct.sctp_tmit_chunk* @TAILQ_NEXT(%struct.sctp_tmit_chunk* %646, i32 %647)
  store %struct.sctp_tmit_chunk* %648, %struct.sctp_tmit_chunk** %21, align 8
  %649 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %650 = icmp eq %struct.sctp_tmit_chunk* %649, null
  br i1 %650, label %651, label %661

651:                                              ; preds = %645
  %652 = load i32, i32* %25, align 4
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %661

654:                                              ; preds = %651
  %655 = load i32, i32* %25, align 4
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %25, align 4
  %657 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %658 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %657, i32 0, i32 0
  %659 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %658, i32 0, i32 3
  %660 = call %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32* %659)
  store %struct.sctp_tmit_chunk* %660, %struct.sctp_tmit_chunk** %21, align 8
  br label %661

661:                                              ; preds = %654, %651, %645
  br label %45

662:                                              ; preds = %644, %633, %45
  %663 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %664 = icmp eq %struct.sctp_tmit_chunk* %663, null
  br i1 %664, label %665, label %670

665:                                              ; preds = %662
  store i32 0, i32* %25, align 4
  %666 = load %struct.sctp_tcb*, %struct.sctp_tcb** %11, align 8
  %667 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %667, i32 0, i32 3
  %669 = call %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32* %668)
  store %struct.sctp_tmit_chunk* %669, %struct.sctp_tmit_chunk** %21, align 8
  br label %670

670:                                              ; preds = %665, %662
  br label %671

671:                                              ; preds = %670
  %672 = load i32, i32* %23, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %23, align 4
  br label %37

674:                                              ; preds = %37
  %675 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, align 8
  %676 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %12, align 8
  store %struct.sctp_tmit_chunk* %675, %struct.sctp_tmit_chunk** %676, align 8
  %677 = load i32, i32* %24, align 4
  ret i32 %677
}

declare dso_local %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @SCTP_TSN_GT(i32, i32) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_sack(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @sctp_misc_ints(i32, i32, i64, i32, i32) #1

declare dso_local i32 @sctp_flight_size_decrease(%struct.sctp_tmit_chunk*) #1

declare dso_local i32 @sctp_total_flight_decrease(%struct.sctp_tcb*, %struct.sctp_tmit_chunk*) #1

declare dso_local i64 @sctp_calculate_rto(%struct.sctp_tcb*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @sctp_ucount_decr(i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @sctp_free_bufspace(%struct.sctp_tcb*, %struct.TYPE_15__*, %struct.sctp_tmit_chunk*, i32) #1

declare dso_local i32 @sctp_m_freem(i32*) #1

declare dso_local %struct.sctp_tmit_chunk* @TAILQ_NEXT(%struct.sctp_tmit_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
