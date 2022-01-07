; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.sockaddr_rfcomm = type { i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NG_HCI_BDADDR_ANY = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_L2CAP = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sessions_mtx = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@session_next = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_DLC_CONFIGURING = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_rfcomm_connect(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.sockaddr_rfcomm*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = call %struct.TYPE_13__* @so2rfcomm_pcb(%struct.socket* %14)
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_rfcomm*
  store %struct.sockaddr_rfcomm* %17, %struct.sockaddr_rfcomm** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  store %struct.socket* null, %struct.socket** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %214

22:                                               ; preds = %3
  %23 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %24 = icmp eq %struct.sockaddr_rfcomm* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %214

27:                                               ; preds = %22
  %28 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %29 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_BLUETOOTH, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %34, i32* %4, align 4
  br label %214

35:                                               ; preds = %27
  %36 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %37 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 24
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %214

43:                                               ; preds = %35
  %44 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %45 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 30
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %214

50:                                               ; preds = %43
  %51 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %52 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %57 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %56, i32 0, i32 3
  %58 = load i32, i32* @NG_HCI_BDADDR_ANY, align 4
  %59 = call i64 @bcmp(i32* %57, i32 %58, i32 4)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %50
  %62 = load i32, i32* @EDESTADDRREQ, align 4
  store i32 %62, i32* %4, align 4
  br label %214

63:                                               ; preds = %55
  %64 = load i32, i32* @PF_BLUETOOTH, align 4
  %65 = load i32, i32* @SOCK_SEQPACKET, align 4
  %66 = load i32, i32* @BLUETOOTH_PROTO_L2CAP, align 4
  %67 = load %struct.thread*, %struct.thread** %7, align 8
  %68 = getelementptr inbounds %struct.thread, %struct.thread* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.thread*, %struct.thread** %7, align 8
  %71 = call i32 @socreate(i32 %64, %struct.socket** %11, i32 %65, i32 %66, i32 %69, %struct.thread* %70)
  store i32 %71, i32* %13, align 4
  %72 = call i32 @mtx_lock(i32* @ng_btsocket_rfcomm_sessions_mtx)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  %75 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %76 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %75, i32 0, i32 3
  %77 = call %struct.TYPE_12__* @ng_btsocket_rfcomm_session_by_addr(i32* %74, i32* %76)
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %10, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = icmp eq %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %63
  %81 = load %struct.socket*, %struct.socket** %11, align 8
  %82 = icmp eq %struct.socket* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = call i32 @mtx_unlock(i32* @ng_btsocket_rfcomm_sessions_mtx)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %4, align 4
  br label %214

86:                                               ; preds = %80
  %87 = load %struct.socket*, %struct.socket** %11, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %91 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %90, i32 0, i32 3
  %92 = load %struct.thread*, %struct.thread** %7, align 8
  %93 = call i32 @ng_btsocket_rfcomm_session_create(%struct.TYPE_12__** %10, %struct.socket* %87, i32* %89, i32* %91, %struct.thread* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = call i32 @mtx_unlock(i32* @ng_btsocket_rfcomm_sessions_mtx)
  %98 = load %struct.socket*, %struct.socket** %11, align 8
  %99 = call i32 @soclose(%struct.socket* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %214

101:                                              ; preds = %86
  br label %109

102:                                              ; preds = %63
  %103 = load %struct.socket*, %struct.socket** %11, align 8
  %104 = icmp ne %struct.socket* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.socket*, %struct.socket** %11, align 8
  %107 = call i32 @soclose(%struct.socket* %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %101
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = call i32 @mtx_lock(i32* %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = call i32 @mtx_lock(i32* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = call i32 @INITIATOR(%struct.TYPE_12__* %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %122 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @RFCOMM_MKDLCI(i32 %120, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32* @ng_btsocket_rfcomm_pcb_by_dlci(%struct.TYPE_12__* %125, i32 %126)
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %109
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = call i32 @mtx_unlock(i32* %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = call i32 @mtx_unlock(i32* %134)
  %136 = call i32 @mtx_unlock(i32* @ng_btsocket_rfcomm_sessions_mtx)
  %137 = load i32, i32* @EBUSY, align 4
  store i32 %137, i32* %4, align 4
  br label %214

138:                                              ; preds = %109
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %203 [
    i32 129, label %142
    i32 130, label %142
    i32 128, label %142
  ]

142:                                              ; preds = %138, %138, %138
  %143 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %144 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %143, i32 0, i32 3
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 8
  %147 = call i32 @bcopy(i32* %144, i32* %146, i32 4)
  %148 = load %struct.sockaddr_rfcomm*, %struct.sockaddr_rfcomm** %9, align 8
  %149 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %159 = load i32, i32* @session_next, align 4
  %160 = call i32 @LIST_INSERT_HEAD(i32* %157, %struct.TYPE_13__* %158, i32 %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 7
  store %struct.TYPE_12__* %161, %struct.TYPE_12__** %163, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = call i32 @ng_btsocket_rfcomm_timeout(%struct.TYPE_13__* %164)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @soisconnecting(i32 %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 128
  br i1 %173, label %174, label %198

174:                                              ; preds = %142
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.TYPE_14__* @so2l2cap_pcb(i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 4
  %187 = call i32 @bcopy(i32* %184, i32* %186, i32 4)
  %188 = load i32, i32* @NG_BTSOCKET_RFCOMM_DLC_CONFIGURING, align 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %192 = call i32 @ng_btsocket_rfcomm_send_pn(%struct.TYPE_13__* %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %174
  %196 = call i32 (...) @ng_btsocket_rfcomm_task_wakeup()
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %195, %174
  br label %202

198:                                              ; preds = %142
  %199 = load i32, i32* @NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %198, %197
  br label %205

203:                                              ; preds = %138
  %204 = load i32, i32* @ECONNRESET, align 4
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %203, %202
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 2
  %208 = call i32 @mtx_unlock(i32* %207)
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = call i32 @mtx_unlock(i32* %210)
  %212 = call i32 @mtx_unlock(i32* @ng_btsocket_rfcomm_sessions_mtx)
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %205, %129, %96, %83, %61, %48, %41, %33, %25, %20
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_13__* @so2rfcomm_pcb(%struct.socket*) #1

declare dso_local i64 @bcmp(i32*, i32, i32) #1

declare dso_local i32 @socreate(i32, %struct.socket**, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_12__* @ng_btsocket_rfcomm_session_by_addr(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ng_btsocket_rfcomm_session_create(%struct.TYPE_12__**, %struct.socket*, i32*, i32*, %struct.thread*) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @RFCOMM_MKDLCI(i32, i32) #1

declare dso_local i32 @INITIATOR(%struct.TYPE_12__*) #1

declare dso_local i32* @ng_btsocket_rfcomm_pcb_by_dlci(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ng_btsocket_rfcomm_timeout(%struct.TYPE_13__*) #1

declare dso_local i32 @soisconnecting(i32) #1

declare dso_local %struct.TYPE_14__* @so2l2cap_pcb(i32) #1

declare dso_local i32 @ng_btsocket_rfcomm_send_pn(%struct.TYPE_13__*) #1

declare dso_local i32 @ng_btsocket_rfcomm_task_wakeup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
