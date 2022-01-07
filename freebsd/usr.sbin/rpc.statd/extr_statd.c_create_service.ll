; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_statd.c_create_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_statd.c_create_service.c"
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
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot create socket for %s\00", align 1
@hosts = common dso_local global i32** null, align 8
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@svcport_str = common dso_local global i32* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"bad addr fam %d\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"cannot get local address for %s: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8
@mallocd_svcport = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"bindresvport_sa: %m\00", align 1
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Cannot get port number\00", align 1
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
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.netconfig* %0, %struct.netconfig** %3, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  %15 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %16 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NC_TPI_CLTS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %22 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NC_TPI_COTS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %28 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NC_TPI_COTS_ORD, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %379

33:                                               ; preds = %26, %20, %1
  %34 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %35 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %34, %struct.__rpc_sockinfo* %8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %40 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @syslog(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 1, i32* %2, align 4
  br label %379

43:                                               ; preds = %33
  %44 = bitcast %struct.addrinfo* %4 to %struct.sockaddr*
  %45 = call i32 @memset(%struct.sockaddr* %44, i32 0, i32 48)
  %46 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 6
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 4
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @nhosts, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %377, %269, %246, %144, %116, %84, %43
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %378

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** @sock_fd, align 8
  %63 = load i32, i32* @sock_fdcnt, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32* @realloc(i32* %62, i32 %67)
  store i32* %68, i32** @sock_fd, align 8
  %69 = load i32*, i32** @sock_fd, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = call i32 (...) @out_of_mem()
  br label %73

73:                                               ; preds = %71, %59
  %74 = load i32*, i32** @sock_fd, align 8
  %75 = load i32, i32* @sock_fdcnt, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @sock_fdcnt, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 -1, i32* %78, align 4
  store i32 0, i32* %14, align 4
  %79 = load i32, i32* @AI_PASSIVE, align 4
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 5
  store i32 %79, i32* %80, align 4
  %81 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %82 = call i32 @__rpc_nconf2fd(%struct.netconfig* %81)
  store i32 %82, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load i32, i32* @LOG_ERR, align 4
  %86 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %87 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @syslog(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %56

90:                                               ; preds = %73
  %91 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %149 [
    i32 129, label %93
    i32 128, label %121
  ]

93:                                               ; preds = %90
  %94 = load i32**, i32*** @hosts, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %100 = call i32 @inet_pton(i32 129, i32* %98, i32* %99)
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load i32, i32* @AI_NUMERICHOST, align 4
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %120

107:                                              ; preds = %93
  %108 = load i32**, i32*** @hosts, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %114 = call i32 @inet_pton(i32 128, i32* %112, i32* %113)
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @close(i32 %117)
  br label %56

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %102
  br label %150

121:                                              ; preds = %90
  %122 = load i32**, i32*** @hosts, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %128 = call i32 @inet_pton(i32 128, i32* %126, i32* %127)
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %135

130:                                              ; preds = %121
  %131 = load i32, i32* @AI_NUMERICHOST, align 4
  %132 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 4
  br label %148

135:                                              ; preds = %121
  %136 = load i32**, i32*** @hosts, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %142 = call i32 @inet_pton(i32 129, i32* %140, i32* %141)
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @close(i32 %145)
  br label %56

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %130
  br label %150

149:                                              ; preds = %90
  br label %150

150:                                              ; preds = %149, %148, %120
  %151 = load i32**, i32*** @hosts, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %258

158:                                              ; preds = %150
  %159 = load i32*, i32** @svcport_str, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %240

161:                                              ; preds = %158
  %162 = call i8* @malloc(i32 48)
  %163 = bitcast i8* %162 to %struct.addrinfo*
  store %struct.addrinfo* %163, %struct.addrinfo** %5, align 8
  %164 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %165 = icmp eq %struct.addrinfo* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = call i32 (...) @out_of_mem()
  br label %168

168:                                              ; preds = %166, %161
  store i32 1, i32* %14, align 4
  %169 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %172 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %176 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %180 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %182 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %232 [
    i32 129, label %184
    i32 128, label %209
  ]

184:                                              ; preds = %168
  %185 = call i8* @malloc(i32 16)
  %186 = bitcast i8* %185 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %186, %struct.sockaddr_in** %6, align 8
  %187 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %188 = icmp eq %struct.sockaddr_in* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = call i32 (...) @out_of_mem()
  br label %191

191:                                              ; preds = %189, %184
  %192 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %193 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %192, i32 0, i32 0
  store i32 129, i32* %193, align 8
  %194 = call i8* @htons(i32 0)
  %195 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %196 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @INADDR_ANY, align 4
  %198 = call i32 @htonl(i32 %197)
  %199 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %200 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  store i32 %198, i32* %201, align 4
  %202 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %203 = bitcast %struct.sockaddr_in* %202 to %struct.sockaddr*
  %204 = bitcast %struct.sockaddr* %203 to %struct.addrinfo*
  %205 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %206 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %205, i32 0, i32 1
  store %struct.addrinfo* %204, %struct.addrinfo** %206, align 8
  %207 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %208 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %207, i32 0, i32 3
  store i8* inttoptr (i64 16 to i8*), i8** %208, align 8
  br label %239

209:                                              ; preds = %168
  %210 = call i8* @malloc(i32 16)
  %211 = bitcast i8* %210 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %211, %struct.sockaddr_in6** %7, align 8
  %212 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %213 = icmp eq %struct.sockaddr_in6* %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = call i32 (...) @out_of_mem()
  br label %216

216:                                              ; preds = %214, %209
  %217 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %218 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %217, i32 0, i32 0
  store i32 128, i32* %218, align 8
  %219 = call i8* @htons(i32 0)
  %220 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %221 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* @in6addr_any, align 4
  %223 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %224 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %226 = bitcast %struct.sockaddr_in6* %225 to %struct.sockaddr*
  %227 = bitcast %struct.sockaddr* %226 to %struct.addrinfo*
  %228 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %229 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %228, i32 0, i32 1
  store %struct.addrinfo* %227, %struct.addrinfo** %229, align 8
  %230 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %231 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %230, i32 0, i32 3
  store i8* inttoptr (i64 16 to i8*), i8** %231, align 8
  br label %239

232:                                              ; preds = %168
  %233 = load i32, i32* @LOG_ERR, align 4
  %234 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %235 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i32, i8*, ...) @syslog(i32 %233, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %236)
  %238 = call i32 @exit(i32 1) #3
  unreachable

239:                                              ; preds = %216, %191
  br label %257

240:                                              ; preds = %158
  %241 = load i32*, i32** @svcport_str, align 8
  %242 = bitcast %struct.addrinfo* %4 to %struct.sockaddr*
  %243 = bitcast %struct.addrinfo** %5 to %struct.sockaddr**
  %244 = call i32 @getaddrinfo(i32* null, i32* %241, %struct.sockaddr* %242, %struct.sockaddr** %243)
  store i32 %244, i32* %9, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %240
  %247 = load i32, i32* @LOG_ERR, align 4
  %248 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %249 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @gai_strerror(i32 %251)
  %253 = call i32 (i32, i8*, ...) @syslog(i32 %247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %250, i32 %252)
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @close(i32 %254)
  br label %56

256:                                              ; preds = %240
  br label %257

257:                                              ; preds = %256, %239
  br label %280

258:                                              ; preds = %150
  %259 = load i32**, i32*** @hosts, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = load i32*, i32** @svcport_str, align 8
  %265 = bitcast %struct.addrinfo* %4 to %struct.sockaddr*
  %266 = bitcast %struct.addrinfo** %5 to %struct.sockaddr**
  %267 = call i32 @getaddrinfo(i32* %263, i32* %264, %struct.sockaddr* %265, %struct.sockaddr** %266)
  store i32 %267, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %258
  %270 = load i32, i32* @LOG_ERR, align 4
  %271 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %272 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @gai_strerror(i32 %274)
  %276 = call i32 (i32, i8*, ...) @syslog(i32 %270, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %273, i32 %275)
  %277 = load i32, i32* %10, align 4
  %278 = call i32 @close(i32 %277)
  br label %56

279:                                              ; preds = %258
  br label %280

280:                                              ; preds = %279, %257
  %281 = load i32, i32* %10, align 4
  %282 = load i32*, i32** @sock_fd, align 8
  %283 = load i32, i32* @sock_fdcnt, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  store i32 %281, i32* %286, align 4
  %287 = load i32, i32* %10, align 4
  %288 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %289 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %288, i32 0, i32 1
  %290 = load %struct.addrinfo*, %struct.addrinfo** %289, align 8
  %291 = bitcast %struct.addrinfo* %290 to %struct.sockaddr*
  %292 = call i32 @bindresvport_sa(i32 %287, %struct.sockaddr* %291)
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %12, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %323

295:                                              ; preds = %280
  %296 = load i64, i64* @errno, align 8
  %297 = load i64, i64* @EADDRINUSE, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %319

299:                                              ; preds = %295
  %300 = load i32, i32* @mallocd_svcport, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %319

302:                                              ; preds = %299
  %303 = load i32, i32* %14, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %302
  %306 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %307 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %306, i32 0, i32 1
  %308 = load %struct.addrinfo*, %struct.addrinfo** %307, align 8
  %309 = bitcast %struct.addrinfo* %308 to %struct.sockaddr*
  %310 = call i32 @free(%struct.sockaddr* %309)
  %311 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %312 = bitcast %struct.addrinfo* %311 to %struct.sockaddr*
  %313 = call i32 @free(%struct.sockaddr* %312)
  br label %318

314:                                              ; preds = %302
  %315 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %316 = bitcast %struct.addrinfo* %315 to %struct.sockaddr*
  %317 = call i32 @freeaddrinfo(%struct.sockaddr* %316)
  br label %318

318:                                              ; preds = %314, %305
  store i32 -1, i32* %2, align 4
  br label %379

319:                                              ; preds = %299, %295
  %320 = load i32, i32* @LOG_ERR, align 4
  %321 = call i32 (i32, i8*, ...) @syslog(i32 %320, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %322 = call i32 @exit(i32 1) #3
  unreachable

323:                                              ; preds = %280
  %324 = load i32*, i32** @svcport_str, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %361

326:                                              ; preds = %323
  %327 = load i32, i32* @NI_MAXSERV, align 4
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 1
  %330 = trunc i64 %329 to i32
  %331 = call i8* @malloc(i32 %330)
  %332 = bitcast i8* %331 to i32*
  store i32* %332, i32** @svcport_str, align 8
  %333 = load i32*, i32** @svcport_str, align 8
  %334 = icmp eq i32* %333, null
  br i1 %334, label %335, label %337

335:                                              ; preds = %326
  %336 = call i32 (...) @out_of_mem()
  br label %337

337:                                              ; preds = %335, %326
  store i32 1, i32* @mallocd_svcport, align 4
  %338 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %339 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %338, i32 0, i32 1
  %340 = load %struct.addrinfo*, %struct.addrinfo** %339, align 8
  %341 = bitcast %struct.addrinfo* %340 to %struct.sockaddr*
  %342 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %343 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %342, i32 0, i32 1
  %344 = load %struct.addrinfo*, %struct.addrinfo** %343, align 8
  %345 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @NI_MAXHOST, align 4
  %348 = load i32*, i32** @svcport_str, align 8
  %349 = load i32, i32* @NI_MAXSERV, align 4
  %350 = sext i32 %349 to i64
  %351 = mul i64 %350, 1
  %352 = trunc i64 %351 to i32
  %353 = load i32, i32* @NI_NUMERICHOST, align 4
  %354 = load i32, i32* @NI_NUMERICSERV, align 4
  %355 = or i32 %353, %354
  %356 = call i64 @getnameinfo(%struct.sockaddr* %341, i32 %346, i32* null, i32 %347, i32* %348, i32 %352, i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %337
  %359 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %360

360:                                              ; preds = %358, %337
  br label %361

361:                                              ; preds = %360, %323
  %362 = load i32, i32* %14, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %373

364:                                              ; preds = %361
  %365 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %366 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %365, i32 0, i32 1
  %367 = load %struct.addrinfo*, %struct.addrinfo** %366, align 8
  %368 = bitcast %struct.addrinfo* %367 to %struct.sockaddr*
  %369 = call i32 @free(%struct.sockaddr* %368)
  %370 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %371 = bitcast %struct.addrinfo* %370 to %struct.sockaddr*
  %372 = call i32 @free(%struct.sockaddr* %371)
  br label %377

373:                                              ; preds = %361
  %374 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %375 = bitcast %struct.addrinfo* %374 to %struct.sockaddr*
  %376 = call i32 @freeaddrinfo(%struct.sockaddr* %375)
  br label %377

377:                                              ; preds = %373, %364
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  br label %56

378:                                              ; preds = %56
  store i32 0, i32* %2, align 4
  br label %379

379:                                              ; preds = %378, %318, %37, %32
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @out_of_mem(...) #1

declare dso_local i32 @__rpc_nconf2fd(%struct.netconfig*) #1

declare dso_local i32 @inet_pton(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

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
