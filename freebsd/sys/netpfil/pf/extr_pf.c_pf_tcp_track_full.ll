; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_tcp_track_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_tcp_track_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.pf_state_peer = type { i32, i64, i64, i32, i64, i32, i32* }
%struct.pf_state = type { i64, i64*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.pfi_kif = type { i32 }
%struct.mbuf = type { i32 }
%struct.pf_pdesc = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tcphdr* }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TH_SYN = common dso_local global i32 0, align 4
@PF_WSCALE_MASK = common dso_local global i32 0, align 4
@PFDESC_TCP_NORM = common dso_local global i32 0, align 4
@PFRES_MEMORY = common dso_local global i32 0, align 4
@PF_DROP = common dso_local global i32 0, align 4
@PF_WSCALE_FLAG = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@TH_ACK = common dso_local global i32 0, align 4
@TH_RST = common dso_local global i32 0, align 4
@PFDESC_IP_REAS = common dso_local global i32 0, align 4
@TCPS_CLOSING = common dso_local global i64 0, align 8
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@PFRES_SRCLIMIT = common dso_local global i32 0, align 4
@TCPS_FIN_WAIT_2 = common dso_local global i64 0, align 8
@TCPS_TIME_WAIT = common dso_local global i8* null, align 8
@time_uptime = common dso_local global i32 0, align 4
@PFTM_TCP_CLOSED = common dso_local global i32 0, align 4
@PFTM_TCP_FIN_WAIT = common dso_local global i32 0, align 4
@PFTM_TCP_OPENING = common dso_local global i32 0, align 4
@PFTM_TCP_CLOSING = common dso_local global i32 0, align 4
@PFTM_TCP_ESTABLISHED = common dso_local global i32 0, align 4
@V_pf_status = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PF_DEBUG_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"pf: loose state match: \00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c" seq=%u (%u) ack=%u len=%u ackskew=%d pkts=%llu:%llu dir=%s,%s\0A\00", align 1
@PF_IN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"fwd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"pf: BAD state: \00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"pf: State failure on: %c %c %c %c | %c %c\0A\00", align 1
@PFRES_BADSTATE = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i32 0, align 4
@MAXACKWINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state_peer*, %struct.pf_state_peer*, %struct.pf_state**, %struct.pfi_kif*, %struct.mbuf*, i32, %struct.pf_pdesc*, i32*, i32*)* @pf_tcp_track_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_tcp_track_full(%struct.pf_state_peer* %0, %struct.pf_state_peer* %1, %struct.pf_state** %2, %struct.pfi_kif* %3, %struct.mbuf* %4, i32 %5, %struct.pf_pdesc* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.pf_state_peer*, align 8
  %12 = alloca %struct.pf_state_peer*, align 8
  %13 = alloca %struct.pf_state**, align 8
  %14 = alloca %struct.pfi_kif*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.pf_pdesc*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.tcphdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.pf_state_peer* %0, %struct.pf_state_peer** %11, align 8
  store %struct.pf_state_peer* %1, %struct.pf_state_peer** %12, align 8
  store %struct.pf_state** %2, %struct.pf_state*** %13, align 8
  store %struct.pfi_kif* %3, %struct.pfi_kif** %14, align 8
  store %struct.mbuf* %4, %struct.mbuf** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.pf_pdesc* %6, %struct.pf_pdesc** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %29 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %30 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  store %struct.tcphdr* %32, %struct.tcphdr** %20, align 8
  %33 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %34 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  store i32 %36, i32* %21, align 4
  %37 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %38 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %9
  %42 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %43 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TH_SYN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %46
  %54 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %55 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PF_WSCALE_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %26, align 4
  %59 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %60 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PF_WSCALE_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %27, align 4
  br label %65

64:                                               ; preds = %46, %41, %9
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %67 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntohl(i32 %68)
  store i32 %69, i32* %24, align 4
  store i32 %69, i32* %25, align 4
  %70 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %71 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %301

74:                                               ; preds = %65
  %75 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %76 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PFDESC_TCP_NORM, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %83 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %81, %74
  %87 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %88 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %95 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %96 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %97 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %98 = call i64 @pf_normalize_tcp_init(%struct.mbuf* %92, i32 %93, %struct.pf_pdesc* %94, %struct.tcphdr* %95, %struct.pf_state_peer* %96, %struct.pf_state_peer* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* @PFRES_MEMORY, align 4
  %103 = call i32 @REASON_SET(i32* %101, i32 %102)
  %104 = load i32, i32* @PF_DROP, align 4
  store i32 %104, i32* %10, align 4
  br label %1129

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %86, %81
  %107 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %108 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %160

111:                                              ; preds = %106
  %112 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %113 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %160, label %116

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %125, %116
  %118 = call i64 (...) @arc4random()
  %119 = load i32, i32* %24, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %118, %120
  %122 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %123 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = icmp eq i64 %121, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %117

126:                                              ; preds = %117
  %127 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %128 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ntohl(i32 %129)
  %131 = sext i32 %130 to i64
  %132 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %133 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %131, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %22, align 4
  %137 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %138 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 6
  %140 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %141 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %140, i32 0, i32 5
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %145 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = trunc i64 %147 to i32
  %149 = call i32 @htonl(i32 %148)
  %150 = call i32 @pf_change_proto_a(%struct.mbuf* %137, i32* %139, i32* %141, i32 %149, i32 0)
  %151 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %152 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %153 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %152, i32 0, i32 2
  %154 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %155 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %154, i32 0, i32 5
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @htonl(i32 %156)
  %158 = call i32 @pf_change_proto_a(%struct.mbuf* %151, i32* %153, i32* %155, i32 %157, i32 0)
  %159 = load i32*, i32** %19, align 8
  store i32 1, i32* %159, align 4
  br label %165

160:                                              ; preds = %111, %106
  %161 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %162 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ntohl(i32 %163)
  store i32 %164, i32* %22, align 4
  br label %165

165:                                              ; preds = %160, %126
  %166 = load i32, i32* %24, align 4
  %167 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %168 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %166, %169
  store i32 %170, i32* %23, align 4
  %171 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %172 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TH_SYN, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %236

177:                                              ; preds = %165
  %178 = load i32, i32* %23, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %23, align 4
  %180 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %181 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @PF_WSCALE_FLAG, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %235

186:                                              ; preds = %177
  %187 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %188 = load i32, i32* %16, align 4
  %189 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %190 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %193 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @pf_get_wscale(%struct.mbuf* %187, i32 %188, i32 %191, i32 %194)
  %196 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %197 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %199 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @PF_WSCALE_FLAG, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %222

204:                                              ; preds = %186
  %205 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %206 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @PF_WSCALE_MASK, align 4
  %209 = and i32 %207, %208
  store i32 %209, i32* %26, align 4
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %26, align 4
  %212 = shl i32 1, %211
  %213 = add nsw i32 %210, %212
  %214 = sub nsw i32 %213, 1
  %215 = load i32, i32* %26, align 4
  %216 = ashr i32 %214, %215
  store i32 %216, i32* %21, align 4
  %217 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %218 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @PF_WSCALE_MASK, align 4
  %221 = and i32 %219, %220
  store i32 %221, i32* %27, align 4
  br label %234

222:                                              ; preds = %186
  %223 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %224 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @PF_WSCALE_MASK, align 4
  %227 = and i32 %225, %226
  %228 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %229 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = shl i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %233 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %232, i32 0, i32 0
  store i32 0, i32* %233, align 8
  br label %234

234:                                              ; preds = %222, %204
  br label %235

235:                                              ; preds = %234, %177
  br label %236

236:                                              ; preds = %235, %165
  %237 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %238 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @TH_FIN, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %236
  %244 = load i32, i32* %23, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %23, align 4
  br label %246

246:                                              ; preds = %243, %236
  %247 = load i32, i32* %24, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %250 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  %251 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %252 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @TCPS_SYN_SENT, align 8
  %255 = icmp slt i64 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %246
  %257 = load i64, i64* @TCPS_SYN_SENT, align 8
  %258 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %259 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %258, i32 0, i32 4
  store i64 %257, i64* %259, align 8
  br label %260

260:                                              ; preds = %256, %246
  %261 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %262 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %279, label %265

265:                                              ; preds = %260
  %266 = load i32, i32* %23, align 4
  %267 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %268 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %27, align 4
  %271 = shl i32 %269, %270
  %272 = call i32 @MAX(i32 1, i32 %271)
  %273 = add nsw i32 %266, %272
  %274 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %275 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = call i64 @SEQ_GEQ(i32 %273, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %265, %260
  %280 = load i32, i32* %23, align 4
  %281 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %282 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %27, align 4
  %285 = shl i32 %283, %284
  %286 = call i32 @MAX(i32 1, i32 %285)
  %287 = add nsw i32 %280, %286
  %288 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %289 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %288, i32 0, i32 5
  store i32 %287, i32* %289, align 8
  br label %290

290:                                              ; preds = %279, %265
  %291 = load i32, i32* %21, align 4
  %292 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %293 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = icmp sgt i32 %291, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %290
  %297 = load i32, i32* %21, align 4
  %298 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %299 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 8
  br label %300

300:                                              ; preds = %296, %290
  br label %366

301:                                              ; preds = %65
  %302 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %303 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @ntohl(i32 %304)
  %306 = sext i32 %305 to i64
  %307 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %308 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = sub nsw i64 %306, %309
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %22, align 4
  %312 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %313 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %340

316:                                              ; preds = %301
  %317 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %318 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %319 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %318, i32 0, i32 6
  %320 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %321 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %320, i32 0, i32 5
  %322 = load i32, i32* %24, align 4
  %323 = sext i32 %322 to i64
  %324 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %325 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %323, %326
  %328 = trunc i64 %327 to i32
  %329 = call i32 @htonl(i32 %328)
  %330 = call i32 @pf_change_proto_a(%struct.mbuf* %317, i32* %319, i32* %321, i32 %329, i32 0)
  %331 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %332 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %333 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %332, i32 0, i32 2
  %334 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %335 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %334, i32 0, i32 5
  %336 = load i32, i32* %22, align 4
  %337 = call i32 @htonl(i32 %336)
  %338 = call i32 @pf_change_proto_a(%struct.mbuf* %331, i32* %333, i32* %335, i32 %337, i32 0)
  %339 = load i32*, i32** %19, align 8
  store i32 1, i32* %339, align 4
  br label %340

340:                                              ; preds = %316, %301
  %341 = load i32, i32* %24, align 4
  %342 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %343 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %341, %344
  store i32 %345, i32* %23, align 4
  %346 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %347 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @TH_SYN, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %340
  %353 = load i32, i32* %23, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %23, align 4
  br label %355

355:                                              ; preds = %352, %340
  %356 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %357 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @TH_FIN, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %355
  %363 = load i32, i32* %23, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %23, align 4
  br label %365

365:                                              ; preds = %362, %355
  br label %366

366:                                              ; preds = %365, %300
  %367 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %368 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @TH_ACK, align 4
  %371 = and i32 %369, %370
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %366
  %374 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %375 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = trunc i64 %376 to i32
  store i32 %377, i32* %22, align 4
  br label %405

378:                                              ; preds = %366
  %379 = load i32, i32* %22, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %393

381:                                              ; preds = %378
  %382 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %383 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @TH_ACK, align 4
  %386 = load i32, i32* @TH_RST, align 4
  %387 = or i32 %385, %386
  %388 = and i32 %384, %387
  %389 = load i32, i32* @TH_ACK, align 4
  %390 = load i32, i32* @TH_RST, align 4
  %391 = or i32 %389, %390
  %392 = icmp eq i32 %388, %391
  br i1 %392, label %399, label %393

393:                                              ; preds = %381, %378
  %394 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %395 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %394, i32 0, i32 4
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @TCPS_SYN_SENT, align 8
  %398 = icmp slt i64 %396, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %393, %381
  %400 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %401 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %22, align 4
  br label %404

404:                                              ; preds = %399, %393
  br label %405

405:                                              ; preds = %404, %373
  %406 = load i32, i32* %24, align 4
  %407 = load i32, i32* %23, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %415

409:                                              ; preds = %405
  %410 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %411 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %410, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %24, align 4
  %414 = load i32, i32* %24, align 4
  store i32 %414, i32* %23, align 4
  br label %415

415:                                              ; preds = %409, %405
  %416 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %417 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load i32, i32* %22, align 4
  %420 = sext i32 %419 to i64
  %421 = sub nsw i64 %418, %420
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %28, align 4
  %423 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %424 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %423, i32 0, i32 2
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %445

427:                                              ; preds = %415
  %428 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %429 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = shl i32 %430, 2
  %432 = sext i32 %431 to i64
  %433 = icmp ugt i64 %432, 32
  br i1 %433, label %434, label %445

434:                                              ; preds = %427
  %435 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %436 = load i32, i32* %16, align 4
  %437 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %438 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %439 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %440 = call i64 @pf_modulate_sack(%struct.mbuf* %435, i32 %436, %struct.pf_pdesc* %437, %struct.tcphdr* %438, %struct.pf_state_peer* %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %434
  %443 = load i32*, i32** %19, align 8
  store i32 1, i32* %443, align 4
  br label %444

444:                                              ; preds = %442, %434
  br label %445

445:                                              ; preds = %444, %427, %415
  %446 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %447 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %446, i32 0, i32 5
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* %23, align 4
  %450 = call i64 @SEQ_GEQ(i32 %448, i32 %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %762

452:                                              ; preds = %445
  %453 = load i32, i32* %24, align 4
  %454 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %455 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %458 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* %27, align 4
  %461 = shl i32 %459, %460
  %462 = sext i32 %461 to i64
  %463 = sub nsw i64 %456, %462
  %464 = trunc i64 %463 to i32
  %465 = call i64 @SEQ_GEQ(i32 %453, i32 %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %762

467:                                              ; preds = %452
  %468 = load i32, i32* %28, align 4
  %469 = icmp sge i32 %468, -67035
  br i1 %469, label %470, label %762

470:                                              ; preds = %467
  %471 = load i32, i32* %28, align 4
  %472 = load i32, i32* %26, align 4
  %473 = shl i32 67035, %472
  %474 = icmp sle i32 %471, %473
  br i1 %474, label %475, label %762

475:                                              ; preds = %470
  %476 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %477 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* @TH_RST, align 4
  %480 = and i32 %478, %479
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %512, label %482

482:                                              ; preds = %475
  %483 = load i32, i32* %25, align 4
  %484 = sext i32 %483 to i64
  %485 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %486 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %485, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = icmp eq i64 %484, %487
  br i1 %488, label %512, label %489

489:                                              ; preds = %482
  %490 = load i32, i32* %25, align 4
  %491 = sext i32 %490 to i64
  %492 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %493 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %492, i32 0, i32 1
  %494 = load i64, i64* %493, align 8
  %495 = add nsw i64 %494, 1
  %496 = icmp eq i64 %491, %495
  br i1 %496, label %512, label %497

497:                                              ; preds = %489
  %498 = load i32, i32* %25, align 4
  %499 = add nsw i32 %498, 1
  %500 = sext i32 %499 to i64
  %501 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %502 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %501, i32 0, i32 1
  %503 = load i64, i64* %502, align 8
  %504 = icmp eq i64 %500, %503
  br i1 %504, label %512, label %505

505:                                              ; preds = %497
  %506 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %507 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @PFDESC_IP_REAS, align 4
  %510 = and i32 %508, %509
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %762

512:                                              ; preds = %505, %497, %489, %482, %475
  %513 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %514 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %513, i32 0, i32 6
  %515 = load i32*, i32** %514, align 8
  %516 = icmp ne i32* %515, null
  br i1 %516, label %522, label %517

517:                                              ; preds = %512
  %518 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %519 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %518, i32 0, i32 6
  %520 = load i32*, i32** %519, align 8
  %521 = icmp ne i32* %520, null
  br i1 %521, label %522, label %538

522:                                              ; preds = %517, %512
  %523 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %524 = load i32, i32* %16, align 4
  %525 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %526 = load i32*, i32** %18, align 8
  %527 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %528 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %529 = load %struct.pf_state*, %struct.pf_state** %528, align 8
  %530 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %531 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %532 = load i32*, i32** %19, align 8
  %533 = call i64 @pf_normalize_tcp_stateful(%struct.mbuf* %523, i32 %524, %struct.pf_pdesc* %525, i32* %526, %struct.tcphdr* %527, %struct.pf_state* %529, %struct.pf_state_peer* %530, %struct.pf_state_peer* %531, i32* %532)
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %522
  %536 = load i32, i32* @PF_DROP, align 4
  store i32 %536, i32* %10, align 4
  br label %1129

537:                                              ; preds = %522
  br label %538

538:                                              ; preds = %537, %517
  %539 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %540 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* %21, align 4
  %543 = icmp slt i32 %541, %542
  br i1 %543, label %544, label %548

544:                                              ; preds = %538
  %545 = load i32, i32* %21, align 4
  %546 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %547 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %546, i32 0, i32 3
  store i32 %545, i32* %547, align 8
  br label %548

548:                                              ; preds = %544, %538
  %549 = load i32, i32* %23, align 4
  %550 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %551 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %550, i32 0, i32 1
  %552 = load i64, i64* %551, align 8
  %553 = trunc i64 %552 to i32
  %554 = call i64 @SEQ_GT(i32 %549, i32 %553)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %548
  %557 = load i32, i32* %23, align 4
  %558 = sext i32 %557 to i64
  %559 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %560 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %559, i32 0, i32 1
  store i64 %558, i64* %560, align 8
  br label %561

561:                                              ; preds = %556, %548
  %562 = load i32, i32* %22, align 4
  %563 = load i32, i32* %21, align 4
  %564 = load i32, i32* %26, align 4
  %565 = shl i32 %563, %564
  %566 = add nsw i32 %562, %565
  %567 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %568 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %567, i32 0, i32 5
  %569 = load i32, i32* %568, align 8
  %570 = call i64 @SEQ_GEQ(i32 %566, i32 %569)
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %581

572:                                              ; preds = %561
  %573 = load i32, i32* %22, align 4
  %574 = load i32, i32* %21, align 4
  %575 = load i32, i32* %26, align 4
  %576 = shl i32 %574, %575
  %577 = call i32 @MAX(i32 %576, i32 1)
  %578 = add nsw i32 %573, %577
  %579 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %580 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %579, i32 0, i32 5
  store i32 %578, i32* %580, align 8
  br label %581

581:                                              ; preds = %572, %561
  %582 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %583 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = load i32, i32* @TH_SYN, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %599

588:                                              ; preds = %581
  %589 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %590 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %589, i32 0, i32 4
  %591 = load i64, i64* %590, align 8
  %592 = load i64, i64* @TCPS_SYN_SENT, align 8
  %593 = icmp slt i64 %591, %592
  br i1 %593, label %594, label %598

594:                                              ; preds = %588
  %595 = load i64, i64* @TCPS_SYN_SENT, align 8
  %596 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %597 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %596, i32 0, i32 4
  store i64 %595, i64* %597, align 8
  br label %598

598:                                              ; preds = %594, %588
  br label %599

599:                                              ; preds = %598, %581
  %600 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %601 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 4
  %603 = load i32, i32* @TH_FIN, align 4
  %604 = and i32 %602, %603
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %617

606:                                              ; preds = %599
  %607 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %608 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %607, i32 0, i32 4
  %609 = load i64, i64* %608, align 8
  %610 = load i64, i64* @TCPS_CLOSING, align 8
  %611 = icmp slt i64 %609, %610
  br i1 %611, label %612, label %616

612:                                              ; preds = %606
  %613 = load i64, i64* @TCPS_CLOSING, align 8
  %614 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %615 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %614, i32 0, i32 4
  store i64 %613, i64* %615, align 8
  br label %616

616:                                              ; preds = %612, %606
  br label %617

617:                                              ; preds = %616, %599
  %618 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %619 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 4
  %621 = load i32, i32* @TH_ACK, align 4
  %622 = and i32 %620, %621
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %667

624:                                              ; preds = %617
  %625 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %626 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %625, i32 0, i32 4
  %627 = load i64, i64* %626, align 8
  %628 = load i64, i64* @TCPS_SYN_SENT, align 8
  %629 = icmp eq i64 %627, %628
  br i1 %629, label %630, label %655

630:                                              ; preds = %624
  %631 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %632 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %633 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %632, i32 0, i32 4
  store i64 %631, i64* %633, align 8
  %634 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %635 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %634, i32 0, i32 4
  %636 = load i64, i64* %635, align 8
  %637 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %638 = icmp eq i64 %636, %637
  br i1 %638, label %639, label %654

639:                                              ; preds = %630
  %640 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %641 = load %struct.pf_state*, %struct.pf_state** %640, align 8
  %642 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %641, i32 0, i32 7
  %643 = load i32*, i32** %642, align 8
  %644 = icmp ne i32* %643, null
  br i1 %644, label %645, label %654

645:                                              ; preds = %639
  %646 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %647 = call i64 @pf_src_connlimit(%struct.pf_state** %646)
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %654

649:                                              ; preds = %645
  %650 = load i32*, i32** %18, align 8
  %651 = load i32, i32* @PFRES_SRCLIMIT, align 4
  %652 = call i32 @REASON_SET(i32* %650, i32 %651)
  %653 = load i32, i32* @PF_DROP, align 4
  store i32 %653, i32* %10, align 4
  br label %1129

654:                                              ; preds = %645, %639, %630
  br label %666

655:                                              ; preds = %624
  %656 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %657 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %656, i32 0, i32 4
  %658 = load i64, i64* %657, align 8
  %659 = load i64, i64* @TCPS_CLOSING, align 8
  %660 = icmp eq i64 %658, %659
  br i1 %660, label %661, label %665

661:                                              ; preds = %655
  %662 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %663 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %664 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %663, i32 0, i32 4
  store i64 %662, i64* %664, align 8
  br label %665

665:                                              ; preds = %661, %655
  br label %666

666:                                              ; preds = %665, %654
  br label %667

667:                                              ; preds = %666, %617
  %668 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %669 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = load i32, i32* @TH_RST, align 4
  %672 = and i32 %670, %671
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %674, label %681

674:                                              ; preds = %667
  %675 = load i8*, i8** @TCPS_TIME_WAIT, align 8
  %676 = ptrtoint i8* %675 to i64
  %677 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %678 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %677, i32 0, i32 4
  store i64 %676, i64* %678, align 8
  %679 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %680 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %679, i32 0, i32 4
  store i64 %676, i64* %680, align 8
  br label %681

681:                                              ; preds = %674, %667
  %682 = load i32, i32* @time_uptime, align 4
  %683 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %684 = load %struct.pf_state*, %struct.pf_state** %683, align 8
  %685 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %684, i32 0, i32 6
  store i32 %682, i32* %685, align 4
  %686 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %687 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %686, i32 0, i32 4
  %688 = load i64, i64* %687, align 8
  %689 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %690 = icmp sge i64 %688, %689
  br i1 %690, label %691, label %702

691:                                              ; preds = %681
  %692 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %693 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %692, i32 0, i32 4
  %694 = load i64, i64* %693, align 8
  %695 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %696 = icmp sge i64 %694, %695
  br i1 %696, label %697, label %702

697:                                              ; preds = %691
  %698 = load i32, i32* @PFTM_TCP_CLOSED, align 4
  %699 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %700 = load %struct.pf_state*, %struct.pf_state** %699, align 8
  %701 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %700, i32 0, i32 5
  store i32 %698, i32* %701, align 8
  br label %761

702:                                              ; preds = %691, %681
  %703 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %704 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %703, i32 0, i32 4
  %705 = load i64, i64* %704, align 8
  %706 = load i64, i64* @TCPS_CLOSING, align 8
  %707 = icmp sge i64 %705, %706
  br i1 %707, label %708, label %719

708:                                              ; preds = %702
  %709 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %710 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %709, i32 0, i32 4
  %711 = load i64, i64* %710, align 8
  %712 = load i64, i64* @TCPS_CLOSING, align 8
  %713 = icmp sge i64 %711, %712
  br i1 %713, label %714, label %719

714:                                              ; preds = %708
  %715 = load i32, i32* @PFTM_TCP_FIN_WAIT, align 4
  %716 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %717 = load %struct.pf_state*, %struct.pf_state** %716, align 8
  %718 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %717, i32 0, i32 5
  store i32 %715, i32* %718, align 8
  br label %760

719:                                              ; preds = %708, %702
  %720 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %721 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %720, i32 0, i32 4
  %722 = load i64, i64* %721, align 8
  %723 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %724 = icmp slt i64 %722, %723
  br i1 %724, label %731, label %725

725:                                              ; preds = %719
  %726 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %727 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %726, i32 0, i32 4
  %728 = load i64, i64* %727, align 8
  %729 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %730 = icmp slt i64 %728, %729
  br i1 %730, label %731, label %736

731:                                              ; preds = %725, %719
  %732 = load i32, i32* @PFTM_TCP_OPENING, align 4
  %733 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %734 = load %struct.pf_state*, %struct.pf_state** %733, align 8
  %735 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %734, i32 0, i32 5
  store i32 %732, i32* %735, align 8
  br label %759

736:                                              ; preds = %725
  %737 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %738 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %737, i32 0, i32 4
  %739 = load i64, i64* %738, align 8
  %740 = load i64, i64* @TCPS_CLOSING, align 8
  %741 = icmp sge i64 %739, %740
  br i1 %741, label %748, label %742

742:                                              ; preds = %736
  %743 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %744 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %743, i32 0, i32 4
  %745 = load i64, i64* %744, align 8
  %746 = load i64, i64* @TCPS_CLOSING, align 8
  %747 = icmp sge i64 %745, %746
  br i1 %747, label %748, label %753

748:                                              ; preds = %742, %736
  %749 = load i32, i32* @PFTM_TCP_CLOSING, align 4
  %750 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %751 = load %struct.pf_state*, %struct.pf_state** %750, align 8
  %752 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %751, i32 0, i32 5
  store i32 %749, i32* %752, align 8
  br label %758

753:                                              ; preds = %742
  %754 = load i32, i32* @PFTM_TCP_ESTABLISHED, align 4
  %755 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %756 = load %struct.pf_state*, %struct.pf_state** %755, align 8
  %757 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %756, i32 0, i32 5
  store i32 %754, i32* %757, align 8
  br label %758

758:                                              ; preds = %753, %748
  br label %759

759:                                              ; preds = %758, %731
  br label %760

760:                                              ; preds = %759, %714
  br label %761

761:                                              ; preds = %760, %697
  br label %1127

762:                                              ; preds = %505, %470, %467, %452, %445
  %763 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %764 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %763, i32 0, i32 4
  %765 = load i64, i64* %764, align 8
  %766 = load i64, i64* @TCPS_SYN_SENT, align 8
  %767 = icmp slt i64 %765, %766
  br i1 %767, label %780, label %768

768:                                              ; preds = %762
  %769 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %770 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %769, i32 0, i32 4
  %771 = load i64, i64* %770, align 8
  %772 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %773 = icmp sge i64 %771, %772
  br i1 %773, label %780, label %774

774:                                              ; preds = %768
  %775 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %776 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %775, i32 0, i32 4
  %777 = load i64, i64* %776, align 8
  %778 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %779 = icmp sge i64 %777, %778
  br i1 %779, label %780, label %949

780:                                              ; preds = %774, %768, %762
  %781 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %782 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %781, i32 0, i32 5
  %783 = load i32, i32* %782, align 8
  %784 = add nsw i32 %783, 67035
  %785 = load i32, i32* %23, align 4
  %786 = call i64 @SEQ_GEQ(i32 %784, i32 %785)
  %787 = icmp ne i64 %786, 0
  br i1 %787, label %788, label %949

788:                                              ; preds = %780
  %789 = load i32, i32* %24, align 4
  %790 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %791 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %790, i32 0, i32 1
  %792 = load i64, i64* %791, align 8
  %793 = sub nsw i64 %792, 67035
  %794 = trunc i64 %793 to i32
  %795 = call i64 @SEQ_GEQ(i32 %789, i32 %794)
  %796 = icmp ne i64 %795, 0
  br i1 %796, label %797, label %949

797:                                              ; preds = %788
  %798 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @V_pf_status, i32 0, i32 0), align 8
  %799 = load i64, i64* @PF_DEBUG_MISC, align 8
  %800 = icmp sge i64 %798, %799
  br i1 %800, label %801, label %847

801:                                              ; preds = %797
  %802 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %803 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %804 = load %struct.pf_state*, %struct.pf_state** %803, align 8
  %805 = call i32 @pf_print_state(%struct.pf_state* %804)
  %806 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %807 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 4
  %809 = call i32 @pf_print_flags(i32 %808)
  %810 = load i32, i32* %24, align 4
  %811 = load i32, i32* %25, align 4
  %812 = load i32, i32* %22, align 4
  %813 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %814 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %813, i32 0, i32 1
  %815 = load i32, i32* %814, align 4
  %816 = load i32, i32* %28, align 4
  %817 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %818 = load %struct.pf_state*, %struct.pf_state** %817, align 8
  %819 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %818, i32 0, i32 1
  %820 = load i64*, i64** %819, align 8
  %821 = getelementptr inbounds i64, i64* %820, i64 0
  %822 = load i64, i64* %821, align 8
  %823 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %824 = load %struct.pf_state*, %struct.pf_state** %823, align 8
  %825 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %824, i32 0, i32 1
  %826 = load i64*, i64** %825, align 8
  %827 = getelementptr inbounds i64, i64* %826, i64 1
  %828 = load i64, i64* %827, align 8
  %829 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %830 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %829, i32 0, i32 2
  %831 = load i64, i64* %830, align 8
  %832 = load i64, i64* @PF_IN, align 8
  %833 = icmp eq i64 %831, %832
  %834 = zext i1 %833 to i64
  %835 = select i1 %833, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %836 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %837 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %836, i32 0, i32 2
  %838 = load i64, i64* %837, align 8
  %839 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %840 = load %struct.pf_state*, %struct.pf_state** %839, align 8
  %841 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %840, i32 0, i32 0
  %842 = load i64, i64* %841, align 8
  %843 = icmp eq i64 %838, %842
  %844 = zext i1 %843 to i64
  %845 = select i1 %843, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %846 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %810, i32 %811, i32 %812, i32 %815, i32 %816, i64 %822, i64 %828, i8* %835, i8* %845)
  br label %847

847:                                              ; preds = %801, %797
  %848 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %849 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %848, i32 0, i32 6
  %850 = load i32*, i32** %849, align 8
  %851 = icmp ne i32* %850, null
  br i1 %851, label %857, label %852

852:                                              ; preds = %847
  %853 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %854 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %853, i32 0, i32 6
  %855 = load i32*, i32** %854, align 8
  %856 = icmp ne i32* %855, null
  br i1 %856, label %857, label %873

857:                                              ; preds = %852, %847
  %858 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %859 = load i32, i32* %16, align 4
  %860 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %861 = load i32*, i32** %18, align 8
  %862 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %863 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %864 = load %struct.pf_state*, %struct.pf_state** %863, align 8
  %865 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %866 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %867 = load i32*, i32** %19, align 8
  %868 = call i64 @pf_normalize_tcp_stateful(%struct.mbuf* %858, i32 %859, %struct.pf_pdesc* %860, i32* %861, %struct.tcphdr* %862, %struct.pf_state* %864, %struct.pf_state_peer* %865, %struct.pf_state_peer* %866, i32* %867)
  %869 = icmp ne i64 %868, 0
  br i1 %869, label %870, label %872

870:                                              ; preds = %857
  %871 = load i32, i32* @PF_DROP, align 4
  store i32 %871, i32* %10, align 4
  br label %1129

872:                                              ; preds = %857
  br label %873

873:                                              ; preds = %872, %852
  %874 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %875 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %874, i32 0, i32 3
  %876 = load i32, i32* %875, align 8
  %877 = load i32, i32* %21, align 4
  %878 = icmp slt i32 %876, %877
  br i1 %878, label %879, label %883

879:                                              ; preds = %873
  %880 = load i32, i32* %21, align 4
  %881 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %882 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %881, i32 0, i32 3
  store i32 %880, i32* %882, align 8
  br label %883

883:                                              ; preds = %879, %873
  %884 = load i32, i32* %23, align 4
  %885 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %886 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %885, i32 0, i32 1
  %887 = load i64, i64* %886, align 8
  %888 = trunc i64 %887 to i32
  %889 = call i64 @SEQ_GT(i32 %884, i32 %888)
  %890 = icmp ne i64 %889, 0
  br i1 %890, label %891, label %896

891:                                              ; preds = %883
  %892 = load i32, i32* %23, align 4
  %893 = sext i32 %892 to i64
  %894 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %895 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %894, i32 0, i32 1
  store i64 %893, i64* %895, align 8
  br label %896

896:                                              ; preds = %891, %883
  %897 = load i32, i32* %22, align 4
  %898 = load i32, i32* %21, align 4
  %899 = load i32, i32* %26, align 4
  %900 = shl i32 %898, %899
  %901 = add nsw i32 %897, %900
  %902 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %903 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %902, i32 0, i32 5
  %904 = load i32, i32* %903, align 8
  %905 = call i64 @SEQ_GEQ(i32 %901, i32 %904)
  %906 = icmp ne i64 %905, 0
  br i1 %906, label %907, label %916

907:                                              ; preds = %896
  %908 = load i32, i32* %22, align 4
  %909 = load i32, i32* %21, align 4
  %910 = load i32, i32* %26, align 4
  %911 = shl i32 %909, %910
  %912 = call i32 @MAX(i32 %911, i32 1)
  %913 = add nsw i32 %908, %912
  %914 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %915 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %914, i32 0, i32 5
  store i32 %913, i32* %915, align 8
  br label %916

916:                                              ; preds = %907, %896
  %917 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %918 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %917, i32 0, i32 0
  %919 = load i32, i32* %918, align 4
  %920 = load i32, i32* @TH_FIN, align 4
  %921 = and i32 %919, %920
  %922 = icmp ne i32 %921, 0
  br i1 %922, label %923, label %934

923:                                              ; preds = %916
  %924 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %925 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %924, i32 0, i32 4
  %926 = load i64, i64* %925, align 8
  %927 = load i64, i64* @TCPS_CLOSING, align 8
  %928 = icmp slt i64 %926, %927
  br i1 %928, label %929, label %933

929:                                              ; preds = %923
  %930 = load i64, i64* @TCPS_CLOSING, align 8
  %931 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %932 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %931, i32 0, i32 4
  store i64 %930, i64* %932, align 8
  br label %933

933:                                              ; preds = %929, %923
  br label %934

934:                                              ; preds = %933, %916
  %935 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %936 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %935, i32 0, i32 0
  %937 = load i32, i32* %936, align 4
  %938 = load i32, i32* @TH_RST, align 4
  %939 = and i32 %937, %938
  %940 = icmp ne i32 %939, 0
  br i1 %940, label %941, label %948

941:                                              ; preds = %934
  %942 = load i8*, i8** @TCPS_TIME_WAIT, align 8
  %943 = ptrtoint i8* %942 to i64
  %944 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %945 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %944, i32 0, i32 4
  store i64 %943, i64* %945, align 8
  %946 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %947 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %946, i32 0, i32 4
  store i64 %943, i64* %947, align 8
  br label %948

948:                                              ; preds = %941, %934
  br label %1126

949:                                              ; preds = %788, %780, %774
  %950 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %951 = load %struct.pf_state*, %struct.pf_state** %950, align 8
  %952 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %951, i32 0, i32 4
  %953 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %952, i32 0, i32 0
  %954 = load i64, i64* %953, align 8
  %955 = load i64, i64* @TCPS_SYN_SENT, align 8
  %956 = icmp eq i64 %954, %955
  br i1 %956, label %957, label %1016

957:                                              ; preds = %949
  %958 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %959 = load %struct.pf_state*, %struct.pf_state** %958, align 8
  %960 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %959, i32 0, i32 3
  %961 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %960, i32 0, i32 0
  %962 = load i64, i64* %961, align 8
  %963 = load i64, i64* @TCPS_SYN_SENT, align 8
  %964 = icmp eq i64 %962, %963
  br i1 %964, label %965, label %1016

965:                                              ; preds = %957
  %966 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %967 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %966, i32 0, i32 0
  %968 = load i32, i32* %967, align 4
  %969 = load i32, i32* @TH_RST, align 4
  %970 = and i32 %968, %969
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %1009, label %972

972:                                              ; preds = %965
  %973 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %974 = load %struct.pf_state*, %struct.pf_state** %973, align 8
  %975 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %974, i32 0, i32 2
  %976 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %975, i32 0, i32 0
  %977 = load %struct.TYPE_11__*, %struct.TYPE_11__** %976, align 8
  %978 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %979 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %978, i32 0, i32 5
  %980 = load i32, i32* %979, align 8
  %981 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %982 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %981, i32 0, i32 4
  %983 = load i32, i32* %982, align 4
  %984 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %985 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %984, i32 0, i32 3
  %986 = load i32, i32* %985, align 8
  %987 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %988 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %987, i32 0, i32 4
  %989 = load i32, i32* %988, align 4
  %990 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %991 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %990, i32 0, i32 3
  %992 = load i32, i32* %991, align 4
  %993 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %994 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %993, i32 0, i32 2
  %995 = load i32, i32* %994, align 4
  %996 = call i32 @ntohl(i32 %995)
  %997 = load i32, i32* @TH_RST, align 4
  %998 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %999 = load %struct.pf_state*, %struct.pf_state** %998, align 8
  %1000 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %999, i32 0, i32 2
  %1001 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1000, i32 0, i32 0
  %1002 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1001, align 8
  %1003 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1002, i32 0, i32 0
  %1004 = load i32, i32* %1003, align 4
  %1005 = load %struct.pfi_kif*, %struct.pfi_kif** %14, align 8
  %1006 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %1005, i32 0, i32 0
  %1007 = load i32, i32* %1006, align 4
  %1008 = call i32 @pf_send_tcp(i32* null, %struct.TYPE_11__* %977, i32 %980, i32 %983, i32 %986, i32 %989, i32 %992, i32 %996, i32 0, i32 %997, i32 0, i32 0, i32 %1004, i32 1, i32 0, i32 %1007)
  br label %1009

1009:                                             ; preds = %972, %965
  %1010 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %1011 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %1010, i32 0, i32 1
  store i64 0, i64* %1011, align 8
  %1012 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %1013 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %1012, i32 0, i32 5
  store i32 1, i32* %1013, align 8
  %1014 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %1015 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %1014, i32 0, i32 3
  store i32 1, i32* %1015, align 8
  br label %1121

1016:                                             ; preds = %957, %949
  %1017 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @V_pf_status, i32 0, i32 0), align 8
  %1018 = load i64, i64* @PF_DEBUG_MISC, align 8
  %1019 = icmp sge i64 %1017, %1018
  br i1 %1019, label %1020, label %1120

1020:                                             ; preds = %1016
  %1021 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %1022 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %1023 = load %struct.pf_state*, %struct.pf_state** %1022, align 8
  %1024 = call i32 @pf_print_state(%struct.pf_state* %1023)
  %1025 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %1026 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %1025, i32 0, i32 0
  %1027 = load i32, i32* %1026, align 4
  %1028 = call i32 @pf_print_flags(i32 %1027)
  %1029 = load i32, i32* %24, align 4
  %1030 = load i32, i32* %25, align 4
  %1031 = load i32, i32* %22, align 4
  %1032 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %1033 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %1032, i32 0, i32 1
  %1034 = load i32, i32* %1033, align 4
  %1035 = load i32, i32* %28, align 4
  %1036 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %1037 = load %struct.pf_state*, %struct.pf_state** %1036, align 8
  %1038 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %1037, i32 0, i32 1
  %1039 = load i64*, i64** %1038, align 8
  %1040 = getelementptr inbounds i64, i64* %1039, i64 0
  %1041 = load i64, i64* %1040, align 8
  %1042 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %1043 = load %struct.pf_state*, %struct.pf_state** %1042, align 8
  %1044 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %1043, i32 0, i32 1
  %1045 = load i64*, i64** %1044, align 8
  %1046 = getelementptr inbounds i64, i64* %1045, i64 1
  %1047 = load i64, i64* %1046, align 8
  %1048 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %1049 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %1048, i32 0, i32 2
  %1050 = load i64, i64* %1049, align 8
  %1051 = load i64, i64* @PF_IN, align 8
  %1052 = icmp eq i64 %1050, %1051
  %1053 = zext i1 %1052 to i64
  %1054 = select i1 %1052, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %1055 = load %struct.pf_pdesc*, %struct.pf_pdesc** %17, align 8
  %1056 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %1055, i32 0, i32 2
  %1057 = load i64, i64* %1056, align 8
  %1058 = load %struct.pf_state**, %struct.pf_state*** %13, align 8
  %1059 = load %struct.pf_state*, %struct.pf_state** %1058, align 8
  %1060 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %1059, i32 0, i32 0
  %1061 = load i64, i64* %1060, align 8
  %1062 = icmp eq i64 %1057, %1061
  %1063 = zext i1 %1062 to i64
  %1064 = select i1 %1062, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %1065 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %1029, i32 %1030, i32 %1031, i32 %1034, i32 %1035, i64 %1041, i64 %1047, i8* %1054, i8* %1064)
  %1066 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %1067 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %1066, i32 0, i32 5
  %1068 = load i32, i32* %1067, align 8
  %1069 = load i32, i32* %23, align 4
  %1070 = call i64 @SEQ_GEQ(i32 %1068, i32 %1069)
  %1071 = icmp ne i64 %1070, 0
  %1072 = zext i1 %1071 to i64
  %1073 = select i1 %1071, i32 32, i32 49
  %1074 = load i32, i32* %24, align 4
  %1075 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %1076 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %1075, i32 0, i32 1
  %1077 = load i64, i64* %1076, align 8
  %1078 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %1079 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %1078, i32 0, i32 3
  %1080 = load i32, i32* %1079, align 8
  %1081 = load i32, i32* %27, align 4
  %1082 = shl i32 %1080, %1081
  %1083 = sext i32 %1082 to i64
  %1084 = sub nsw i64 %1077, %1083
  %1085 = trunc i64 %1084 to i32
  %1086 = call i64 @SEQ_GEQ(i32 %1074, i32 %1085)
  %1087 = icmp ne i64 %1086, 0
  %1088 = zext i1 %1087 to i64
  %1089 = select i1 %1087, i32 32, i32 50
  %1090 = load i32, i32* %28, align 4
  %1091 = icmp sge i32 %1090, -67035
  %1092 = zext i1 %1091 to i64
  %1093 = select i1 %1091, i32 32, i32 51
  %1094 = load i32, i32* %28, align 4
  %1095 = load i32, i32* %26, align 4
  %1096 = shl i32 67035, %1095
  %1097 = icmp sle i32 %1094, %1096
  %1098 = zext i1 %1097 to i64
  %1099 = select i1 %1097, i32 32, i32 52
  %1100 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %1101 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %1100, i32 0, i32 5
  %1102 = load i32, i32* %1101, align 8
  %1103 = add nsw i32 %1102, 67035
  %1104 = load i32, i32* %23, align 4
  %1105 = call i64 @SEQ_GEQ(i32 %1103, i32 %1104)
  %1106 = icmp ne i64 %1105, 0
  %1107 = zext i1 %1106 to i64
  %1108 = select i1 %1106, i32 32, i32 53
  %1109 = load i32, i32* %24, align 4
  %1110 = load %struct.pf_state_peer*, %struct.pf_state_peer** %11, align 8
  %1111 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %1110, i32 0, i32 1
  %1112 = load i64, i64* %1111, align 8
  %1113 = sub nsw i64 %1112, 67035
  %1114 = trunc i64 %1113 to i32
  %1115 = call i64 @SEQ_GEQ(i32 %1109, i32 %1114)
  %1116 = icmp ne i64 %1115, 0
  %1117 = zext i1 %1116 to i64
  %1118 = select i1 %1116, i32 32, i32 54
  %1119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %1073, i32 %1089, i32 %1093, i32 %1099, i32 %1108, i32 %1118)
  br label %1120

1120:                                             ; preds = %1020, %1016
  br label %1121

1121:                                             ; preds = %1120, %1009
  %1122 = load i32*, i32** %18, align 8
  %1123 = load i32, i32* @PFRES_BADSTATE, align 4
  %1124 = call i32 @REASON_SET(i32* %1122, i32 %1123)
  %1125 = load i32, i32* @PF_DROP, align 4
  store i32 %1125, i32* %10, align 4
  br label %1129

1126:                                             ; preds = %948
  br label %1127

1127:                                             ; preds = %1126, %761
  %1128 = load i32, i32* @PF_PASS, align 4
  store i32 %1128, i32* %10, align 4
  br label %1129

1129:                                             ; preds = %1127, %1121, %870, %649, %535, %100
  %1130 = load i32, i32* %10, align 4
  ret i32 %1130
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @pf_normalize_tcp_init(%struct.mbuf*, i32, %struct.pf_pdesc*, %struct.tcphdr*, %struct.pf_state_peer*, %struct.pf_state_peer*) #1

declare dso_local i32 @REASON_SET(i32*, i32) #1

declare dso_local i64 @arc4random(...) #1

declare dso_local i32 @pf_change_proto_a(%struct.mbuf*, i32*, i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @pf_get_wscale(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @pf_modulate_sack(%struct.mbuf*, i32, %struct.pf_pdesc*, %struct.tcphdr*, %struct.pf_state_peer*) #1

declare dso_local i64 @pf_normalize_tcp_stateful(%struct.mbuf*, i32, %struct.pf_pdesc*, i32*, %struct.tcphdr*, %struct.pf_state*, %struct.pf_state_peer*, %struct.pf_state_peer*, i32*) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i64 @pf_src_connlimit(%struct.pf_state**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pf_print_state(%struct.pf_state*) #1

declare dso_local i32 @pf_print_flags(i32) #1

declare dso_local i32 @pf_send_tcp(i32*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
