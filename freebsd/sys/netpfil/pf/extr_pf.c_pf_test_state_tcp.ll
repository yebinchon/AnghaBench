; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_test_state_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_test_state_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.pf_state = type { i32, i32, %struct.pf_state_key**, %struct.pf_state_peer, %struct.pf_state_peer, %struct.TYPE_5__, i32, i32* }
%struct.pf_state_key = type { i64*, i32* }
%struct.pf_state_peer = type { i64, i32, i32, i32, i64, i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pfi_kif = type { i32 }
%struct.mbuf = type { i32 }
%struct.pf_pdesc = type { i64, i64, i32, i32, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tcphdr* }
%struct.tcphdr = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.pf_state_key_cmp = type { i64*, i32, i32*, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@PF_IN = common dso_local global i32 0, align 4
@PF_TCPS_PROXY_SRC = common dso_local global i64 0, align 8
@PFRES_SYNPROXY = common dso_local global i32 0, align 4
@PF_SYNPROXY_DROP = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@PF_DROP = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@TH_RST = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@PFRES_SRCLIMIT = common dso_local global i32 0, align 4
@PF_TCPS_PROXY_DST = common dso_local global i64 0, align 8
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@TCPS_FIN_WAIT_2 = common dso_local global i64 0, align 8
@V_pf_status = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PF_DEBUG_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"pf: state reuse \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TCPS_CLOSED = common dso_local global i64 0, align 8
@PF_ENTER_LOCKED = common dso_local global i32 0, align 4
@PFSTATE_SLOPPY = common dso_local global i32 0, align 4
@PF_SK_WIRE = common dso_local global i64 0, align 8
@PF_SK_STACK = common dso_local global i64 0, align 8
@PF_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state**, i32, %struct.pfi_kif*, %struct.mbuf*, i32, i8*, %struct.pf_pdesc*, i32*)* @pf_test_state_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_test_state_tcp(%struct.pf_state** %0, i32 %1, %struct.pfi_kif* %2, %struct.mbuf* %3, i32 %4, i8* %5, %struct.pf_pdesc* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_state**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfi_kif*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.pf_pdesc*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.pf_state_key_cmp, align 8
  %19 = alloca %struct.tcphdr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.pf_state_peer*, align 8
  %22 = alloca %struct.pf_state_peer*, align 8
  %23 = alloca %struct.pf_state_key*, align 8
  %24 = alloca %struct.pf_state_key*, align 8
  store %struct.pf_state** %0, %struct.pf_state*** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %12, align 8
  store %struct.mbuf* %3, %struct.mbuf** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store %struct.pf_pdesc* %6, %struct.pf_pdesc** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %26 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.tcphdr*, %struct.tcphdr** %27, align 8
  store %struct.tcphdr* %28, %struct.tcphdr** %19, align 8
  store i32 0, i32* %20, align 4
  %29 = call i32 @bzero(%struct.pf_state_key_cmp* %18, i32 32)
  %30 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %31 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @IPPROTO_TCP, align 4
  %35 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @PF_IN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %44 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PF_ACPY(i32* %42, i32* %45, i32 %47)
  %49 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %53 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PF_ACPY(i32* %51, i32* %54, i32 %56)
  %58 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %59 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %65 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %66, i64* %69, align 8
  br label %101

70:                                               ; preds = %8
  %71 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %75 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PF_ACPY(i32* %73, i32* %76, i32 %78)
  %80 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %84 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PF_ACPY(i32* %82, i32* %85, i32 %87)
  %89 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %90 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  store i64 %91, i64* %94, align 8
  %95 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %96 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %18, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %70, %39
  %102 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %105 = load %struct.pf_state*, %struct.pf_state** %104, align 8
  %106 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %107 = call i32 @STATE_LOOKUP(%struct.pfi_kif* %102, %struct.pf_state_key_cmp* %18, i32 %103, %struct.pf_state* %105, %struct.pf_pdesc* %106)
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %110 = load %struct.pf_state*, %struct.pf_state** %109, align 8
  %111 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %101
  %115 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %116 = load %struct.pf_state*, %struct.pf_state** %115, align 8
  %117 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %116, i32 0, i32 4
  store %struct.pf_state_peer* %117, %struct.pf_state_peer** %21, align 8
  %118 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %119 = load %struct.pf_state*, %struct.pf_state** %118, align 8
  %120 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %119, i32 0, i32 3
  store %struct.pf_state_peer* %120, %struct.pf_state_peer** %22, align 8
  br label %128

121:                                              ; preds = %101
  %122 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %123 = load %struct.pf_state*, %struct.pf_state** %122, align 8
  %124 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %123, i32 0, i32 3
  store %struct.pf_state_peer* %124, %struct.pf_state_peer** %21, align 8
  %125 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %126 = load %struct.pf_state*, %struct.pf_state** %125, align 8
  %127 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %126, i32 0, i32 4
  store %struct.pf_state_peer* %127, %struct.pf_state_peer** %22, align 8
  br label %128

128:                                              ; preds = %121, %114
  %129 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %130 = load %struct.pf_state*, %struct.pf_state** %129, align 8
  %131 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %130, i32 0, i32 2
  %132 = load %struct.pf_state_key**, %struct.pf_state_key*** %131, align 8
  %133 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %134 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %132, i64 %135
  %137 = load %struct.pf_state_key*, %struct.pf_state_key** %136, align 8
  store %struct.pf_state_key* %137, %struct.pf_state_key** %23, align 8
  %138 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %139 = load %struct.pf_state*, %struct.pf_state** %138, align 8
  %140 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PF_TCPS_PROXY_SRC, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %289

145:                                              ; preds = %128
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %148 = load %struct.pf_state*, %struct.pf_state** %147, align 8
  %149 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %146, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* @PFRES_SYNPROXY, align 4
  %155 = call i32 @REASON_SET(i32* %153, i32 %154)
  %156 = load i32, i32* @PF_SYNPROXY_DROP, align 4
  store i32 %156, i32* %9, align 4
  br label %898

157:                                              ; preds = %145
  %158 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %159 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @TH_SYN, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %224

164:                                              ; preds = %157
  %165 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %166 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ntohl(i32 %167)
  %169 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %170 = load %struct.pf_state*, %struct.pf_state** %169, align 8
  %171 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %168, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %164
  %176 = load i32*, i32** %17, align 8
  %177 = load i32, i32* @PFRES_SYNPROXY, align 4
  %178 = call i32 @REASON_SET(i32* %176, i32 %177)
  %179 = load i32, i32* @PF_DROP, align 4
  store i32 %179, i32* %9, align 4
  br label %898

180:                                              ; preds = %164
  %181 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %182 = load %struct.pf_state*, %struct.pf_state** %181, align 8
  %183 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %187 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %190 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %193 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %196 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %199 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %202 = load %struct.pf_state*, %struct.pf_state** %201, align 8
  %203 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %207 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @ntohl(i32 %208)
  %210 = add nsw i32 %209, 1
  %211 = load i32, i32* @TH_SYN, align 4
  %212 = load i32, i32* @TH_ACK, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %215 = load %struct.pf_state*, %struct.pf_state** %214, align 8
  %216 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @pf_send_tcp(i32* null, i32 %185, i32 %188, i32* %191, i32* %194, i64 %197, i64 %200, i32 %205, i32 %210, i32 %213, i8* null, i32 %218, i32 0, i32 1, i32 0, i32* null)
  %220 = load i32*, i32** %17, align 8
  %221 = load i32, i32* @PFRES_SYNPROXY, align 4
  %222 = call i32 @REASON_SET(i32* %220, i32 %221)
  %223 = load i32, i32* @PF_SYNPROXY_DROP, align 4
  store i32 %223, i32* %9, align 4
  br label %898

224:                                              ; preds = %157
  %225 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %226 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @TH_ACK, align 4
  %229 = load i32, i32* @TH_RST, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @TH_FIN, align 4
  %232 = or i32 %230, %231
  %233 = and i32 %227, %232
  %234 = load i32, i32* @TH_ACK, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %260, label %236

236:                                              ; preds = %224
  %237 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %238 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ntohl(i32 %239)
  %241 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %242 = load %struct.pf_state*, %struct.pf_state** %241, align 8
  %243 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  %247 = icmp ne i32 %240, %246
  br i1 %247, label %260, label %248

248:                                              ; preds = %236
  %249 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %250 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @ntohl(i32 %251)
  %253 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %254 = load %struct.pf_state*, %struct.pf_state** %253, align 8
  %255 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, 1
  %259 = icmp ne i32 %252, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %248, %236, %224
  %261 = load i32*, i32** %17, align 8
  %262 = load i32, i32* @PFRES_SYNPROXY, align 4
  %263 = call i32 @REASON_SET(i32* %261, i32 %262)
  %264 = load i32, i32* @PF_DROP, align 4
  store i32 %264, i32* %9, align 4
  br label %898

265:                                              ; preds = %248
  %266 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %267 = load %struct.pf_state*, %struct.pf_state** %266, align 8
  %268 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %267, i32 0, i32 7
  %269 = load i32*, i32** %268, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %265
  %272 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %273 = call i64 @pf_src_connlimit(%struct.pf_state** %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %271
  %276 = load i32*, i32** %17, align 8
  %277 = load i32, i32* @PFRES_SRCLIMIT, align 4
  %278 = call i32 @REASON_SET(i32* %276, i32 %277)
  %279 = load i32, i32* @PF_DROP, align 4
  store i32 %279, i32* %9, align 4
  br label %898

280:                                              ; preds = %271, %265
  %281 = load i64, i64* @PF_TCPS_PROXY_DST, align 8
  %282 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %283 = load %struct.pf_state*, %struct.pf_state** %282, align 8
  %284 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %283, i32 0, i32 4
  %285 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %284, i32 0, i32 0
  store i64 %281, i64* %285, align 8
  br label %286

286:                                              ; preds = %280
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288, %128
  %290 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %291 = load %struct.pf_state*, %struct.pf_state** %290, align 8
  %292 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @PF_TCPS_PROXY_DST, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %654

297:                                              ; preds = %289
  %298 = load i32, i32* %11, align 4
  %299 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %300 = load %struct.pf_state*, %struct.pf_state** %299, align 8
  %301 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp eq i32 %298, %302
  br i1 %303, label %304, label %425

304:                                              ; preds = %297
  %305 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %306 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @TH_SYN, align 4
  %309 = load i32, i32* @TH_ACK, align 4
  %310 = or i32 %308, %309
  %311 = and i32 %307, %310
  %312 = load i32, i32* @TH_ACK, align 4
  %313 = icmp ne i32 %311, %312
  br i1 %313, label %338, label %314

314:                                              ; preds = %304
  %315 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %316 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @ntohl(i32 %317)
  %319 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %320 = load %struct.pf_state*, %struct.pf_state** %319, align 8
  %321 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  %325 = icmp ne i32 %318, %324
  br i1 %325, label %338, label %326

326:                                              ; preds = %314
  %327 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %328 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @ntohl(i32 %329)
  %331 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %332 = load %struct.pf_state*, %struct.pf_state** %331, align 8
  %333 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  %337 = icmp ne i32 %330, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %326, %314, %304
  %339 = load i32*, i32** %17, align 8
  %340 = load i32, i32* @PFRES_SYNPROXY, align 4
  %341 = call i32 @REASON_SET(i32* %339, i32 %340)
  %342 = load i32, i32* @PF_DROP, align 4
  store i32 %342, i32* %9, align 4
  br label %898

343:                                              ; preds = %326
  %344 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %345 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @ntohs(i32 %346)
  %348 = call i8* @MAX(i32 %347, i32 1)
  %349 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %350 = load %struct.pf_state*, %struct.pf_state** %349, align 8
  %351 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %351, i32 0, i32 5
  store i8* %348, i8** %352, align 8
  %353 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %354 = load %struct.pf_state*, %struct.pf_state** %353, align 8
  %355 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 1
  br i1 %358, label %359, label %366

359:                                              ; preds = %343
  %360 = call i32 (...) @arc4random()
  %361 = call i32 @htonl(i32 %360)
  %362 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %363 = load %struct.pf_state*, %struct.pf_state** %362, align 8
  %364 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %364, i32 0, i32 2
  store i32 %361, i32* %365, align 4
  br label %366

366:                                              ; preds = %359, %343
  %367 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %368 = load %struct.pf_state*, %struct.pf_state** %367, align 8
  %369 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %368, i32 0, i32 5
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %373 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  %376 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %379 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  %382 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  %383 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %386 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  %389 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  %390 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %389, i32 0, i32 0
  %391 = load i64*, i64** %390, align 8
  %392 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %393 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds i64, i64* %391, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  %398 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %397, i32 0, i32 0
  %399 = load i64*, i64** %398, align 8
  %400 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %401 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds i64, i64* %399, i64 %402
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %406 = load %struct.pf_state*, %struct.pf_state** %405, align 8
  %407 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @TH_SYN, align 4
  %411 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %412 = load %struct.pf_state*, %struct.pf_state** %411, align 8
  %413 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %412, i32 0, i32 4
  %414 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %413, i32 0, i32 6
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %417 = load %struct.pf_state*, %struct.pf_state** %416, align 8
  %418 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %417, i32 0, i32 6
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @pf_send_tcp(i32* null, i32 %371, i32 %374, i32* %381, i32* %388, i64 %396, i64 %404, i32 %409, i32 0, i32 %410, i8* null, i32 %415, i32 0, i32 0, i32 %419, i32* null)
  %421 = load i32*, i32** %17, align 8
  %422 = load i32, i32* @PFRES_SYNPROXY, align 4
  %423 = call i32 @REASON_SET(i32* %421, i32 %422)
  %424 = load i32, i32* @PF_SYNPROXY_DROP, align 4
  store i32 %424, i32* %9, align 4
  br label %898

425:                                              ; preds = %297
  %426 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %427 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @TH_SYN, align 4
  %430 = load i32, i32* @TH_ACK, align 4
  %431 = or i32 %429, %430
  %432 = and i32 %428, %431
  %433 = load i32, i32* @TH_SYN, align 4
  %434 = load i32, i32* @TH_ACK, align 4
  %435 = or i32 %433, %434
  %436 = icmp ne i32 %432, %435
  br i1 %436, label %449, label %437

437:                                              ; preds = %425
  %438 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %439 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %438, i32 0, i32 5
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @ntohl(i32 %440)
  %442 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %443 = load %struct.pf_state*, %struct.pf_state** %442, align 8
  %444 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %443, i32 0, i32 3
  %445 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %446, 1
  %448 = icmp ne i32 %441, %447
  br i1 %448, label %449, label %454

449:                                              ; preds = %437, %425
  %450 = load i32*, i32** %17, align 8
  %451 = load i32, i32* @PFRES_SYNPROXY, align 4
  %452 = call i32 @REASON_SET(i32* %450, i32 %451)
  %453 = load i32, i32* @PF_DROP, align 4
  store i32 %453, i32* %9, align 4
  br label %898

454:                                              ; preds = %437
  %455 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %456 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @ntohs(i32 %457)
  %459 = call i8* @MAX(i32 %458, i32 1)
  %460 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %461 = load %struct.pf_state*, %struct.pf_state** %460, align 8
  %462 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %462, i32 0, i32 5
  store i8* %459, i8** %463, align 8
  %464 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %465 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %464, i32 0, i32 4
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @ntohl(i32 %466)
  %468 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %469 = load %struct.pf_state*, %struct.pf_state** %468, align 8
  %470 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %469, i32 0, i32 3
  %471 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %470, i32 0, i32 1
  store i32 %467, i32* %471, align 8
  %472 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %473 = load %struct.pf_state*, %struct.pf_state** %472, align 8
  %474 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %473, i32 0, i32 5
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %478 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %481 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %480, i32 0, i32 4
  %482 = load i32*, i32** %481, align 8
  %483 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %484 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %483, i32 0, i32 5
  %485 = load i32*, i32** %484, align 8
  %486 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %487 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %490 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %493 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 4
  %495 = call i32 @ntohl(i32 %494)
  %496 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %497 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = call i32 @ntohl(i32 %498)
  %500 = add nsw i32 %499, 1
  %501 = load i32, i32* @TH_ACK, align 4
  %502 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %503 = load %struct.pf_state*, %struct.pf_state** %502, align 8
  %504 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %503, i32 0, i32 4
  %505 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %504, i32 0, i32 5
  %506 = load i8*, i8** %505, align 8
  %507 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %508 = load %struct.pf_state*, %struct.pf_state** %507, align 8
  %509 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %508, i32 0, i32 6
  %510 = load i32, i32* %509, align 4
  %511 = call i32 @pf_send_tcp(i32* null, i32 %476, i32 %479, i32* %482, i32* %485, i64 %488, i64 %491, i32 %495, i32 %500, i32 %501, i8* %506, i32 0, i32 0, i32 0, i32 %510, i32* null)
  %512 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %513 = load %struct.pf_state*, %struct.pf_state** %512, align 8
  %514 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %513, i32 0, i32 5
  %515 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %518 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 8
  %520 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  %521 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %520, i32 0, i32 1
  %522 = load i32*, i32** %521, align 8
  %523 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %524 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %523, i32 0, i32 1
  %525 = load i64, i64* %524, align 8
  %526 = getelementptr inbounds i32, i32* %522, i64 %525
  %527 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  %528 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %527, i32 0, i32 1
  %529 = load i32*, i32** %528, align 8
  %530 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %531 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = getelementptr inbounds i32, i32* %529, i64 %532
  %534 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  %535 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %534, i32 0, i32 0
  %536 = load i64*, i64** %535, align 8
  %537 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %538 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %537, i32 0, i32 1
  %539 = load i64, i64* %538, align 8
  %540 = getelementptr inbounds i64, i64* %536, i64 %539
  %541 = load i64, i64* %540, align 8
  %542 = load %struct.pf_state_key*, %struct.pf_state_key** %23, align 8
  %543 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %542, i32 0, i32 0
  %544 = load i64*, i64** %543, align 8
  %545 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %546 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %545, i32 0, i32 0
  %547 = load i64, i64* %546, align 8
  %548 = getelementptr inbounds i64, i64* %544, i64 %547
  %549 = load i64, i64* %548, align 8
  %550 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %551 = load %struct.pf_state*, %struct.pf_state** %550, align 8
  %552 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %551, i32 0, i32 4
  %553 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 4
  %555 = add nsw i32 %554, 1
  %556 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %557 = load %struct.pf_state*, %struct.pf_state** %556, align 8
  %558 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %557, i32 0, i32 4
  %559 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 8
  %561 = add nsw i32 %560, 1
  %562 = load i32, i32* @TH_ACK, align 4
  %563 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %564 = load %struct.pf_state*, %struct.pf_state** %563, align 8
  %565 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %564, i32 0, i32 3
  %566 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %565, i32 0, i32 5
  %567 = load i8*, i8** %566, align 8
  %568 = call i32 @pf_send_tcp(i32* null, i32 %516, i32 %519, i32* %526, i32* %533, i64 %541, i64 %549, i32 %555, i32 %561, i32 %562, i8* %567, i32 0, i32 0, i32 1, i32 0, i32* null)
  %569 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %570 = load %struct.pf_state*, %struct.pf_state** %569, align 8
  %571 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %570, i32 0, i32 3
  %572 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 4
  %574 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %575 = load %struct.pf_state*, %struct.pf_state** %574, align 8
  %576 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %575, i32 0, i32 4
  %577 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 8
  %579 = sub nsw i32 %573, %578
  %580 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %581 = load %struct.pf_state*, %struct.pf_state** %580, align 8
  %582 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %581, i32 0, i32 4
  %583 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %582, i32 0, i32 3
  store i32 %579, i32* %583, align 8
  %584 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %585 = load %struct.pf_state*, %struct.pf_state** %584, align 8
  %586 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %585, i32 0, i32 4
  %587 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %590 = load %struct.pf_state*, %struct.pf_state** %589, align 8
  %591 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %590, i32 0, i32 3
  %592 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 8
  %594 = sub nsw i32 %588, %593
  %595 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %596 = load %struct.pf_state*, %struct.pf_state** %595, align 8
  %597 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %596, i32 0, i32 3
  %598 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %597, i32 0, i32 3
  store i32 %594, i32* %598, align 8
  %599 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %600 = load %struct.pf_state*, %struct.pf_state** %599, align 8
  %601 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %600, i32 0, i32 4
  %602 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 8
  %604 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %605 = load %struct.pf_state*, %struct.pf_state** %604, align 8
  %606 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %605, i32 0, i32 3
  %607 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %606, i32 0, i32 5
  %608 = load i8*, i8** %607, align 8
  %609 = sext i32 %603 to i64
  %610 = getelementptr i8, i8* %608, i64 %609
  %611 = ptrtoint i8* %610 to i32
  %612 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %613 = load %struct.pf_state*, %struct.pf_state** %612, align 8
  %614 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %613, i32 0, i32 4
  %615 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %614, i32 0, i32 2
  store i32 %611, i32* %615, align 4
  %616 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %617 = load %struct.pf_state*, %struct.pf_state** %616, align 8
  %618 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %617, i32 0, i32 3
  %619 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %618, i32 0, i32 1
  %620 = load i32, i32* %619, align 8
  %621 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %622 = load %struct.pf_state*, %struct.pf_state** %621, align 8
  %623 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %622, i32 0, i32 4
  %624 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %623, i32 0, i32 5
  %625 = load i8*, i8** %624, align 8
  %626 = sext i32 %620 to i64
  %627 = getelementptr i8, i8* %625, i64 %626
  %628 = ptrtoint i8* %627 to i32
  %629 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %630 = load %struct.pf_state*, %struct.pf_state** %629, align 8
  %631 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %630, i32 0, i32 3
  %632 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %631, i32 0, i32 2
  store i32 %628, i32* %632, align 4
  %633 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %634 = load %struct.pf_state*, %struct.pf_state** %633, align 8
  %635 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %634, i32 0, i32 3
  %636 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %635, i32 0, i32 4
  store i64 0, i64* %636, align 8
  %637 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %638 = load %struct.pf_state*, %struct.pf_state** %637, align 8
  %639 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %638, i32 0, i32 4
  %640 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %639, i32 0, i32 4
  store i64 0, i64* %640, align 8
  %641 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %642 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %643 = load %struct.pf_state*, %struct.pf_state** %642, align 8
  %644 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %643, i32 0, i32 3
  %645 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %644, i32 0, i32 0
  store i64 %641, i64* %645, align 8
  %646 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %647 = load %struct.pf_state*, %struct.pf_state** %646, align 8
  %648 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %647, i32 0, i32 4
  %649 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %648, i32 0, i32 0
  store i64 %641, i64* %649, align 8
  %650 = load i32*, i32** %17, align 8
  %651 = load i32, i32* @PFRES_SYNPROXY, align 4
  %652 = call i32 @REASON_SET(i32* %650, i32 %651)
  %653 = load i32, i32* @PF_SYNPROXY_DROP, align 4
  store i32 %653, i32* %9, align 4
  br label %898

654:                                              ; preds = %289
  %655 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %656 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %655, i32 0, i32 2
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* @TH_SYN, align 4
  %659 = load i32, i32* @TH_ACK, align 4
  %660 = or i32 %658, %659
  %661 = and i32 %657, %660
  %662 = load i32, i32* @TH_SYN, align 4
  %663 = icmp eq i32 %661, %662
  br i1 %663, label %664, label %706

664:                                              ; preds = %654
  %665 = load %struct.pf_state_peer*, %struct.pf_state_peer** %22, align 8
  %666 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %665, i32 0, i32 0
  %667 = load i64, i64* %666, align 8
  %668 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %669 = icmp sge i64 %667, %668
  br i1 %669, label %670, label %706

670:                                              ; preds = %664
  %671 = load %struct.pf_state_peer*, %struct.pf_state_peer** %21, align 8
  %672 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %671, i32 0, i32 0
  %673 = load i64, i64* %672, align 8
  %674 = load i64, i64* @TCPS_FIN_WAIT_2, align 8
  %675 = icmp sge i64 %673, %674
  br i1 %675, label %676, label %706

676:                                              ; preds = %670
  %677 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_pf_status, i32 0, i32 0), align 8
  %678 = load i64, i64* @PF_DEBUG_MISC, align 8
  %679 = icmp sge i64 %677, %678
  br i1 %679, label %680, label %690

680:                                              ; preds = %676
  %681 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %682 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %683 = load %struct.pf_state*, %struct.pf_state** %682, align 8
  %684 = call i32 @pf_print_state(%struct.pf_state* %683)
  %685 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %686 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %685, i32 0, i32 2
  %687 = load i32, i32* %686, align 8
  %688 = call i32 @pf_print_flags(i32 %687)
  %689 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %690

690:                                              ; preds = %680, %676
  %691 = load i64, i64* @TCPS_CLOSED, align 8
  %692 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %693 = load %struct.pf_state*, %struct.pf_state** %692, align 8
  %694 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %693, i32 0, i32 3
  %695 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %694, i32 0, i32 0
  store i64 %691, i64* %695, align 8
  %696 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %697 = load %struct.pf_state*, %struct.pf_state** %696, align 8
  %698 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %697, i32 0, i32 4
  %699 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %698, i32 0, i32 0
  store i64 %691, i64* %699, align 8
  %700 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %701 = load %struct.pf_state*, %struct.pf_state** %700, align 8
  %702 = load i32, i32* @PF_ENTER_LOCKED, align 4
  %703 = call i32 @pf_unlink_state(%struct.pf_state* %701, i32 %702)
  %704 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  store %struct.pf_state* null, %struct.pf_state** %704, align 8
  %705 = load i32, i32* @PF_DROP, align 4
  store i32 %705, i32* %9, align 4
  br label %898

706:                                              ; preds = %670, %664, %654
  %707 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %708 = load %struct.pf_state*, %struct.pf_state** %707, align 8
  %709 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %708, i32 0, i32 1
  %710 = load i32, i32* %709, align 4
  %711 = load i32, i32* @PFSTATE_SLOPPY, align 4
  %712 = and i32 %710, %711
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %714, label %726

714:                                              ; preds = %706
  %715 = load %struct.pf_state_peer*, %struct.pf_state_peer** %21, align 8
  %716 = load %struct.pf_state_peer*, %struct.pf_state_peer** %22, align 8
  %717 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %718 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %719 = load i32*, i32** %17, align 8
  %720 = call i32 @pf_tcp_track_sloppy(%struct.pf_state_peer* %715, %struct.pf_state_peer* %716, %struct.pf_state** %717, %struct.pf_pdesc* %718, i32* %719)
  %721 = load i32, i32* @PF_DROP, align 4
  %722 = icmp eq i32 %720, %721
  br i1 %722, label %723, label %725

723:                                              ; preds = %714
  %724 = load i32, i32* @PF_DROP, align 4
  store i32 %724, i32* %9, align 4
  br label %898

725:                                              ; preds = %714
  br label %741

726:                                              ; preds = %706
  %727 = load %struct.pf_state_peer*, %struct.pf_state_peer** %21, align 8
  %728 = load %struct.pf_state_peer*, %struct.pf_state_peer** %22, align 8
  %729 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %730 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %731 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %732 = load i32, i32* %14, align 4
  %733 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %734 = load i32*, i32** %17, align 8
  %735 = call i32 @pf_tcp_track_full(%struct.pf_state_peer* %727, %struct.pf_state_peer* %728, %struct.pf_state** %729, %struct.pfi_kif* %730, %struct.mbuf* %731, i32 %732, %struct.pf_pdesc* %733, i32* %734, i32* %20)
  %736 = load i32, i32* @PF_DROP, align 4
  %737 = icmp eq i32 %735, %736
  br i1 %737, label %738, label %740

738:                                              ; preds = %726
  %739 = load i32, i32* @PF_DROP, align 4
  store i32 %739, i32* %9, align 4
  br label %898

740:                                              ; preds = %726
  br label %741

741:                                              ; preds = %740, %725
  %742 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %743 = load %struct.pf_state*, %struct.pf_state** %742, align 8
  %744 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %743, i32 0, i32 2
  %745 = load %struct.pf_state_key**, %struct.pf_state_key*** %744, align 8
  %746 = load i64, i64* @PF_SK_WIRE, align 8
  %747 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %745, i64 %746
  %748 = load %struct.pf_state_key*, %struct.pf_state_key** %747, align 8
  %749 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %750 = load %struct.pf_state*, %struct.pf_state** %749, align 8
  %751 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %750, i32 0, i32 2
  %752 = load %struct.pf_state_key**, %struct.pf_state_key*** %751, align 8
  %753 = load i64, i64* @PF_SK_STACK, align 8
  %754 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %752, i64 %753
  %755 = load %struct.pf_state_key*, %struct.pf_state_key** %754, align 8
  %756 = icmp ne %struct.pf_state_key* %748, %755
  br i1 %756, label %757, label %887

757:                                              ; preds = %741
  %758 = load %struct.pf_state**, %struct.pf_state*** %10, align 8
  %759 = load %struct.pf_state*, %struct.pf_state** %758, align 8
  %760 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %759, i32 0, i32 2
  %761 = load %struct.pf_state_key**, %struct.pf_state_key*** %760, align 8
  %762 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %763 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %762, i32 0, i32 0
  %764 = load i64, i64* %763, align 8
  %765 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %761, i64 %764
  %766 = load %struct.pf_state_key*, %struct.pf_state_key** %765, align 8
  store %struct.pf_state_key* %766, %struct.pf_state_key** %24, align 8
  %767 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %768 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %767, i32 0, i32 5
  %769 = load i32*, i32** %768, align 8
  %770 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %771 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %770, i32 0, i32 1
  %772 = load i32*, i32** %771, align 8
  %773 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %774 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %773, i32 0, i32 1
  %775 = load i64, i64* %774, align 8
  %776 = getelementptr inbounds i32, i32* %772, i64 %775
  %777 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %778 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %777, i32 0, i32 2
  %779 = load i32, i32* %778, align 8
  %780 = call i64 @PF_ANEQ(i32* %769, i32* %776, i32 %779)
  %781 = icmp ne i64 %780, 0
  br i1 %781, label %795, label %782

782:                                              ; preds = %757
  %783 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %784 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %783, i32 0, i32 0
  %785 = load i64*, i64** %784, align 8
  %786 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %787 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %786, i32 0, i32 1
  %788 = load i64, i64* %787, align 8
  %789 = getelementptr inbounds i64, i64* %785, i64 %788
  %790 = load i64, i64* %789, align 8
  %791 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %792 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %791, i32 0, i32 0
  %793 = load i64, i64* %792, align 8
  %794 = icmp ne i64 %790, %793
  br i1 %794, label %795, label %826

795:                                              ; preds = %782, %757
  %796 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %797 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %798 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %797, i32 0, i32 5
  %799 = load i32*, i32** %798, align 8
  %800 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %801 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %800, i32 0, i32 0
  %802 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %803 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %802, i32 0, i32 3
  %804 = load i32, i32* %803, align 4
  %805 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %806 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %805, i32 0, i32 3
  %807 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %808 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %807, i32 0, i32 1
  %809 = load i32*, i32** %808, align 8
  %810 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %811 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %810, i32 0, i32 1
  %812 = load i64, i64* %811, align 8
  %813 = getelementptr inbounds i32, i32* %809, i64 %812
  %814 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %815 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %814, i32 0, i32 0
  %816 = load i64*, i64** %815, align 8
  %817 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %818 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %817, i32 0, i32 1
  %819 = load i64, i64* %818, align 8
  %820 = getelementptr inbounds i64, i64* %816, i64 %819
  %821 = load i64, i64* %820, align 8
  %822 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %823 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %822, i32 0, i32 2
  %824 = load i32, i32* %823, align 8
  %825 = call i32 @pf_change_ap(%struct.mbuf* %796, i32* %799, i64* %801, i32 %804, i32* %806, i32* %813, i64 %821, i32 0, i32 %824)
  br label %826

826:                                              ; preds = %795, %782
  %827 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %828 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %827, i32 0, i32 4
  %829 = load i32*, i32** %828, align 8
  %830 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %831 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %830, i32 0, i32 1
  %832 = load i32*, i32** %831, align 8
  %833 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %834 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %833, i32 0, i32 0
  %835 = load i64, i64* %834, align 8
  %836 = getelementptr inbounds i32, i32* %832, i64 %835
  %837 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %838 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %837, i32 0, i32 2
  %839 = load i32, i32* %838, align 8
  %840 = call i64 @PF_ANEQ(i32* %829, i32* %836, i32 %839)
  %841 = icmp ne i64 %840, 0
  br i1 %841, label %855, label %842

842:                                              ; preds = %826
  %843 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %844 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %843, i32 0, i32 0
  %845 = load i64*, i64** %844, align 8
  %846 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %847 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %846, i32 0, i32 0
  %848 = load i64, i64* %847, align 8
  %849 = getelementptr inbounds i64, i64* %845, i64 %848
  %850 = load i64, i64* %849, align 8
  %851 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %852 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %851, i32 0, i32 1
  %853 = load i64, i64* %852, align 8
  %854 = icmp ne i64 %850, %853
  br i1 %854, label %855, label %886

855:                                              ; preds = %842, %826
  %856 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %857 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %858 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %857, i32 0, i32 4
  %859 = load i32*, i32** %858, align 8
  %860 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %861 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %860, i32 0, i32 1
  %862 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %863 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %862, i32 0, i32 3
  %864 = load i32, i32* %863, align 4
  %865 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %866 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %865, i32 0, i32 3
  %867 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %868 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %867, i32 0, i32 1
  %869 = load i32*, i32** %868, align 8
  %870 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %871 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %870, i32 0, i32 0
  %872 = load i64, i64* %871, align 8
  %873 = getelementptr inbounds i32, i32* %869, i64 %872
  %874 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %875 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %874, i32 0, i32 0
  %876 = load i64*, i64** %875, align 8
  %877 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %878 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %877, i32 0, i32 0
  %879 = load i64, i64* %878, align 8
  %880 = getelementptr inbounds i64, i64* %876, i64 %879
  %881 = load i64, i64* %880, align 8
  %882 = load %struct.pf_pdesc*, %struct.pf_pdesc** %16, align 8
  %883 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %882, i32 0, i32 2
  %884 = load i32, i32* %883, align 8
  %885 = call i32 @pf_change_ap(%struct.mbuf* %856, i32* %859, i64* %861, i32 %864, i32* %866, i32* %873, i64 %881, i32 0, i32 %884)
  br label %886

886:                                              ; preds = %855, %842
  store i32 1, i32* %20, align 4
  br label %887

887:                                              ; preds = %886, %741
  %888 = load i32, i32* %20, align 4
  %889 = icmp ne i32 %888, 0
  br i1 %889, label %890, label %896

890:                                              ; preds = %887
  %891 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %892 = load i32, i32* %14, align 4
  %893 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %894 = ptrtoint %struct.tcphdr* %893 to i32
  %895 = call i32 @m_copyback(%struct.mbuf* %891, i32 %892, i32 40, i32 %894)
  br label %896

896:                                              ; preds = %890, %887
  %897 = load i32, i32* @PF_PASS, align 4
  store i32 %897, i32* %9, align 4
  br label %898

898:                                              ; preds = %896, %738, %723, %690, %454, %449, %366, %338, %275, %260, %180, %175, %152
  %899 = load i32, i32* %9, align 4
  ret i32 %899
}

declare dso_local i32 @bzero(%struct.pf_state_key_cmp*, i32) #1

declare dso_local i32 @PF_ACPY(i32*, i32*, i32) #1

declare dso_local i32 @STATE_LOOKUP(%struct.pfi_kif*, %struct.pf_state_key_cmp*, i32, %struct.pf_state*, %struct.pf_pdesc*) #1

declare dso_local i32 @REASON_SET(i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @pf_send_tcp(i32*, i32, i32, i32*, i32*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @pf_src_connlimit(%struct.pf_state**) #1

declare dso_local i8* @MAX(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pf_print_state(%struct.pf_state*) #1

declare dso_local i32 @pf_print_flags(i32) #1

declare dso_local i32 @pf_unlink_state(%struct.pf_state*, i32) #1

declare dso_local i32 @pf_tcp_track_sloppy(%struct.pf_state_peer*, %struct.pf_state_peer*, %struct.pf_state**, %struct.pf_pdesc*, i32*) #1

declare dso_local i32 @pf_tcp_track_full(%struct.pf_state_peer*, %struct.pf_state_peer*, %struct.pf_state**, %struct.pfi_kif*, %struct.mbuf*, i32, %struct.pf_pdesc*, i32*, i32*) #1

declare dso_local i64 @PF_ANEQ(i32*, i32*, i32) #1

declare dso_local i32 @pf_change_ap(%struct.mbuf*, i32*, i64*, i32, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
