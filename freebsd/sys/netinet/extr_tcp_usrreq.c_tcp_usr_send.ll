; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i64 }
%struct.thread = type { i32 }
%struct.epoch_tracker = type { i32 }
%struct.inpcb = type { i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.tcpcb = type { i64, i32, %struct.TYPE_5__*, i64, i64, i8* }
%struct.TYPE_5__ = type { i32 (%struct.tcpcb*)* }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@PRUS_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tcp_usr_send: inp == NULL\00", align 1
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@PRUS_NOTREADY = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRUS_OOB = common dso_local global i32 0, align 4
@TTCP_CLIENT_SND_WND = common dso_local global i8* null, align 8
@PRUS_MORETOCOME = common dso_local global i32 0, align 4
@TF_MORETOCOME = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TF_FASTOPEN = common dso_local global i32 0, align 4
@TF_FORCEDATA = common dso_local global i32 0, align 4
@TCP_LOG_USERSEND = common dso_local global i32 0, align 4
@PRU_SENDOOB = common dso_local global i32 0, align 4
@PRU_SEND_EOF = common dso_local global i32 0, align 4
@PRU_SEND = common dso_local global i32 0, align 4
@debug__user = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@INC_ISIPV6 = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)* @tcp_usr_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.epoch_tracker, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inpcb*, align 8
  %16 = alloca %struct.tcpcb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  store i32 0, i32* %14, align 4
  store %struct.tcpcb* null, %struct.tcpcb** %16, align 8
  %20 = load i32, i32* @TCPDEBUG0, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PRUS_EOF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %13, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NET_EPOCH_ENTER(i32 %27)
  br label %29

29:                                               ; preds = %25, %6
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = call %struct.inpcb* @sotoinpcb(%struct.socket* %30)
  store %struct.inpcb* %31, %struct.inpcb** %15, align 8
  %32 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %33 = icmp ne %struct.inpcb* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %37 = call i32 @INP_WLOCK(%struct.inpcb* %36)
  %38 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %18, align 4
  %41 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %45 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @INP_TIMEWAIT, align 4
  %49 = load i32, i32* @INP_DROPPED, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %29
  %54 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %55 = icmp ne %struct.mbuf* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %58 = call i32 @m_freem(%struct.mbuf* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %61 = icmp ne %struct.mbuf* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PRUS_NOTREADY, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %69 = call i32 @m_freem(%struct.mbuf* %68)
  br label %70

70:                                               ; preds = %67, %62, %59
  %71 = load i32, i32* @ECONNRESET, align 4
  store i32 %71, i32* %14, align 4
  br label %331

72:                                               ; preds = %29
  %73 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %74 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %73)
  store %struct.tcpcb* %74, %struct.tcpcb** %16, align 8
  %75 = call i32 (...) @TCPDEBUG1()
  %76 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %77 = icmp ne %struct.sockaddr* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TCPS_SYN_SENT, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %86 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %88 [
  ]

88:                                               ; preds = %84
  %89 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %90 = icmp ne %struct.mbuf* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %93 = call i32 @m_freem(%struct.mbuf* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %95, i32* %14, align 4
  br label %331

96:                                               ; preds = %78, %72
  %97 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %98 = icmp ne %struct.mbuf* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %106 = call i32 @m_freem(%struct.mbuf* %105)
  %107 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %108 = icmp ne %struct.mbuf* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %111 = call i32 @m_freem(%struct.mbuf* %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %14, align 4
  br label %331

114:                                              ; preds = %99
  %115 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %116 = call i32 @m_freem(%struct.mbuf* %115)
  br label %117

117:                                              ; preds = %114, %96
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @PRUS_OOB, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %220, label %122

122:                                              ; preds = %117
  %123 = load %struct.socket*, %struct.socket** %7, align 8
  %124 = getelementptr inbounds %struct.socket, %struct.socket* %123, i32 0, i32 0
  %125 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @sbappendstream(i32* %124, %struct.mbuf* %125, i32 %126)
  %128 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %129 = icmp ne %struct.sockaddr* %128, null
  br i1 %129, label %130, label %165

130:                                              ; preds = %122
  %131 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TCPS_SYN_SENT, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %165

136:                                              ; preds = %130
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %136
  %140 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %141 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139, %136
  store i32 0, i32* %19, align 4
  br label %145

145:                                              ; preds = %144, %139
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %331

149:                                              ; preds = %145
  %150 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %151 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @IS_FASTOPEN(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %157 = call i32 @tcp_fastopen_connect(%struct.tcpcb* %156)
  br label %164

158:                                              ; preds = %149
  %159 = load i8*, i8** @TTCP_CLIENT_SND_WND, align 8
  %160 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %161 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %160, i32 0, i32 5
  store i8* %159, i8** %161, align 8
  %162 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %163 = call i32 @tcp_mss(%struct.tcpcb* %162, i32 -1)
  br label %164

164:                                              ; preds = %158, %155
  br label %165

165:                                              ; preds = %164, %130, %122
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @PRUS_EOF, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = call i32 (...) @NET_EPOCH_ASSERT()
  %172 = load %struct.socket*, %struct.socket** %7, align 8
  %173 = call i32 @socantsendmore(%struct.socket* %172)
  %174 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %175 = call i32 @tcp_usrclosed(%struct.tcpcb* %174)
  br label %176

176:                                              ; preds = %170, %165
  %177 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %178 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @INP_DROPPED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %219, label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @PRUS_NOTREADY, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %219, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @PRUS_MORETOCOME, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i32, i32* @TF_MORETOCOME, align 4
  %195 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %196 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %188
  %200 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %201 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %200, i32 0, i32 2
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %203, align 8
  %205 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %206 = call i32 %204(%struct.tcpcb* %205)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @PRUS_MORETOCOME, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %199
  %212 = load i32, i32* @TF_MORETOCOME, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %211, %199
  br label %219

219:                                              ; preds = %218, %183, %176
  br label %318

220:                                              ; preds = %117
  %221 = load %struct.socket*, %struct.socket** %7, align 8
  %222 = getelementptr inbounds %struct.socket, %struct.socket* %221, i32 0, i32 0
  %223 = call i32 @SOCKBUF_LOCK(i32* %222)
  %224 = load %struct.socket*, %struct.socket** %7, align 8
  %225 = getelementptr inbounds %struct.socket, %struct.socket* %224, i32 0, i32 0
  %226 = call i32 @sbspace(i32* %225)
  %227 = icmp slt i32 %226, -512
  br i1 %227, label %228, label %235

228:                                              ; preds = %220
  %229 = load %struct.socket*, %struct.socket** %7, align 8
  %230 = getelementptr inbounds %struct.socket, %struct.socket* %229, i32 0, i32 0
  %231 = call i32 @SOCKBUF_UNLOCK(i32* %230)
  %232 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %233 = call i32 @m_freem(%struct.mbuf* %232)
  %234 = load i32, i32* @ENOBUFS, align 4
  store i32 %234, i32* %14, align 4
  br label %331

235:                                              ; preds = %220
  %236 = load %struct.socket*, %struct.socket** %7, align 8
  %237 = getelementptr inbounds %struct.socket, %struct.socket* %236, i32 0, i32 0
  %238 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @sbappendstream_locked(i32* %237, %struct.mbuf* %238, i32 %239)
  %241 = load %struct.socket*, %struct.socket** %7, align 8
  %242 = getelementptr inbounds %struct.socket, %struct.socket* %241, i32 0, i32 0
  %243 = call i32 @SOCKBUF_UNLOCK(i32* %242)
  %244 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %245 = icmp ne %struct.sockaddr* %244, null
  br i1 %245, label %246, label %284

246:                                              ; preds = %235
  %247 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %248 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @TCPS_SYN_SENT, align 8
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %252, label %284

252:                                              ; preds = %246
  %253 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %254 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @IS_FASTOPEN(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %252
  %259 = load i32, i32* @TF_FASTOPEN, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %262 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, %260
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %258, %252
  %266 = load i32, i32* %14, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %265
  %269 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %270 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268, %265
  store i32 0, i32* %19, align 4
  br label %274

274:                                              ; preds = %273, %268
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  br label %331

278:                                              ; preds = %274
  %279 = load i8*, i8** @TTCP_CLIENT_SND_WND, align 8
  %280 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %281 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %280, i32 0, i32 5
  store i8* %279, i8** %281, align 8
  %282 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %283 = call i32 @tcp_mss(%struct.tcpcb* %282, i32 -1)
  br label %284

284:                                              ; preds = %278, %246, %235
  %285 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %286 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.socket*, %struct.socket** %7, align 8
  %289 = getelementptr inbounds %struct.socket, %struct.socket* %288, i32 0, i32 0
  %290 = call i64 @sbavail(i32* %289)
  %291 = add nsw i64 %287, %290
  %292 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %293 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %292, i32 0, i32 4
  store i64 %291, i64* %293, align 8
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* @PRUS_NOTREADY, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %317, label %298

298:                                              ; preds = %284
  %299 = load i32, i32* @TF_FORCEDATA, align 4
  %300 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %301 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %305 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %304, i32 0, i32 2
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %307, align 8
  %309 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %310 = call i32 %308(%struct.tcpcb* %309)
  store i32 %310, i32* %14, align 4
  %311 = load i32, i32* @TF_FORCEDATA, align 4
  %312 = xor i32 %311, -1
  %313 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %314 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, %312
  store i32 %316, i32* %314, align 8
  br label %317

317:                                              ; preds = %298, %284
  br label %318

318:                                              ; preds = %317, %219
  %319 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %320 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %321 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %320, i32 0, i32 4
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  %324 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %325 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %324, i32 0, i32 4
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i32, i32* @TCP_LOG_USERSEND, align 4
  %329 = load i32, i32* %14, align 4
  %330 = call i32 @TCP_LOG_EVENT(%struct.tcpcb* %319, i32* null, i32* %323, i32* %327, i32 %328, i32 %329, i32 0, i32* null, i32 0)
  br label %331

331:                                              ; preds = %318, %277, %228, %148, %112, %94, %70
  %332 = load i32, i32* %14, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %331
  %335 = load i32, i32* %19, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %334
  %338 = load i32, i32* %18, align 4
  %339 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %340 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 8
  %341 = load i32, i32* %17, align 4
  %342 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %343 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  store i32 %341, i32* %344, align 8
  br label %345

345:                                              ; preds = %337, %334, %331
  %346 = load i32, i32* %8, align 4
  %347 = load i32, i32* @PRUS_OOB, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = load i32, i32* @PRU_SENDOOB, align 4
  br label %363

352:                                              ; preds = %345
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* @PRUS_EOF, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %352
  %358 = load i32, i32* @PRU_SEND_EOF, align 4
  br label %361

359:                                              ; preds = %352
  %360 = load i32, i32* @PRU_SEND, align 4
  br label %361

361:                                              ; preds = %359, %357
  %362 = phi i32 [ %358, %357 ], [ %360, %359 ]
  br label %363

363:                                              ; preds = %361, %350
  %364 = phi i32 [ %351, %350 ], [ %362, %361 ]
  %365 = call i32 @TCPDEBUG2(i32 %364)
  %366 = load i32, i32* @debug__user, align 4
  %367 = load %struct.tcpcb*, %struct.tcpcb** %16, align 8
  %368 = load i32, i32* %8, align 4
  %369 = load i32, i32* @PRUS_OOB, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %363
  %373 = load i32, i32* @PRU_SENDOOB, align 4
  br label %385

374:                                              ; preds = %363
  %375 = load i32, i32* %8, align 4
  %376 = load i32, i32* @PRUS_EOF, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %374
  %380 = load i32, i32* @PRU_SEND_EOF, align 4
  br label %383

381:                                              ; preds = %374
  %382 = load i32, i32* @PRU_SEND, align 4
  br label %383

383:                                              ; preds = %381, %379
  %384 = phi i32 [ %380, %379 ], [ %382, %381 ]
  br label %385

385:                                              ; preds = %383, %372
  %386 = phi i32 [ %373, %372 ], [ %384, %383 ]
  %387 = call i32 @TCP_PROBE2(i32 %366, %struct.tcpcb* %367, i32 %386)
  %388 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %389 = call i32 @INP_WUNLOCK(%struct.inpcb* %388)
  %390 = load i32, i32* %8, align 4
  %391 = load i32, i32* @PRUS_EOF, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %385
  %395 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %13, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @NET_EPOCH_EXIT(i32 %396)
  br label %398

398:                                              ; preds = %394, %385
  %399 = load i32, i32* %14, align 4
  ret i32 %399
}

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local i32 @sbappendstream(i32*, %struct.mbuf*, i32) #1

declare dso_local i64 @IS_FASTOPEN(i32) #1

declare dso_local i32 @tcp_fastopen_connect(%struct.tcpcb*) #1

declare dso_local i32 @tcp_mss(%struct.tcpcb*, i32) #1

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @socantsendmore(%struct.socket*) #1

declare dso_local i32 @tcp_usrclosed(%struct.tcpcb*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @sbspace(i32*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @sbappendstream_locked(i32*, %struct.mbuf*, i32) #1

declare dso_local i64 @sbavail(i32*) #1

declare dso_local i32 @TCP_LOG_EVENT(%struct.tcpcb*, i32*, i32*, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @TCPDEBUG2(i32) #1

declare dso_local i32 @TCP_PROBE2(i32, %struct.tcpcb*, i32) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
