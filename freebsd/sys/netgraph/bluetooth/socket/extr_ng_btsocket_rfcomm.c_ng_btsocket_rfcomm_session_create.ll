; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_session_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.socket*, i32, i64, i64, i32, i32 }
%struct.socket = type { i32, i32, i32 }
%struct.thread = type { i32 }
%struct.sockaddr_l2cap = type { i32, i8*, i64, i32, i8*, i8* }
%struct.sockopt = type { i32, i32*, i8*, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@ng_btsocket_rfcomm_sessions_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_RFCOMM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RFCOMM_DEFAULT_MTU = common dso_local global i64 0, align 8
@NG_BTSOCKET_RFCOMM_SESSION_CLOSED = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"btsocks_rfcomm_session_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_upcall = common dso_local global i32 0, align 4
@SO_SND = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i32 0, align 4
@SOL_L2CAP = common dso_local global i32 0, align 4
@SO_L2CAP_IMTU = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i8* null, align 8
@NG_L2CAP_PSM_RFCOMM = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i8* null, align 8
@NG_BTSOCKET_RFCOMM_SESSION_LISTENING = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_SESSION_INITIATOR = common dso_local global i64 0, align 8
@NG_BTSOCKET_RFCOMM_SESSION_CONNECTING = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sessions = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__**, %struct.socket*, i32*, i32*, %struct.thread*)* @ng_btsocket_rfcomm_session_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_btsocket_rfcomm_session_create(%struct.TYPE_7__** %0, %struct.socket* %1, i32* %2, i32* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.sockaddr_l2cap, align 8
  %14 = alloca %struct.sockopt, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @mtx_assert(i32* @ng_btsocket_rfcomm_sessions_mtx, i32 %17)
  %19 = load i32, i32* @M_NETGRAPH_BTSOCKET_RFCOMM, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.TYPE_7__* @malloc(i32 48, i32 %19, i32 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %12, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %6, align 4
  br label %237

28:                                               ; preds = %5
  %29 = load i64, i64* @RFCOMM_DEFAULT_MTU, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @NG_BTSOCKET_RFCOMM_SESSION_CLOSED, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  %39 = load i32, i32* @ifqmaxlen, align 4
  %40 = call i32 @NG_BT_MBUFQ_INIT(i32* %38, i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* @MTX_DEF, align 4
  %44 = load i32, i32* @MTX_DUPOK, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @mtx_init(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* null, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  %49 = call i32 @LIST_INIT(i32* %48)
  %50 = load %struct.socket*, %struct.socket** %8, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 2
  %52 = call i32 @SOCKBUF_LOCK(i32* %51)
  %53 = load %struct.socket*, %struct.socket** %8, align 8
  %54 = load i32, i32* @SO_RCV, align 4
  %55 = load i32, i32* @ng_btsocket_rfcomm_upcall, align 4
  %56 = call i32 @soupcall_set(%struct.socket* %53, i32 %54, i32 %55, i32* null)
  %57 = load %struct.socket*, %struct.socket** %8, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 2
  %59 = call i32 @SOCKBUF_UNLOCK(i32* %58)
  %60 = load %struct.socket*, %struct.socket** %8, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 1
  %62 = call i32 @SOCKBUF_LOCK(i32* %61)
  %63 = load %struct.socket*, %struct.socket** %8, align 8
  %64 = load i32, i32* @SO_SND, align 4
  %65 = load i32, i32* @ng_btsocket_rfcomm_upcall, align 4
  %66 = call i32 @soupcall_set(%struct.socket* %63, i32 %64, i32 %65, i32* null)
  %67 = load %struct.socket*, %struct.socket** %8, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 1
  %69 = call i32 @SOCKBUF_UNLOCK(i32* %68)
  %70 = load i32, i32* @SS_NBIO, align 4
  %71 = load %struct.socket*, %struct.socket** %8, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.socket*, %struct.socket** %8, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store %struct.socket* %75, %struct.socket** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = call i32 @mtx_lock(i32* %79)
  %81 = load i32*, i32** %9, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %28
  %84 = load i32*, i32** %10, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %187

87:                                               ; preds = %83, %28
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 4
  %92 = add i64 %91, 1
  %93 = add i64 %92, 1
  store i64 %93, i64* %16, align 8
  %94 = load i32, i32* @SOPT_SET, align 4
  %95 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 5
  store i32 %94, i32* %95, align 8
  %96 = load i32, i32* @SOL_L2CAP, align 4
  %97 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 4
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @SO_L2CAP_IMTU, align 4
  %99 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 3
  store i32 %98, i32* %99, align 8
  %100 = bitcast i64* %16 to i8*
  %101 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 0
  store i32 8, i32* %102, align 8
  %103 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load %struct.socket*, %struct.socket** %105, align 8
  %107 = call i32 @sosetopt(%struct.socket* %106, %struct.sockopt* %14)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %87
  br label %196

111:                                              ; preds = %87
  %112 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 0
  store i32 48, i32* %112, align 8
  %113 = load i8*, i8** @AF_BLUETOOTH, align 8
  %114 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @NG_L2CAP_PSM_RFCOMM, align 4
  %119 = call i8* @htole16(i32 %118)
  br label %121

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %117
  %122 = phi i8* [ %119, %117 ], [ null, %120 ]
  %123 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 4
  store i8* %122, i8** %123, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 3
  %126 = call i32 @bcopy(i32* %124, i32* %125, i32 4)
  %127 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load i8*, i8** @BDADDR_BREDR, align 8
  %129 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load %struct.socket*, %struct.socket** %131, align 8
  %133 = bitcast %struct.sockaddr_l2cap* %13 to %struct.sockaddr*
  %134 = load %struct.thread*, %struct.thread** %11, align 8
  %135 = call i32 @sobind(%struct.socket* %132, %struct.sockaddr* %133, %struct.thread* %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %121
  br label %196

139:                                              ; preds = %121
  %140 = load i32*, i32** %10, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* @NG_BTSOCKET_RFCOMM_SESSION_LISTENING, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load %struct.socket*, %struct.socket** %149, align 8
  %151 = load %struct.thread*, %struct.thread** %11, align 8
  %152 = call i32 @solisten(%struct.socket* %150, i32 10, %struct.thread* %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %196

156:                                              ; preds = %142
  br label %186

157:                                              ; preds = %139
  %158 = load i64, i64* @NG_BTSOCKET_RFCOMM_SESSION_INITIATOR, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load i32, i32* @NG_BTSOCKET_RFCOMM_SESSION_CONNECTING, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 0
  store i32 48, i32* %164, align 8
  %165 = load i8*, i8** @AF_BLUETOOTH, align 8
  %166 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 5
  store i8* %165, i8** %166, align 8
  %167 = load i32, i32* @NG_L2CAP_PSM_RFCOMM, align 4
  %168 = call i8* @htole16(i32 %167)
  %169 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 4
  store i8* %168, i8** %169, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 3
  %172 = call i32 @bcopy(i32* %170, i32* %171, i32 4)
  %173 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load i8*, i8** @BDADDR_BREDR, align 8
  %175 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %13, i32 0, i32 1
  store i8* %174, i8** %175, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load %struct.socket*, %struct.socket** %177, align 8
  %179 = bitcast %struct.sockaddr_l2cap* %13 to %struct.sockaddr*
  %180 = load %struct.thread*, %struct.thread** %11, align 8
  %181 = call i32 @soconnect(%struct.socket* %178, %struct.sockaddr* %179, %struct.thread* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %157
  br label %196

185:                                              ; preds = %157
  br label %186

186:                                              ; preds = %185, %156
  br label %187

187:                                              ; preds = %186, %86
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %189 = load i32, i32* @next, align 4
  %190 = call i32 @LIST_INSERT_HEAD(i32* @ng_btsocket_rfcomm_sessions, %struct.TYPE_7__* %188, i32 %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %192 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %191, %struct.TYPE_7__** %192, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = call i32 @mtx_unlock(i32* %194)
  store i32 0, i32* %6, align 4
  br label %237

196:                                              ; preds = %184, %155, %138, %110
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = call i32 @mtx_unlock(i32* %198)
  %200 = load %struct.socket*, %struct.socket** %8, align 8
  %201 = getelementptr inbounds %struct.socket, %struct.socket* %200, i32 0, i32 2
  %202 = call i32 @SOCKBUF_LOCK(i32* %201)
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load %struct.socket*, %struct.socket** %204, align 8
  %206 = load i32, i32* @SO_RCV, align 4
  %207 = call i32 @soupcall_clear(%struct.socket* %205, i32 %206)
  %208 = load %struct.socket*, %struct.socket** %8, align 8
  %209 = getelementptr inbounds %struct.socket, %struct.socket* %208, i32 0, i32 2
  %210 = call i32 @SOCKBUF_UNLOCK(i32* %209)
  %211 = load %struct.socket*, %struct.socket** %8, align 8
  %212 = getelementptr inbounds %struct.socket, %struct.socket* %211, i32 0, i32 1
  %213 = call i32 @SOCKBUF_LOCK(i32* %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load %struct.socket*, %struct.socket** %215, align 8
  %217 = load i32, i32* @SO_SND, align 4
  %218 = call i32 @soupcall_clear(%struct.socket* %216, i32 %217)
  %219 = load %struct.socket*, %struct.socket** %8, align 8
  %220 = getelementptr inbounds %struct.socket, %struct.socket* %219, i32 0, i32 1
  %221 = call i32 @SOCKBUF_UNLOCK(i32* %220)
  %222 = load i32, i32* @SS_NBIO, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.socket*, %struct.socket** %8, align 8
  %225 = getelementptr inbounds %struct.socket, %struct.socket* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, %223
  store i32 %227, i32* %225, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = call i32 @mtx_destroy(i32* %229)
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %232 = call i32 @bzero(%struct.TYPE_7__* %231, i32 48)
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %234 = load i32, i32* @M_NETGRAPH_BTSOCKET_RFCOMM, align 4
  %235 = call i32 @free(%struct.TYPE_7__* %233, i32 %234)
  %236 = load i32, i32* %15, align 4
  store i32 %236, i32* %6, align 4
  br label %237

237:                                              ; preds = %196, %187, %26
  %238 = load i32, i32* %6, align 4
  ret i32 %238
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32, i32, i32) #1

declare dso_local i32 @NG_BT_MBUFQ_INIT(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soupcall_set(%struct.socket*, i32, i32, i32*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sosetopt(%struct.socket*, %struct.sockopt*) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @sobind(%struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @solisten(%struct.socket*, i32, %struct.thread*) #1

declare dso_local i32 @soconnect(%struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @soupcall_clear(%struct.socket*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
