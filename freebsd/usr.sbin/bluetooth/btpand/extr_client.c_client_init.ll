; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_client.c_client_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_client.c_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_l2cap = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@remote_bdaddr = common dso_local global i32 0, align 4
@service_name = common dso_local global i64 0, align 8
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_L2CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not open L2CAP socket: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@local_bdaddr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not bind client socket: %m\00", align 1
@BNEP_MTU_MIN = common dso_local global i32 0, align 4
@SOL_L2CAP = common dso_local global i32 0, align 4
@SO_L2CAP_IMTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not set L2CAP IMTU (%d): %m\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Opening connection to service 0x%4.4x at %s\00", align 1
@service_class = common dso_local global i32 0, align 4
@l2cap_psm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Could not connect: %m\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Could not get IMTU: %m\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"L2CAP IMTU too small (%d)\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Could not read SO_RCVBUF\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Could not increase SO_RCVBUF (from %d)\00", align 1
@SO_L2CAP_OMTU = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Could not get L2CAP OMTU: %m\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"L2CAP OMTU too small (%d)\00", align 1
@SO_SNDBUF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"Could not get socket send buffer size: %m\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Could not set socket send buffer size (%d): %m\00", align 1
@SO_SNDLOWAT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"Could not set socket low water mark (%d): %m\00", align 1
@bnep_send = common dso_local global i32 0, align 4
@bnep_recv = common dso_local global i32 0, align 4
@CHANNEL_WAIT_CONNECT_RSP = common dso_local global i32 0, align 4
@BNEP_SETUP_CONNECTION_REQUEST = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_PANU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_init() #0 {
  %1 = alloca %struct.sockaddr_l2cap, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i64 @bdaddr_any(i32* @remote_bdaddr)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %226

11:                                               ; preds = %0
  %12 = load i64, i64* @service_name, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @client_query()
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* @PF_BLUETOOTH, align 4
  %18 = load i32, i32* @SOCK_SEQPACKET, align 4
  %19 = load i32, i32* @BLUETOOTH_PROTO_L2CAP, align 4
  %20 = call i32 @socket(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %16
  %28 = call i32 @memset(%struct.sockaddr_l2cap* %1, i32 0, i32 32)
  %29 = load i32, i32* @AF_BLUETOOTH, align 4
  %30 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 0
  store i32 32, i32* %31, align 8
  %32 = load i32, i32* @BDADDR_BREDR, align 4
  %33 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 1
  %36 = call i32 @bdaddr_copy(i32* %35, i32* @local_bdaddr)
  %37 = load i32, i32* %4, align 4
  %38 = bitcast %struct.sockaddr_l2cap* %1 to %struct.sockaddr*
  %39 = call i32 @bind(i32 %37, %struct.sockaddr* %38, i32 32)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @exit(i32 %43) #3
  unreachable

45:                                               ; preds = %27
  %46 = load i32, i32* @BNEP_MTU_MIN, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SOL_L2CAP, align 4
  %49 = load i32, i32* @SO_L2CAP_IMTU, align 4
  %50 = call i32 @setsockopt(i32 %47, i32 %48, i32 %49, i32* %6, i32 4)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @exit(i32 %55) #3
  unreachable

57:                                               ; preds = %45
  %58 = load i32, i32* @service_class, align 4
  %59 = call i32 @bt_ntoa(i32* @remote_bdaddr, i32* null)
  %60 = call i32 (i8*, i32, ...) @log_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @l2cap_psm, align 4
  %62 = call i32 @htole16(i32 %61)
  %63 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 1
  %65 = call i32 @bdaddr_copy(i32* %64, i32* @remote_bdaddr)
  %66 = load i32, i32* %4, align 4
  %67 = bitcast %struct.sockaddr_l2cap* %1 to %struct.sockaddr*
  %68 = call i32 @connect(i32 %66, %struct.sockaddr* %67, i32 32)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @EXIT_FAILURE, align 4
  %73 = call i32 @exit(i32 %72) #3
  unreachable

74:                                               ; preds = %57
  store i32 4, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SOL_L2CAP, align 4
  %77 = load i32, i32* @SO_L2CAP_IMTU, align 4
  %78 = call i32 @getsockopt(i32 %75, i32 %76, i32 %77, i32* %6, i32* %3)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @EXIT_FAILURE, align 4
  %83 = call i32 @exit(i32 %82) #3
  unreachable

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @BNEP_MTU_MIN, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EXIT_FAILURE, align 4
  %92 = call i32 @exit(i32 %91) #3
  unreachable

93:                                               ; preds = %84
  store i32 4, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @SOL_SOCKET, align 4
  %96 = load i32, i32* @SO_RCVBUF, align 4
  %97 = call i32 @getsockopt(i32 %94, i32 %95, i32 %96, i32* %5, i32* %3)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @EXIT_FAILURE, align 4
  %102 = call i32 @exit(i32 %101) #3
  unreachable

103:                                              ; preds = %93
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 %105, 10
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = mul nsw i32 %109, 10
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @SOL_SOCKET, align 4
  %113 = load i32, i32* @SO_RCVBUF, align 4
  %114 = call i32 @setsockopt(i32 %111, i32 %112, i32 %113, i32* %5, i32 4)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i8*, i32, ...) @log_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %108
  br label %120

120:                                              ; preds = %119, %103
  store i32 4, i32* %3, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @SOL_L2CAP, align 4
  %123 = load i32, i32* @SO_L2CAP_OMTU, align 4
  %124 = call i32 @getsockopt(i32 %121, i32 %122, i32 %123, i32* %7, i32* %3)
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %128 = load i32, i32* @EXIT_FAILURE, align 4
  %129 = call i32 @exit(i32 %128) #3
  unreachable

130:                                              ; preds = %120
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @BNEP_MTU_MIN, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EXIT_FAILURE, align 4
  %138 = call i32 @exit(i32 %137) #3
  unreachable

139:                                              ; preds = %130
  store i32 4, i32* %3, align 4
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @SOL_SOCKET, align 4
  %142 = load i32, i32* @SO_SNDBUF, align 4
  %143 = call i32 @getsockopt(i32 %140, i32 %141, i32 %142, i32* %5, i32* %3)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @close(i32 %147)
  br label %226

149:                                              ; preds = %139
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %7, align 4
  %152 = mul nsw i32 %151, 2
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load i32, i32* %7, align 4
  %156 = mul nsw i32 %155, 2
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @SOL_SOCKET, align 4
  %159 = load i32, i32* @SO_SNDBUF, align 4
  %160 = call i32 @setsockopt(i32 %157, i32 %158, i32 %159, i32* %5, i32 4)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = load i32, i32* %5, align 4
  %164 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @close(i32 %165)
  br label %226

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167, %149
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @SOL_SOCKET, align 4
  %172 = load i32, i32* @SO_SNDLOWAT, align 4
  %173 = call i32 @setsockopt(i32 %170, i32 %171, i32 %172, i32* %5, i32 4)
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load i32, i32* %5, align 4
  %177 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @close(i32 %178)
  br label %226

180:                                              ; preds = %168
  %181 = call %struct.TYPE_6__* (...) @channel_alloc()
  store %struct.TYPE_6__* %181, %struct.TYPE_6__** %2, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %183 = icmp eq %struct.TYPE_6__* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i32, i32* @EXIT_FAILURE, align 4
  %186 = call i32 @exit(i32 %185) #3
  unreachable

187:                                              ; preds = %180
  %188 = load i32, i32* @bnep_send, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @bnep_recv, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @b2eaddr(i32 %202, i32* @remote_bdaddr)
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @b2eaddr(i32 %206, i32* @local_bdaddr)
  %208 = load i32, i32* @CHANNEL_WAIT_CONNECT_RSP, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %212 = call i32 @channel_timeout(%struct.TYPE_6__* %211, i32 10)
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %214 = load i32, i32* %4, align 4
  %215 = call i32 @channel_open(%struct.TYPE_6__* %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %187
  %218 = load i32, i32* @EXIT_FAILURE, align 4
  %219 = call i32 @exit(i32 %218) #3
  unreachable

220:                                              ; preds = %187
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %222 = load i32, i32* @BNEP_SETUP_CONNECTION_REQUEST, align 4
  %223 = load i32, i32* @service_class, align 4
  %224 = load i32, i32* @SDP_SERVICE_CLASS_PANU, align 4
  %225 = call i32 @bnep_send_control(%struct.TYPE_6__* %221, i32 %222, i32 2, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %220, %175, %162, %145, %10
  ret void
}

declare dso_local i64 @bdaddr_any(i32*) #1

declare dso_local i32 @client_query(...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.sockaddr_l2cap*, i32, i32) #1

declare dso_local i32 @bdaddr_copy(i32*, i32*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @log_info(i8*, i32, ...) #1

declare dso_local i32 @bt_ntoa(i32*, i32*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.TYPE_6__* @channel_alloc(...) #1

declare dso_local i32 @b2eaddr(i32, i32*) #1

declare dso_local i32 @channel_timeout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @channel_open(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bnep_send_control(%struct.TYPE_6__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
