; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_clean_up_datalist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_clean_up_datalist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sctp_association = type { i64, i64, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.sctp_tcb*, %struct.sctp_nets*)* }
%struct.sctp_tmit_chunk = type { i32, i64, %struct.TYPE_7__, %struct.sctp_nets*, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.sctp_nets = type { i32, i32, i32, i32 }

@sctp_next = common dso_local global i32 0, align 4
@sctpchunk_listhead = common dso_local global i32 0, align 4
@sctps_windowprobed = common dso_local global i32 0, align 4
@SCTP_DATAGRAM_SENT = common dso_local global i32 0, align 4
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_FLIGHT_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_FLIGHT_LOG_UP = common dso_local global i32 0, align 4
@SCTP_LOG_RWND_ENABLE = common dso_local global i32 0, align 4
@SCTP_DECREASE_PEER_RWND = common dso_local global i32 0, align 4
@sctp_peer_chunk_oh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_association*, %struct.sctp_tmit_chunk**, i32, %struct.sctp_nets*)* @sctp_clean_up_datalist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_clean_up_datalist(%struct.sctp_tcb* %0, %struct.sctp_association* %1, %struct.sctp_tmit_chunk** %2, i32 %3, %struct.sctp_nets* %4) #0 {
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_tmit_chunk**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_nets*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_tmit_chunk*, align 8
  %13 = alloca %struct.sctp_tmit_chunk*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %7, align 8
  store %struct.sctp_tmit_chunk** %2, %struct.sctp_tmit_chunk*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sctp_nets* %4, %struct.sctp_nets** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %331, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %334

18:                                               ; preds = %14
  %19 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 6
  %21 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %21, i64 %23
  %25 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %24, align 8
  %26 = load i32, i32* @sctp_next, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* %20, %struct.sctp_tmit_chunk* %25, i32 %26)
  %28 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %18
  %35 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %35, i64 %37
  %39 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %38, align 8
  %40 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %18
  %42 = load %struct.sctp_nets*, %struct.sctp_nets** %10, align 8
  %43 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %45, i64 %47
  %49 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %48, align 8
  %50 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %49, i32 0, i32 6
  store i32 %44, i32* %50, align 8
  %51 = load %struct.sctp_nets*, %struct.sctp_nets** %10, align 8
  %52 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %54, i64 %56
  %58 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %57, align 8
  %59 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 %53, i32* %61, align 4
  %62 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %62, i64 %64
  %66 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %65, align 8
  %67 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %71, i64 %73
  %75 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %74, align 8
  %76 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %70, i32* %78, align 8
  %79 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %79, i64 %81
  %83 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %82, align 8
  %84 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %83, i32 0, i32 3
  %85 = load %struct.sctp_nets*, %struct.sctp_nets** %84, align 8
  %86 = icmp eq %struct.sctp_nets* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %41
  %88 = load %struct.sctp_nets*, %struct.sctp_nets** %10, align 8
  %89 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %89, i64 %91
  %93 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %92, align 8
  %94 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %93, i32 0, i32 3
  store %struct.sctp_nets* %88, %struct.sctp_nets** %94, align 8
  %95 = load %struct.sctp_nets*, %struct.sctp_nets** %10, align 8
  %96 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %95, i32 0, i32 1
  %97 = call i32 @atomic_add_int(i32* %96, i32 1)
  br label %98

98:                                               ; preds = %87, %41
  %99 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %100 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %99, i32 0, i32 4
  %101 = load i32, i32* @sctpchunk_listhead, align 4
  %102 = call %struct.sctp_tmit_chunk* @TAILQ_LAST(i32* %100, i32 %101)
  store %struct.sctp_tmit_chunk* %102, %struct.sctp_tmit_chunk** %12, align 8
  %103 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %12, align 8
  %104 = icmp ne %struct.sctp_tmit_chunk* %103, null
  br i1 %104, label %105, label %169

105:                                              ; preds = %98
  %106 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %12, align 8
  %107 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %111, i64 %113
  %115 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %114, align 8
  %116 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @SCTP_TSN_GT(i32 %110, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %157, %122
  %124 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %12, align 8
  %125 = load i32, i32* @sctpchunk_listhead, align 4
  %126 = load i32, i32* @sctp_next, align 4
  %127 = call %struct.sctp_tmit_chunk* @TAILQ_PREV(%struct.sctp_tmit_chunk* %124, i32 %125, i32 %126)
  store %struct.sctp_tmit_chunk* %127, %struct.sctp_tmit_chunk** %13, align 8
  %128 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %13, align 8
  %129 = icmp eq %struct.sctp_tmit_chunk* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %12, align 8
  %132 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %132, i64 %134
  %136 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %135, align 8
  %137 = load i32, i32* @sctp_next, align 4
  %138 = call i32 @TAILQ_INSERT_BEFORE(%struct.sctp_tmit_chunk* %131, %struct.sctp_tmit_chunk* %136, i32 %137)
  br label %180

139:                                              ; preds = %123
  %140 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %13, align 8
  store %struct.sctp_tmit_chunk* %140, %struct.sctp_tmit_chunk** %12, align 8
  %141 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %12, align 8
  %142 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %146, i64 %148
  %150 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %149, align 8
  %151 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @SCTP_TSN_GT(i32 %145, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %139
  br label %123

158:                                              ; preds = %139
  %159 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %160 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %159, i32 0, i32 4
  %161 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %12, align 8
  %162 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %162, i64 %164
  %166 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %165, align 8
  %167 = load i32, i32* @sctp_next, align 4
  %168 = call i32 @TAILQ_INSERT_AFTER(i32* %160, %struct.sctp_tmit_chunk* %161, %struct.sctp_tmit_chunk* %166, i32 %167)
  br label %179

169:                                              ; preds = %105, %98
  %170 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %171 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %170, i32 0, i32 4
  %172 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %172, i64 %174
  %176 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %175, align 8
  %177 = load i32, i32* @sctp_next, align 4
  %178 = call i32 @TAILQ_INSERT_TAIL(i32* %171, %struct.sctp_tmit_chunk* %176, i32 %177)
  br label %179

179:                                              ; preds = %169, %158
  br label %180

180:                                              ; preds = %179, %130
  %181 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %182 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %186 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sle i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %180
  %190 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %191 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load i32, i32* %9, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* @sctps_windowprobed, align 4
  %199 = call i32 @SCTP_STAT_INCR(i32 %198)
  br label %200

200:                                              ; preds = %197, %194, %189, %180
  %201 = load i32, i32* @SCTP_DATAGRAM_SENT, align 4
  %202 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %202, i64 %204
  %206 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %205, align 8
  %207 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %206, i32 0, i32 5
  store i32 %201, i32* %207, align 4
  %208 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %208, i64 %210
  %212 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %211, align 8
  %213 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %212, i32 0, i32 0
  store i32 1, i32* %213, align 8
  %214 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %214, i64 %216
  %218 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %217, align 8
  %219 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  store i64 0, i64* %221, align 8
  %222 = load i32, i32* @sctp_logging_level, align 4
  %223 = call i32 @SCTP_BASE_SYSCTL(i32 %222)
  %224 = load i32, i32* @SCTP_FLIGHT_LOGGING_ENABLE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %264

227:                                              ; preds = %200
  %228 = load i32, i32* @SCTP_FLIGHT_LOG_UP, align 4
  %229 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %229, i64 %231
  %233 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %232, align 8
  %234 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %233, i32 0, i32 3
  %235 = load %struct.sctp_nets*, %struct.sctp_nets** %234, align 8
  %236 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %238, i64 %240
  %242 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %241, align 8
  %243 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %245, i64 %247
  %249 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %248, align 8
  %250 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %249, i32 0, i32 3
  %251 = load %struct.sctp_nets*, %struct.sctp_nets** %250, align 8
  %252 = ptrtoint %struct.sctp_nets* %251 to i64
  %253 = trunc i64 %252 to i32
  %254 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %254, i64 %256
  %258 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %257, align 8
  %259 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @sctp_misc_ints(i32 %228, i32 %237, i32 %244, i32 %253, i32 %262)
  br label %264

264:                                              ; preds = %227, %200
  %265 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %265, i64 %267
  %269 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %268, align 8
  %270 = call i32 @sctp_flight_size_increase(%struct.sctp_tmit_chunk* %269)
  %271 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %272 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %272, i64 %274
  %276 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %275, align 8
  %277 = call i32 @sctp_total_flight_increase(%struct.sctp_tcb* %271, %struct.sctp_tmit_chunk* %276)
  %278 = load i32, i32* @sctp_logging_level, align 4
  %279 = call i32 @SCTP_BASE_SYSCTL(i32 %278)
  %280 = load i32, i32* @SCTP_LOG_RWND_ENABLE, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %298

283:                                              ; preds = %264
  %284 = load i32, i32* @SCTP_DECREASE_PEER_RWND, align 4
  %285 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %286 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %288, i64 %290
  %292 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %291, align 8
  %293 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* @sctp_peer_chunk_oh, align 4
  %296 = call i32 @SCTP_BASE_SYSCTL(i32 %295)
  %297 = call i32 @sctp_log_rwnd(i32 %284, i64 %287, i64 %294, i32 %296)
  br label %298

298:                                              ; preds = %283, %264
  %299 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %300 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.sctp_tmit_chunk**, %struct.sctp_tmit_chunk*** %8, align 8
  %303 = load i32, i32* %11, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %302, i64 %304
  %306 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %305, align 8
  %307 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i32, i32* @sctp_peer_chunk_oh, align 4
  %310 = call i32 @SCTP_BASE_SYSCTL(i32 %309)
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %308, %311
  %313 = trunc i64 %312 to i32
  %314 = call i64 @sctp_sbspace_sub(i64 %301, i32 %313)
  %315 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %316 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %315, i32 0, i32 0
  store i64 %314, i64* %316, align 8
  %317 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %318 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %321 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %320, i32 0, i32 0
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp slt i64 %319, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %298
  %328 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %329 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %328, i32 0, i32 0
  store i64 0, i64* %329, align 8
  br label %330

330:                                              ; preds = %327, %298
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %11, align 4
  br label %14

334:                                              ; preds = %14
  %335 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %336 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  %338 = load i32 (%struct.sctp_tcb*, %struct.sctp_nets*)*, i32 (%struct.sctp_tcb*, %struct.sctp_nets*)** %337, align 8
  %339 = icmp ne i32 (%struct.sctp_tcb*, %struct.sctp_nets*)* %338, null
  br i1 %339, label %340, label %348

340:                                              ; preds = %334
  %341 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %342 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32 (%struct.sctp_tcb*, %struct.sctp_nets*)*, i32 (%struct.sctp_tcb*, %struct.sctp_nets*)** %343, align 8
  %345 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %346 = load %struct.sctp_nets*, %struct.sctp_nets** %10, align 8
  %347 = call i32 %344(%struct.sctp_tcb* %345, %struct.sctp_nets* %346)
  br label %348

348:                                              ; preds = %340, %334
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_tmit_chunk*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local %struct.sctp_tmit_chunk* @TAILQ_LAST(i32*, i32) #1

declare dso_local i64 @SCTP_TSN_GT(i32, i32) #1

declare dso_local %struct.sctp_tmit_chunk* @TAILQ_PREV(%struct.sctp_tmit_chunk*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sctp_tmit_chunk*, i32) #1

declare dso_local i32 @SCTP_STAT_INCR(i32) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_misc_ints(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_flight_size_increase(%struct.sctp_tmit_chunk*) #1

declare dso_local i32 @sctp_total_flight_increase(%struct.sctp_tcb*, %struct.sctp_tmit_chunk*) #1

declare dso_local i32 @sctp_log_rwnd(i32, i64, i64, i32) #1

declare dso_local i64 @sctp_sbspace_sub(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
