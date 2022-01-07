; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_create_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_create_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i64, i32 }
%struct.addrinfo = type { i32, %struct.addrinfo*, i32, i8*, i32, i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i8* }
%struct.__rpc_sockinfo = type { i32, i32, i32 }
%struct.sockaddr = type { i32, %struct.sockaddr*, i32, i8*, i32, i32, i32 }

@NC_TPI_CLTS = common dso_local global i64 0, align 8
@NC_TPI_COTS = common dso_local global i64 0, align 8
@NC_TPI_COTS_ORD = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot get information for %s\00", align 1
@nhosts = common dso_local global i32 0, align 4
@sock_fd = common dso_local global i32* null, align 8
@sock_fdcnt = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot create socket for %s\00", align 1
@hosts = common dso_local global i32** null, align 8
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"can't disable v4-in-v6 on IPv6 socket\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@svcport_str = common dso_local global i32* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"bad addr fam %d\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"cannot get local address for %s: %s\00", align 1
@EADDRINUSE = common dso_local global i64 0, align 8
@mallocd_svcport = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"bindresvport_sa: %m\00", align 1
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Cannot get port number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netconfig*)* @create_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_service(%struct.netconfig* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netconfig*, align 8
  %4 = alloca %struct.addrinfo, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.__rpc_sockinfo, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.netconfig* %0, %struct.netconfig** %3, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  store i32 1, i32* %12, align 4
  %17 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %18 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NC_TPI_CLTS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %24 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NC_TPI_COTS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %30 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NC_TPI_COTS_ORD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %414

35:                                               ; preds = %28, %22, %1
  %36 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %37 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %36, %struct.__rpc_sockinfo* %8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %42 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, ...) @syslog(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 1, i32* %2, align 4
  br label %414

45:                                               ; preds = %35
  %46 = bitcast %struct.addrinfo* %4 to %struct.sockaddr*
  %47 = call i32 @memset(%struct.sockaddr* %46, i32 0, i32 48)
  %48 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 6
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @nhosts, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %412, %304, %281, %169, %141, %112, %45
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %413

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %11, align 4
  %64 = load i32*, i32** @sock_fd, align 8
  %65 = load i32, i32* @sock_fdcnt, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32* @realloc(i32* %64, i32 %69)
  store i32* %70, i32** @sock_fd, align 8
  %71 = load i32*, i32** @sock_fd, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = call i32 (...) @out_of_mem()
  br label %75

75:                                               ; preds = %73, %61
  %76 = load i32*, i32** @sock_fd, align 8
  %77 = load i32, i32* @sock_fdcnt, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @sock_fdcnt, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 -1, i32* %80, align 4
  store i32 0, i32* %15, align 4
  %81 = load i32, i32* @AI_PASSIVE, align 4
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %84 = call i32 @__rpc_nconf2fd(%struct.netconfig* %83)
  store i32 %84, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @EAFNOSUPPORT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %92 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NC_TPI_CLTS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 1, i32* %16, align 4
  br label %97

97:                                               ; preds = %96, %90, %86
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @LOG_DEBUG, align 4
  br label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @LOG_ERR, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %107 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @syslog(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %58

113:                                              ; preds = %104
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %75
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %184 [
    i32 129, label %118
    i32 128, label %146
  ]

118:                                              ; preds = %115
  %119 = load i32**, i32*** @hosts, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %125 = call i32 @inet_pton(i32 129, i32* %123, i32* %124)
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load i32, i32* @AI_NUMERICHOST, align 4
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %145

132:                                              ; preds = %118
  %133 = load i32**, i32*** @hosts, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %139 = call i32 @inet_pton(i32 128, i32* %137, i32* %138)
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @close(i32 %142)
  br label %58

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144, %127
  br label %185

146:                                              ; preds = %115
  %147 = load i32**, i32*** @hosts, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %153 = call i32 @inet_pton(i32 128, i32* %151, i32* %152)
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %160

155:                                              ; preds = %146
  %156 = load i32, i32* @AI_NUMERICHOST, align 4
  %157 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 4
  br label %173

160:                                              ; preds = %146
  %161 = load i32**, i32*** @hosts, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %167 = call i32 @inet_pton(i32 129, i32* %165, i32* %166)
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @close(i32 %170)
  br label %58

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172, %155
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @IPPROTO_IPV6, align 4
  %176 = load i32, i32* @IPV6_V6ONLY, align 4
  %177 = call i32 @setsockopt(i32 %174, i32 %175, i32 %176, i32* %12, i32 4)
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load i32, i32* @LOG_ERR, align 4
  %181 = call i32 (i32, i8*, ...) @syslog(i32 %180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %182 = call i32 @exit(i32 1) #3
  unreachable

183:                                              ; preds = %173
  br label %185

184:                                              ; preds = %115
  br label %185

185:                                              ; preds = %184, %183, %145
  %186 = load i32**, i32*** @hosts, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %293

193:                                              ; preds = %185
  %194 = load i32*, i32** @svcport_str, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %275

196:                                              ; preds = %193
  %197 = call i8* @malloc(i32 48)
  %198 = bitcast i8* %197 to %struct.addrinfo*
  store %struct.addrinfo* %198, %struct.addrinfo** %5, align 8
  %199 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %200 = icmp eq %struct.addrinfo* %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = call i32 (...) @out_of_mem()
  br label %203

203:                                              ; preds = %201, %196
  store i32 1, i32* %15, align 4
  %204 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %207 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 4
  %208 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %211 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %215 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  %216 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %217 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  switch i32 %218, label %267 [
    i32 129, label %219
    i32 128, label %244
  ]

219:                                              ; preds = %203
  %220 = call i8* @malloc(i32 16)
  %221 = bitcast i8* %220 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %221, %struct.sockaddr_in** %6, align 8
  %222 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %223 = icmp eq %struct.sockaddr_in* %222, null
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = call i32 (...) @out_of_mem()
  br label %226

226:                                              ; preds = %224, %219
  %227 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %228 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %227, i32 0, i32 0
  store i32 129, i32* %228, align 8
  %229 = call i8* @htons(i32 0)
  %230 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %231 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %230, i32 0, i32 2
  store i8* %229, i8** %231, align 8
  %232 = load i32, i32* @INADDR_ANY, align 4
  %233 = call i32 @htonl(i32 %232)
  %234 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %235 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 4
  %237 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %238 = bitcast %struct.sockaddr_in* %237 to %struct.sockaddr*
  %239 = bitcast %struct.sockaddr* %238 to %struct.addrinfo*
  %240 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %241 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %240, i32 0, i32 1
  store %struct.addrinfo* %239, %struct.addrinfo** %241, align 8
  %242 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %243 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %242, i32 0, i32 3
  store i8* inttoptr (i64 16 to i8*), i8** %243, align 8
  br label %274

244:                                              ; preds = %203
  %245 = call i8* @malloc(i32 16)
  %246 = bitcast i8* %245 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %246, %struct.sockaddr_in6** %7, align 8
  %247 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %248 = icmp eq %struct.sockaddr_in6* %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = call i32 (...) @out_of_mem()
  br label %251

251:                                              ; preds = %249, %244
  %252 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %253 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %252, i32 0, i32 0
  store i32 128, i32* %253, align 8
  %254 = call i8* @htons(i32 0)
  %255 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %256 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %255, i32 0, i32 2
  store i8* %254, i8** %256, align 8
  %257 = load i32, i32* @in6addr_any, align 4
  %258 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %259 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %261 = bitcast %struct.sockaddr_in6* %260 to %struct.sockaddr*
  %262 = bitcast %struct.sockaddr* %261 to %struct.addrinfo*
  %263 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %264 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %263, i32 0, i32 1
  store %struct.addrinfo* %262, %struct.addrinfo** %264, align 8
  %265 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %266 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %265, i32 0, i32 3
  store i8* inttoptr (i64 16 to i8*), i8** %266, align 8
  br label %274

267:                                              ; preds = %203
  %268 = load i32, i32* @LOG_ERR, align 4
  %269 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %270 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (i32, i8*, ...) @syslog(i32 %268, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %271)
  %273 = call i32 @exit(i32 1) #3
  unreachable

274:                                              ; preds = %251, %226
  br label %292

275:                                              ; preds = %193
  %276 = load i32*, i32** @svcport_str, align 8
  %277 = bitcast %struct.addrinfo* %4 to %struct.sockaddr*
  %278 = bitcast %struct.addrinfo** %5 to %struct.sockaddr**
  %279 = call i32 @getaddrinfo(i32* null, i32* %276, %struct.sockaddr* %277, %struct.sockaddr** %278)
  store i32 %279, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %275
  %282 = load i32, i32* @LOG_ERR, align 4
  %283 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %284 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @gai_strerror(i32 %286)
  %288 = call i32 (i32, i8*, ...) @syslog(i32 %282, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %285, i32 %287)
  %289 = load i32, i32* %10, align 4
  %290 = call i32 @close(i32 %289)
  br label %58

291:                                              ; preds = %275
  br label %292

292:                                              ; preds = %291, %274
  br label %315

293:                                              ; preds = %185
  %294 = load i32**, i32*** @hosts, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %294, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = load i32*, i32** @svcport_str, align 8
  %300 = bitcast %struct.addrinfo* %4 to %struct.sockaddr*
  %301 = bitcast %struct.addrinfo** %5 to %struct.sockaddr**
  %302 = call i32 @getaddrinfo(i32* %298, i32* %299, %struct.sockaddr* %300, %struct.sockaddr** %301)
  store i32 %302, i32* %9, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %314

304:                                              ; preds = %293
  %305 = load i32, i32* @LOG_ERR, align 4
  %306 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %307 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* %9, align 4
  %310 = call i32 @gai_strerror(i32 %309)
  %311 = call i32 (i32, i8*, ...) @syslog(i32 %305, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %308, i32 %310)
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @close(i32 %312)
  br label %58

314:                                              ; preds = %293
  br label %315

315:                                              ; preds = %314, %292
  %316 = load i32, i32* %10, align 4
  %317 = load i32*, i32** @sock_fd, align 8
  %318 = load i32, i32* @sock_fdcnt, align 4
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  store i32 %316, i32* %321, align 4
  %322 = load i32, i32* %10, align 4
  %323 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %324 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %323, i32 0, i32 1
  %325 = load %struct.addrinfo*, %struct.addrinfo** %324, align 8
  %326 = bitcast %struct.addrinfo* %325 to %struct.sockaddr*
  %327 = call i32 @bindresvport_sa(i32 %322, %struct.sockaddr* %326)
  store i32 %327, i32* %13, align 4
  %328 = load i32, i32* %13, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %358

330:                                              ; preds = %315
  %331 = load i64, i64* @errno, align 8
  %332 = load i64, i64* @EADDRINUSE, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %354

334:                                              ; preds = %330
  %335 = load i32, i32* @mallocd_svcport, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %354

337:                                              ; preds = %334
  %338 = load i32, i32* %15, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %337
  %341 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %342 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %341, i32 0, i32 1
  %343 = load %struct.addrinfo*, %struct.addrinfo** %342, align 8
  %344 = bitcast %struct.addrinfo* %343 to %struct.sockaddr*
  %345 = call i32 @free(%struct.sockaddr* %344)
  %346 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %347 = bitcast %struct.addrinfo* %346 to %struct.sockaddr*
  %348 = call i32 @free(%struct.sockaddr* %347)
  br label %353

349:                                              ; preds = %337
  %350 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %351 = bitcast %struct.addrinfo* %350 to %struct.sockaddr*
  %352 = call i32 @freeaddrinfo(%struct.sockaddr* %351)
  br label %353

353:                                              ; preds = %349, %340
  store i32 -1, i32* %2, align 4
  br label %414

354:                                              ; preds = %334, %330
  %355 = load i32, i32* @LOG_ERR, align 4
  %356 = call i32 (i32, i8*, ...) @syslog(i32 %355, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %357 = call i32 @exit(i32 1) #3
  unreachable

358:                                              ; preds = %315
  %359 = load i32*, i32** @svcport_str, align 8
  %360 = icmp eq i32* %359, null
  br i1 %360, label %361, label %396

361:                                              ; preds = %358
  %362 = load i32, i32* @NI_MAXSERV, align 4
  %363 = sext i32 %362 to i64
  %364 = mul i64 %363, 1
  %365 = trunc i64 %364 to i32
  %366 = call i8* @malloc(i32 %365)
  %367 = bitcast i8* %366 to i32*
  store i32* %367, i32** @svcport_str, align 8
  %368 = load i32*, i32** @svcport_str, align 8
  %369 = icmp eq i32* %368, null
  br i1 %369, label %370, label %372

370:                                              ; preds = %361
  %371 = call i32 (...) @out_of_mem()
  br label %372

372:                                              ; preds = %370, %361
  store i32 1, i32* @mallocd_svcport, align 4
  %373 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %374 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %373, i32 0, i32 1
  %375 = load %struct.addrinfo*, %struct.addrinfo** %374, align 8
  %376 = bitcast %struct.addrinfo* %375 to %struct.sockaddr*
  %377 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %378 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %377, i32 0, i32 1
  %379 = load %struct.addrinfo*, %struct.addrinfo** %378, align 8
  %380 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @NI_MAXHOST, align 4
  %383 = load i32*, i32** @svcport_str, align 8
  %384 = load i32, i32* @NI_MAXSERV, align 4
  %385 = sext i32 %384 to i64
  %386 = mul i64 %385, 1
  %387 = trunc i64 %386 to i32
  %388 = load i32, i32* @NI_NUMERICHOST, align 4
  %389 = load i32, i32* @NI_NUMERICSERV, align 4
  %390 = or i32 %388, %389
  %391 = call i64 @getnameinfo(%struct.sockaddr* %376, i32 %381, i32* null, i32 %382, i32* %383, i32 %387, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %372
  %394 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %395

395:                                              ; preds = %393, %372
  br label %396

396:                                              ; preds = %395, %358
  %397 = load i32, i32* %15, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %396
  %400 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %401 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %400, i32 0, i32 1
  %402 = load %struct.addrinfo*, %struct.addrinfo** %401, align 8
  %403 = bitcast %struct.addrinfo* %402 to %struct.sockaddr*
  %404 = call i32 @free(%struct.sockaddr* %403)
  %405 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %406 = bitcast %struct.addrinfo* %405 to %struct.sockaddr*
  %407 = call i32 @free(%struct.sockaddr* %406)
  br label %412

408:                                              ; preds = %396
  %409 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %410 = bitcast %struct.addrinfo* %409 to %struct.sockaddr*
  %411 = call i32 @freeaddrinfo(%struct.sockaddr* %410)
  br label %412

412:                                              ; preds = %408, %399
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  br label %58

413:                                              ; preds = %58
  store i32 0, i32* %2, align 4
  br label %414

414:                                              ; preds = %413, %353, %39, %34
  %415 = load i32, i32* %2, align 4
  ret i32 %415
}

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @out_of_mem(...) #1

declare dso_local i32 @__rpc_nconf2fd(%struct.netconfig*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @inet_pton(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @getaddrinfo(i32*, i32*, %struct.sockaddr*, %struct.sockaddr**) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @bindresvport_sa(i32, %struct.sockaddr*) #1

declare dso_local i32 @free(%struct.sockaddr*) #1

declare dso_local i32 @freeaddrinfo(%struct.sockaddr*) #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
