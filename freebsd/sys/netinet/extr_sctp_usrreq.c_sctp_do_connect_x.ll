; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_do_connect_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_usrreq.c_sctp_do_connect_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sctp_inpcb = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sctp_tcb = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }

@SCTP_DEBUG_PCB1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Connectx called\0A\00", align 1
@SCTP_PCB_FLAGS_TCPTYPE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_CONNECTED = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_USRREQ = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_IN_TCPPOOL = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_PORTREUSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_SOCKET_ALLGONE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_SOCKET_GONE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_UNBOUND = common dso_local global i32 0, align 4
@SCTP_INITIALIZE_AUTH_PARAMS = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_WAIT = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_INIT = common dso_local global i32 0, align 4
@SCTP_SO_LOCKED = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_BOUND_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sctp_inpcb*, i8*, i64, i8*, i32)* @sctp_do_connect_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_do_connect_x(%struct.socket* %0, %struct.sctp_inpcb* %1, i8* %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sctp_inpcb*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sctp_tcb*, align 8
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sctp_inpcb* %1, %struct.sctp_inpcb** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %24 = load i32, i32* @SCTP_DEBUG_PCB1, align 4
  %25 = call i32 @SCTPDBG(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %27 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SCTP_PCB_FLAGS_TCPTYPE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %6
  %33 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %34 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SCTP_PCB_FLAGS_CONNECTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %41 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %42 = load i32, i32* @SCTP_FROM_SCTP_USRREQ, align 4
  %43 = load i32, i32* @EADDRINUSE, align 4
  %44 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %40, %struct.sctp_tcb* %41, i32* null, i32 %42, i32 %43)
  %45 = load i32, i32* @EADDRINUSE, align 4
  store i32 %45, i32* %7, align 4
  br label %255

46:                                               ; preds = %32, %6
  %47 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %48 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SCTP_PCB_FLAGS_IN_TCPPOOL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %55 = load i32, i32* @SCTP_PCB_FLAGS_PORTREUSE, align 4
  %56 = call i64 @sctp_is_feature_off(%struct.sctp_inpcb* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %60 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %61 = load i32, i32* @SCTP_FROM_SCTP_USRREQ, align 4
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %59, %struct.sctp_tcb* %60, i32* null, i32 %61, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %7, align 4
  br label %255

65:                                               ; preds = %53, %46
  %66 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %67 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SCTP_PCB_FLAGS_CONNECTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %74 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb* %73)
  %75 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %76 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %75, i32 0, i32 3
  %77 = call %struct.sctp_tcb* @LIST_FIRST(i32* %76)
  store %struct.sctp_tcb* %77, %struct.sctp_tcb** %16, align 8
  %78 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %79 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %78)
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %82 = icmp ne %struct.sctp_tcb* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %85 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %86 = load i32, i32* @SCTP_FROM_SCTP_USRREQ, align 4
  %87 = load i32, i32* @EALREADY, align 4
  %88 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %84, %struct.sctp_tcb* %85, i32* null, i32 %86, i32 %87)
  %89 = load i32, i32* @EALREADY, align 4
  store i32 %89, i32* %7, align 4
  br label %255

90:                                               ; preds = %80
  %91 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %92 = call i32 @SCTP_INP_INCR_REF(%struct.sctp_inpcb* %91)
  %93 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %94 = call i32 @SCTP_ASOC_CREATE_LOCK(%struct.sctp_inpcb* %93)
  store i32 1, i32* %15, align 4
  %95 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %96 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_ALLGONE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %90
  %102 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %103 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_GONE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101, %90
  %109 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %110 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %111 = load i32, i32* @SCTP_FROM_SCTP_USRREQ, align 4
  %112 = load i32, i32* @EFAULT, align 4
  %113 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %109, %struct.sctp_tcb* %110, i32* null, i32 %111, i32 %112)
  %114 = load i32, i32* @EFAULT, align 4
  store i32 %114, i32* %14, align 4
  br label %245

115:                                              ; preds = %101
  %116 = load i8*, i8** %10, align 8
  %117 = bitcast i8* %116 to i32*
  store i32* %117, i32** %20, align 8
  %118 = load i32*, i32** %20, align 8
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %21, align 4
  %120 = load i32*, i32** %20, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = bitcast i32* %121 to %struct.sockaddr*
  store %struct.sockaddr* %122, %struct.sockaddr** %17, align 8
  %123 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %124 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %125 = load i32, i32* %21, align 4
  %126 = load i64, i64* %11, align 8
  %127 = sub i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i32 @sctp_connectx_helper_find(%struct.sctp_inpcb* %123, %struct.sockaddr* %124, i32 %125, i32* %19, i32* %18, i32 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %115
  %133 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %134 = call i32 @SCTP_ASOC_CREATE_UNLOCK(%struct.sctp_inpcb* %133)
  store i32 0, i32* %15, align 4
  %135 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %136 = load i32, i32* @SCTP_FROM_SCTP_USRREQ, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %135, %struct.sctp_tcb* null, i32* null, i32 %136, i32 %137)
  br label %245

139:                                              ; preds = %115
  %140 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %141 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SCTP_PCB_FLAGS_UNBOUND, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @SCTP_PCB_FLAGS_UNBOUND, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load %struct.socket*, %struct.socket** %8, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @sctp_inpcb_bind(%struct.socket* %148, i32* null, i32* null, i8* %149)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %245

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %139
  %156 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %157 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %22, align 4
  %159 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %160 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %161 = load i32, i32* %22, align 4
  %162 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %163 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %167 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i8*, i8** %12, align 8
  %171 = bitcast i8* %170 to %struct.thread*
  %172 = load i32, i32* @SCTP_INITIALIZE_AUTH_PARAMS, align 4
  %173 = call %struct.sctp_tcb* @sctp_aloc_assoc(%struct.sctp_inpcb* %159, %struct.sockaddr* %160, i32* %14, i32 0, i32 %161, i32 %165, i32 %169, %struct.thread* %171, i32 %172)
  store %struct.sctp_tcb* %173, %struct.sctp_tcb** %16, align 8
  %174 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %175 = icmp eq %struct.sctp_tcb* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %155
  br label %245

177:                                              ; preds = %155
  %178 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %179 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SCTP_PCB_FLAGS_TCPTYPE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %177
  %187 = load i32, i32* @SCTP_PCB_FLAGS_CONNECTED, align 4
  %188 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %189 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %188, i32 0, i32 1
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %187
  store i32 %193, i32* %191, align 4
  %194 = load %struct.socket*, %struct.socket** %8, align 8
  %195 = call i32 @soisconnecting(%struct.socket* %194)
  br label %196

196:                                              ; preds = %186, %177
  %197 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %198 = load i32, i32* @SCTP_STATE_COOKIE_WAIT, align 4
  %199 = call i32 @SCTP_SET_STATE(%struct.sctp_tcb* %197, i32 %198)
  %200 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %201 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  switch i32 %202, label %203 [
  ]

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %203
  store i32 0, i32* %14, align 4
  %205 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %206 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %207 = load i32, i32* %21, align 4
  %208 = sub i32 %207, 1
  %209 = call i32 @sctp_connectx_helper_add(%struct.sctp_tcb* %205, %struct.sockaddr* %206, i32 %208, i32* %14)
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %245

213:                                              ; preds = %204
  %214 = load i8*, i8** %10, align 8
  %215 = bitcast i8* %214 to i32*
  store i32* %215, i32** %23, align 8
  %216 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %217 = call i32 @sctp_get_associd(%struct.sctp_tcb* %216)
  %218 = load i32*, i32** %23, align 8
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %233

221:                                              ; preds = %213
  %222 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %223 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  %225 = load i32, i32* @SCTP_TIMER_TYPE_INIT, align 4
  %226 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %227 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %228 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %229 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @sctp_timer_start(i32 %225, %struct.sctp_inpcb* %226, %struct.sctp_tcb* %227, i32 %231)
  br label %242

233:                                              ; preds = %213
  %234 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %235 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = call i32 @SCTP_GETTIME_TIMEVAL(i32* %236)
  %238 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %239 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %240 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %241 = call i32 @sctp_send_initiate(%struct.sctp_inpcb* %238, %struct.sctp_tcb* %239, i32 %240)
  br label %242

242:                                              ; preds = %233, %221
  %243 = load %struct.sctp_tcb*, %struct.sctp_tcb** %16, align 8
  %244 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %243)
  br label %245

245:                                              ; preds = %242, %212, %176, %153, %132, %108
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %250 = call i32 @SCTP_ASOC_CREATE_UNLOCK(%struct.sctp_inpcb* %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %253 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %252)
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %251, %83, %58, %39
  %256 = load i32, i32* %7, align 4
  ret i32 %256
}

declare dso_local i32 @SCTPDBG(i32, i8*) #1

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32*, i32, i32) #1

declare dso_local i64 @sctp_is_feature_off(%struct.sctp_inpcb*, i32) #1

declare dso_local i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb*) #1

declare dso_local %struct.sctp_tcb* @LIST_FIRST(i32*) #1

declare dso_local i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_INP_INCR_REF(%struct.sctp_inpcb*) #1

declare dso_local i32 @SCTP_ASOC_CREATE_LOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @sctp_connectx_helper_find(%struct.sctp_inpcb*, %struct.sockaddr*, i32, i32*, i32*, i32) #1

declare dso_local i32 @SCTP_ASOC_CREATE_UNLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @sctp_inpcb_bind(%struct.socket*, i32*, i32*, i8*) #1

declare dso_local %struct.sctp_tcb* @sctp_aloc_assoc(%struct.sctp_inpcb*, %struct.sockaddr*, i32*, i32, i32, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @soisconnecting(%struct.socket*) #1

declare dso_local i32 @SCTP_SET_STATE(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_connectx_helper_add(%struct.sctp_tcb*, %struct.sockaddr*, i32, i32*) #1

declare dso_local i32 @sctp_get_associd(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_timer_start(i32, %struct.sctp_inpcb*, %struct.sctp_tcb*, i32) #1

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(i32*) #1

declare dso_local i32 @sctp_send_initiate(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
