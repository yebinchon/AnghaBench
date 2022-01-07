; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_process_cookie_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_process_cookie_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.sctp_association, %struct.sctp_inpcb*, i32 }
%struct.sctp_association = type { i32, i32, i32, i64, i32, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.sctphdr = type { i32 }
%struct.sctp_state_cookie = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_13__, i32*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.sctp_inpcb = type { i32 }
%struct.sctp_nets = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_init_chunk = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.sctp_init_ack_chunk = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%union.sctp_sockstore = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.sctp_auth_chunk = type { i32 }
%struct.thread = type { i32 }

@SCTP_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SCTP_DEBUG_INPUT1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"process_cookie_new: could not pull INIT chunk hdr\0A\00", align 1
@SCTP_INITIATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"HUH? process_cookie_new: could not find INIT chunk!\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"process_cookie_new: could not pull INIT-ACK chunk hdr\0A\00", align 1
@SCTP_INITIATION_ACK = common dso_local global i64 0, align 8
@SCTP_DONT_INITIALIZE_AUTH_PARAMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"process_cookie_new: no room for another TCB!\0A\00", align 1
@SCTP_CAUSE_OUT_OF_RESC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCTP_NORMAL_PROC = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_INPUT = common dso_local global i64 0, align 8
@SCTP_LOC_18 = common dso_local global i64 0, align 8
@SCTP_LOC_19 = common dso_local global i64 0, align 8
@SCTP_LOC_20 = common dso_local global i64 0, align 8
@SCTP_DEBUG_AUTH1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"COOKIE-ECHO: AUTH failed\0A\00", align 1
@SCTP_LOC_21 = common dso_local global i64 0, align 8
@SCTP_LOC_22 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SCTP_DEBUG_INPUT2 = common dso_local global i32 0, align 4
@SCTP_NOTIFY_ASSOC_UP = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_AUTOCLOSE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_CONNECTED = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_IN_TCPPOOL = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_TCPTYPE = common dso_local global i32 0, align 4
@SCTP_RTT_FROM_NON_DATA = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED_SOCKET = common dso_local global i32 0, align 4
@SCTP_STATE_OPEN = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_AUTOCLOSE = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_SHUTDOWNGUARD = common dso_local global i32 0, align 4
@sctps_currestab = common dso_local global i32 0, align 4
@sctps_passiveestab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_tcb* (%struct.mbuf*, i32, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, %struct.sctp_state_cookie*, i32, %struct.sctp_inpcb*, %struct.sctp_nets**, %struct.sockaddr*, i32*, i32, i32, i32, i32, i32, i32, i32)* @sctp_process_cookie_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_tcb* @sctp_process_cookie_new(%struct.mbuf* %0, i32 %1, i32 %2, %struct.sockaddr* %3, %struct.sockaddr* %4, %struct.sctphdr* %5, %struct.sctp_state_cookie* %6, i32 %7, %struct.sctp_inpcb* %8, %struct.sctp_nets** %9, %struct.sockaddr* %10, i32* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18) #0 {
  %20 = alloca %struct.sctp_tcb*, align 8
  %21 = alloca %struct.mbuf*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.sockaddr*, align 8
  %25 = alloca %struct.sockaddr*, align 8
  %26 = alloca %struct.sctphdr*, align 8
  %27 = alloca %struct.sctp_state_cookie*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.sctp_inpcb*, align 8
  %30 = alloca %struct.sctp_nets**, align 8
  %31 = alloca %struct.sockaddr*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.sctp_tcb*, align 8
  %41 = alloca %struct.sctp_init_chunk*, align 8
  %42 = alloca %struct.sctp_init_chunk, align 8
  %43 = alloca %struct.sctp_init_ack_chunk*, align 8
  %44 = alloca %struct.sctp_init_ack_chunk, align 8
  %45 = alloca %union.sctp_sockstore, align 4
  %46 = alloca %struct.sctp_association*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i8*, align 8
  %53 = alloca i64, align 8
  %54 = alloca i32, align 4
  %55 = alloca %struct.mbuf*, align 8
  %56 = alloca %struct.mbuf*, align 8
  %57 = alloca %struct.sctp_auth_chunk*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %21, align 8
  store i32 %1, i32* %22, align 4
  store i32 %2, i32* %23, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %24, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %25, align 8
  store %struct.sctphdr* %5, %struct.sctphdr** %26, align 8
  store %struct.sctp_state_cookie* %6, %struct.sctp_state_cookie** %27, align 8
  store i32 %7, i32* %28, align 4
  store %struct.sctp_inpcb* %8, %struct.sctp_inpcb** %29, align 8
  store %struct.sctp_nets** %9, %struct.sctp_nets*** %30, align 8
  store %struct.sockaddr* %10, %struct.sockaddr** %31, align 8
  store i32* %11, i32** %32, align 8
  store i32 %12, i32* %33, align 4
  store i32 %13, i32* %34, align 4
  store i32 %14, i32* %35, align 4
  store i32 %15, i32* %36, align 4
  store i32 %16, i32* %37, align 4
  store i32 %17, i32* %38, align 4
  store i32 %18, i32* %39, align 4
  store i32 0, i32* %51, align 4
  %58 = load i32, i32* @SCTP_PARAM_BUFFER_SIZE, align 4
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %52, align 8
  %61 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %53, align 8
  %62 = load i32, i32* %23, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %47, align 4
  %66 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %67 = load i32, i32* %47, align 4
  %68 = bitcast %struct.sctp_init_chunk* %42 to i32*
  %69 = call i64 @sctp_m_getptr(%struct.mbuf* %66, i32 %67, i32 16, i32* %68)
  %70 = inttoptr i64 %69 to %struct.sctp_init_chunk*
  store %struct.sctp_init_chunk* %70, %struct.sctp_init_chunk** %41, align 8
  %71 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %41, align 8
  %72 = icmp eq %struct.sctp_init_chunk* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %19
  %74 = load i32, i32* @SCTP_DEBUG_INPUT1, align 4
  %75 = call i32 @SCTPDBG(i32 %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

76:                                               ; preds = %19
  %77 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %41, align 8
  %78 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SCTP_INITIATION, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @SCTP_DEBUG_INPUT1, align 4
  %85 = call i32 @SCTPDBG(i32 %84, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

86:                                               ; preds = %76
  %87 = load i32, i32* %47, align 4
  %88 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %41, align 8
  %89 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ntohs(i32 %91)
  %93 = call i32 @SCTP_SIZE32(i32 %92)
  %94 = add nsw i32 %87, %93
  store i32 %94, i32* %48, align 4
  %95 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %96 = load i32, i32* %48, align 4
  %97 = bitcast %struct.sctp_init_ack_chunk* %44 to i32*
  %98 = call i64 @sctp_m_getptr(%struct.mbuf* %95, i32 %96, i32 24, i32* %97)
  %99 = inttoptr i64 %98 to %struct.sctp_init_ack_chunk*
  store %struct.sctp_init_ack_chunk* %99, %struct.sctp_init_ack_chunk** %43, align 8
  %100 = load %struct.sctp_init_ack_chunk*, %struct.sctp_init_ack_chunk** %43, align 8
  %101 = icmp eq %struct.sctp_init_ack_chunk* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load i32, i32* @SCTP_DEBUG_INPUT1, align 4
  %104 = call i32 @SCTPDBG(i32 %103, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

105:                                              ; preds = %86
  %106 = load %struct.sctp_init_ack_chunk*, %struct.sctp_init_ack_chunk** %43, align 8
  %107 = getelementptr inbounds %struct.sctp_init_ack_chunk, %struct.sctp_init_ack_chunk* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SCTP_INITIATION_ACK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

113:                                              ; preds = %105
  %114 = load i32, i32* %23, align 4
  %115 = load i32, i32* %28, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %49, align 4
  %117 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %29, align 8
  %118 = load %struct.sockaddr*, %struct.sockaddr** %31, align 8
  %119 = load %struct.sctp_init_ack_chunk*, %struct.sctp_init_ack_chunk** %43, align 8
  %120 = getelementptr inbounds %struct.sctp_init_ack_chunk, %struct.sctp_init_ack_chunk* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @ntohl(i32 %122)
  %124 = load i32, i32* %38, align 4
  %125 = load %struct.sctp_init_ack_chunk*, %struct.sctp_init_ack_chunk** %43, align 8
  %126 = getelementptr inbounds %struct.sctp_init_ack_chunk, %struct.sctp_init_ack_chunk* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ntohs(i32 %128)
  %130 = load i32, i32* %39, align 4
  %131 = load i32, i32* @SCTP_DONT_INITIALIZE_AUTH_PARAMS, align 4
  %132 = call %struct.sctp_tcb* @sctp_aloc_assoc(%struct.sctp_inpcb* %117, %struct.sockaddr* %118, i32* %51, i8* %123, i32 %124, i32 %129, i32 %130, %struct.thread* null, i32 %131)
  store %struct.sctp_tcb* %132, %struct.sctp_tcb** %40, align 8
  %133 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %134 = icmp eq %struct.sctp_tcb* %133, null
  br i1 %134, label %135, label %152

135:                                              ; preds = %113
  %136 = load i32, i32* @SCTP_DEBUG_INPUT1, align 4
  %137 = call i32 @SCTPDBG(i32 %136, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @SCTP_CAUSE_OUT_OF_RESC, align 4
  %139 = call %struct.mbuf* @sctp_generate_cause(i32 %138, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store %struct.mbuf* %139, %struct.mbuf** %55, align 8
  %140 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %29, align 8
  %141 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %142 = load i32, i32* %22, align 4
  %143 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %144 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8
  %145 = load %struct.sctphdr*, %struct.sctphdr** %26, align 8
  %146 = load %struct.mbuf*, %struct.mbuf** %55, align 8
  %147 = load i32, i32* %36, align 4
  %148 = load i32, i32* %37, align 4
  %149 = load i32, i32* %38, align 4
  %150 = load i32, i32* %39, align 4
  %151 = call i32 @sctp_abort_association(%struct.sctp_inpcb* %140, %struct.sctp_tcb* null, %struct.mbuf* %141, i32 %142, %struct.sockaddr* %143, %struct.sockaddr* %144, %struct.sctphdr* %145, %struct.mbuf* %146, i32 %147, i32 %148, i32 %149, i32 %150)
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

152:                                              ; preds = %113
  %153 = load %struct.sctp_nets**, %struct.sctp_nets*** %30, align 8
  %154 = icmp ne %struct.sctp_nets** %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %157 = load %struct.sockaddr*, %struct.sockaddr** %31, align 8
  %158 = call %struct.sctp_nets* @sctp_findnet(%struct.sctp_tcb* %156, %struct.sockaddr* %157)
  %159 = load %struct.sctp_nets**, %struct.sctp_nets*** %30, align 8
  store %struct.sctp_nets* %158, %struct.sctp_nets** %159, align 8
  br label %160

160:                                              ; preds = %155, %152
  %161 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %162 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %161, i32 0, i32 0
  store %struct.sctp_association* %162, %struct.sctp_association** %46, align 8
  %163 = load %struct.sctp_state_cookie*, %struct.sctp_state_cookie** %27, align 8
  %164 = getelementptr inbounds %struct.sctp_state_cookie, %struct.sctp_state_cookie* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %167 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %166, i32 0, i32 18
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 5
  store i32 %165, i32* %168, align 4
  %169 = load %struct.sctp_state_cookie*, %struct.sctp_state_cookie** %27, align 8
  %170 = getelementptr inbounds %struct.sctp_state_cookie, %struct.sctp_state_cookie* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %173 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %172, i32 0, i32 18
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  store i32 %171, i32* %174, align 8
  %175 = load %struct.sctp_state_cookie*, %struct.sctp_state_cookie** %27, align 8
  %176 = getelementptr inbounds %struct.sctp_state_cookie, %struct.sctp_state_cookie* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %179 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %178, i32 0, i32 18
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  store i32 %177, i32* %180, align 4
  %181 = load %struct.sctp_state_cookie*, %struct.sctp_state_cookie** %27, align 8
  %182 = getelementptr inbounds %struct.sctp_state_cookie, %struct.sctp_state_cookie* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %185 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %184, i32 0, i32 18
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  store i32 %183, i32* %186, align 8
  %187 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %188 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %187, i32 0, i32 18
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.sctp_state_cookie*, %struct.sctp_state_cookie** %27, align 8
  %192 = getelementptr inbounds %struct.sctp_state_cookie, %struct.sctp_state_cookie* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %190, %193
  br i1 %194, label %204, label %195

195:                                              ; preds = %160
  %196 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %197 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %196, i32 0, i32 18
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.sctp_state_cookie*, %struct.sctp_state_cookie** %27, align 8
  %201 = getelementptr inbounds %struct.sctp_state_cookie, %struct.sctp_state_cookie* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %199, %202
  br i1 %203, label %204, label %226

204:                                              ; preds = %195, %160
  %205 = load i32, i32* @SCTP_CAUSE_OUT_OF_RESC, align 4
  %206 = call %struct.mbuf* @sctp_generate_cause(i32 %205, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store %struct.mbuf* %206, %struct.mbuf** %56, align 8
  %207 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %29, align 8
  %208 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %209 = load i32, i32* %22, align 4
  %210 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %211 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8
  %212 = load %struct.sctphdr*, %struct.sctphdr** %26, align 8
  %213 = load %struct.mbuf*, %struct.mbuf** %56, align 8
  %214 = load i32, i32* %36, align 4
  %215 = load i32, i32* %37, align 4
  %216 = load i32, i32* %38, align 4
  %217 = load i32, i32* %39, align 4
  %218 = call i32 @sctp_abort_association(%struct.sctp_inpcb* %207, %struct.sctp_tcb* null, %struct.mbuf* %208, i32 %209, %struct.sockaddr* %210, %struct.sockaddr* %211, %struct.sctphdr* %212, %struct.mbuf* %213, i32 %214, i32 %215, i32 %216, i32 %217)
  %219 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %29, align 8
  %220 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %221 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %222 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %223 = load i64, i64* @SCTP_LOC_18, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %219, %struct.sctp_tcb* %220, i32 %221, i64 %224)
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

226:                                              ; preds = %195
  %227 = load %struct.sctp_init_ack_chunk*, %struct.sctp_init_ack_chunk** %43, align 8
  %228 = getelementptr inbounds %struct.sctp_init_ack_chunk, %struct.sctp_init_ack_chunk* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @ntohl(i32 %230)
  %232 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %233 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %232, i32 0, i32 17
  store i8* %231, i8** %233, align 8
  %234 = load %struct.sctp_init_ack_chunk*, %struct.sctp_init_ack_chunk** %43, align 8
  %235 = getelementptr inbounds %struct.sctp_init_ack_chunk, %struct.sctp_init_ack_chunk* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i8* @ntohl(i32 %237)
  %239 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %240 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %239, i32 0, i32 16
  store i8* %238, i8** %240, align 8
  %241 = load %struct.sctp_init_ack_chunk*, %struct.sctp_init_ack_chunk** %43, align 8
  %242 = getelementptr inbounds %struct.sctp_init_ack_chunk, %struct.sctp_init_ack_chunk* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @ntohs(i32 %244)
  %246 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %247 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %246, i32 0, i32 15
  store i32 %245, i32* %247, align 8
  %248 = load %struct.sctp_init_ack_chunk*, %struct.sctp_init_ack_chunk** %43, align 8
  %249 = getelementptr inbounds %struct.sctp_init_ack_chunk, %struct.sctp_init_ack_chunk* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i8* @ntohl(i32 %251)
  %253 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %254 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %253, i32 0, i32 8
  store i8* %252, i8** %254, align 8
  %255 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %256 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %255, i32 0, i32 8
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %259 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %258, i32 0, i32 13
  store i8* %257, i8** %259, align 8
  %260 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %261 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %260, i32 0, i32 11
  store i8* %257, i8** %261, align 8
  %262 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %263 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %262, i32 0, i32 14
  store i8* %257, i8** %263, align 8
  %264 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %265 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %264, i32 0, i32 11
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr i8, i8* %266, i64 -1
  %268 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %269 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %268, i32 0, i32 12
  store i8* %267, i8** %269, align 8
  %270 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %271 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %270, i32 0, i32 8
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr i8, i8* %272, i64 -1
  %274 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %275 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %274, i32 0, i32 6
  store i8* %273, i8** %275, align 8
  %276 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %277 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %276, i32 0, i32 10
  store i8* %273, i8** %277, align 8
  %278 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %279 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %278, i32 0, i32 8
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %282 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %281, i32 0, i32 9
  store i8* %280, i8** %282, align 8
  %283 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %284 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %283, i32 0, i32 6
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.sctp_association*, %struct.sctp_association** %46, align 8
  %287 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %286, i32 0, i32 7
  store i8* %285, i8** %287, align 8
  %288 = load %struct.sctp_nets**, %struct.sctp_nets*** %30, align 8
  %289 = icmp ne %struct.sctp_nets** %288, null
  br i1 %289, label %290, label %294

290:                                              ; preds = %226
  %291 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %41, align 8
  %292 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %293 = call i32 @sctp_process_init(%struct.sctp_init_chunk* %291, %struct.sctp_tcb* %292)
  store i32 %293, i32* %50, align 4
  br label %295

294:                                              ; preds = %226
  store i32 0, i32* %50, align 4
  br label %295

295:                                              ; preds = %294, %290
  %296 = load i32, i32* %50, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %29, align 8
  %300 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %301 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %302 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %303 = load i64, i64* @SCTP_LOC_19, align 8
  %304 = add nsw i64 %302, %303
  %305 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %299, %struct.sctp_tcb* %300, i32 %301, i64 %304)
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

306:                                              ; preds = %295
  %307 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %308 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %309 = load i32, i32* %47, align 4
  %310 = sext i32 %309 to i64
  %311 = add i64 %310, 16
  %312 = trunc i64 %311 to i32
  %313 = load i32, i32* %48, align 4
  %314 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %315 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8
  %316 = load %struct.sockaddr*, %struct.sockaddr** %31, align 8
  %317 = load i32, i32* %39, align 4
  %318 = call i64 @sctp_load_addresses_from_init(%struct.sctp_tcb* %307, %struct.mbuf* %308, i32 %312, i32 %313, %struct.sockaddr* %314, %struct.sockaddr* %315, %struct.sockaddr* %316, i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %306
  %321 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %29, align 8
  %322 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %323 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %324 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %325 = load i64, i64* @SCTP_LOC_20, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %321, %struct.sctp_tcb* %322, i32 %323, i64 %326)
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

328:                                              ; preds = %306
  %329 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %330 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %331 = load i32, i32* %48, align 4
  %332 = sext i32 %331 to i64
  %333 = add i64 %332, 24
  %334 = trunc i64 %333 to i32
  %335 = load i32, i32* %49, align 4
  %336 = sext i32 %335 to i64
  %337 = load i32, i32* %48, align 4
  %338 = sext i32 %337 to i64
  %339 = add i64 %338, 24
  %340 = sub i64 %336, %339
  %341 = trunc i64 %340 to i32
  %342 = call i32 @sctp_auth_get_cookie_params(%struct.sctp_tcb* %329, %struct.mbuf* %330, i32 %334, i32 %341)
  %343 = load i32, i32* %33, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %375

345:                                              ; preds = %328
  %346 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %347 = load i32, i32* %34, align 4
  %348 = load i32, i32* %35, align 4
  %349 = call i64 @sctp_m_getptr(%struct.mbuf* %346, i32 %347, i32 %348, i32* %61)
  %350 = inttoptr i64 %349 to %struct.sctp_auth_chunk*
  store %struct.sctp_auth_chunk* %350, %struct.sctp_auth_chunk** %57, align 8
  %351 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %57, align 8
  %352 = icmp eq %struct.sctp_auth_chunk* %351, null
  br i1 %352, label %360, label %353

353:                                              ; preds = %345
  %354 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %355 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %57, align 8
  %356 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %357 = load i32, i32* %34, align 4
  %358 = call i64 @sctp_handle_auth(%struct.sctp_tcb* %354, %struct.sctp_auth_chunk* %355, %struct.mbuf* %356, i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %370

360:                                              ; preds = %353, %345
  %361 = load i32, i32* @SCTP_DEBUG_AUTH1, align 4
  %362 = call i32 @SCTPDBG(i32 %361, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %363 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %29, align 8
  %364 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %365 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %366 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %367 = load i64, i64* @SCTP_LOC_21, align 8
  %368 = add nsw i64 %366, %367
  %369 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %363, %struct.sctp_tcb* %364, i32 %365, i64 %368)
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

370:                                              ; preds = %353
  %371 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %372 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %372, i32 0, i32 0
  store i32 1, i32* %373, align 8
  br label %374

374:                                              ; preds = %370
  br label %375

375:                                              ; preds = %374, %328
  %376 = load %struct.sctp_state_cookie*, %struct.sctp_state_cookie** %27, align 8
  %377 = getelementptr inbounds %struct.sctp_state_cookie, %struct.sctp_state_cookie* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  switch i32 %378, label %379 [
  ]

379:                                              ; preds = %375
  %380 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %29, align 8
  %381 = load %struct.sctp_tcb*, %struct.sctp_tcb** %40, align 8
  %382 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %383 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %384 = load i64, i64* @SCTP_LOC_22, align 8
  %385 = add nsw i64 %383, %384
  %386 = call i32 @sctp_free_assoc(%struct.sctp_inpcb* %380, %struct.sctp_tcb* %381, i32 %382, i64 %385)
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %20, align 8
  store i32 1, i32* %54, align 4
  br label %387

387:                                              ; preds = %379, %360, %320, %298, %204, %135, %112, %102, %83, %73
  %388 = load i8*, i8** %52, align 8
  call void @llvm.stackrestore(i8* %388)
  %389 = load %struct.sctp_tcb*, %struct.sctp_tcb** %20, align 8
  ret %struct.sctp_tcb* %389
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sctp_m_getptr(%struct.mbuf*, i32, i32, i32*) #2

declare dso_local i32 @SCTPDBG(i32, i8*) #2

declare dso_local i32 @SCTP_SIZE32(i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local %struct.sctp_tcb* @sctp_aloc_assoc(%struct.sctp_inpcb*, %struct.sockaddr*, i32*, i8*, i32, i32, i32, %struct.thread*, i32) #2

declare dso_local i8* @ntohl(i32) #2

declare dso_local %struct.mbuf* @sctp_generate_cause(i32, i8*) #2

declare dso_local i32 @sctp_abort_association(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.mbuf*, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, %struct.mbuf*, i32, i32, i32, i32) #2

declare dso_local %struct.sctp_nets* @sctp_findnet(%struct.sctp_tcb*, %struct.sockaddr*) #2

declare dso_local i32 @sctp_free_assoc(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32, i64) #2

declare dso_local i32 @sctp_process_init(%struct.sctp_init_chunk*, %struct.sctp_tcb*) #2

declare dso_local i64 @sctp_load_addresses_from_init(%struct.sctp_tcb*, %struct.mbuf*, i32, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32) #2

declare dso_local i32 @sctp_auth_get_cookie_params(%struct.sctp_tcb*, %struct.mbuf*, i32, i32) #2

declare dso_local i64 @sctp_handle_auth(%struct.sctp_tcb*, %struct.sctp_auth_chunk*, %struct.mbuf*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
