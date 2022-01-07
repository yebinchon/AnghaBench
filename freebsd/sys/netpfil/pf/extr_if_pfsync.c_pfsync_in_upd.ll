; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.pfsync_pkt = type { i32 }
%struct.mbuf = type { i64 }
%struct.pfsync_state = type { i64, %struct.TYPE_11__, %struct.TYPE_11__, i32, i32 }
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
@.str = private unnamed_addr constant [45 x i8] c"pfsync_input: PFSYNC_ACT_UPD: invalid value\0A\00", align 1
@PFSTATE_ACK = common dso_local global i32 0, align 4
@PF_SK_WIRE = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfsync_pkt*, %struct.mbuf*, i32, i32)* @pfsync_in_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_in_upd(%struct.pfsync_pkt* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfsync_pkt*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfsync_softc*, align 8
  %11 = alloca %struct.pfsync_state*, align 8
  %12 = alloca %struct.pfsync_state*, align 8
  %13 = alloca %struct.pf_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
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
  store i32 %23, i32* %16, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call %struct.mbuf* @m_pulldown(%struct.mbuf* %24, i32 %25, i32 %26, i32* %17)
  store %struct.mbuf* %27, %struct.mbuf** %15, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 3), align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 3), align 4
  store i32 -1, i32* %5, align 4
  br label %211

33:                                               ; preds = %4
  %34 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = inttoptr i64 %39 to %struct.pfsync_state*
  store %struct.pfsync_state* %40, %struct.pfsync_state** %11, align 8
  store i32 0, i32* %18, align 4
  br label %41

41:                                               ; preds = %206, %33
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %209

45:                                               ; preds = %41
  %46 = load %struct.pfsync_state*, %struct.pfsync_state** %11, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %46, i64 %48
  store %struct.pfsync_state* %49, %struct.pfsync_state** %12, align 8
  %50 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %51 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PFTM_MAX, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %45
  %56 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %57 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PF_TCPS_PROXY_DST, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %64 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %63, i32 0, i32 1
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
  %74 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 2), align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 2), align 4
  br label %206

78:                                               ; preds = %62
  %79 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %80 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %83 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.pf_state* @pf_find_state_byid(i32 %81, i32 %84)
  store %struct.pf_state* %85, %struct.pf_state** %13, align 8
  %86 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %87 = icmp eq %struct.pf_state* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %78
  %89 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %90 = load %struct.pfsync_pkt*, %struct.pfsync_pkt** %6, align 8
  %91 = getelementptr inbounds %struct.pfsync_pkt, %struct.pfsync_pkt* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @pfsync_state_import(%struct.pfsync_state* %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 1), align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 1), align 4
  br label %98

98:                                               ; preds = %95, %88
  br label %206

99:                                               ; preds = %78
  %100 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %101 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PFSTATE_ACK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %108 = call i32 @pfsync_undefer_state(%struct.pf_state* %107, i32 1)
  br label %109

109:                                              ; preds = %106, %99
  %110 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %111 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %110, i32 0, i32 6
  %112 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %111, align 8
  %113 = load i64, i64* @PF_SK_WIRE, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %112, i64 %113
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IPPROTO_TCP, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %122 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %123 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %122, i32 0, i32 2
  %124 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %125 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %124, i32 0, i32 1
  %126 = call i32 @pfsync_upd_tcp(%struct.pf_state* %121, %struct.TYPE_11__* %123, %struct.TYPE_11__* %125)
  store i32 %126, i32* %14, align 4
  br label %166

127:                                              ; preds = %109
  store i32 0, i32* %14, align 4
  %128 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %129 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %133 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %131, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %146

140:                                              ; preds = %127
  %141 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %142 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %141, i32 0, i32 2
  %143 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %144 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %143, i32 0, i32 5
  %145 = call i32 @pf_state_peer_ntoh(%struct.TYPE_11__* %142, %struct.TYPE_12__* %144)
  br label %146

146:                                              ; preds = %140, %137
  %147 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %148 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %152 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %150, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %165

159:                                              ; preds = %146
  %160 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %161 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %160, i32 0, i32 1
  %162 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %163 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %162, i32 0, i32 4
  %164 = call i32 @pf_state_peer_ntoh(%struct.TYPE_11__* %161, %struct.TYPE_12__* %163)
  br label %165

165:                                              ; preds = %159, %156
  br label %166

166:                                              ; preds = %165, %120
  %167 = load i32, i32* %14, align 4
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %169, label %188

169:                                              ; preds = %166
  %170 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %171 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %170, i32 0, i32 1
  %172 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %173 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %172, i32 0, i32 4
  %174 = call i32 @pfsync_alloc_scrub_memory(%struct.TYPE_11__* %171, %struct.TYPE_12__* %173)
  %175 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %176 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %175, i32 0, i32 1
  %177 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %178 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %177, i32 0, i32 4
  %179 = call i32 @pf_state_peer_ntoh(%struct.TYPE_11__* %176, %struct.TYPE_12__* %178)
  %180 = load i8*, i8** @time_uptime, align 8
  %181 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %182 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %181, i32 0, i32 3
  store i8* %180, i8** %182, align 8
  %183 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %184 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %187 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %169, %166
  %189 = load i8*, i8** @time_uptime, align 8
  %190 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %191 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* %14, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %188
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 0), align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @V_pfsyncstats, i32 0, i32 0), align 4
  %197 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %198 = call i32 @pfsync_update_state(%struct.pf_state* %197)
  %199 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %200 = call i32 @PF_STATE_UNLOCK(%struct.pf_state* %199)
  %201 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %202 = call i32 @pfsync_push_all(%struct.pfsync_softc* %201)
  br label %206

203:                                              ; preds = %188
  %204 = load %struct.pf_state*, %struct.pf_state** %13, align 8
  %205 = call i32 @PF_STATE_UNLOCK(%struct.pf_state* %204)
  br label %206

206:                                              ; preds = %203, %194, %98, %75
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %18, align 4
  br label %41

209:                                              ; preds = %41
  %210 = load i32, i32* %16, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %209, %30
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local %struct.mbuf* @m_pulldown(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.pf_state* @pf_find_state_byid(i32, i32) #1

declare dso_local i64 @pfsync_state_import(%struct.pfsync_state*, i32) #1

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
