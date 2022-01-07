; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_packet_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_packet_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_pktinfo = type { i32 }
%struct.msghdr = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.icmp6_hdr = type { i32, i32, i64, i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.cmsghdr = type { i64, i64, i64 }
%struct.ip6_hdr = type { i32 }
%struct.sctp_init_chunk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sctphdr = type { i64, i64, i32 }
%struct.tcphdr = type { i64, i64, i32 }
%struct.udphdr = type { i64, i64 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"data too short (%d bytes) from %s\0A\00", align 1
@rcvpktinfo = common dso_local global %struct.in6_pktinfo* null, align 8
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_PKTINFO = common dso_local global i64 0, align 8
@IPV6_HOPLIMIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to get received hop limit or packet info\00", align 1
@rcvhlim = common dso_local global i32 0, align 4
@ICMP6_TIME_EXCEEDED = common dso_local global i32 0, align 4
@ICMP6_TIME_EXCEED_TRANSIT = common dso_local global i32 0, align 4
@ICMP6_DST_UNREACH = common dso_local global i32 0, align 4
@ICMP6_PARAM_PROB = common dso_local global i32 0, align 4
@ICMP6_PARAMPROB_NEXTHEADER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get upper layer header\00", align 1
@useproto = common dso_local global i32 0, align 4
@ident = common dso_local global i64 0, align 8
@srcport = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@datalen = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Unknown probe proto %d.\0A\00", align 1
@ICMP6_ECHO_REPLY = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"\0A%d bytes from %s to %s\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c": icmp type %d (%s) code %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%04x:\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packet_ok(%struct.msghdr* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.icmp6_hdr*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.cmsghdr*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ip6_hdr*, align 8
  %21 = alloca %struct.icmp6_hdr*, align 8
  %22 = alloca %struct.sctp_init_chunk*, align 8
  %23 = alloca %struct.sctphdr*, align 8
  %24 = alloca %struct.tcphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %32 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %35, %struct.sockaddr_in6** %13, align 8
  %36 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %14, align 8
  %43 = load i32, i32* @NI_MAXHOST, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %17, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %18, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 24
  br i1 %48, label %49, label %69

49:                                               ; preds = %5
  %50 = load i64, i64* @verbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %54 = bitcast %struct.sockaddr_in6* %53 to %struct.sockaddr*
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = trunc i64 %44 to i32
  %59 = load i32, i32* @NI_NUMERICHOST, align 4
  %60 = call i64 @getnameinfo(%struct.sockaddr* %54, i32 %57, i8* %46, i32 %58, i32* null, i32 0, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = trunc i64 %44 to i32
  %64 = call i32 @strlcpy(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %46)
  br label %68

68:                                               ; preds = %65, %49
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

69:                                               ; preds = %5
  %70 = load i8*, i8** %14, align 8
  %71 = bitcast i8* %70 to %struct.icmp6_hdr*
  store %struct.icmp6_hdr* %71, %struct.icmp6_hdr** %12, align 8
  store %struct.in6_pktinfo* null, %struct.in6_pktinfo** @rcvpktinfo, align 8
  store i32* null, i32** %16, align 8
  %72 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %73 = call i64 @CMSG_FIRSTHDR(%struct.msghdr* %72)
  %74 = inttoptr i64 %73 to %struct.cmsghdr*
  store %struct.cmsghdr* %74, %struct.cmsghdr** %15, align 8
  br label %75

75:                                               ; preds = %123, %69
  %76 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %77 = icmp ne %struct.cmsghdr* %76, null
  br i1 %77, label %78, label %128

78:                                               ; preds = %75
  %79 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %80 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPPROTO_IPV6, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %86 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IPV6_PKTINFO, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %92 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @CMSG_LEN(i32 4)
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %98 = call i64 @CMSG_DATA(%struct.cmsghdr* %97)
  %99 = inttoptr i64 %98 to %struct.in6_pktinfo*
  store %struct.in6_pktinfo* %99, %struct.in6_pktinfo** @rcvpktinfo, align 8
  br label %100

100:                                              ; preds = %96, %90, %84, %78
  %101 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %102 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IPPROTO_IPV6, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %108 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IPV6_HOPLIMIT, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %114 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @CMSG_LEN(i32 4)
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %120 = call i64 @CMSG_DATA(%struct.cmsghdr* %119)
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %16, align 8
  br label %122

122:                                              ; preds = %118, %112, %106, %100
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %125 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %126 = call i64 @CMSG_NXTHDR(%struct.msghdr* %124, %struct.cmsghdr* %125)
  %127 = inttoptr i64 %126 to %struct.cmsghdr*
  store %struct.cmsghdr* %127, %struct.cmsghdr** %15, align 8
  br label %75

128:                                              ; preds = %75
  %129 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** @rcvpktinfo, align 8
  %130 = icmp eq %struct.in6_pktinfo* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32*, i32** %16, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131, %128
  %135 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @rcvhlim, align 4
  br label %139

136:                                              ; preds = %131
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* @rcvhlim, align 4
  br label %139

139:                                              ; preds = %136, %134
  %140 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %12, align 8
  %141 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %10, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %12, align 8
  %145 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %11, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ICMP6_TIME_EXCEEDED, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %139
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ICMP6_TIME_EXCEED_TRANSIT, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %172, label %157

157:                                              ; preds = %152, %139
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ICMP6_DST_UNREACH, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ICMP6_PARAM_PROB, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %347

167:                                              ; preds = %162
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ICMP6_PARAMPROB_NEXTHEADER, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %347

172:                                              ; preds = %167, %157, %152
  %173 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %12, align 8
  %174 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %173, i64 1
  %175 = bitcast %struct.icmp6_hdr* %174 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %175, %struct.ip6_hdr** %20, align 8
  %176 = load %struct.ip6_hdr*, %struct.ip6_hdr** %20, align 8
  %177 = load i8*, i8** %14, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = bitcast i8* %180 to i32*
  %182 = call i8* @get_uphdr(%struct.ip6_hdr* %176, i32* %181)
  store i8* %182, i8** %26, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %172
  %185 = load i64, i64* @verbose, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %184
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

190:                                              ; preds = %172
  %191 = load i32, i32* @useproto, align 4
  switch i32 %191, label %342 [
    i32 132, label %192
    i32 128, label %209
    i32 130, label %229
    i32 129, label %306
    i32 131, label %341
  ]

192:                                              ; preds = %190
  %193 = load i8*, i8** %26, align 8
  %194 = bitcast i8* %193 to %struct.icmp6_hdr*
  store %struct.icmp6_hdr* %194, %struct.icmp6_hdr** %21, align 8
  %195 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %21, align 8
  %196 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @ident, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %192
  %201 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %21, align 8
  %202 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i64 @htons(i32 %204)
  %206 = icmp eq i64 %203, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

208:                                              ; preds = %200, %192
  br label %346

209:                                              ; preds = %190
  %210 = load i8*, i8** %26, align 8
  %211 = bitcast i8* %210 to %struct.udphdr*
  store %struct.udphdr* %211, %struct.udphdr** %25, align 8
  %212 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %213 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* @srcport, align 4
  %216 = call i64 @htons(i32 %215)
  %217 = icmp eq i64 %214, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %209
  %219 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %220 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* @port, align 4
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %222, %223
  %225 = call i64 @htons(i32 %224)
  %226 = icmp eq i64 %221, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %218
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

228:                                              ; preds = %218, %209
  br label %346

229:                                              ; preds = %190
  %230 = load i8*, i8** %26, align 8
  %231 = bitcast i8* %230 to %struct.sctphdr*
  store %struct.sctphdr* %231, %struct.sctphdr** %23, align 8
  %232 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %233 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @ident, align 8
  %236 = trunc i64 %235 to i32
  %237 = call i64 @htons(i32 %236)
  %238 = icmp ne i64 %234, %237
  br i1 %238, label %248, label %239

239:                                              ; preds = %229
  %240 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %241 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @port, align 4
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %243, %244
  %246 = call i64 @htons(i32 %245)
  %247 = icmp ne i64 %242, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %239, %229
  br label %346

249:                                              ; preds = %239
  %250 = load i32, i32* @datalen, align 4
  %251 = icmp sge i32 %250, 32
  br i1 %251, label %252, label %289

252:                                              ; preds = %249
  %253 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %254 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  br label %346

258:                                              ; preds = %252
  %259 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %260 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %259, i64 1
  %261 = bitcast %struct.sctphdr* %260 to %struct.sctp_init_chunk*
  store %struct.sctp_init_chunk* %261, %struct.sctp_init_chunk** %22, align 8
  %262 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %22, align 8
  %263 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = bitcast i32* %264 to i8*
  %266 = load i8*, i8** %14, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = icmp ugt i8* %265, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %258
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

272:                                              ; preds = %258
  %273 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %22, align 8
  %274 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %278 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = shl i64 %279, 16
  %281 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %282 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = or i64 %280, %283
  %285 = trunc i64 %284 to i32
  %286 = icmp eq i32 %276, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %272
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

288:                                              ; preds = %272
  br label %305

289:                                              ; preds = %249
  %290 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %291 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %294 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = shl i64 %295, 16
  %297 = load %struct.sctphdr*, %struct.sctphdr** %23, align 8
  %298 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = or i64 %296, %299
  %301 = trunc i64 %300 to i32
  %302 = icmp eq i32 %292, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %289
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

304:                                              ; preds = %289
  br label %305

305:                                              ; preds = %304, %288
  br label %346

306:                                              ; preds = %190
  %307 = load i8*, i8** %26, align 8
  %308 = bitcast i8* %307 to %struct.tcphdr*
  store %struct.tcphdr* %308, %struct.tcphdr** %24, align 8
  %309 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %310 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @ident, align 8
  %313 = trunc i64 %312 to i32
  %314 = call i64 @htons(i32 %313)
  %315 = icmp eq i64 %311, %314
  br i1 %315, label %316, label %340

316:                                              ; preds = %306
  %317 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %318 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = load i32, i32* @port, align 4
  %321 = load i32, i32* %9, align 4
  %322 = add nsw i32 %320, %321
  %323 = call i64 @htons(i32 %322)
  %324 = icmp eq i64 %319, %323
  br i1 %324, label %325, label %340

325:                                              ; preds = %316
  %326 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %327 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %330 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = shl i64 %331, 16
  %333 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %334 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = or i64 %332, %335
  %337 = trunc i64 %336 to i32
  %338 = icmp eq i32 %328, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %325
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

340:                                              ; preds = %325, %316, %306
  br label %346

341:                                              ; preds = %190
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

342:                                              ; preds = %190
  %343 = load i32, i32* @stderr, align 4
  %344 = load i32, i32* @useproto, align 4
  %345 = call i32 @fprintf(i32 %343, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %344)
  br label %346

346:                                              ; preds = %342, %340, %305, %257, %248, %228, %208
  br label %371

347:                                              ; preds = %167, %162
  %348 = load i32, i32* @useproto, align 4
  %349 = icmp eq i32 %348, 132
  br i1 %349, label %350, label %370

350:                                              ; preds = %347
  %351 = load i32*, i32** %10, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @ICMP6_ECHO_REPLY, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %370

355:                                              ; preds = %350
  %356 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %12, align 8
  %357 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @ident, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %355
  %362 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %12, align 8
  %363 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %362, i32 0, i32 3
  %364 = load i64, i64* %363, align 8
  %365 = load i32, i32* %9, align 4
  %366 = call i64 @htons(i32 %365)
  %367 = icmp eq i64 %364, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

369:                                              ; preds = %361, %355
  br label %370

370:                                              ; preds = %369, %350, %347
  br label %371

371:                                              ; preds = %370, %346
  %372 = load i64, i64* @verbose, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %461

374:                                              ; preds = %371
  %375 = load i32, i32* @NI_MAXHOST, align 4
  %376 = add nsw i32 %375, 1
  %377 = zext i32 %376 to i64
  %378 = call i8* @llvm.stacksave()
  store i8* %378, i8** %27, align 8
  %379 = alloca i8, i64 %377, align 16
  store i64 %377, i64* %28, align 8
  %380 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %381 = zext i32 %380 to i64
  %382 = alloca i8, i64 %381, align 16
  store i64 %381, i64* %29, align 8
  %383 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %384 = bitcast %struct.sockaddr_in6* %383 to %struct.sockaddr*
  %385 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %386 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = trunc i64 %377 to i32
  %389 = load i32, i32* @NI_NUMERICHOST, align 4
  %390 = call i64 @getnameinfo(%struct.sockaddr* %384, i32 %387, i8* %379, i32 %388, i32* null, i32 0, i32 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %374
  %393 = trunc i64 %377 to i32
  %394 = call i32 @strlcpy(i8* %379, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %393)
  br label %395

395:                                              ; preds = %392, %374
  %396 = load i32, i32* %8, align 4
  %397 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** @rcvpktinfo, align 8
  %398 = icmp ne %struct.in6_pktinfo* %397, null
  br i1 %398, label %399, label %405

399:                                              ; preds = %395
  %400 = load i32, i32* @AF_INET6, align 4
  %401 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** @rcvpktinfo, align 8
  %402 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %401, i32 0, i32 0
  %403 = trunc i64 %381 to i32
  %404 = call i8* @inet_ntop(i32 %400, i32* %402, i8* %382, i32 %403)
  br label %406

405:                                              ; preds = %395
  br label %406

406:                                              ; preds = %405, %399
  %407 = phi i8* [ %404, %399 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %405 ]
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %396, i8* %379, i8* %407)
  %409 = load i32*, i32** %10, align 8
  %410 = load i32, i32* %409, align 4
  %411 = load i32*, i32** %10, align 8
  %412 = load i32, i32* %411, align 4
  %413 = call i8* @pr_type(i32 %412)
  %414 = load i32*, i32** %11, align 8
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %410, i8* %413, i32 %415)
  %417 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %12, align 8
  %418 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %417, i64 1
  %419 = bitcast %struct.icmp6_hdr* %418 to i32*
  store i32* %419, i32** %30, align 8
  store i32 0, i32* %31, align 4
  br label %420

420:                                              ; preds = %450, %406
  %421 = load i32, i32* %31, align 4
  %422 = load i32, i32* %8, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %453

424:                                              ; preds = %420
  %425 = load i32, i32* %31, align 4
  %426 = srem i32 %425, 16
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %424
  %429 = load i32, i32* %31, align 4
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %429)
  br label %431

431:                                              ; preds = %428, %424
  %432 = load i32, i32* %31, align 4
  %433 = srem i32 %432, 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %431
  %436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %437

437:                                              ; preds = %435, %431
  %438 = load i32*, i32** %30, align 8
  %439 = load i32, i32* %31, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %442)
  %444 = load i32, i32* %31, align 4
  %445 = srem i32 %444, 16
  %446 = icmp eq i32 %445, 15
  br i1 %446, label %447, label %449

447:                                              ; preds = %437
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %449

449:                                              ; preds = %447, %437
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %31, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %31, align 4
  br label %420

453:                                              ; preds = %420
  %454 = load i32, i32* %8, align 4
  %455 = srem i32 %454, 16
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %453
  %458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %459

459:                                              ; preds = %457, %453
  %460 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %460)
  br label %461

461:                                              ; preds = %459, %371
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %462

462:                                              ; preds = %461, %368, %341, %339, %303, %287, %271, %227, %207, %189, %68
  %463 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %463)
  %464 = load i32, i32* %6, align 4
  ret i32 %464
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @CMSG_FIRSTHDR(%struct.msghdr*) #2

declare dso_local i64 @CMSG_LEN(i32) #2

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #2

declare dso_local i64 @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i8* @get_uphdr(%struct.ip6_hdr*, i32*) #2

declare dso_local i64 @htons(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i8* @pr_type(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
