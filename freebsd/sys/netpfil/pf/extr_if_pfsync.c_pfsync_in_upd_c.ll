; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_upd_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_upd_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.pfsync_pkt = type { i32 }
%struct.mbuf = type { i64 }
%struct.pfsync_upd_c = type { i64, %struct.TYPE_11__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.pf_state = type { i32, i64, i8*, i8*, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_10__** }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@V_pfsyncif = common dso_local global %struct.pfsync_softc* null, align 8
@V_pfsyncstats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@PFTM_MAX = common dso_local global i64 0, align 8
@PF_TCPS_PROXY_DST = common dso_local global i64 0, align 8
@V_pf_status = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PF_DEBUG_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"pfsync_input: PFSYNC_ACT_UPD_C: invalid value\0A\00", align 1
@PFSTATE_ACK = common dso_local global i32 0, align 4
@PF_SK_WIRE = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfsync_pkt*, %struct.mbuf*, i32, i32)* @pfsync_in_upd_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_in_upd_c(%struct.pfsync_pkt* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfsync_pkt*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfsync_softc*, align 8
  %11 = alloca %struct.pfsync_upd_c*, align 8
  %12 = alloca %struct.pfsync_upd_c*, align 8
  %13 = alloca %struct.pf_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pfsync_pkt* %0, %struct.pfsync_pkt** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.pfsync_softc*, %struct.pfsync_softc** @V_pfsyncif, align 8
  store %struct.pfsync_softc* %19, %struct.pfsync_softc** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 32
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call %struct.mbuf* @m_pulldown(%struct.mbuf* %24, i32 %25, i32 %26, i32* %17)
  store %struct.mbuf* %27, %struct.mbuf** %16, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 2), align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 2), align 4
  store i32 -1, i32* %5, align 4
  br label %218

33:                                               ; preds = %4
  %34 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = inttoptr i64 %39 to %struct.pfsync_upd_c*
  store %struct.pfsync_upd_c* %40, %struct.pfsync_upd_c** %11, align 8
  store i32 0, i32* %18, align 4
  br label %41

41:                                               ; preds = %213, %33
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %216

45:                                               ; preds = %41
  %46 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %11, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %46, i64 %48
  store %struct.pfsync_upd_c* %49, %struct.pfsync_upd_c** %12, align 8
  %50 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %51 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PFTM_MAX, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %45
  %56 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %57 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PF_TCPS_PROXY_DST, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %64 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PF_TCPS_PROXY_DST, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %62, %55, %45
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @V_pf_status, i32 0, i32 0), align 8
  %71 = load i64, i64* @PF_DEBUG_MISC, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 1), align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 1), align 4
  br label %213

78:                                               ; preds = %62
  %79 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %80 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %83 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.pf_state* @pf_find_state_byid(i32 %81, i32 %84)
  store %struct.pf_state* %85, %struct.pf_state** %13, align 8
  %86 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %87 = icmp eq %struct.pf_state* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %78
  %89 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %90 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = call i32 @PFSYNC_BUCKET_LOCK(i32* %92)
  %94 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %95 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %98 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @pfsync_request_update(i32 %96, i32 %99)
  %101 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %102 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = call i32 @PFSYNC_BUCKET_UNLOCK(i32* %104)
  br label %213

106:                                              ; preds = %78
  %107 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %108 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @PFSTATE_ACK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %115 = call i32 @pfsync_undefer_state(%struct.pf_state* %114, i32 1)
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %118 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %117, i32 0, i32 6
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %118, align 8
  %120 = load i64, i64* @PF_SK_WIRE, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %119, i64 %120
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IPPROTO_TCP, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %116
  %128 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %129 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %130 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %129, i32 0, i32 2
  %131 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %132 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %131, i32 0, i32 1
  %133 = call i32 @pfsync_upd_tcp(%struct.pf_state* %128, %struct.TYPE_11__* %130, %struct.TYPE_11__* %132)
  store i32 %133, i32* %15, align 4
  br label %173

134:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  %135 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %136 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %140 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %138, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %153

147:                                              ; preds = %134
  %148 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %149 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %148, i32 0, i32 2
  %150 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %151 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %150, i32 0, i32 5
  %152 = call i32 @pf_state_peer_ntoh(%struct.TYPE_11__* %149, %struct.TYPE_12__* %151)
  br label %153

153:                                              ; preds = %147, %144
  %154 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %155 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %159 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %157, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %172

166:                                              ; preds = %153
  %167 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %168 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %167, i32 0, i32 1
  %169 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %170 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %169, i32 0, i32 4
  %171 = call i32 @pf_state_peer_ntoh(%struct.TYPE_11__* %168, %struct.TYPE_12__* %170)
  br label %172

172:                                              ; preds = %166, %163
  br label %173

173:                                              ; preds = %172, %127
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %174, 2
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %178 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %177, i32 0, i32 1
  %179 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %180 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %179, i32 0, i32 4
  %181 = call i32 @pfsync_alloc_scrub_memory(%struct.TYPE_11__* %178, %struct.TYPE_12__* %180)
  %182 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %183 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %182, i32 0, i32 1
  %184 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %185 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %184, i32 0, i32 4
  %186 = call i32 @pf_state_peer_ntoh(%struct.TYPE_11__* %183, %struct.TYPE_12__* %185)
  %187 = load i8*, i8** @time_uptime, align 8
  %188 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %189 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %188, i32 0, i32 3
  store i8* %187, i8** %189, align 8
  %190 = load %struct.pfsync_upd_c*, %struct.pfsync_upd_c** %12, align 8
  %191 = getelementptr inbounds %struct.pfsync_upd_c, %struct.pfsync_upd_c* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %194 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %176, %173
  %196 = load i8*, i8** @time_uptime, align 8
  %197 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %198 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 0), align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 0), align 4
  %204 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %205 = call i32 @pfsync_update_state(%struct.pf_state* %204)
  %206 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %207 = call i32 @PF_STATE_UNLOCK(%struct.pf_state* %206)
  %208 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %209 = call i32 @pfsync_push_all(%struct.pfsync_softc* %208)
  br label %213

210:                                              ; preds = %195
  %211 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %212 = call i32 @PF_STATE_UNLOCK(%struct.pf_state* %211)
  br label %213

213:                                              ; preds = %210, %201, %88, %75
  %214 = load i32, i32* %18, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %18, align 4
  br label %41

216:                                              ; preds = %41
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %216, %30
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local %struct.mbuf* @m_pulldown(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.pf_state* @pf_find_state_byid(i32, i32) #1

declare dso_local i32 @PFSYNC_BUCKET_LOCK(i32*) #1

declare dso_local i32 @pfsync_request_update(i32, i32) #1

declare dso_local i32 @PFSYNC_BUCKET_UNLOCK(i32*) #1

declare dso_local i32 @pfsync_undefer_state(%struct.pf_state*, i32) #1

declare dso_local i32 @pfsync_upd_tcp(%struct.pf_state*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @pf_state_peer_ntoh(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @pfsync_alloc_scrub_memory(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @pfsync_update_state(%struct.pf_state*) #1

declare dso_local i32 @PF_STATE_UNLOCK(%struct.pf_state*) #1

declare dso_local i32 @pfsync_push_all(%struct.pfsync_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
